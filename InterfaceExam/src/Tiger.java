
public class Tiger extends Animal implements Predator, Barkable{//상속, 구현
	public String getFood() {
		return "apple";
	}

	public void bark() {
		System.out.println("어흥");
	}
}
