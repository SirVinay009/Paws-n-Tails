/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Vinay
 */
public class AccessoryCartItem {

  private   int   accessoryid  ; 
      private   String accessorytype; 
      private   int   qty  ;     
      private   int   totalprice  ; 
    


  public AccessoryCartItem()
    { 
        
    }

    public AccessoryCartItem(int accessoryid, String accessorytype, int qty, int totalprice) {
        this.accessoryid = accessoryid;
        this.accessorytype = accessorytype;
        this.qty = qty;
        this.totalprice = totalprice;
    }



public int getAccessoryid()
{
return accessoryid;
}

 public void setAccessoryid(int accessoryid) {
        this.accessoryid = accessoryid;
    }

    
    
    public String getAccessorytype() {
        return accessorytype;
    }

    public void setAccessorytype(String accessorytype) {
        this.accessorytype = accessorytype;
    }

    
    
    public int getQty() {
        return qty;
    }

    public void setQty(int qty) {
        this.qty = qty;
    }

    
    
    public int getTotalprice() {
        return totalprice;
    }

    public void setTotalprice(int totalprice) {
        this.totalprice = totalprice;
    }
}   