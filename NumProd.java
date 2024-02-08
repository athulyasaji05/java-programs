import java.io.*;
import java.lang.*;
public class NumProd
{
public static void main(String aargs[])
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

int product=a*b;

System.out.println("a: "+a);
System.out.println("b: "+b);
System.out.println("product of a and b: "+product);
}
catch(Exception e)
{
System.out.println(e);
}
}
}
