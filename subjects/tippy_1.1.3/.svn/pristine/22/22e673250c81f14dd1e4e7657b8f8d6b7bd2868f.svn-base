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
import android.os.Bundle;
import android.view.*;
import android.view.View.OnClickListener;
import android.widget.*;
import android.widget.SeekBar.OnSeekBarChangeListener;

public class SplitBill extends Activity {

	
	/** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.splitbill);  
        
        TippyTipperApplication appState = ((TippyTipperApplication)this.getApplication());
        
        SplitBill(appState.service.GetNumberOfPeople());
		
        View btn_add_person = findViewById(R.id.btn_add_person);
        btn_add_person.setOnClickListener(new OnClickListener() 
        	{
            	public void onClick(View v) 
            	{
            		AddPerson();
            		FlurryAgent.onEvent("Add Person Button");
            	}
            });
        
        View btn_remove_person = findViewById(R.id.btn_remove_person);
        btn_remove_person.setOnClickListener(new OnClickListener() 
        	{
            	public void onClick(View v) 
            	{
            		RemovePerson();
            		FlurryAgent.onEvent("Remove Person Button");
            	}
            });
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
  	public boolean onCreateOptionsMenu(Menu menu)
  	{
  		super.onCreateOptionsMenu(menu);
  		MenuInflater inflater = getMenuInflater();
  		//inflater.inflate(R.menu.menu, menu);
  		FlurryAgent.onEvent("Disabled Menu Button");
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
  		}
  		return false;
  	}
    
    private void AddPerson()
    {
    	TippyTipperApplication appState = ((TippyTipperApplication)this.getApplication());
    	int people = appState.service.GetNumberOfPeople() + 1;
    	
    	SplitBill(people);
    }
    
    private void RemovePerson()
    {
    	TippyTipperApplication appState = ((TippyTipperApplication)this.getApplication());
    	int people = appState.service.GetNumberOfPeople() - 1;
    	
    	if(people > 1)
    		SplitBill(people);
    }
    
    private void SplitBill(int people)
    {
    	TippyTipperApplication appState = ((TippyTipperApplication)this.getApplication());
    	appState.service.SplitBill(people);
    	
    	BindData();
    }
    
    private void BindData()
    {
    	TippyTipperApplication appState = ((TippyTipperApplication)this.getApplication());
    	
    	TextView lbl_split_amount = (TextView)findViewById(R.id.lbl_split_amount);
		TextView lbl_split_tip = (TextView)findViewById(R.id.lbl_split_tip);
		TextView lbl_split_adjustment = (TextView)findViewById(R.id.lbl_split_adjustment);
		TextView lbl_split_total = (TextView)findViewById(R.id.lbl_split_total);
		TextView lbl_NumberOfPeople = (TextView)findViewById(R.id.lbl_NumberOfPeople);
		
		View inflated_splitTax = findViewById(R.id.inflated_splitTax);
		
		float excludeTaxRate = (float)Settings.getExcludeTaxRate(getBaseContext());
		if(excludeTaxRate != 0)
		{
			ViewStub stub_splitTax = (ViewStub)findViewById(R.id.stub_splitTax);
			if(stub_splitTax != null)
				stub_splitTax.setVisibility((int)View.VISIBLE);
			else if(inflated_splitTax != null)
				inflated_splitTax.setVisibility((int)View.VISIBLE);
			TextView lbl_split_tax = (TextView)findViewById(R.id.lbl_split_tax);
			lbl_split_tax.setText(appState.service.GetSplitTaxAmount());
		}
		else
		{
			if(inflated_splitTax != null)
				inflated_splitTax.setVisibility((int)View.GONE);
		}
		
		lbl_split_amount.setText(appState.service.GetSplitBillAmount());
		lbl_split_tip.setText(appState.service.GetSplitTipAmount());
		lbl_split_adjustment.setText(appState.service.GetSplitAdjustment());
		lbl_split_total.setText(appState.service.GetSplitTotalAmount());
		lbl_NumberOfPeople.setText(Integer.toString(appState.service.GetNumberOfPeople()));
		
		Map<String, String> params = new HashMap<String, String>();
		params.put("Number of People", String.valueOf(appState.service.GetNumberOfPeople()));
		params.put("Split Bill Amount", appState.service.GetSplitBillAmount());
		params.put("Split Tax Amount", appState.service.GetSplitTaxAmount());
		params.put("Split Tip Amount", appState.service.GetSplitTipAmount());
		params.put("Split Adjustment Amount", appState.service.GetSplitAdjustment());
		params.put("Split Total Amount", appState.service.GetSplitTotalAmount());
		FlurryAgent.onEvent("Split Bill Bind Data", params);
		
    }
}
