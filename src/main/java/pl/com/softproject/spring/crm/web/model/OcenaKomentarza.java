/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pl.com.softproject.spring.crm.web.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

/**
 *
 * @author Marcin
 */
  @Entity
public class OcenaKomentarza {
     
 

    
       @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
       @Column
       private boolean ocena;
       
               @ManyToOne
    @JoinColumn(name = "uzytkownik_id")
   private Uzytkownik uzytkownik;
        
         @ManyToOne
    @JoinColumn(name = "komentarz_id")
   private Komentarz komentarz;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public boolean isOcena() {
        return ocena;
    }

    public void setOcena(boolean ocena) {
        this.ocena = ocena;
    }

    public Uzytkownik getUzytkownik() {
        return uzytkownik;
    }

    public void setUzytkownik(Uzytkownik uzytkownik) {
        this.uzytkownik = uzytkownik;
    }

    public Komentarz getKomentarz() {
        return komentarz;
    }

    public void setKomentarz(Komentarz komentarz) {
        this.komentarz = komentarz;
    }
       
       
    }

