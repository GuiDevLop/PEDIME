package Modelo;
// Generated 29-dic-2017 16:44:04 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Areaoperativa generated by hbm2java
 */
public class Areaoperativa  implements java.io.Serializable {


     private int idArea;
     private String area;
     private Set productoses = new HashSet(0);

    public Areaoperativa() {
    }

	
    public Areaoperativa(int idArea) {
        this.idArea = idArea;
    }
    public Areaoperativa(int idArea, String area, Set productoses) {
       this.idArea = idArea;
       this.area = area;
       this.productoses = productoses;
    }
   
    public int getIdArea() {
        return this.idArea;
    }
    
    public void setIdArea(int idArea) {
        this.idArea = idArea;
    }
    public String getArea() {
        return this.area;
    }
    
    public void setArea(String area) {
        this.area = area;
    }
    public Set getProductoses() {
        return this.productoses;
    }
    
    public void setProductoses(Set productoses) {
        this.productoses = productoses;
    }




}

