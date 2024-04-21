package com.mycompany.dbms.Usermodel;

public class shipping {
    private int billno;
    private String firstname;
    private String lastname;
    private String Address;
    private int phonenumber;
    private int total;

    @Override
    public String toString() {
        return "shipping{" + "billno=" + billno + ", firstname=" + firstname + ", lastname=" + lastname + ", Address=" + Address + ", phonenumber=" + phonenumber + ", total=" + total + '}';
    }

    public shipping() {
    }

    public shipping(int billno, String firstname, String lastname, String Address, int phonenumber, int total) {
        this.billno = billno;
        this.firstname = firstname;
        this.lastname = lastname;
        this.Address = Address;
        this.phonenumber = phonenumber;
        this.total = total;
    }

    public int getBillno() {
        return billno;
    }

    public void setBillno(int billno) {
        this.billno = billno;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public int getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(int phonenumber) {
        this.phonenumber = phonenumber;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }
    
    
}
