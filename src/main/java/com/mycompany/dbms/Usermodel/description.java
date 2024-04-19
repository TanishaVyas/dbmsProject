/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.dbms.Usermodel;

import java.util.Objects;

/**
 *
 * @author Tanisha
 */
public class description {
    private Integer product_id;
    private String type_product;
    private String feature;
    private String description_product;

    @Override
    public String toString() {
        return "description{" + "product_id=" + product_id + ", type_product=" + type_product + ", feature=" + feature + ", description_product=" + description_product + '}';
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 19 * hash + Objects.hashCode(this.product_id);
        hash = 19 * hash + Objects.hashCode(this.type_product);
        hash = 19 * hash + Objects.hashCode(this.feature);
        hash = 19 * hash + Objects.hashCode(this.description_product);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final description other = (description) obj;
        if (!Objects.equals(this.type_product, other.type_product)) {
            return false;
        }
        if (!Objects.equals(this.feature, other.feature)) {
            return false;
        }
        if (!Objects.equals(this.description_product, other.description_product)) {
            return false;
        }
        return Objects.equals(this.product_id, other.product_id);
    }

    public Integer getProduct_id() {
        return product_id;
    }

    public void setProduct_id(Integer product_id) {
        this.product_id = product_id;
    }

    public String getType_product() {
        return type_product;
    }

    public void setType_product(String type_product) {
        this.type_product = type_product;
    }

    public String getFeature() {
        return feature;
    }

    public void setFeature(String feature) {
        this.feature = feature;
    }

    public String getDescription_product() {
        return description_product;
    }

    public void setDescription_product(String description_product) {
        this.description_product = description_product;
    }
    
    



}
