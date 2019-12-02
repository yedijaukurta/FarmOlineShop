/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package assetmanagement.assetmanagement.services;

import assetmanagement.assetmanagement.entities.FarmersCrops;
import assetmanagement.assetmanagement.repositories.FarmersCropsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author arman
 */
@Service
public class FarmersCropsService {

    @Autowired
    FarmersCropsRepository repository;

    public Iterable<FarmersCrops> getAll() {
        return repository.findAll();
    }

    public FarmersCrops getById(String id) {
        return repository.findById(id).get();
    }

    public FarmersCrops save(FarmersCrops farmersCrops) {
        return repository.save(farmersCrops);
    }

    public void delete(FarmersCrops farmersCrops) {
        repository.delete(farmersCrops);
    }
}
