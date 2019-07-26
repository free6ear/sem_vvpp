package filter;

import java.util.HashMap;
import java.util.Map;

public class Auth {

    private static ThreadLocal<String> authThread = new ThreadLocal<String>();

    public static String getSession(){
        return authThread.get();
    }

    public void addSession(String userName){
        authThread.set(userName);
    }

    public void removeSession(){
        authThread.remove();
    }
}
