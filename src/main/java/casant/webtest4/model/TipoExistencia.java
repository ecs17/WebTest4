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
public class TipoExistencia implements Serializable{
    
    private static final long serialVersionUID = 8751282105532159742L;
    
    private Integer tipoExistenciaId;
    private String abreviatura;
    private String descripcion;

    public Integer getTipoExistenciaId() {
        return tipoExistenciaId;
    }

    public void setTipoExistenciaId(Integer tipoExistenciaId) {
        this.tipoExistenciaId = tipoExistenciaId;
    }

    public String getAbreviatura() {
        return abreviatura;
    }

    public void setAbreviatura(String abreviatura) {
        this.abreviatura = abreviatura;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    
    
}
