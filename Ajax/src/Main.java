import java.util.UUID;

public class Main {
    public static void main(String[] args) {

        //UUID会为我们生成一组由数字字母以及横杆所组成的随机串，这个随机串有36 位，这个随机患一定是全世界唯一的

        UUID uuid=UUID.randomUUID();
        String str=uuid.toString();

        System.out.println(str);
        System.out.println(str.length());

        str=str.replaceAll("-",""); //将字符串的-替换成空
        System.out.println(str);
    }
}