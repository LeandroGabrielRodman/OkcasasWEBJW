/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.util.Date;

/**
 *
 * @author Claudio
 */
public class Inspeccion {
    
    private String direccion;
    private String tipo_servicio;
    private Date fecha;
    private int celular;
    private String correo;
    private int rut;
    private char etapa;
    private int codigo_inspeccion;
    private int monto;

    public Inspeccion() {
    }

    public Inspeccion(String direccion, String tipo_servicio, Date fecha, int celular, String correo, int rut, char etapa, int codigo_inspeccion, int monto) {
        this.direccion = direccion;
        this.tipo_servicio = tipo_servicio;
        this.fecha = fecha;
        this.celular = celular;
        this.correo = correo;
        this.rut = rut;
        this.etapa = etapa;
        this.codigo_inspeccion = codigo_inspeccion;
        this.monto = monto;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTipo_servicio() {
        return tipo_servicio;
    }

    public void setTipo_servicio(String tipo_servicio) {
        this.tipo_servicio = tipo_servicio;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public int getCelular() {
        return celular;
    }

    public void setCelular(int celular) {
        this.celular = celular;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public int getRut() {
        return rut;
    }

    public void setRut(int rut) {
        this.rut = rut;
    }

    public char getEtapa() {
        return etapa;
    }

    public void setEtapa(char etapa) {
        this.etapa = etapa;
    }

    public int getCodigo_inspeccion() {
        return codigo_inspeccion;
    }

    public void setCodigo_inspeccion(int codigo_inspeccion) {
        this.codigo_inspeccion = codigo_inspeccion;
    }

    public int getMonto() {
        return monto;
    }

    public void setMonto(int monto) {
        this.monto = monto;
    }

    @Override
    public String toString() {
        return "Inspeccion{" + "direccion=" + direccion + ", tipo_servicio=" + tipo_servicio + ", fecha=" + fecha + ", celular=" + celular + ", correo=" + correo + ", rut=" + rut + ", etapa=" + etapa + ", codigo_inspeccion=" + codigo_inspeccion + ", monto=" + monto + '}';
    }
    
    

    
    
    
    
    
}
