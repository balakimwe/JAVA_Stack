package balaki.save_travels.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import balaki.save_travels.models.Travel;



public interface TravelRepository extends CrudRepository<Travel, Long> {
    List<Travel> findAll();
}
