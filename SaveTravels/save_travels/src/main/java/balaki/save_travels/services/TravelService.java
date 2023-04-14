package balaki.save_travels.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import balaki.save_travels.models.Travel;
import balaki.save_travels.repositories.TravelRepository;

@Service
public class TravelService {

       @Autowired TravelRepository travelRepository;

    public void createTravel(Travel travel) {
        travelRepository.save(travel);
    }

    public List<Travel> getAllTravels(){
        return travelRepository.findAll();
    }

    public void updateTravel(Travel travel) {
    }

    public Travel getOneTravel(Long id) {
        Optional<Travel> travel = travelRepository.findById(id);
        return travel.orElse(null);
        
    
    }

    public void deleteTravel(Travel travel) {
    }

    
}
