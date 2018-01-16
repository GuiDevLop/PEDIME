package Modelo;
// Generated 29-dic-2017 16:44:04 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Mesa generated by hbm2java
 */
public class Mesa  implements java.io.Serializable {


     private Integer idMesa;
     private Camareros camareros;
     private Integer numeroMesa;
     private Set pedidoses = new HashSet(0);

    public Mesa() {
    }

	
    public Mesa(Camareros camareros) {
        this.camareros = camareros;
    }
    public Mesa(Camareros camareros, Integer numeroMesa, Set pedidoses) {
       this.camareros = camareros;
       this.numeroMesa = numeroMesa;
       this.pedidoses = pedidoses;
    }
   
    public Integer getIdMesa() {
        return this.idMesa;
    }
    
    public void setIdMesa(Integer idMesa) {
        this.idMesa = idMesa;
    }
    public Camareros getCamareros() {
        return this.camareros;
    }
    
    public void setCamareros(Camareros camareros) {
        this.camareros = camareros;
    }
    public Integer getNumeroMesa() {
        return this.numeroMesa;
    }
    
    public void setNumeroMesa(Integer numeroMesa) {
        this.numeroMesa = numeroMesa;
    }
    public Set getPedidoses() {
        return this.pedidoses;
    }
    
    public void setPedidoses(Set pedidoses) {
        this.pedidoses = pedidoses;
    }




}

