/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package casant.webtest4.model;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author Emmanuel
 */
public class Compra implements Serializable {

    private static final long serialVersionUID = 8751282105532159742L;
    private Integer id;
    private Date fecha_hora;
    private Proveedor proveedor;
    private Importe importe;
    private Integer tipo_compra;
    private TipoPago tipo_pago;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getFecha_hora() {
        return fecha_hora;
    }

    public void setFecha_hora(Date fecha_hora) {
        this.fecha_hora = fecha_hora;
    }

    public Integer getTipo_compra() {
        return tipo_compra;
    }

    public void setTipo_compra(Integer tipo_compra) {
        this.tipo_compra = tipo_compra;
    }

    public Proveedor getProveedor() {
        return proveedor;
    }

    public void setProveedor(Proveedor proveedor) {
        this.proveedor = proveedor;
    }

    public Importe getImporte() {
        return importe;
    }

    public void setImporte(Importe importe) {
        this.importe = importe;
    }

    public TipoPago getTipo_pago() {
        return tipo_pago;
    }

    public void setTipo_pago(TipoPago tipo_pago) {
        this.tipo_pago = tipo_pago;
    }
    
    
}
