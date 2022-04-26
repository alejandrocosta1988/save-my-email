package model;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;

import org.junit.jupiter.api.Test;

class UserTest {

	@Test
	void isValidReturnsFalseWhenSomeAttributeIsNotProvided() {
		
		User user = new User();
		user.setEmail("teste@email.com");
		user.setLastName("Costa");
		
		assertFalse(user.isValid());
		
	}
	
	@Test
	void isValidReturnsTrueWhenAllAttributesAreProvided() {
		
		User user = new User();
		user.setFirstName("Teste");
		user.setLastName("Testado");
		user.setEmail("teste@email.com");
		
		assertTrue(user.isValid());
		
	}

}
