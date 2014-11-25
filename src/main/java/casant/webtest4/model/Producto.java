package casant.webtest4.model;

import java.io.Serializable;

public class Producto implements Serializable {

    private static final long serialVersionUID = 8751282105532159742L;

    private Integer id;
    private String nombre;
    private String descripcion;
    private String clave_desc;
    private Integer codigo_barras;
    private String marca;
    private Float existencia;
    private Float precio_compra;
    private Float precio_venta;
    private Integer iva;
    private Integer ieps;
    private TipoExistencia tipo_existencia;
    private TipoProducto tipo_producto;
    private TipoPrecentacion tipo_precentacion;
    private EstadoProducto estado_producto;

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

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public Float getExistencia() {
        return existencia;
    }

    public void setExistencia(Float existencia) {
        this.existencia = existencia;
    }

    public String getClave_desc() {
        return clave_desc;
    }

    public void setClave_desc(String clave_desc) {
        this.clave_desc = clave_desc;
    }

    public Integer getCodigo_barras() {
        return codigo_barras;
    }

    public void setCodigo_barras(Integer codigo_barras) {
        this.codigo_barras = codigo_barras;
    }

    public TipoExistencia getTipo_existencia() {
        return tipo_existencia;
    }

    public void setTipo_existencia(TipoExistencia tipo_existencia) {
        this.tipo_existencia = tipo_existencia;
    }

    public TipoProducto getTipo_producto() {
        return tipo_producto;
    }

    public void setTipo_producto(TipoProducto tipo_producto) {
        this.tipo_producto = tipo_producto;
    }

    public TipoPrecentacion getTipo_precentacion() {
        return tipo_precentacion;
    }

    public void setTipo_precentacion(TipoPrecentacion tipo_precentacion) {
        this.tipo_precentacion = tipo_precentacion;
    }

    public EstadoProducto getEstado_producto() {
        return estado_producto;
    }

    public void setEstado_producto(EstadoProducto estado_producto) {
        this.estado_producto = estado_producto;
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