package model;

import static org.junit.jupiter.api.Assertions.assertFalse;

import org.junit.jupiter.api.Test;

class UserTest {

	@Test
	void isValidReturnsTrueWhenSomeAttributeIsNull() {
		
		User user = new User();
		user.setEmail("teste@email.com");
		user.setLastName("Costa");
		
		assertFalse(user.isValid());
		
	}

}
