package codegym;

import java.util.List;

public class TestService {

	public static void main(String[] args) {
		Service service = new Service();
		List<Animal> animals = service.getAnimalList();
		
		for(Animal animal : animals) {
			System.out.println(animal.getAnimal_id());
			System.out.println(animal.getAlbum_file());
			System.out.println(animal.getAnimal_createtime());
		}
	}
}
