package awtdemo;

import java.awt.*;

import java.sql.*;

import java.awt.event.*;

public class login implements WindowListener,ActionListener

{

	

	Frame f;

	TextField t,t1;

	Label l,l2;

	Button b;

	

	login() 

	{

       f=new Frame("Log IN FRAME");



      f.setSize(500,500);

      f.setVisible(true);



f.setLayout(null);



b = new Button("Log in");

b.setBounds(50,100,80,30);

f.add(b);

b.addActionListener(this);



 l= new Label("username");

l.setBounds(20,50,70,20);

f.add(l);



t = new TextField();

t.setBounds(100,50,80,20);

f.add(t);



l2= new Label("password");

l2.setBounds(20,75,70,20);

f.add(l2);



t1 = new TextField();

t1.setBounds(100,75,80,20);

f.add(t1);



f.setBackground(Color.BLACK);

//Image i= Toolkit.getDefaultToolkit().getImage("E:/PHOTO-2024-01-25-21-47-53.jpg");

 // f.setIconImage(i);

  f.addWindowListener(this);



	}

	public void actionPerformed(ActionEvent ae)

	{

		

		

		String un,pw;

		try
		{

			Class.forName("oracle.jdbc.driver.OracleDriver");

			Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL","hr","123456Th#");

			Statement stmt=con.createStatement();

			un=t.getText();

			System.out.println(un);

			pw=t1.getText();

			System.out.println(pw);

			ResultSet rs=((java.sql.Statement) stmt).executeQuery("select * from users");
			while(rs.next())
			{
				if(un.equals(rs.getString(1))&&pw.equals(rs.getString(2)))
				{
					System.out.println("Login successss....:)");
					Window f = null;
					Dialog dg=new Dialog(f,"Success dialogue",Dialog.DEFAULT_MODALITY_TYPE);
					dg.add(new Label("Logged successfully..."));
					dg.setBounds(30,30,200,200);
					dg.setVisible(true);
					break;
				}
				else System.out.println("Login failureeee!!!!!");
			}
			con.close();
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
		}

	public static void main(String[] args) {

		

		login lo=new login();

		

	}



	

	public void windowOpened(WindowEvent e) {

		// TODO Auto-generated method stub

		

	}



	@Override

	public void windowClosing(WindowEvent e) {

		System.exit(0);

		

	}



	@Override

	public void windowClosed(WindowEvent e) {

		// TODO Auto-generated method stub

		

	}



	@Override

	public void windowIconified(WindowEvent e) {

		// TODO Auto-generated method stub

		

	}



	@Override

	public void windowDeiconified(WindowEvent e) {

		// TODO Auto-generated method stub

		

	}



	@Override

	public void windowActivated(WindowEvent e) {

		// TODO Auto-generated method stub

		

	}



	@Override

	public void windowDeactivated(WindowEvent e) {

		// TODO Auto-generated method stub

		

	}

		

	}



	

