/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package assetmanagement.assetmanagement.repositories;

import assetmanagement.assetmanagement.entities.SoldCrops;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author arman
 */
@Repository
public interface SoldCropsRepository extends CrudRepository<SoldCrops, Integer>{
    
}
