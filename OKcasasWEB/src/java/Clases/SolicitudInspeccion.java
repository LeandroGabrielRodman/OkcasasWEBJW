/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

/**
 *
 * @author lanxi
 */
public class SolicitudInspeccion {
    /*direccion,tipo_servicio,correo, VARCHAR
    fecha hora tipo datetime
    celular,codigo_inspeccion,cliente rut NUMBER
    */
  
   private String direccion;
   private String tipo_servicio;
   private String fecha_hora;
   private int celular;
   private String correo;
   private int cliente_rut;
   private int monto;

    public SolicitudInspeccion() {
    }

    public SolicitudInspeccion(String direccion, String tipo_servicio, String fecha_hora, int celular, String correo, int cliente_rut, int monto) {
        this.direccion = direccion;
        this.tipo_servicio = tipo_servicio;
        this.fecha_hora = fecha_hora;
        this.celular = celular;
        this.correo = correo;
        this.cliente_rut = cliente_rut;
        this.monto = monto;
    }

    public String getDireccion() {
        return direccion;
    }

    public String getTipo_servicio() {
        return tipo_servicio;
    }

    public String getFecha_hora() {
        return fecha_hora;
    }

    public int getCelular() {
        return celular;
    }

    public String getCorreo() {
        return correo;
    }

    public int getCliente_rut() {
        return cliente_rut;
    }

    public int getMonto() {
        return monto;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public void setTipo_servicio(String tipo_servicio) {
        this.tipo_servicio = tipo_servicio;
    }

    public void setFecha_hora(String fecha_hora) {
        this.fecha_hora = fecha_hora;
    }

    public void setCelular(int celular) {
        this.celular = celular;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public void setCliente_rut(int cliente_rut) {
        this.cliente_rut = cliente_rut;
    }

    public void setMonto(int monto) {
        this.monto = monto;
    }

    @Override
    public String toString() {
        return "SolicitudInspeccion{" + "direccion=" + direccion + ", tipo_servicio=" + tipo_servicio + ", fecha_hora=" + fecha_hora + ", celular=" + celular + ", correo=" + correo + ", cliente_rut=" + cliente_rut + ", monto=" + monto + '}';
    }

   
}