/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pl.com.softproject.spring.crm.web.model;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
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
public class RozmowcawDebacie {

    public RozmowcawDebacie() {
        argument = new ArrayList<>();
    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "rozmowca_id")
    private Rozmowca rozmowca;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "debata_id")
    private Debata debata;

    @OneToMany(cascade = CascadeType.ALL)
    private List<Argument> argument;

    public List<Argument> getArgument() {
        return argument;
    }

    public void setArgument(List<Argument> argument) {
        this.argument = argument;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Rozmowca getRozmowca() {
        return rozmowca;
    }

    public void setRozmowca(Rozmowca rozmowca) {
        this.rozmowca = rozmowca;
    }

    public Debata getDebata() {
        return debata;
    }

    public void setDebata(Debata debata) {
        this.debata = debata;
    }

}
