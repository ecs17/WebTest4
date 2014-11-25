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
public class Venta implements Serializable {

    private static final long serialVersionUID = 8751282105532159742L;
    private Integer id;
    private Date fecha_hora;
    private Cliente cliente;
    private Importe importe;
    private Integer tipo_venta;
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

    public Integer getTipo_venta() {
        return tipo_venta;
    }

    public void setTipo_venta(Integer tipo_venta) {
        this.tipo_venta = tipo_venta;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
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
