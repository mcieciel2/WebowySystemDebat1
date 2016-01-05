/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import java.util.ArrayList;

/**
 *
 * @author Marcin
 */
public class RozmowcawDebacieDto {

    @Override
    public String toString() {
        return "RozmowcaForm{" + "id=" + id + ", argument=" + argument + '}';
    }
    private Integer id;
    ArrayList<String> argument;

    public RozmowcawDebacieDto() {
        argument = new ArrayList<String>();
        argument.add("1");
        argument.add("2");
        argument.add("3");
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public ArrayList<String> getArgument() {
        return argument;
    }

    public void setArgument(ArrayList<String> argument) {
        this.argument = argument;
    }
}
