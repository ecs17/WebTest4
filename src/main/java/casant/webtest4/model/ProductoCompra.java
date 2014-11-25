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
public class ProductoCompra implements Serializable {

    private static final long serialVersionUID = 8751282105532159742L;
    private Compra compra;
    private Producto producto;
    private Float cantidad;

    public Compra getCompra() {
        return compra;
    }

    public void setCompra(Compra compra) {
        this.compra = compra;
    }

    public Producto getProducto() {
        return producto;
    }

    public void setProducto(Producto producto) {
        this.producto = producto;
    }

    public Float getCantidad() {
        return cantidad;
    }

    public void setCantidad(Float cantidad) {
        this.cantidad = cantidad;
    }
    
    
}
