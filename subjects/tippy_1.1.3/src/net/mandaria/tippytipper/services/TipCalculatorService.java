package net.mandaria.tippytipper.services;

import java.text.DecimalFormat;
import java.text.NumberFormat;

import net.mandaria.tippytipper.R;
import net.mandaria.tippytipper.TippyTipperApplication;
import android.widget.EditText;
import android.widget.TextView;

public class TipCalculatorService 
{
	private String BillEntry = "";
	private double BillAmount = 0;
	private double BillAmountBeforeTax = 0;
	private double TaxAmount = 0;
	private double TipAmount = 0;
	private double TipAmountBeforeRounded = 0;
	private double TotalAmount = 0;
	private double TotalAmountBeforeRounded = 0;
	private double TipPercentage = 0.15;
	private double TaxPercentage = 0;
	private double SplitBillAmount = 0;
	private double SplitTaxAmount = 0;
	private double SplitTipAmount = 0;
	private double SplitTotalAmount = 0;
	private double SplitAdjustment = 0;
	private int NumberOfPeople = 2;
	NumberFormat nf = NumberFormat.getCurrencyInstance();
	
	public TipCalculatorService()
	{
		
	}
	
	public String GetBillAmount() 
	{
		return nf.format(BillAmount);
    }
	
	public String GetTipAmount()
	{
		return nf.format(TipAmount);
	}
	
	public String GetTotalAmount()
	{
		return nf.format(TotalAmount);
	}
	
	public String GetTaxAmount()
	{
		return nf.format(TaxAmount);
	}
	
	public String GetSplitBillAmount()
	{
		return nf.format(SplitBillAmount);
	}
	
	public String GetSplitTaxAmount()
	{
		return nf.format(SplitTaxAmount);
	}
	
	public String GetSplitTipAmount()
	{
		return nf.format(SplitTipAmount);
	}
	
	public String GetSplitAdjustment()
	{
		return nf.format(SplitAdjustment);
	}
	
	public String GetSplitTotalAmount()
	{
		return nf.format(SplitTotalAmount);
	}
	
	public String GetTipPercentage()
	{
		double percent = TipPercentage * 100;
		DecimalFormat dec = new DecimalFormat("0.0");
		return dec.format(percent) + "%";
	}
	
	public String GetTaxPercentage()
	{
		double percent = TaxPercentage * 100;
		DecimalFormat dec = new DecimalFormat("0.0##");
		return dec.format(percent) + "%";
	}
	
	public double GetTipPercentageAsDouble()
	{
		double percent = TipPercentage * 100;
		return percent;
	}
	
	public int GetNumberOfPeople()
	{
		return NumberOfPeople;
	}
	
	public int GetTipPercentageRounded()
	{
		int percent = (int)Math.round(TipPercentage * 100);
		return percent;
	}
	
	public void SetTipPercentage(double percent)
	{
		TipPercentage = percent;
	}
	
	public void SetTaxPercentage(double percent)
	{
		TaxPercentage = percent;
	}
	
	public void RefreshBillAmount()
	{
		double amount;
		try
		{
			amount = Double.valueOf(BillEntry);
		}
		catch(Exception ex)
		{
			amount = 0;
		}
    	amount = amount / 100;
    	BillAmount = amount; 
    	BillAmountBeforeTax = BillAmount;
	}
    
    public void AppendNumberToBillAmount(String number)
    {
    	if(BillEntry.length() < 15)
    	{
	    	BillEntry = BillEntry + "" + number;
    	}
    	double amount = Double.valueOf(BillEntry);
    	amount = amount / 100;
    	BillAmount = amount; 
    	BillAmountBeforeTax = BillAmount;
    }
    
    public void RemoveEndNumberFromBillAmount()
    {
    	if(BillEntry.length() > 1)
    	{
    		BillEntry = BillEntry.substring(0, BillEntry.length() - 1);
    		double amount = Double.valueOf(BillEntry);
    		amount = amount / 100;
    		BillAmount = amount;
    	}
    	else 
    	{
    		BillEntry = "";
    		BillAmount = 0;
		}
    	BillAmountBeforeTax = BillAmount;
    }
    
    public void ClearBillAmount()
    {
    	BillEntry = "";
    	BillAmount = 0;
    	BillAmountBeforeTax = BillAmount;
    }
    
    public void CalculateTip()
    {	
    	if(TaxPercentage > 0)
    	{
    		BillAmount = BillAmountBeforeTax;
    		double bill_amount = BillAmount / (1 + TaxPercentage);
    		double bill_amount_rounded = Math.round(bill_amount * 100) / 100.0; // round bill to nearest penny
    		BillAmount = bill_amount_rounded;
    		
    		double tax_amount = bill_amount * TaxPercentage; // Note: must calculate tax off of non-rounded bill amount to avoid off by 1 cent errors
    		tax_amount = Math.round(tax_amount * 100) / 100.0; // round tax to nearest penny
    		TaxAmount = tax_amount;
    	}
    	else
    	{
    		TaxAmount = 0;
    	}
    	
  		double tip_amount = BillAmount * TipPercentage;
  		tip_amount = Math.round(tip_amount * 100) / 100.0; // round tip to nearest penny
  		double total_amount = BillAmount + TaxAmount + tip_amount; 
  		
  		TipAmount = tip_amount;
  		TotalAmount = total_amount;
  		TotalAmountBeforeRounded = TotalAmount;
  		TipAmountBeforeRounded = TipAmount;
    }
    
