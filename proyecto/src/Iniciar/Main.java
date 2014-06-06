/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Iniciar;

import Vistas.inicio;
import java.awt.Dimension;
import java.awt.Toolkit;

/**
 *
  */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                   inicio prin = new inicio();                    
                    //Hacer visible mi pantalla de inicio
                    prin.setVisible(true);
                    
            }
        });
    }

}
