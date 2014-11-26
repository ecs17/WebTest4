/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package casant.webtest4.service.impl;

import casant.webtest4.dao.ProductoDao;
import casant.webtest4.model.EstadoProducto;
import casant.webtest4.model.Producto;
import casant.webtest4.model.TipoExistencia;
import casant.webtest4.model.TipoPrecentacion;
import casant.webtest4.model.TipoProducto;
import casant.webtest4.service.ProductoService;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 *
 * @author emp.emmanuel.castro
 */
@Component
public class ProductoServiceImpl implements ProductoService{
    
    @Autowired
    ProductoDao productoDao;
    
    @Override
    public List<Producto> getProductos() {
        List<Producto> listProducts;
        listProducts = productoDao.getProductos();
        
        return listProducts;
    }

    @Override
    public Producto getProducto(Integer id) {
        Producto producto;
        producto = productoDao.getProductoById(id);
        return producto;
    }

    @Override
    public boolean updateProducto(Producto producto) {
        boolean estado = true;
        productoDao.updateProducto(producto);
        return estado;
    }

    @Override
    public List<TipoExistencia> getTipoExistencia() {
        return productoDao.getTipoExistencia();
    }

    @Override
    public List<TipoProducto> getTipoProducto() {
        return productoDao.getTipoProducto();
    }

    @Override
    public List<TipoPrecentacion> getTipoPrecentacion() {
        return productoDao.getTipoPrecentacion();
    }

    @Override
    public List<EstadoProducto> getEstadoProducto() {
        return productoDao.getEstadoProducto();
    }

    @Override
    public void addProducto(Producto producto) {
        productoDao.addProducto(producto);
    }

    @Override
    public void deletProducto(Integer id) {
        productoDao.deletProducto(id);
    }
    
}
