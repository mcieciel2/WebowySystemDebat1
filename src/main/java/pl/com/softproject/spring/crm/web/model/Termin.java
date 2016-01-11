/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pl.com.softproject.spring.crm.web.model;

import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

/**
 *
 * @author Marcin
 */
@Entity
public class Termin {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    @Column
    private String nazwa;

    @ManyToOne(cascade = CascadeType.REMOVE)
    @JoinColumn(name = "kategoria_id")
    private Kategoria kategoria;

    @OneToMany(mappedBy = "termin", cascade = CascadeType.ALL)
    // @JoinColumn(name = "rozmowca_id")
    private List<WybraneTerminy> uzytkownicy;

    public List<WybraneTerminy> getUzytkownicy() {
        return uzytkownicy;
    }

    public void setUzytkownicy(List<WybraneTerminy> uzytkownicy) {
        this.uzytkownicy = uzytkownicy;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNazwa() {
        return nazwa;
    }

    public void setNazwa(String nazwa) {
        this.nazwa = nazwa;
    }

    public Kategoria getKategoria() {
        return kategoria;
    }

    public void setKategoria(Kategoria kategoria) {
        this.kategoria = kategoria;
    }

}
