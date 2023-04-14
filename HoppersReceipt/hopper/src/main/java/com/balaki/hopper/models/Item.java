package com.balaki.hopper.models;

public class Item {
   private String itemName;
   private Double price;
   private String description;
   private String vendor;


    public Item() {
    }


    public Item(String itemName, Double price, String description, String vendor) {
        this.itemName = itemName;
        this.price = price;
        this.description = description;
        this.vendor = vendor;
    }


    public String getItemName() {
        return this.itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public Double getPrice() {
        return this.price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getVendor() {
        return this.vendor;
    }

    public void setVendor(String vendor) {
        this.vendor = vendor;
    }



    
}
