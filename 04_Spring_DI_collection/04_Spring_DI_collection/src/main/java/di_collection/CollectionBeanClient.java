package di_collection;

import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

import org.springframework.context.support.GenericXmlApplicationContext;

public class CollectionBeanClient {

	public static void main(String[] args) {
		System.out.println("--- 스프링 컨테이너 구동전 ----");
		//1. 스프링 컨테이너 구동(스프링 설정 파일 읽어서)
		GenericXmlApplicationContext factory 
			= new GenericXmlApplicationContext("applicationContext.xml");
		
		System.out.println("--- 스프링 컨테이너 구동후 ----");
		
		//2. 스프링 컨테이너 사용 : 생성된 객체 요청(lookup)
		CollectionBean bean = (CollectionBean) factory.getBean("collectionBean");
		
		System.out.println(">> 객체 요청 후 ----------");
		System.out.println("bean : " + bean);
		
		System.out.println("--- List 타입 ------");
		List<String> list = bean.getAddressList();
		System.out.println("list : " + list);
		for (String address : list) {
			System.out.println(address);
		}
		System.out.println("-----------------------");
		
		System.out.println("--- Set 타입 ----");
		Set<String> set = bean.getAddressSet();
		System.out.println("set : " + set);
		System.out.println("-----------------------");
		
		System.out.println("--- Map<key, value> 타입 ----");
		Map<String, String> map = bean.getAddressMap();
		System.out.println("map : " + map);
		System.out.println("-----------------------");
		
		System.out.println("--- Properties 타입 ----");
		Properties props = bean.getAddressProp();
		System.out.println("props : " + props);
		System.out.println("-----------------------");
		
		//3. 스프링 컨테이너 종료(close)
		factory.close();
		
	}

}
