/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Marcin
 */
public class RozmowcaDto {

    private Integer id;
    private String imie;
    private String nazwisko;
    private String dataurodzenia;
    private String opis;
    private MultipartFile zdjecie;

    public MultipartFile getZdjecie() {
        return zdjecie;
    }

    public void setZdjecie(MultipartFile zdjecie) {
        this.zdjecie = zdjecie;
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

    public String getDataurodzenia() {
        return dataurodzenia;
    }

    public void setDataurodzenia(String dataurodzenia) {
        this.dataurodzenia = dataurodzenia;
    }

    public String getOpis() {
        return opis;
    }

    public void setOpis(String opis) {
        this.opis = opis;
    }

}
