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
public class Product {
    private Integer id;
    private String name;
    private Integer prize;
    private Integer stock;
    private Integer Seller;

    
    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", prize=" + prize + ", stock=" + stock + ", Seller=" + Seller + '}';
    }

    
    
    @Override
    public int hashCode() {
        int hash = 7;
        hash = 29 * hash + Objects.hashCode(this.id);
        hash = 29 * hash + Objects.hashCode(this.name);
        hash = 29 * hash + Objects.hashCode(this.prize);
        hash = 29 * hash + Objects.hashCode(this.stock);
        hash = 29 * hash + Objects.hashCode(this.Seller);
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
        final Product other = (Product) obj;
        if (!Objects.equals(this.name, other.name)) {
            return false;
        }
        if (!Objects.equals(this.id, other.id)) {
            return false;
        }
        if (!Objects.equals(this.prize, other.prize)) {
            return false;
        }
        if (!Objects.equals(this.stock, other.stock)) {
            return false;
        }
        return Objects.equals(this.Seller, other.Seller);
    }

    
    
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getPrize() {
        return prize;
    }

    public void setPrize(Integer prize) {
        this.prize = prize;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public Integer getSeller() {
        return Seller;
    }

    public void setSeller(Integer Seller) {
        this.Seller = Seller;
    }


}
