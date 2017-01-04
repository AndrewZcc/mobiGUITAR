package net.mandaria.tippytipper.activities;

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

public class About extends Activity  {
	
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.about);  
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
}