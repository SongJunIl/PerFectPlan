package com.plan.city;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;


public class Weather {
	
/*	public static void main(String[] args) {
		try {
			new Weather().Weatherparsing("60", "127");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}*/
	
	public List<WeatherDTO> Weatherparsing(String lat, String lon) throws Exception {
		   String urlStr = "http://www.kma.go.kr/wid/queryDFS.jsp?gridx="+lat+"&gridy="+lon;
		   /*String urlStr="http://api.openweathermap.org/data/2.5/weather?lat="+lat+"&lon="+lon+"&appid=e8d104010bdf712fe3256f5c0a5cb6f1";*/
		    
		   URL url = new URL(urlStr);
		   URLConnection connection = url.openConnection();
		   connection.setDoOutput(true);
		    
		   // 타입 설정
		   connection.setRequestProperty("CONTENT-TYPE","text/xml"); 
		    
		   //openStream() : URL페이지 정보를 읽어온다.
		   BufferedReader in = new BufferedReader(new InputStreamReader(url.openStream(),"utf-8"));
		       
		   String inputLine;
		   String buffer = "";
		    
		   // 페이지의 정보를 저장한다.
		    while ((inputLine = in.readLine()) != null){
		         buffer += inputLine.trim();
		    }
		    in.close();
		   
		    List<WeatherDTO> weather = new ArrayList<>();
		    try {
		         // 자신의 static 메서드를 가지고 객체를 생성 : 싱글톤 패턴
		         DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		         // 다른 클래스의 객체를 가지고, 객체를 생성하면 팩토리 패턴.
		         DocumentBuilder documentbuilder = factory.newDocumentBuilder(); //// 팩토리 메서드 패턴  공장에서 찍어줌
		         // 문자열을 InputStream으로 변환
		         InputStream is = new ByteArrayInputStream(buffer.getBytes());
		         Document doc = documentbuilder.parse(is);
		         // xml을 메모리에 펼쳐놓고 루트를 elemnt에 저장
		         Element element = doc.getDocumentElement();

		         // 파싱할 태그의 리스트를 찾아온다
		         // data 태그 전체를 list에 저장
		         NodeList list = element.getElementsByTagName("data");
		         for (int i = 0; i < list.getLength(); i++) {
		             // i번째 data 태그를 node에 저장
		             Node node = list.item(i);
		             NodeList temp = node.getChildNodes();
		          /*   System.out.println("*************************************************");
		             System.out.println(node.getAttributes().getNamedItem("seq"));
		             System.out.println("----------------------------------------");*/
		             WeatherDTO weatherDTO =null;
		             weatherDTO = new WeatherDTO();
		             for(int j=0;j<temp.getLength();j++){
		                Node chnode = temp.item(j);
		                Node te = chnode.getFirstChild();
		                
		             /*   System.out.print(chnode.getNodeName() +" : ");
		                System.out.println(te.getNodeValue());*/
		                
		                if(chnode.getNodeName().equals("hour")){
		                	weatherDTO.setHour(te.getNodeValue());
		                }
		                if(chnode.getNodeName().equals("day")){
		                	weatherDTO.setDay(te.getNodeValue());
		                }
		                if(chnode.getNodeName().equals("temp")){
		                	weatherDTO.setTemp(te.getNodeValue());
		                }
		                if(chnode.getNodeName().equals("tmx")){
		                	weatherDTO.setTmx(te.getNodeValue());
		                }
		                if(chnode.getNodeName().equals("sky")){
		                	weatherDTO.setSky(te.getNodeValue());
		                }
		                if(chnode.getNodeName().equals("pty")){
		                	weatherDTO.setPty(te.getNodeValue());
		                }
		                if(chnode.getNodeName().equals("wfKor")){
		                	weatherDTO.setWfKor(te.getNodeValue());
		                }
		                if(chnode.getNodeName().equals("pop")){
		                	weatherDTO.setPop(te.getNodeValue());
		                }
		                if(chnode.getNodeName().equals("reh")){
		                	weatherDTO.setReh(te.getNodeValue());
		                }
		             }
		             weather.add(weatherDTO);
		             /*System.out.println("**********************************************");*/
		         }
		         
		    } catch (Exception e) {
				e.printStackTrace();
			}
		    return weather;
	   
   }
  /* public void getWeatherXml(String nx, String ny){
	   
	   String urlStr = "http://newsky2.kma.go.kr/service/SecndSrtpdFrcstInfoService2/ForecastSpaceData?&ServiceKey=%2FPB5Dc%2BWmyYhpxMYI9YxPKTFbJ0cG8Y9hpKo%2FNbthjZi43CeGYNBT%2FfSPaipuUIu5VT6KiqBXa4isBlXYQC2DQ%3D%3D&base_date=20160619&base_time=0500&nx=60&ny=127";
	   String urlStr="http://www.kma.go.kr/wid/queryDFS.jsp?gridx="+nx+"&gridy="+ny;
	   
	   URL url;
	try {
		url = new URL(urlStr);
		URLConnection connection = url.openConnection();
		
		connection.setDoOutput(true);
		
		// 타입 설정
		connection.setRequestProperty("CONTENT-TYPE","text/xml"); 
		
		//openStream() : URL페이지 정보를 읽어온다.
		BufferedReader in = new BufferedReader(new InputStreamReader(url.openStream(),"utf-8"));
		
		String inputLine;
		String buffer = "";
		
		
		// 페이지의 정보를 저장한다.
		while ((inputLine = in.readLine()) != null){
			buffer += inputLine.trim();
		}
		in.close();
		System.out.println("날씨 가져오나요");
		System.out.println("result ="+ buffer);
		
		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	   
	   
   }*/

}
