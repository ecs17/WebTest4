/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package casant.webtest4.model;

import java.io.Serializable;

/**
 *
 * @author Emmanuel
 */
public class TipoVentaCompra implements Serializable {

    private static final long serialVersionUID = 8751282105532159742L;
    private Integer id;
    private String nombre;
    private String descripcion;
    private String avreviatura;
    private Integer activo;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getAvreviatura() {
        return avreviatura;
    }

    public void setAvreviatura(String avreviatura) {
        this.avreviatura = avreviatura;
    }

    public Integer getActivo() {
        return activo;
    }

    public void setActivo(Integer activo) {
        this.activo = activo;
    }
    
    
}
