package net.mandaria.tippytipper.preferences;

import net.mandaria.tippytipper.*;
import net.mandaria.tippytipper.widgets.*;
import android.content.Context;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.preference.DialogPreference;
import android.widget.Button;
import android.widget.EditText;
import android.widget.SeekBar;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;
import android.widget.LinearLayout;
import android.content.res.*;

public class DecimalPreference extends DialogPreference
{
	private static final String androidns = "http://schemas.android.com/apk/res/android";
	private static final String appns = "http://schemas.android.com/apk/res/net.mandaria.tippytipper";

	private NumberPicker mPickInteger, mPickDecimal;
	private TextView mSplashText, mValueText;
	private Context mContext;

	private String mDialogMessage, mSuffix;
	private float mDefault, mValue = 0;
	private int mInteger, mDecimal = 0;

	public DecimalPreference(Context context, AttributeSet attrs)
	{
		super(context, attrs);
		mContext = context;

		mDialogMessage = attrs.getAttributeValue(androidns, "dialogMessage");
		mSuffix = attrs.getAttributeValue(androidns, "text");
		mDefault = attrs.getAttributeIntValue(androidns, "defaultValue", 0);
	}

	@Override
	protected View onCreateDialogView()
	{
		TableLayout.LayoutParams params;
		// LinearLayout layout = new LinearLayout(mContext);
		TableLayout layout = new TableLayout(mContext);
		// layout.setOrientation(LinearLayout.VERTICAL);
		layout.setPadding(6, 6, 6, 6);

		mSplashText = new TextView(mContext);
		if (mDialogMessage != null)
			mSplashText.setText(mDialogMessage);

		TableRow row_header = new TableRow(mContext);
		row_header.addView(mSplashText);

		mPickInteger = new NumberPicker(mContext);
		mPickDecimal = new NumberPicker(mContext);
		mPickDecimal.setFormatter(NumberPicker.THREE_DIGIT_FORMATTER);

		TextView dot = new TextView(mContext);
		dot.setText(".");
		dot.setTextSize(32);

		TextView percent = new TextView(mContext);
		percent.setText("%");
		percent.setTextSize(32);

		TableRow row_one = new TableRow(mContext);
		row_one.setGravity(Gravity.CENTER);
		row_one.addView(mPickInteger);
		row_one.addView(dot);
		row_one.addView(mPickDecimal);
		row_one.addView(percent);

		layout.addView(row_header);

		TableLayout table_main = new TableLayout(mContext);
		table_main.addView(row_one);

		TableRow row_main = new TableRow(mContext);
		row_main.setGravity(Gravity.CENTER_HORIZONTAL);
		row_main.addView(table_main);

		layout.addView(row_main);

		if (shouldPersist())
			mValue = getPersistedFloat(mDefault);

		BindData();

		return layout;
	}

	private void BindData()
	{
		mInteger = (int) Math.floor((double) mValue);
		float decimal = (mValue * 1000) - (mInteger * 1000);
		mDecimal = (int) decimal;
		try
		{
			mPickInteger.setCurrent(mInteger);
			mPickDecimal.setCurrent(mDecimal);
		}
		catch (Exception ex)
		{
			int test = 0;
			test++;
		}
	}

	@Override
	protected void onBindDialogView(View v)
	{
		super.onBindDialogView(v);
		BindData();
	}

	@Override
	protected void onSetInitialValue(boolean restore, Object defaultValue)
	{
		super.onSetInitialValue(restore, defaultValue);
		if (restore)
		{
			try
			{
				mValue = shouldPersist() ? getPersistedFloat(mDefault) : 0;
			}
			catch (Exception ex)
			{
				mValue = mDefault;
			}
		}
		else
			mValue = (Float) defaultValue;
	}

	@Override
	protected void onDialogClosed(boolean positiveResult)
	{
		if (positiveResult == true)
		{
			super.onDialogClosed(positiveResult);
			// HACK: "click" both picker inputs to validate inputs before closing the dialog
			// this is to fix a problem of closing the dialog not causing the onFocusChange of the picker
			// to be called
			mPickInteger.onClick(null);
			mPickDecimal.onClick(null);
			String value = mPickInteger.getCurrent() + "." + mPickDecimal.getCurrentFormatted();
			mValue = Float.valueOf(value);
			if (shouldPersist())
				persistFloat(mValue);
		}
	}
}
