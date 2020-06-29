/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

/**
 *
 * @author jeanl
 */
public class ClienteHipotecario {
    
    private int rut;
    private int codigo_banco;
    private char hipotecario;

    public ClienteHipotecario() {
    }

    public ClienteHipotecario(int rut, int codigo_banco, char hipotecario) {
        this.rut = rut;
        this.codigo_banco = codigo_banco;
        this.hipotecario = hipotecario;
    }

    public int getRut() {
        return rut;
    }

    public void setRut(int rut) {
        this.rut = rut;
    }

    public int getCodigo_banco() {
        return codigo_banco;
    }

    public void setCodigo_banco(int codigo_banco) {
        this.codigo_banco = codigo_banco;
    }

    public char getHipotecario() {
        return hipotecario;
    }

    public void setHipotecario(char hipotecario) {
        this.hipotecario = hipotecario;
    }

    @Override
    public String toString() {
        return "ClienteHipotecario{" + "rut=" + rut + ", codigo_banco=" + codigo_banco + ", hipotecario=" + hipotecario + '}';
    }
    
    
    
}
