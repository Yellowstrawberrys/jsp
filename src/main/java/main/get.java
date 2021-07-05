package main;

import java.io.IOException;

import org.json.JSONObject;

public class get {
	public static String uuid(String name) {
	    String uuid = null;
	    try{
	    	JSONObject j = JsonReader.readJsonFromUrl("https://api.mojang.com/users/profiles/minecraft/"+name);
	    	uuid = j.get("id").toString();
	    	System.out.println(uuid);
	    }catch(IOException e){
	    	System.out.println(e);	
	    }
	    return uuid;
	}
}
