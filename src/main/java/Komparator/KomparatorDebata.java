package Komparator;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Marcin
 */
import java.util.Comparator;
import pl.com.softproject.spring.crm.web.model.Debata;

public class KomparatorDebata implements Comparator<Debata> {

    @Override
    public int compare(Debata o1, Debata o2) {
        if (o2 == null) {
            return -1;
        }
        if (o1.getWyswietlenia() < o2.getWyswietlenia()) {
            return 1;
        } else if (o1.getWyswietlenia() > o2.getWyswietlenia()) {
            return -1;
        } else {
            return 0;
        }
    }
}
