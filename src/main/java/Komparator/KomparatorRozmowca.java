/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Komparator;

import java.util.Comparator;
import pl.com.softproject.spring.crm.web.model.Rozmowca;

/**
 *
 * @author Marcin
 */
public class KomparatorRozmowca implements Comparator<Rozmowca> {

    @Override
    public int compare(Rozmowca o1, Rozmowca o2) {
        if (o2 == null) {
            return -1;
        }
        if (o1.getWygrane() < o2.getWygrane()) {
            return 1;
        } else if (o1.getWygrane() > o2.getWygrane()) {
            return -1;
        } else {
            return 0;
        }
    }
}
