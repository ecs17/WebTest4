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
public class Proveedor implements Serializable {

    private static final long serialVersionUID = 8751282105532159742L;
    private Integer id;
    private String nombre;
    private TipoProveedor tipo_proveedor;
    private String estado_proveedor;
    private Integer telefono;
    private String rfc;
    private String correo_electronico;

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

    public TipoProveedor getTipo_proveedor() {
        return tipo_proveedor;
    }

    public void setTipo_proveedor(TipoProveedor tipo_proveedor) {
        this.tipo_proveedor = tipo_proveedor;
    }

    public String getEstado_proveedor() {
        return estado_proveedor;
    }

    public void setEstado_proveedor(String estado_proveedor) {
        this.estado_proveedor = estado_proveedor;
    }

    public Integer getTelefono() {
        return telefono;
    }

    public void setTelefono(Integer telefono) {
        this.telefono = telefono;
    }

    public String getRfc() {
        return rfc;
    }

    public void setRfc(String rfc) {
        this.rfc = rfc;
    }

    public String getCorreo_electronico() {
        return correo_electronico;
    }

    public void setCorreo_electronico(String correo_electronico) {
        this.correo_electronico = correo_electronico;
    }
    
    
}
