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
public class Precio implements Serializable{
    
    private static final long serialVersionUID = 8751282105532159742L;
    
    private Integer id;
    private Float precio_compra;
    private Float precio_venta;
    private Integer iva;
    private Integer ieps;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Float getPrecio_compra() {
        return precio_compra;
    }

    public void setPrecio_compra(Float precio_compra) {
        this.precio_compra = precio_compra;
    }

    public Float getPrecio_venta() {
        return precio_venta;
    }

    public void setPrecio_venta(Float precio_venta) {
        this.precio_venta = precio_venta;
    }

    public Integer getIva() {
        return iva;
    }

    public void setIva(Integer iva) {
        this.iva = iva;
    }

    public Integer getIeps() {
        return ieps;
    }

    public void setIeps(Integer ieps) {
        this.ieps = ieps;
    }
    
    
}
