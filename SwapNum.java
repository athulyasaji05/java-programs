import java.io.*;
public class SwapNum
{
public static void main(String args[])
{
try
{
String s;

System.out.println("Enter a: ");
DataInputStream dis=new DataInputStream(System.in);
s=dis.readLine();
int a=Integer.parseInt(s);

System.out.println("Enter b: ");
dis=new DataInputStream(System.in);
s=dis.readLine();
int b=Integer.parseInt(s);

System.out.println("Before swapping: ");
System.out.println("a: "+a);
System.out.println("b: "+b);

int t=a;
a=b;
b=t;

System.out.println("After swapping: ");
System.out.println("a: "+a);
System.out.println("b: "+b);

}
catch(Exception e)
{
System.out.println(e);
}
}
}
