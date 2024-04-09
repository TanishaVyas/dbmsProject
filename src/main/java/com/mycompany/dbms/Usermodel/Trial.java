/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.dbms.Usermodel;

import java.util.Objects;

public class Trial {

    private Integer Id;
    private String Name;
    private String Age;
    private String Email;
    private String Pass;
    private String Phone;

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 89 * hash + Objects.hashCode(this.Id);
        hash = 89 * hash + Objects.hashCode(this.Name);
        hash = 89 * hash + Objects.hashCode(this.Age);
        hash = 89 * hash + Objects.hashCode(this.Email);
        hash = 89 * hash + Objects.hashCode(this.Pass);
        hash = 89 * hash + Objects.hashCode(this.Phone);
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
        final Trial other = (Trial) obj;
        if (!Objects.equals(this.Name, other.Name)) {
            return false;
        }
        if (!Objects.equals(this.Age, other.Age)) {
            return false;
        }
        if (!Objects.equals(this.Email, other.Email)) {
            return false;
        }
        if (!Objects.equals(this.Pass, other.Pass)) {
            return false;
        }
        if (!Objects.equals(this.Phone, other.Phone)) {
            return false;
        }
        return Objects.equals(this.Id, other.Id);
    }
    
    

    public Integer getId() {
        return Id;
    }

    public void setId(Integer Id) {
        this.Id = Id;
    }
   
    
    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    public Trial() {

    }

    public String getPass() {
        return Pass;
    }

    public void setPass(String Pass) {
        this.Pass = Pass;
    }

    public Trial(String Name, String Age, String Email) {
        this.Name = Name;
        this.Age = Age;
        this.Email = Email;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getAge() {
        return Age;
    }

    public void setAge(String Age) {
        this.Age = Age;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    @Override
    public String toString() {
        return "Trial{" + "Id=" + Id + ", Name=" + Name + ", Age=" + Age + ", Email=" + Email + ", Phone=" + Phone + '}';
    }

    

}
