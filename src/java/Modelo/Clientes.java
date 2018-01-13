package Modelo;
// Generated 29-dic-2017 16:44:04 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Clientes generated by hbm2java
 */
public class Clientes  implements java.io.Serializable {


     private int idCliente;
     private Usuarios usuarios;
     private String razonSocial;
     private String cuit;
     private String condicionIva;
     private String domicilio;
     private String email;
     private String telefono;
     private Set pedidoses = new HashSet(0);

    public Clientes() {
    }

	
    public Clientes(int idCliente, Usuarios usuarios) {
        this.idCliente = idCliente;
        this.usuarios = usuarios;
    }
    public Clientes(int idCliente, Usuarios usuarios, String razonSocial, String cuit, String condicionIva, String domicilio, String email, String telefono, Set pedidoses) {
       this.idCliente = idCliente;
       this.usuarios = usuarios;
       this.razonSocial = razonSocial;
       this.cuit = cuit;
       this.condicionIva = condicionIva;
       this.domicilio = domicilio;
       this.email = email;
       this.telefono = telefono;
       this.pedidoses = pedidoses;
    }
   
    public int getIdCliente() {
        return this.idCliente;
    }
    
    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }
    public Usuarios getUsuarios() {
        return this.usuarios;
    }
    
    public void setUsuarios(Usuarios usuarios) {
        this.usuarios = usuarios;
    }
    public String getRazonSocial() {
        return this.razonSocial;
    }
    
    public void setRazonSocial(String razonSocial) {
        this.razonSocial = razonSocial;
    }
    public String getCuit() {
        return this.cuit;
    }
    
    public void setCuit(String cuit) {
        this.cuit = cuit;
    }
    public String getCondicionIva() {
        return this.condicionIva;
    }
    
    public void setCondicionIva(String condicionIva) {
        this.condicionIva = condicionIva;
    }
    public String getDomicilio() {
        return this.domicilio;
    }
    
    public void setDomicilio(String domicilio) {
        this.domicilio = domicilio;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public String getTelefono() {
        return this.telefono;
    }
    
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
    public Set getPedidoses() {
        return this.pedidoses;
    }
    
    public void setPedidoses(Set pedidoses) {
        this.pedidoses = pedidoses;
    }




}


