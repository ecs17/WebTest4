/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package casant.webtest4.service;

import casant.webtest4.model.EstadoProducto;
import casant.webtest4.model.Producto;
import casant.webtest4.model.TipoExistencia;
import casant.webtest4.model.TipoPrecentacion;
import casant.webtest4.model.TipoProducto;
import java.util.List;

/**
 *
 * @author emp.emmanuel.castro
 */
public interface ProductoService {
    
    
    List<Producto> getProductos();
    
    Producto getProducto(Integer id);
    
    boolean updateProducto(Producto producto);
    
    List<TipoExistencia> getTipoExistencia();
    
    List<TipoProducto> getTipoProducto();
    
    List<TipoPrecentacion> getTipoPrecentacion();
    
    List<EstadoProducto> getEstadoProducto();
    
    void addProducto(Producto producto);
    
    void deletProducto(Integer id);
}
