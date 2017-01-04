package net.mandaria.tippytipper.activities;

import java.util.HashMap;
import java.util.Map;

import com.flurry.android.FlurryAgent;

import net.mandaria.tippytipper.R;
import net.mandaria.tippytipper.R.id;
import net.mandaria.tippytipper.R.layout;
import net.mandaria.tippytipper.R.menu;
import net.mandaria.tippytipper.TippyTipperApplication;
import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.PorterDuff;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View.OnLongClickListener;

public class TippyTipper extends Activity  {
	
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);  
     
        BindData();
        
        // Setup click listeners for buttons
        View btn_one = findViewById(R.id.btn_one);
        btn_one.setOnClickListener(new OnClickListener() 
        	{
            	public void onClick(View v) 
            	{
            		AddBillAmount("1");
            		FlurryAgent.onEvent("1 Button");
            	}
            });
        View btn_two = findViewById(R.id.btn_two);
        btn_two.setOnClickListener(new OnClickListener() 
        	{
            	public void onClick(View v) 
            	{
            		AddBillAmount("2");
            		FlurryAgent.onEvent("2 Button");
            	}
            });
        View btn_three = findViewById(R.id.btn_three);
        btn_three.setOnClickListener(new OnClickListener() 
        	{
            	public void onClick(View v) 
            	{
            		AddBillAmount("3");
            		FlurryAgent.onEvent("3 Button");
            	}
            });
        View btn_four = findViewById(R.id.btn_four);
        btn_four.setOnClickListener(new OnClickListener() 
        	{
            	public void onClick(View v) 
            	{
            		AddBillAmount("4");
            		FlurryAgent.onEvent("4 Button");
            	}
            });
        View btn_five = findViewById(R.id.btn_five);
        btn_five.setOnClickListener(new OnClickListener() 
        	{
            	public void onClick(View v) 
            	{
            		AddBillAmount("5");
            		FlurryAgent.onEvent("5 Button");
            	}
            });
        View btn_six = findViewById(R.id.btn_six);
        btn_six.setOnClickListener(new OnClickListener() 
        	{
            	public void onClick(View v) 
            	{
            		AddBillAmount("6");
            		FlurryAgent.onEvent("6 Button");
            	}
            });
        View btn_seven = findViewById(R.id.btn_seven);
        btn_seven.setOnClickListener(new OnClickListener() 
        	{
            	public void onClick(View v) 
            	{
            		AddBillAmount("7");
            		FlurryAgent.onEvent("7 Button");
            	}
            });
        View btn_eight = findViewById(R.id.btn_eight);
        btn_eight.setOnClickListener(new OnClickListener() 
        	{
            	public void onClick(View v) 
            	{
            		AddBillAmount("8");
            		FlurryAgent.onEvent("8 Button");
            	}
            });
        View btn_nine = findViewById(R.id.btn_nine);
        btn_nine.setOnClickListener(new OnClickListener() 
        	{
            	public void onClick(View v) 
            	{
            		AddBillAmount("9");
            		FlurryAgent.onEvent("9 Button");
            	}
            });
        View btn_zero = findViewById(R.id.btn_zero);
        btn_zero.setOnClickListener(new OnClickListener() 
	        {
	        	public void onClick(View v) 
	        	{
	        		AddBillAmount("0");
	        		FlurryAgent.onEvent("0 Button");
	        	}
	        });
        View btn_delete = findViewById(R.id.btn_delete);
        btn_delete.setOnClickListener(new OnClickListener() 
        	{
            	public void onClick(View v) 
            	{
            		RemoveBillAmount();
            		FlurryAgent.onEvent("Delete Button");
            	}
            });
        
        btn_delete.setOnLongClickListener(new OnLongClickListener()
			{
				public boolean onLongClick(View v)
				{
					ClearBillAmount();
					return true;
				}
			});
