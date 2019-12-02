/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package assetmanagement.assetmanagement.entities;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author arman
 */
@Entity
@Table(name = "farmers_crops")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "FarmersCrops.findAll", query = "SELECT f FROM FarmersCrops f")
    , @NamedQuery(name = "FarmersCrops.findById", query = "SELECT f FROM FarmersCrops f WHERE f.id = :id")
    , @NamedQuery(name = "FarmersCrops.findByPrice", query = "SELECT f FROM FarmersCrops f WHERE f.price = :price")
    , @NamedQuery(name = "FarmersCrops.findByQuantity", query = "SELECT f FROM FarmersCrops f WHERE f.quantity = :quantity")})
public class FarmersCrops implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "id")
    private String id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "price")
    private int price;
    @Basic(optional = false)
    @NotNull
    @Column(name = "quantity")
    private int quantity;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "farmersCrops", fetch = FetchType.LAZY)
    private List<SoldCrops> soldCropsList;
    @JoinColumn(name = "crops", referencedColumnName = "id")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Crops crops;
    @JoinColumn(name = "farmers", referencedColumnName = "phone_number")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Farmers farmers;

    public FarmersCrops() {
    }

    public FarmersCrops(String id) {
        this.id = id;
    }

    public FarmersCrops(String id, int price, int quantity) {
        this.id = id;
        this.price = price;
        this.quantity = quantity;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @XmlTransient
    public List<SoldCrops> getSoldCropsList() {
        return soldCropsList;
    }

    public void setSoldCropsList(List<SoldCrops> soldCropsList) {
        this.soldCropsList = soldCropsList;
    }

    public Crops getCrops() {
        return crops;
    }

    public void setCrops(Crops crops) {
        this.crops = crops;
    }

    public Farmers getFarmers() {
        return farmers;
    }

    public void setFarmers(Farmers farmers) {
        this.farmers = farmers;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof FarmersCrops)) {
            return false;
        }
        FarmersCrops other = (FarmersCrops) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "assetmanagement.assetmanagement.entities.FarmersCrops[ id=" + id + " ]";
    }
    
}
