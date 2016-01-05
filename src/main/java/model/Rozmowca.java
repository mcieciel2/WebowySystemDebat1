/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

/**
 *
 * @author Marcin
 */
@Entity
public class Rozmowca {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    @Column
    private String imie;
    @Column
    private String nazwisko;
    @Column
    private Date dataurodzenia;
    @Column
    private String opis;

    @Column
    private int odbyte;
    @Column
    private int wygrane;
    @Column
    private int ranking;

    @OneToMany(mappedBy = "rozmowca", cascade = CascadeType.ALL)
    //@JoinColumn(name = "debata_id")
    List<RozmowcawDebacie> debaty;

    public List<RozmowcawDebacie> getDebaty() {
        return debaty;
    }

    public void setDebaty(List<RozmowcawDebacie> debaty) {
        this.debaty = debaty;
    }

    public Rozmowca() {

        debaty = new ArrayList();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public Date getDataurodzenia() {
        return dataurodzenia;
    }

    public void setDataurodzenia(Date dataurodzenia) {
        this.dataurodzenia = dataurodzenia;
    }

    public String getOpis() {
        return opis;
    }

    public void setOpis(String opis) {
        this.opis = opis;
    }

    public int getOdbyte() {
        return odbyte;
    }

    public void setOdbyte(int odbyte) {
        this.odbyte = odbyte;
    }

    public int getWygrane() {
        return wygrane;
    }

    public void setWygrane(int wygrane) {
        this.wygrane = wygrane;
    }

    public int getRanking() {
        return ranking;
    }

    public void setRanking(int ranking) {
        this.ranking = ranking;
    }

}
