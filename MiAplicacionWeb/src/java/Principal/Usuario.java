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
    
    public int getEdad(){ // contamos que los meses tienen 30 dias, lo cual los años 360. de esta forma conseguimos una mejor precisión
        Calendar actual = Calendar.getInstance();
        int dias_actual = ( (actual.get(Calendar.YEAR) - 1) * 360) + (actual.get(Calendar.MONTH) * 30) + (actual.get(Calendar.DAY_OF_MONTH)); // cogemos los días pasados en total
        int dias_user = ( (fechaNac.get(Calendar.YEAR) - 1) * 360) + (actual.get(Calendar.MONTH) * 30) + (fechaNac.get(Calendar.DAY_OF_MONTH)); // cogemos los días totales en su fecha de nacimiento
        
        return (dias_actual - dias_user) / 360; // devolvemos la diferencia entre 365
    }
    
    public String getSigno(){
        String[]lista = new String [] { "Acuario", "Piscis", "Aries", "Tauro", "Géminis",
                                        "Cancer", "Leo", "Virgo", "Libra", "Escorpio",
                                        "Sagitario", "Capricornio" };
        return lista[fechaNac.get(Calendar.MONTH) - 1];
    }

    public void setFechaNac(Calendar fechaNac) {
        this.fechaNac = fechaNac;
    }
    
    
}