    public void CalculateTip(double percent)
    {
    	SetTipPercentage(percent);
    	CalculateTip();
    }
    
    public void CalculateTip(double percent, double taxPercent)
    {
    	SetTaxPercentage(taxPercent);
    	CalculateTip(percent);
    }
    
    public void RoundUp(boolean RoundTip)
    {
    	if(RoundTip)
    	{
    		TipAmount = TipAmountBeforeRounded;
    		TipAmount = Math.ceil(TipAmount);
    		TotalAmount = BillAmount + TaxAmount + TipAmount;
    	}
    	else
    	{
    		TotalAmount = TotalAmountBeforeRounded;
        	TotalAmount = Math.ceil(TotalAmount);
        	TipAmount = TotalAmount - BillAmount - TaxAmount;
    	}
    	TipPercentage = ((TotalAmount - TaxAmount)/BillAmount) - 1;
    }
    
    public void RoundDown(boolean RoundTip)
    {
    	if(RoundTip)
    	{
    		TipAmount = TipAmountBeforeRounded;
    		TipAmount = Math.floor(TipAmount);
    		TotalAmount = BillAmount + TaxAmount + TipAmount;
    		TipPercentage = ((TotalAmount - TaxAmount)/BillAmount) - 1;
    	}
    	else
    	{
	    	if(Math.floor(TotalAmountBeforeRounded) >= (BillAmount + TaxAmount))
	    	{
	    		TotalAmount = TotalAmountBeforeRounded;
	    		TotalAmount = Math.floor(TotalAmount);
	    		TipAmount = TotalAmount - BillAmount - TaxAmount;
	    		TipPercentage = ((TotalAmount - TaxAmount)/BillAmount) - 1;
	    	}
    	}
    }
    
    public void SplitBill(int people)
    {
    	if(people < 1)
    		throw new IllegalArgumentException("Number of people cannot be below one.");
    	NumberOfPeople = people;
    	
//    	int SplitTotalInteger = (int)(TotalAmount *100.0);
//    	int SplitTotalRemainder = (int)SplitTotalInteger % NumberOfPeople;
//    	double Adjustment = 0;
//    	if(SplitTotalRemainder != 0)
//    		Adjustment = -(double)SplitTotalRemainder + (double)NumberOfPeople;
//    	Adjustment = (Math.round(Adjustment/NumberOfPeople)/100.0);
    	
    	
//    	int SplitBillInteger = (int)(BillAmount * 100.0);
//    	int SplitBillRemainder = (int)SplitBillInteger % NumberOfPeople;
//    	if(SplitBillRemainder != 0)
//    		SplitBillAmount = (double)SplitBillInteger - (double)SplitBillRemainder + (double)NumberOfPeople;
//    	else
//    		SplitBillAmount = (double)SplitBillInteger;
    	//SplitBillAmount = SplitBillAmount / 100.0;
    	//SplitBillAmount = SplitBillAmount / NumberOfPeople;
    	
    	SplitBillAmount = Math.floor((BillAmount / NumberOfPeople) * 100.0)/100.0;
    	
    	
    	// calculate tip TODO: Can be refactored with CalculateTip() function into a generic function for both places
    	double tax_amount = 0;
    	if(TaxPercentage > 0)
    	{
    		//tax_amount = SplitBillAmount * TaxPercentage;
    		//tax_amount = Math.floor(tax_amount * 100) / 100.0; // round tax to nearest penny
    		//tax_amount = tax_amount + Adjustment;
    		
    		tax_amount = Math.floor((TaxAmount / NumberOfPeople) * 100.0) / 100.0; 
    	}
    	else
    	{
    		tax_amount = 0;
    	}
    	
    	//double tip_amount = SplitBillAmount * TipPercentage;
  		double tip_amount = Math.floor((TipAmount / NumberOfPeople) * 100.0) / 100.0; // round tip to nearest penny
  		double total_amount = SplitBillAmount + tax_amount + tip_amount; 
  		
  		// if off by one penny, adjust the amount to reflect this correctly by increasing the tax_amount
  		double adjustment = 0;
  		if(total_amount < Math.ceil((TotalAmount/NumberOfPeople)*100.0)/100.0)
  		{
  			adjustment =  Math.round((Math.ceil((TotalAmount/NumberOfPeople)*100.0)/100.0 - total_amount)*100.0)/100.0;//Math.round((TotalAmount - (total_amount * NumberOfPeople))*100.0)/100.0;
  			total_amount = total_amount + adjustment;
  			
  		}
  		
  		SplitAdjustment = adjustment;
  		SplitTaxAmount = tax_amount;
  		SplitTipAmount = tip_amount;
  		SplitTotalAmount = total_amount;
    }
    
}
