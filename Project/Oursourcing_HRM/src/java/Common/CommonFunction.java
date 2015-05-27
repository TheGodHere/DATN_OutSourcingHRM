/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Common;

import DTO.AccountDTO;
import DTO.ProjectDTO;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class CommonFunction {

    public String ConvertListProjectToJSON(List<DTO.ProjectDTO> list) {
        String result = "[";
        int index = 0;
        for (ProjectDTO project : list) {
            index++;
            result += "{";
            result += "\"No.\": " + index + ", ";  //Number
            result += "\"Project\": " + "\"" + project.getProName() + "\"" + ", ";  //String
            result += "\"Manager\": " + "\"" + project.getManaName() + "\"" + ", ";  //String
            result += "\"Start date\": " + "\"" + project.getStartDate() + "\"" + ", ";  //String
            result += "\"Size\": " + project.getSize() + ", "; //Number
            result += "\"Language\": " + "\"" + project.getLanguage() + "\"" + ", ";
            result += "\"Customer\": " + "\"" + project.getCustomer() + "\"" + ", ";
            result = result.substring(0, result.length() - 2);
            result += "},";
        }

        result = result.substring(0, result.length() - 1);
        result += "]";
        return result;
    }

//    public boolean swapObject(E obj1, E obj2) {   // usage: z = swap(a, a=b, b=c, ... y=z);
//        E tmp = (E) obj1.deepClone();
//        obj1 = (E) obj2.deepClone();
//        obj2 = (E) tmp.deepClone();
//        obj1.
//        return true;
//    }
    
    public List sortCollection(ArrayList list) {
        Collections.sort(list, AccountDTO.UsernameComparator);
        System.out.println(list);
        return list;
    }

}
