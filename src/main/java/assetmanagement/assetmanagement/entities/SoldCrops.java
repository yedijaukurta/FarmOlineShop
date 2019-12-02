/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package assetmanagement.assetmanagement.entities;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author arman
 */
@Entity
@Table(name = "sold_crops")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "SoldCrops.findAll", query = "SELECT s FROM SoldCrops s")
    , @NamedQuery(name = "SoldCrops.findById", query = "SELECT s FROM SoldCrops s WHERE s.id = :id")
    , @NamedQuery(name = "SoldCrops.findByQuantity", query = "SELECT s FROM SoldCrops s WHERE s.quantity = :quantity")
    , @NamedQuery(name = "SoldCrops.findByBuyDate", query = "SELECT s FROM SoldCrops s WHERE s.buyDate = :buyDate")})
public class SoldCrops implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "quantity")
    private int quantity;
    @Basic(optional = false)
    @NotNull
    @Column(name = "buy_date")
    @Temporal(TemporalType.DATE)
    private Date buyDate;
    @JoinColumn(name = "farmers_crops", referencedColumnName = "id")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private FarmersCrops farmersCrops;

    public SoldCrops() {
    }

    public SoldCrops(Integer id) {
        this.id = id;
    }

    public SoldCrops(Integer id, int quantity, Date buyDate) {
        this.id = id;
        this.quantity = quantity;
        this.buyDate = buyDate;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Date getBuyDate() {
        return buyDate;
    }

    public void setBuyDate(Date buyDate) {
        this.buyDate = buyDate;
    }

    public FarmersCrops getFarmersCrops() {
        return farmersCrops;
    }

    public void setFarmersCrops(FarmersCrops farmersCrops) {
        this.farmersCrops = farmersCrops;
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
        if (!(object instanceof SoldCrops)) {
            return false;
        }
        SoldCrops other = (SoldCrops) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "assetmanagement.assetmanagement.entities.SoldCrops[ id=" + id + " ]";
    }
    
}
