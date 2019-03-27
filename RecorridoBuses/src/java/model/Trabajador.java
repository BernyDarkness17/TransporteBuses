package model;

public class Trabajador {
    private int id;
    private String rut;
    private String nombre;
    private String apellido;
    private int fk_comuna;
    private String direccion;
    private int fk_bus;
    
    public Trabajador(){}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public int getFk_comuna() {
        return fk_comuna;
    }

    public void setFk_comuna(int fk_comuna) {
        this.fk_comuna = fk_comuna;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getFk_bus() {
        return fk_bus;
    }

    public void setFk_bus(int fk_bus) {
        this.fk_bus = fk_bus;
    }

    
    
}
