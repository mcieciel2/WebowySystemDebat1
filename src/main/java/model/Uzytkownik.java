/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Date;
import javax.imageio.ImageIO;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import org.hibernate.validator.constraints.Email;

/**
 *
 * @author Marcin
 */
@Entity
public class Uzytkownik {
    
         @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    
    
     private String login;
     
     private String haslo;
     
     private String imie;

  
     
     private String nazwisko;
   
       @Email
     private String email;
 
     private String rola;
      
     private boolean czyzablokowany;
      @Column
      private String zdjecie;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    @Override
    public String toString() {
        return "Uzytkownik{" + "id=" + id + ", login=" + login + ", haslo=" + haslo + ", imie=" + imie + ", nazwisko=" + nazwisko + ", email=" + email + ", rola=" + rola + ", czyzablokowany=" + czyzablokowany + '}';
    }

    public String getHaslo() {
        return haslo;
    }

    public void setHaslo(String haslo) {
        this.haslo = haslo;
    }

    public String getImie() {
        return imie;
    }

    public void setImie(String imie) {
        this.imie = imie;
    }

    public String getNazwisko() {
        return nazwisko;
    }

    public void setNazwisko(String nazwisko) {
        this.nazwisko = nazwisko;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRola() {
        return rola;
    }

    public void setRola(String rola) {
        this.rola = rola;
    }

    public boolean isCzyzablokowany() {
        return czyzablokowany;
    }

    public void setCzyzablokowany(boolean czyzablokowany) {
        this.czyzablokowany = czyzablokowany;
    }
    
}
