/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package assetmanagement.assetmanagement.services;

import assetmanagement.assetmanagement.entities.Farmers;
import assetmanagement.assetmanagement.repositories.FarmersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author arman
 */
@Service
public class FarmersService {

    @Autowired
    FarmersRepository repository;

    public Iterable<Farmers> getAll() {
        return repository.findAll();
    }

    public Farmers getById(String phoneNumber) {
        return repository.findById(phoneNumber).get();
    }

    public Farmers save(Farmers farmers) {
        return repository.save(farmers);
    }

    public void delete(Farmers farmers) {
        repository.delete(farmers);
    }
}
