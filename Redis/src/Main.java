import redis.clients.jedis.Jedis;
import java.io.*;
import java.util.ArrayList;
import java.util.Scanner;
public class Main
{
    public static void main(String[] args) throws Exception
    {
        Scanner sc = new Scanner(new File("NYSE_20210301.csv"));
        sc.useDelimiter(",");
        ArrayList<String> key = new ArrayList<>();
        ArrayList<String> value = new ArrayList<>();

        while (sc.hasNext())
        {
            String[] save = sc.nextLine().split(",", 2);
            key.add(save[0]);
            value.add(save[1]);
        }
        Jedis jedis = new Jedis();
        for (int i=0; i< key.size(); i++)
            jedis.set(key.get(i), value.get(i));
        sc.close();

        Scanner scan = new Scanner(System.in);

        while (true){
            String[] opt = scan.nextLine().split(" ");
            switch (opt[0]) {
                case "create":
                    if (jedis.get(opt[1]) != null)
                        System.out.println("false");
                    else
                        System.out.println("true");
                        jedis.set(opt[1], opt[2]);
                    break;
                case "fetch":
                    if (jedis.get(opt[1]) == null)
                        System.out.println("false");
                    else
                        System.out.println("true\n" + jedis.get(opt[1]));
                    break;
                case "update":
                    if (jedis.get(opt[1]) == null)
                        System.out.println("false");
                    else
                        System.out.println("true");
                        jedis.set(opt[1], opt[2]);
                     break;
                case "delete":
                    if (jedis.get(opt[1]) == null)
                        System.out.println("false");
                    else
                        System.out.println("true");
                        jedis.del(opt[1]);
                    break;
            }
        }
    }
}