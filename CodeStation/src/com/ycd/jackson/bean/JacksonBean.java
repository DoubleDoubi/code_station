package com.ycd.jackson.bean;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class JacksonBean {

	public JacksonBean(String name, String id) {
		super();
		this.name = name;
		this.id = id;
	}
	private String name;
	private String id;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCity(){
		return "BeiJing";
	}
	@JsonIgnore
	public Date getBirthday(){
		Date date = new Date();
		return date;
	}

	
	//����ĵ���������ϰʹ��Jackson��ֱ��ת��json��ʽ��
	
	//ʹ��get��������ֶ�λjson������
	
	//����ͨ�����ע��ķ�ʽ,����ĳ������  @JsonIgnore
	
	//writeValueAsString ��������ת��
	
	public static void main(String[] args) throws JsonProcessingException {
		ObjectMapper mapper = new ObjectMapper();
		JacksonBean jacksonBean = new JacksonBean("ycd", "111");
		String jsonstr = mapper.writeValueAsString(jacksonBean);
		System.out.println(jsonstr);
		
		List<JacksonBean> jacksonBeans = Arrays.asList(jacksonBean,new JacksonBean("ycd", "222"));
		jsonstr = mapper.writeValueAsString(jacksonBeans);
		System.out.println(jsonstr);
	}

}
