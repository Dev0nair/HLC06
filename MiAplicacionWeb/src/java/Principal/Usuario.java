/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Principal;

import java.util.Calendar;

/**
 *
 * @author alumno
 */
public class Usuario {
    private String nombre, apellido;
    private Calendar fechaNac;

    public Usuario(){
        
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public Calendar getFechaNac() {
        return fechaNac;
    }
    
    public int getEdad(){
        return (fechaNac.get(Calendar.DAY_OF_YEAR)) + (fechaNac.get(Calendar.YEAR) - 1 * 365); // lo que llevamos de año mas los anteriores      
    }
    
    public String getSigno(){
        String[]lista = new String [] { "Acuario", "piscis", "aries", "tauro", "géminis",
                                        "cancer", "leo", "virgo", "libra", "escorpio",
                                        "sagitario", "capricornio" };
        return lista[fechaNac.get(Calendar.MONTH)];
    }

    public void setFechaNac(Calendar fechaNac) {
        this.fechaNac = fechaNac;
    }
    
    
}
