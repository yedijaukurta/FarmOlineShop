/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package assetmanagement.assetmanagement.services;

import assetmanagement.assetmanagement.entities.SoldCrops;
import assetmanagement.assetmanagement.repositories.SoldCropsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author arman
 */
@Service
public class SoldCropsService {

    @Autowired
    SoldCropsRepository repository;

    public Iterable<SoldCrops> getAll() {
        return repository.findAll();
    }

    public SoldCrops getById(int id) {
        return repository.findById(id).get();
    }

    public SoldCrops save(SoldCrops soldCrops) {
        return repository.save(soldCrops);
    }

    public void delete(SoldCrops soldCrops) {
        repository.delete(soldCrops);
    }
}
