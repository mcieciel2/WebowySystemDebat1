/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pl.com.softproject.spring.crm.web.model;

import dto.DebataDto;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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
public class Debata {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    @Column
    private String tytul;

    @Column
    private String opis;
    @Column
    private Date data;
    @Column
    private String video;

    @Column
    private Integer wyswietlenia;

    @Column
    private Double ocena;

    public Double getOcena() {
        return ocena;
    }

    public void setOcena(Double ocena) {
        this.ocena = ocena;
    }

    public Integer getLiczbaocen() {
        return liczbaocen;
    }

    public void setLiczbaocen(Integer liczbaocen) {
        this.liczbaocen = liczbaocen;
    }

    @Column
    private Integer liczbaocen;

    public Integer getWyswietlenia() {
        return wyswietlenia;
    }

    public void setWyswietlenia(Integer wyswietlenia) {
        this.wyswietlenia = wyswietlenia;
    }

    public List<RozmowcawDebacie> getRozmowcy() {
        return rozmowcy;
    }

    public void setRozmowcy(List<RozmowcawDebacie> rozmowcy) {
        this.rozmowcy = rozmowcy;
    }

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "kategoria_id")
    private Kategoria kategoria;

    @OneToMany(mappedBy = "debata", cascade = CascadeType.ALL)
    // @JoinColumn(name = "rozmowca_id")
    private List<RozmowcawDebacie> rozmowcy;

    public List<RozmowcawDebacie> getRozmowca() {
        return rozmowcy;
    }

    public void setRozmowca(List<RozmowcawDebacie> rozmowcy) {
        this.rozmowcy = rozmowcy;
    }

    public Debata() {

        rozmowcy = new ArrayList();
    }

    public Debata(DebataDto debata) {

        rozmowcy = new ArrayList();
        tytul = debata.getTytul();
        opis = debata.getOpis();
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        try {
            if (debata.getData() != null) {
                data = df.parse(debata.getData());
            }
        } catch (ParseException ex) {
            Logger.getLogger(Debata.class.getName()).log(Level.SEVERE, null, ex);
        }
        video = debata.getVideo();
        kategoria = new Kategoria();
        kategoria.setId(debata.getId());
        wyswietlenia = 0;
        ocena = 0.0;
        liczbaocen = 0;

    }

    public void powiekszwyswietlenia() {

        wyswietlenia = wyswietlenia + 1;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTytul() {
        return tytul;
    }

    public void setTytul(String tytul) {
        this.tytul = tytul;
    }

    public String getOpis() {
        return opis;
    }

    public void setOpis(String opis) {
        this.opis = opis;
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }

    public String getVideo() {
        return video;
    }

    public void setVideo(String video) {
        this.video = video;
    }

    public Kategoria getKategoria() {
        return kategoria;
    }

    public void setKategoria(Kategoria kategoria) {
        this.kategoria = kategoria;
    }

}
