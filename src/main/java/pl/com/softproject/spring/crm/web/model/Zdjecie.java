/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pl.com.softproject.spring.crm.web.model;

import java.sql.Blob;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author Marcin
 */
public class Zdjecie {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    @Column
    private Blob obraz;

    @Override
    public String toString() {
        return "Zdjecie{" + "id=" + id + ", obraz=" + obraz + '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Blob getObraz() {
        return obraz;
    }

    public void setObraz(Blob obraz) {
        this.obraz = obraz;
    }

}
