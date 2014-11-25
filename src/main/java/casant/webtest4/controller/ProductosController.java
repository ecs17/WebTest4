/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package casant.webtest4.controller;

import casant.webtest4.model.EstadoProducto;
import casant.webtest4.model.Producto;
import casant.webtest4.model.TipoExistencia;
import casant.webtest4.model.TipoPrecentacion;
import casant.webtest4.model.TipoProducto;
import casant.webtest4.service.ProductoService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

/**
 *
 * @author emp.emmanuel.castro
 */
@Controller
public class ProductosController {
    
    @Autowired
    private ProductoService productoService;
    
    @RequestMapping(value = "/productosForm", method = RequestMethod.GET)
    public String listProducts(Model model) {
        model.addAttribute("producto", new Producto());
        model.addAttribute("listProducts", productoService.getProductos());
        //System.out.println("Lista de Productos");
        return "productosForm";
    }
    
    @RequestMapping(value = "/addProductoForm", method = RequestMethod.GET)
    public String addProducto(Model model){
        model.addAttribute("producto", new Producto());
        
        return "addProductoForm";
    }
    
    @RequestMapping(value = "/producto/add/{id}.htm", method = RequestMethod.POST)
    public ModelAndView addProducto(@ModelAttribute("producto") Producto producto){
        productoService.addProducto(producto);
        ModelAndView model = new ModelAndView(new RedirectView("../../productosForm.htm"));
        return model;
    }
    
    @RequestMapping(value = "/producto/edit/{id}.htm", method = RequestMethod.POST)
    public ModelAndView editProduct(@ModelAttribute("producto") Producto producto){
        //System.out.println("estas editando el producto " + producto.getCodigo_barras());
        productoService.updateProducto(producto);
        ModelAndView model = new ModelAndView(new RedirectView("../../productosForm.htm"));
        return model;
    }
    
    @RequestMapping(value = "/editProducto/{id}", method = RequestMethod.GET)
    public ModelAndView getProducto(@PathVariable("id") Integer id){
        ModelAndView model = new ModelAndView("editarProducto");
        Producto producto = productoService.getProducto(id);
        //System.out.println("Estas obteniendo el producto " + producto.getNombre());
        model.addObject("producto", producto);
        return model;
    }
    
    @RequestMapping(value = "altaProducto.htm", method = RequestMethod.POST)
    public ModelAndView addProducto(@ModelAttribute("producto") Producto producto,
            HttpServletRequest request, HttpServletResponse response){
        try {
            productoService.addProducto(producto);
            ModelAndView model = new ModelAndView(new RedirectView("productosForm.htm"));
            return model;
        } catch (Exception e) {
            e.printStackTrace();
            return new ModelAndView(new RedirectView("error.htm"));
        }
    }
    
    @RequestMapping(value = "/deletProducto/{id}.htm", method = RequestMethod.POST)
    public ModelAndView deletProducto(@PathVariable("id") Integer id){
        ModelAndView model = new ModelAndView(new RedirectView("../../productosForm.htm"));
        System.out.println("*********" + id);
        return model;
    }
    
    @ModelAttribute("tipoExistencia")
    public List<TipoExistencia> getTipoExistencia(){
        return productoService.getTipoExistencia();
    }
    
    @ModelAttribute("tipoProducto")
    public List<TipoProducto> getTipoProducto(){
        return productoService.getTipoProducto();
    }
    
    @ModelAttribute("tipoPrecentacion")
    public List<TipoPrecentacion> getTipoPrecentacion(){
        return productoService.getTipoPrecentacion();
    }
    
    @ModelAttribute("estadoProducto")
    public List<EstadoProducto> getEstadoProducto(){
        return productoService.getEstadoProducto();
    }

    public ProductoService getProductoService() {
        return productoService;
    }

    public void setProductoService(ProductoService productoService) {
        this.productoService = productoService;
    }
    
}
