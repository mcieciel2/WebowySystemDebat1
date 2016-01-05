/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package form;

import java.util.ArrayList;

/**
 *
 * @author Marcin
 */
public class DebataForm {

    @Override
    public String toString() {
        return "DebataForm{" + "id=" + id + ", tytul=" + tytul + ", opis=" + opis + ", data=" + data + ", video=" + video + ", kategoriaIndex=" + kategoriaIndex + ", listarozmowcow=" + listarozmowcow + ", unused=" + unused + '}';
    }

    private Integer id;
    private String tytul;
    private String opis;
    private String data;
    private String video;
    private Integer kategoriaIndex;
    ArrayList<RozmowcawDebacieDto> listarozmowcow;

    private Integer unused;

    public Integer getUnused() {
        return unused;
    }

    public void setUnused(Integer unused) {
        this.unused = unused;
    }

    public Integer getId() {
        return id;
    }

    public DebataForm() {

        listarozmowcow = new ArrayList();
        listarozmowcow.add(new RozmowcawDebacieDto());
        listarozmowcow.add(new RozmowcawDebacieDto());

    }

    public ArrayList<RozmowcawDebacieDto> getListarozmowcow() {
        return listarozmowcow;
    }

    public void setListarozmowcow(ArrayList<RozmowcawDebacieDto> listarozmowcow) {
        this.listarozmowcow = listarozmowcow;
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

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getVideo() {
        return video;
    }

    public void setVideo(String video) {
        this.video = video;
    }

    public Integer getKategoriaIndex() {
        return kategoriaIndex;
    }

    public void setKategoriaIndex(Integer kategoriaIndex) {
        this.kategoriaIndex = kategoriaIndex;
    }

}
