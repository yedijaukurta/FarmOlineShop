/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package assetmanagement.assetmanagement.services;

import assetmanagement.assetmanagement.entities.Pelanggan;
import assetmanagement.assetmanagement.repositories.PelangganRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author arman
 */
@Service
public class PelangganService {

    @Autowired
    PelangganRepository repository;

    public Iterable<Pelanggan> getAll() {
        return repository.findAll();
    }

    public Pelanggan getById(int id) {
        return repository.findById(id).get();
    }

    public Pelanggan save(Pelanggan pelanggan) {
        return repository.save(pelanggan);
    }

    public void delete(Pelanggan pelanggan) {
        repository.delete(pelanggan);
    }
}
