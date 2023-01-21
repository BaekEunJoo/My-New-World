package di_annotation_xml;

import org.springframework.stereotype.Component;

public class AppleSpeaker implements Speaker {
	
	public AppleSpeaker() {
		System.out.println("--> AppleSpeaker 생성");
	}
	
	@Override
	public void volumeUp() {
		System.out.println(">> AppleSpeaker - 소리크게");
	}
	
	@Override
	public void volumeDown() {
		System.out.println(">> AppleSpeaker - 소리작게");
	}
	
	
}
