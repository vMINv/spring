
public class Lion extends Animal implements Predator, Barkable{//상속, 구현
	public String getFood() {
		return "banana";
	}

	public void bark() {
		System.out.println("으르렁");
	}
}
