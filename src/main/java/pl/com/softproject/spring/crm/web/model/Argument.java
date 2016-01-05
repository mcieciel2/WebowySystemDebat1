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
public class Argument {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    @Column
    private String tresc;
    @Column
    private int plus;
    @Column
    private int minus;

    @ManyToOne
    @JoinColumn(name = "rozmowcawdebacie_id")
    private RozmowcawDebacie rozmowcawdebacie;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTresc() {
        return tresc;
    }

    public void setTresc(String tresc) {
        this.tresc = tresc;
    }

    public int getPlus() {
        return plus;
    }

    public void setPlus(int plus) {
        this.plus = plus;
    }

    public int getMinus() {
        return minus;
    }

    public void setMinus(int minus) {
        this.minus = minus;
    }

    public RozmowcawDebacie getRozmowcawdebacie() {
        return rozmowcawdebacie;
    }

    public void setRozmowcawdebacie(RozmowcawDebacie rozmowcawdebacie) {
        this.rozmowcawdebacie = rozmowcawdebacie;
    }

}
