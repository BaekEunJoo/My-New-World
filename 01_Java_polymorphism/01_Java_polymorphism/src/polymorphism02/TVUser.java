package polymorphism02;

public class TVUser {

	public static void main(String[] args) {
		// 삼성TV 사용
		//TV tv = new SamsungTV();
		
		// LgTV 사용 변경
		TV tv = new LgTV();
		tv.powerOn();
		tv.volumnUp();
		tv.volumnDown();
		tv.powerOff();
		
		
	}

}
