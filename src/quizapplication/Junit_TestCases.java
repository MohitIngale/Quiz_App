package quizapplication;

import static org.junit.jupiter.api.Assertions.*;

import javax.swing.JTable;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;

import org.junit.jupiter.api.Test;

class Junit_TestCases {
	MainBoard mb;

	@Test // To test if the MainBoard does boot up or not ?
	void test1() throws InterruptedException {
		mb = new MainBoard();
		mb.setVisible(true);
		Thread.sleep(2000);
		assertTrue(true);
	}
	
	@Test //To test the Student Reg panel works properly(Components on Student check..)  
	void test2() throws InterruptedException {
		mb = new MainBoard();
		
		Student stud = new Student();
		stud.setVisible(true);
		Thread.sleep(2000);
		
		//To see if null values are passed i.e if(textSname != null).. and so on
		assertNotEquals(null,stud.textSname.getText());
		assertNotEquals(null,stud.textAge.getText());
		assertNotEquals(null,stud.textPhone.getText());
		assertNotEquals(null,stud.textAddress.getText());
		
		//To check the buttons from the panel are working
		stud.btnSave.doClick();
		stud.btnSave.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                stud.btnSaveActionPerformed(evt);
                assertTrue(true);
            }
        });
		Thread.sleep(1000);
		stud.btnEdit.doClick();
		stud.btnEdit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                stud.btnEditActionPerformed(evt);
                assertTrue(true);
            }
        });
		Thread.sleep(1000);
		stud.btnDelete.doClick();
		stud.btnDelete.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
            	stud.btnDeleteActionPerformed(evt);
            	assertTrue(true);
            }
        });
		Thread.sleep(1000);
		stud.btnClear.doClick();
		stud.btnClear.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
            	stud.btnClearActionPerformed(evt);
            	assertTrue(true);
            }
        });
		Thread.sleep(1000);
		stud.btnRefresh.doClick();
		stud.btnRefresh.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
            	stud.btnRefreshActionPerformed(evt);
            	assertTrue(true);
            }
        });
		Thread.sleep(1000);
	}
	
	@Test
	void test3() throws InterruptedException {
		mb = new MainBoard();
		
		Student stud = new Student();
		stud.setVisible(true);
		Thread.sleep(2000);
		
		stud.textSname.setText("mohitt3");
		stud.add(stud.textSname);
		Thread.sleep(1000);
		stud.textPhone.setText("8527419630");
		stud.add(stud.textPhone);
		Thread.sleep(1000);
		stud.textAge.setText("21");
		stud.add(stud.textAge);
		Thread.sleep(1000);
		stud.textAddress.setText("Milky-Way");
		stud.add(stud.textAddress);
		Thread.sleep(1000);
		
		stud.btnSave.doClick();
		stud.btnSave.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                stud.btnSaveActionPerformed(evt);
                assertTrue(true);
            }
        });
		Thread.sleep(1000);

		
	}
	
	@Test
	void test4() throws InterruptedException {
		mb = new MainBoard();
		
		Student stud = new Student();
		stud.setVisible(true);
		Thread.sleep(2000);
		stud.btnRefresh.doClick();
		
		stud.tableStudent.addMouseListener(new java.awt.event.MouseAdapter() {
            @SuppressWarnings("unused")
			public void onClick(java.awt.event.MouseEvent evt) {
            	stud.tableStudent.setColumnSelectionInterval(0, 0);
            }
        });
		
		stud.textSname.setText("TestEdit");
		stud.add(stud.textSname);
		Thread.sleep(1000);
		stud.textPhone.setText("999900055");
		stud.add(stud.textPhone);
		Thread.sleep(1000);
		stud.textAge.setText("24");
		stud.add(stud.textAge);
		Thread.sleep(1000);
		stud.textAddress.setText("Somewhere on Earth");
		stud.add(stud.textAddress);
		Thread.sleep(1000);
		
		stud.btnEdit.doClick();
		stud.btnEdit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                stud.btnEditActionPerformed(evt);
                assertTrue(true);
            }
        });
		Thread.sleep(1000);
		
	}
	
	@Test
	void test5() throws InterruptedException {
		mb = new MainBoard();
		
		Student stud = new Student();
		stud.setVisible(true);
		Thread.sleep(2000);
		
		stud.textSname.setText("TestEdit");
		stud.add(stud.textSname);
		Thread.sleep(1000);
		stud.textPhone.setText("999900055");
		stud.add(stud.textPhone);
		Thread.sleep(1000);
		stud.textAge.setText("24");
		stud.add(stud.textAge);
		Thread.sleep(1000);
		stud.textAddress.setText("Somewhere on Earth");
		stud.add(stud.textAddress);
		Thread.sleep(1000);
		
		stud.btnDelete.doClick();
		stud.btnDelete.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
            	stud.btnDeleteActionPerformed(evt);
            	assertTrue(true);
            }
        });
		Thread.sleep(1000);
		
	}

}
