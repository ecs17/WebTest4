/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package casant.webtest4.dao;

import casant.webtest4.model.EstadoProducto;
import casant.webtest4.model.Producto;
import casant.webtest4.model.TipoExistencia;
import casant.webtest4.model.TipoPrecentacion;
import casant.webtest4.model.TipoProducto;
import java.util.List;

/**
 *
 * @author Emmanuel
 */
public interface ProductoDao {
    
    List<Producto> getProductos();
    
    Producto getProductoById(Integer id);
    
    void updateProducto(Producto producto);
    
    void updatePrecio(Producto producto);
    
    List<TipoExistencia> getTipoExistencia();
    
    List<TipoProducto> getTipoProducto();
    
    List<TipoPrecentacion> getTipoPrecentacion();
    
    List<EstadoProducto> getEstadoProducto();
    
    void addProducto(Producto producto);
    
    void deletProducto(Integer id);
}
