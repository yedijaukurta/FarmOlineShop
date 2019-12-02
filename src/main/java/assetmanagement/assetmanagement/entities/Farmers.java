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
@Table(name = "farmers")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Farmers.findAll", query = "SELECT f FROM Farmers f")
    , @NamedQuery(name = "Farmers.findByName", query = "SELECT f FROM Farmers f WHERE f.name = :name")
    , @NamedQuery(name = "Farmers.findByAddress", query = "SELECT f FROM Farmers f WHERE f.address = :address")
    , @NamedQuery(name = "Farmers.findByPhoneNumber", query = "SELECT f FROM Farmers f WHERE f.phoneNumber = :phoneNumber")})
public class Farmers implements Serializable {

    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "name")
    private String name;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 200)
    @Column(name = "address")
    private String address;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 15)
    @Column(name = "phone_number")
    private String phoneNumber;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "farmers", fetch = FetchType.LAZY)
    private List<FarmersCrops> farmersCropsList;

    public Farmers() {
    }

    public Farmers(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Farmers(String phoneNumber, String name, String address) {
        this.phoneNumber = phoneNumber;
        this.name = name;
        this.address = address;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    @XmlTransient
    public List<FarmersCrops> getFarmersCropsList() {
        return farmersCropsList;
    }

    public void setFarmersCropsList(List<FarmersCrops> farmersCropsList) {
        this.farmersCropsList = farmersCropsList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (phoneNumber != null ? phoneNumber.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Farmers)) {
            return false;
        }
        Farmers other = (Farmers) object;
        if ((this.phoneNumber == null && other.phoneNumber != null) || (this.phoneNumber != null && !this.phoneNumber.equals(other.phoneNumber))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "assetmanagement.assetmanagement.entities.Farmers[ phoneNumber=" + phoneNumber + " ]";
    }
    
}