//        Drawable d_delete = findViewById(R.id.btn_delete).getBackground();
//        int red = Color.parseColor("#8E1609");
//        PorterDuffColorFilter filter_red = new PorterDuffColorFilter(red, PorterDuff.Mode.SRC_ATOP);
//        d_delete.setColorFilter(filter_red);

        View btn_ok = findViewById(R.id.btn_ok);
        btn_ok.setOnClickListener(new OnClickListener() 
        	{
            	public void onClick(View v) 
            	{
            		CalcualteTipWithDefaultTipPercentage();
            		
            		Intent i = new Intent(getBaseContext(), Total.class);//new Intent(this, Total.class);
            		startActivity(i);
            	}
            });
//        Drawable d_ok = findViewById(R.id.btn_ok).getBackground();
//        int green = Color.parseColor("#216C2A");
//        PorterDuffColorFilter filter_green = new PorterDuffColorFilter(green, PorterDuff.Mode.SRC_ATOP);
//        d_ok.setColorFilter(filter_green);
    }
    
    public void onStart()
    {
       super.onStart();
       boolean enableErrorLogging = (boolean)Settings.getEnableErrorLogging(getBaseContext());
       String API = getString(R.string.flurrykey);
       if(!API.equals("") && enableErrorLogging == true)
       {
    	   FlurryAgent.setContinueSessionMillis(30000);
    	   FlurryAgent.onStartSession(this, API);
       }
    }
    
    public void onStop()
    {
       super.onStop();
      
       FlurryAgent.onEndSession(this);
    }
    
    @Override
    public void onDestroy()
    {
    	super.onDestroy();
    }
    
    @Override
  	public boolean onCreateOptionsMenu(Menu menu)
  	{
  		super.onCreateOptionsMenu(menu);
  		MenuInflater inflater = getMenuInflater();
  		inflater.inflate(R.menu.menu, menu);
  		FlurryAgent.onEvent("Menu Button");
  		return true;
  	}

  	@Override
  	public boolean onOptionsItemSelected(MenuItem item)
  	{
  		switch(item.getItemId())
  		{
  			case R.id.settings:
  				startActivity(new Intent(this, Settings.class));
  				FlurryAgent.onEvent("Settings Button");
  				return true;
  			case R.id.about:
  				startActivity(new Intent(this, About.class));
  				FlurryAgent.onEvent("About Button");
				return true;
  		}
  		return false;
  	}
  	
  	private void CalcualteTipWithDefaultTipPercentage()
  	{
  		TippyTipperApplication appState = ((TippyTipperApplication)this.getApplication());
		double defaultTipPercentage = (double)Settings.getDefaultTipPercentage(getBaseContext());
		float excludeTaxRate = (float)Settings.getExcludeTaxRate(getBaseContext());
		boolean enableExcludeTaxRate = (boolean)Settings.getEnableExcludeTaxRate(getBaseContext());
		if(enableExcludeTaxRate == false)
			excludeTaxRate = 0;
		
		Map<String, String> params = new HashMap<String, String>();
		params.put("Default Tip Percentage", String.valueOf(defaultTipPercentage));
		params.put("Exclude Tax Rate", String.valueOf(excludeTaxRate));
		params.put("Bill Amount", appState.service.GetBillAmount());
		FlurryAgent.onEvent("OK Button", params);
		
		appState.service.CalculateTip(defaultTipPercentage/100.0, excludeTaxRate/100.0);
  	}
    
    private void AddBillAmount(String number)
    {
    	TippyTipperApplication appState = ((TippyTipperApplication)this.getApplication());
    	appState.service.AppendNumberToBillAmount(number);
    	
		BindData();
    }
    
    private void RemoveBillAmount()
    {
    	TippyTipperApplication appState = ((TippyTipperApplication)this.getApplication());
    	appState.service.RemoveEndNumberFromBillAmount();
    	
    	BindData();
    }
    
    private void ClearBillAmount()
    {
    	TippyTipperApplication appState = ((TippyTipperApplication)this.getApplication());
    	appState.service.ClearBillAmount();
    	
    	BindData();
    }
    
    private void BindData()
    {
    	TippyTipperApplication appState = ((TippyTipperApplication)this.getApplication());
   
    	EditText txt_amount = (EditText)findViewById(R.id.txt_amount);
		txt_amount.setText(appState.service.GetBillAmount());
    }
 
}