package model;




public class CartItem  
{

      private   int   petid  ; 
      private   String petbreed; 
      private   int   qty  ;     
      private   int   totalprice  ; 

      
    public CartItem()
    { 
        
    }

    public CartItem(int petid, String petbreed, int qty, int totalprice) {
        this.petid = petid;
        this.petbreed = petbreed;
        this.qty = qty;
        this.totalprice = totalprice;
    }
      
      
   

    public int getPetid() {
        return petid;
    }

    public void setPetid(int petid) {
        this.petid = petid;
    }

    
    
    public String getPetbreed() {
        return petbreed;
    }

    public void setPetbreed(String petbreed) {
        this.petbreed = petbreed;
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
