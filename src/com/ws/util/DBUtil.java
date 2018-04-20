package com.ws.util;

import com.ws.bean.Emp;

import java.util.HashMap;
import java.util.Map;

public class DBUtil {
    public static Map<String, Emp> map = new HashMap<>();
    static {
        map.put("1001", new Emp("1001", "AA", "123456" ,"AA@qq.com"));
        map.put("1002", new Emp("1002", "BB", "123456" ,"BB@qq.com"));
        map.put("1003", new Emp("1003", "CC", "123456" ,"CC@qq.com"));
        map.put("1004", new Emp("1004", "DD", "123456" ,"DD@qq.com"));

    }

    /**
     * 判断用户名和密码是否正确
     * @param emp
     * @return
     */
    public static boolean selectEmpByAccountAndPassword(Emp emp){
        boolean flag = false;
        for (String key : map.keySet()){
            Emp e = map.get(key);
            if (emp.getAccount().equals(e.getAccount())
                    &&emp.getPassword().equals(e.getPassword())){
                flag = true;
                break;
            }
        }
        return flag;
    }
}
