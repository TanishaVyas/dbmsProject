package com.mycompany.dbms.Usermodel;

import java.util.Objects;

public class allproduct {

    private int productId;
    private String name;
    private int price;
    private int stock;
    private int sellerId;
    private String typeProduct;
    private String features;
    private String description;

    public allproduct(int productId, String name, int price, int stock, int sellerId, String typeProduct, String features, String description) {
        this.productId = productId;
        this.name = name;
        this.price = price;
        this.stock = stock;
        this.sellerId = sellerId;
        this.typeProduct = typeProduct;
        this.features = features;
        this.description = description;
    }

    
    @Override
    public String toString() {
        return "allproduct{" + "productId=" + productId + ", name=" + name + ", price=" + price + ", stock=" + stock + ", sellerId=" + sellerId + ", typeProduct=" + typeProduct + ", features=" + features + ", description=" + description + '}';
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 23 * hash + this.productId;
        hash = 23 * hash + Objects.hashCode(this.name);
        hash = 23 * hash + this.price;
        hash = 23 * hash + this.stock;
        hash = 23 * hash + this.sellerId;
        hash = 23 * hash + Objects.hashCode(this.typeProduct);
        hash = 23 * hash + Objects.hashCode(this.features);
        hash = 23 * hash + Objects.hashCode(this.description);
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
        final allproduct other = (allproduct) obj;
        if (this.productId != other.productId) {
            return false;
        }
        if (this.price != other.price) {
            return false;
        }
        if (this.stock != other.stock) {
            return false;
        }
        if (this.sellerId != other.sellerId) {
            return false;
        }
        if (!Objects.equals(this.name, other.name)) {
            return false;
        }
        if (!Objects.equals(this.typeProduct, other.typeProduct)) {
            return false;
        }
        if (!Objects.equals(this.features, other.features)) {
            return false;
        }
        return Objects.equals(this.description, other.description);
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public int getSellerId() {
        return sellerId;
    }

    public void setSellerId(int sellerId) {
        this.sellerId = sellerId;
    }

    public String getTypeProduct() {
        return typeProduct;
    }

    public void setTypeProduct(String typeProduct) {
        this.typeProduct = typeProduct;
    }

    public String getFeatures() {
        return features;
    }

    public void setFeatures(String features) {
        this.features = features;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    
}
