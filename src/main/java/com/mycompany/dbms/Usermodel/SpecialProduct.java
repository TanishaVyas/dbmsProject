/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.dbms.Usermodel;

public class SpecialProduct extends allproduct {

    private String specialFeature;

    public SpecialProduct(int productId, String name, int price, int stock, int sellerId, String typeProduct, String features, String description, String specialFeature) {
        super(productId, name, price, stock, sellerId, typeProduct, features, description);
        this.specialFeature = specialFeature;
    }

    public String getSpecialFeature() {
        return specialFeature;
    }

    public void setSpecialFeature(String specialFeature) {
        this.specialFeature = specialFeature;
    }

    @Override
    public String toString() {
        return "SpecialProduct{" +
                "productId=" + getProductId() +
                ", name='" + getName() + '\'' +
                ", price=" + getPrice() +
                ", stock=" + getStock() +
                ", sellerId=" + getSellerId() +
                ", typeProduct='" + getTypeProduct() + '\'' +
                ", features='" + getFeatures() + '\'' +
                ", description='" + getDescription() + '\'' +
                ", specialFeature='" + specialFeature + '\'' +
                '}';
    }
}
