/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package assetmanagement.assetmanagement.services;

import assetmanagement.assetmanagement.entities.Pelanggann;
import assetmanagement.assetmanagement.repositories.PelanggannRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author arman
 */
@Service
public class PelanggannService {

    @Autowired
    PelanggannRepository repository;

    public Iterable<Pelanggann> getAll() {
        return repository.findAll();
    }

    public Pelanggann getById(int id) {
        return repository.findById(id).get();
    }

    public Pelanggann save(Pelanggann pelanggann) {
        return repository.save(pelanggann);
    }

    public void delete(Pelanggann pelanggann) {
        repository.delete(pelanggann);
    }
}
