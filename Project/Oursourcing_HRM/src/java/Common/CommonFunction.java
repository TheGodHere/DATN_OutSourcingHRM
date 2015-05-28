/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Common;

import DTO.AccountDTO;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class CommonFunction {

    public ArrayList sortCollection(ArrayList list, Comparator a) {
        Collections.sort(list, a);
        System.out.println(list);
        return list;
    }

}
