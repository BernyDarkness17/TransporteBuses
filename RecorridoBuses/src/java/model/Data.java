package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Data {

    private final Conexion con;
    private ResultSet rs;

    public Data() throws SQLException, ClassNotFoundException {
        con = new Conexion(
                "localhost",
                "buses",
                "root",
                ""
        );
    }

    public void crearTrabajador(Trabajador t) throws SQLException {
        con.ejecutar("insert into trabajador values(null, "
                + "'" + t.getRut() + "', "
                + "'" + t.getNombre() + "', "
                + "'" + t.getApellido() + "', "
                + "" + t.getFk_comuna() + ", "
                + "'" + t.getDireccion() + "',"
                + " " + t.getFk_bus() + ");");

        con.close();
    }

    public List<Comuna> getComunasBus1() throws SQLException {
        List<Comuna> lista = new ArrayList<>();

        rs = con.ejecutarSelect("select * from comuna where id>=1 and id<=3;");
        Comuna c;

        while (rs.next()) {
            c = new Comuna();
            c.setId(rs.getInt(1));
            c.setNombre(rs.getString(2));

            lista.add(c);

        }
        con.close();
        return lista;
    }

    public List<Comuna> getComunasBus2() throws SQLException {
        List<Comuna> lista = new ArrayList<>();

        rs = con.ejecutarSelect("select * from comuna where id>=4 and id<=6;");
        Comuna c;

        while (rs.next()) {
            c = new Comuna();
            c.setId(rs.getInt(1));
            c.setNombre(rs.getString(2));

            lista.add(c);

        }
        con.close();
        return lista;
    }

    public List<Comuna> getComunasBus3() throws SQLException {
        List<Comuna> lista = new ArrayList<>();

        rs = con.ejecutarSelect("select * from comuna where id>=7 and id<=9;");
        Comuna c;

        while (rs.next()) {
            c = new Comuna();
            c.setId(rs.getInt(1));
            c.setNombre(rs.getString(2));

            lista.add(c);

        }
        con.close();
        return lista;
    }

    public List<Trabajador2> getTrabajadoresBus1() throws SQLException {
        List<Trabajador2> list = new ArrayList<>();
        Trabajador2 t;
        rs = con.ejecutarSelect("select trabajador.id, trabajador.rut, trabajador.nombre, trabajador.apellido,"
                + "comuna.nombre, trabajador.direccion "
                + "from trabajador, bus, comuna "
                + "where comuna.id = trabajador.fk_comuna "
                + "and bus.id = trabajador.fk_bus and "
                + "trabajador.fk_comuna>=1 and trabajador.fk_comuna<=3;");

        while (rs.next()) {
            t = new Trabajador2();

            t.setId(rs.getInt(1));
            t.setRut(rs.getString(2));
            t.setNombre(rs.getString(3));
            t.setApellido(rs.getString(4));
            t.setFk_comuna(rs.getString(5));
            t.setDireccion(rs.getString(6));

            list.add(t);
        }
        con.close();
        return list;

    }

    public List<Trabajador2> getTrabajadoresBus2() throws SQLException {
        List<Trabajador2> list = new ArrayList<>();
        Trabajador2 t;
        rs = con.ejecutarSelect("select trabajador.id, trabajador.rut, trabajador.nombre, trabajador.apellido,"
                + "comuna.nombre, trabajador.direccion "
                + "from trabajador, bus, comuna "
                + "where comuna.id = trabajador.fk_comuna "
                + "and bus.id = trabajador.fk_bus and "
                + "trabajador.fk_comuna>=4 and trabajador.fk_comuna<=6;");

        while (rs.next()) {
            t = new Trabajador2();

            t.setId(rs.getInt(1));
            t.setRut(rs.getString(2));
            t.setNombre(rs.getString(3));
            t.setApellido(rs.getString(4));
            t.setFk_comuna(rs.getString(5));
            t.setDireccion(rs.getString(6));

            list.add(t);
        }
        con.close();
        return list;

    }

    public List<Trabajador2> getTrabajadoresBus3() throws SQLException {
        List<Trabajador2> list = new ArrayList<>();
        Trabajador2 t;
        rs = con.ejecutarSelect("select trabajador.id, trabajador.rut, trabajador.nombre, trabajador.apellido,"
                + "comuna.nombre, trabajador.direccion "
                + "from trabajador, bus, comuna "
                + "where comuna.id = trabajador.fk_comuna "
                + "and bus.id = trabajador.fk_bus and "
                + "trabajador.fk_comuna>=7 and trabajador.fk_comuna<=9;");

        while (rs.next()) {
            t = new Trabajador2();

            t.setId(rs.getInt(1));
            t.setRut(rs.getString(2));
            t.setNombre(rs.getString(3));
            t.setApellido(rs.getString(4));
            t.setFk_comuna(rs.getString(5));
            t.setDireccion(rs.getString(6));

            list.add(t);
        }
        con.close();
        return list;

    }

    public void eliminarTrabajador(int id) throws SQLException {
        con.ejecutar("delete from trabajador where id="+id);
        con.close();
    }
    
    public String getNombreLoco(int id) throws SQLException{
        rs = con.ejecutarSelect("select nombre from trabajador where id="+id);
        String nom = null;
        if(rs.next()){
            nom = rs.getString(1);
        }
        con.close();
        return nom;
    }
}
