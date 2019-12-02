/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package assetmanagement.assetmanagement.services;

import assetmanagement.assetmanagement.entities.Crops;
import assetmanagement.assetmanagement.repositories.CropsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author arman
 */
@Service
public class CropsService {

    @Autowired
    CropsRepository repository;

    public Iterable<Crops> getAll() {
        return repository.findAll();
    }

    public Crops getById(int id) {
        return repository.findById(id).get();
    }

    public Crops save(Crops crops) {
        return repository.save(crops);
    }

    public void delete(Crops crops) {
        repository.delete(crops);
    }
}
