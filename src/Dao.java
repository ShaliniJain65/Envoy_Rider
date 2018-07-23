package com.dao;



import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import sun.text.normalizer.Utility;

import com.model.AddCourier;
import com.model.AddGiftCard;
import com.model.AddNewCustomer;
import com.model.AddNewOffice;
import com.model.AddNewTransporter;
import com.model.AddTracking;
import com.model.Pricing;
import com.model.Sliders;
import com.sun.webkit.Utilities;

public class Dao {
	
	private SessionFactory sessionfactory=com.utility.Utility.getSessionFactory();
	
	
	public Integer doAddNewCustomer(AddNewCustomer addnewcustomer)
	{
		Session session=null;
		Transaction tx=null;
		
		Integer id=0;
		
		try 
		{
			session =sessionfactory.openSession();
			tx=session.beginTransaction();
			
			id=(Integer)session.save(addnewcustomer);
			tx.commit();
			
			return id;
			
		} 
		catch (Exception e)
		{
			tx.rollback();
			e.printStackTrace();
			return 0;
		}
		finally{
			session.close();
		}
		
		}

	public Integer doAddCourier(AddCourier addcourier)
	{
		Session session=null;
		Transaction tx=null;
		
		Integer id=0;
		
		try 
		{
			session =sessionfactory.openSession();
			tx=session.beginTransaction();
			
			id=(Integer)session.save(addcourier);
			tx.commit();
			
			return id;
			
		} 
		catch (Exception e)
		{
			tx.rollback();
			e.printStackTrace();
			return 0;
		}
		finally{
			session.close();
		}
		}

	public Integer doAddTracking(AddTracking addtracking) 
	{
		Session session=null;
		Transaction tx=null;
		
		Integer id=0;
		
		try 
		{
			session =sessionfactory.openSession();
			tx=session.beginTransaction();
			
			id=(Integer)session.save(addtracking);
			tx.commit();
			
			return id;
			
		} 
		catch (Exception e)
		{
			tx.rollback();
			e.printStackTrace();
			return 0;
		}
		finally{
			session.close();
		}

	
	}
	public Integer doAddNewOffice(AddNewOffice addNewOffice) {
		Session session=null;
		Transaction tx=null;
		
		Integer id=Integer.valueOf(0);
		
		try 
		{
			session =sessionfactory.openSession();
			tx=session.beginTransaction();
			
			id=(Integer)session.save(addNewOffice);
			tx.commit();
			
			return id;
			
		} 
		catch (Exception e)
		{
			tx.rollback();
			e.printStackTrace();
			return Integer.valueOf(0);
		}
		finally{
			session.close();
		}
	}
	
	
	public Integer doAddNewTransporter(AddNewTransporter addNewTransporter) {
		Session session=null;
		Transaction tx=null;
		
		Integer id=Integer.valueOf(0);
		
		try 
		{
			session =sessionfactory.openSession();
			tx=session.beginTransaction();
			
			id=(Integer)session.save(addNewTransporter);
			tx.commit();
			
			return id;
			
		} 
		catch (Exception e)
		{
			tx.rollback();
			e.printStackTrace();
			return Integer.valueOf(0);
		}
		finally{
			session.close();
		}
	}

	public Integer doAddNewGift(AddGiftCard addGiftCard) {
		Session session=null;
		Transaction tx=null;
		
		Integer id=Integer.valueOf(0);
		
		try 
		{
			session =sessionfactory.openSession();
			tx=session.beginTransaction();
			
			id=(Integer)session.save(addGiftCard);
			tx.commit();
			
			return id;
			
		} 
		catch (Exception e)
		{
			tx.rollback();
			e.printStackTrace();
			return Integer.valueOf(0);
		}
		finally{
			session.close();
		}
	}
	
	public List<AddGiftCard> doLoadGift()
	{
		Session session=sessionfactory.openSession();
		try{
		List<AddGiftCard> gift=session.createCriteria(AddGiftCard.class).list();
		return gift;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
		finally
		{
			session.close();
		}
	
	}
	
	

	public List<AddNewOffice> doLoadOffice()
	{
		
		Session session=sessionfactory.openSession();
		try{
		List<AddNewOffice> office_list=session.createCriteria(AddNewOffice.class).list();
		
		if(!office_list.isEmpty())
		{
			Iterator i = office_list.iterator();
			
		}
		
		return office_list;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
		finally
		{
			session.close();
		}
	
	}
	
	public List<AddNewTransporter> doLoadTransporter()
	{
		Session session=sessionfactory.openSession();
		try{
		List<AddNewTransporter> trans_list=session.createCriteria(AddNewTransporter.class).list();
		return trans_list;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
		finally
		{
			session.close();
		}
	
	}
	


	public List<AddTracking> doLoadTracking()
	{
		Session session=sessionfactory.openSession();
		try{
		List<AddTracking> tracking_list=session.createCriteria(AddTracking.class).list();
		return tracking_list;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
		finally
		{
			session.close();
		}
	
	}
	public List<AddNewCustomer> doLoadCustomers()
	{
		Session session=sessionfactory.openSession();
		try{
		List<AddNewCustomer> customer_list=session.createCriteria(AddNewCustomer.class).list();
		return customer_list;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
		finally
		{
			session.close();
		}
	
	}
	public List<AddCourier> doLoadCouriers()
	{
		Session session=sessionfactory.openSession();
		try{
		List<AddCourier> courier_list=session.createCriteria(AddCourier.class).list();
		return courier_list;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
		finally
		{
			session.close();
		}
	
	}
	
	public List<AddCourier> findCouriers(int id) {
		Session session = null;
		List<AddCourier> courier_details = null;
		try{
			
			session = sessionfactory.openSession();
			
			String hql = "from AddCourier i where i.id = :id";
			courier_details = session.createQuery(hql).setInteger("id", id).list();
			System.out.println("Dao find Courier success");
		}catch(Exception e){
			e.printStackTrace();
		}	
		finally{
			session.close();
		}
		return courier_details;
		
	}

	public List<AddNewCustomer> findCustomer(int id) {
		Session session = null;
		List<AddNewCustomer> customer_details = null;
		try{
			
			session = sessionfactory.openSession();
			
			String hql = "from AddNewCustomer i where i.id = :id";
			customer_details = session.createQuery(hql).setInteger("id", id).list();
			System.out.println("Dao find Customer success");
		}catch(Exception e){
			e.printStackTrace();
		}	
		finally{
			session.close();
		}
		return customer_details;
		
	}
	public List<AddTracking> findTracking(int id) {
		Session session = null;
		List<AddTracking> tracking_list = null;
		try{
			
			session = sessionfactory.openSession();
			
			String hql = "from AddTracking i where i.id = :id";
			tracking_list = session.createQuery(hql).setInteger("id", id).list();
			System.out.println("Dao find Tracking success");
		}catch(Exception e){
			e.printStackTrace();
		}	
		finally{
			session.close();
		}
		return tracking_list;
		
	}

	public List<AddNewOffice> findOffice(int id) {
		Session session = null;
		List<AddNewOffice> office_list = null;
		try{
			
			session = sessionfactory.openSession();
			
			String hql = "from AddNewOffice i where i.id = :id";
			office_list = session.createQuery(hql).setInteger("id", id).list();
			System.out.println("Dao find Office success");
		}catch(Exception e){
			e.printStackTrace();
		}	
		finally{
			session.close();
		}
		return office_list;
		
	}

	public List<AddNewTransporter> findTransporter(int id) {
		Session session = null;
		List<AddNewTransporter> transporter_list = null;
		try{
			
			session = sessionfactory.openSession();
			
			String hql = "from AddNewTrasnporter i where i.id = :id";
			transporter_list = session.createQuery(hql).setInteger("id", id).list();
			System.out.println("Dao find Transporter success");
		}catch(Exception e){
			e.printStackTrace();
		}	
		finally{
			session.close();
		}
		return transporter_list;
		
	}
	public List<AddGiftCard> findGiftCard(int id) {
		Session session = null;
		List<AddGiftCard> giftcard_list = null;
		try{
			
			session = sessionfactory.openSession();
			
			String hql = "from AddGiftCard i where i.id = :id";
			 giftcard_list = session.createQuery(hql).setInteger("id", id).list();
			System.out.println("Dao find GiftCard success");
		}catch(Exception e){
			e.printStackTrace();
		}	
		finally{
			session.close();
		}
		return  giftcard_list;
		
	}

	public String doUpdateCustomer(AddNewCustomer addnewcustomer) {
		Session session = null;
		Transaction tx = null;
		try{
			session = sessionfactory.openSession();
			tx = session.beginTransaction();
			session.update(addnewcustomer);
			tx.commit();
			return "Success";
			
		}
		catch(Exception e){
			tx.rollback();
			e.printStackTrace();
			return "Failed";
			
		}finally{
			session.close();
		}
	}

	public String doUpdateCourier(AddCourier addcourier) {
		Session session = null;
		Transaction tx = null;
		try{
			session = sessionfactory.openSession();
			tx = session.beginTransaction();
			session.update(addcourier);
			tx.commit();
			return "Success";
			
		}
		catch(Exception e){
			tx.rollback();
			e.printStackTrace();
			return "Failed";
			
		}finally{
			session.close();
		}
	}
	public String doUpdateTracking(AddTracking addtracking) {
		Session session = null;
		Transaction tx = null;
		try{
			session = sessionfactory.openSession();
			tx = session.beginTransaction();
			session.update(addtracking);
			tx.commit();
			return "Success";
			
		}
		catch(Exception e){
			tx.rollback();
			e.printStackTrace();
			return "Failed";
			
		}finally{
			session.close();
		}
	}

	public String doUpdateGiftCard(AddGiftCard addgiftcard) {
		Session session = null;
		Transaction tx = null;
		try{
			session = sessionfactory.openSession();
			tx = session.beginTransaction();
			session.update(addgiftcard);
			tx.commit();
			return "Success";
			
		}
		catch(Exception e){
			tx.rollback();
			e.printStackTrace();
			return "Failed";
			
		}finally{
			session.close();
		}
	}

	public String doUpdateOffice(AddNewOffice addNewOffice) {
		Session session = null;
		Transaction tx = null;
		try{
			session = sessionfactory.openSession();
			tx = session.beginTransaction();
			session.update(addNewOffice);
			tx.commit();
			return "Success";
			
		}
		catch(Exception e){
			tx.rollback();
			e.printStackTrace();
			return "Failed";
			
		}finally{
			session.close();
		}
	}

	public String doUpdateTransporter(AddNewTransporter addNewTranspoter) {
		Session session = null;
		Transaction tx = null;
		try{
			session = sessionfactory.openSession();
			tx = session.beginTransaction();
			session.update(addNewTranspoter);
			tx.commit();
			return "Success";
			
		}
		catch(Exception e){
			tx.rollback();
			e.printStackTrace();
			return "Failed";
			
		}finally{
			session.close();
		}
	}

	public List<AddNewCustomer> doFindCustomer(String email) {
		Session session = null;
		List<AddNewCustomer> User_list = null;
		try{
		
		session = sessionfactory.openSession();
		 		
		String hql ="from AddNewCustomer i where i.email = :email";
		/*String hql = "from Stock s where s.stockCode = :stockCode";*/
		User_list = session.createQuery(hql).setParameter("email", email).list();
		System.out.println("Dao Success");
		}catch(Exception e){
			e.printStackTrace();
		}

		finally {
			session.close();
		}
		return User_list;
		
		
	}
	
	

	public List<AddNewCustomer> findCustomerByemailId(long emailId) {
		Session session = null;
		List<AddNewCustomer> customer_details = null;
		try{
			
			session = sessionfactory.openSession();
			
			String hql = "from AddNewCustomer i where i.email = :emailid";
			customer_details = session.createQuery(hql).setLong("emailid", emailId).list();
			System.out.println("Dao find by email Id success");
		}catch(Exception e){
			e.printStackTrace();
		}	
		finally{
			session.close();
		}
		return customer_details;
	}

	public List<AddCourier> findCouriersByCourierId(long courierId) {
		Session session = null;
		List<AddCourier> courier_details = null;
		try{
			
			session = sessionfactory.openSession();
			
			String hql = "from AddCourier i where i.courierid = :courierid";
			courier_details = session.createQuery(hql).setLong("courierid", courierId).list();
			System.out.println("Dao find by Courier Id success");
		}catch(Exception e){
			e.printStackTrace();
		}	
		finally{
			session.close();
		}
		return courier_details;
	}

	public List<AddTracking> findTrackingByCourierId(long courierId) {
		Session session = null;
		List<AddTracking> tracking_details = null;
		try{
			
			session = sessionfactory.openSession();
			
			String hql = "from AddTracking i where i.courierid = :courierid";
			 tracking_details = session.createQuery(hql).setLong("courierid", courierId).list();
			System.out.println("Dao find Tracking by Courier Id success");
		}catch(Exception e){
			e.printStackTrace();
		}	
		finally{
			session.close();
		}
		return  tracking_details;
	}

	public List<AddNewTransporter> findTransporterBycontactno(long contactno) {
		Session session = null;
		List<AddNewTransporter> transporter_details = null;
		try{
			
			session = sessionfactory.openSession();
			
			String hql = "from AddNewTrasnporter i where i.contactno = :.contactno";
			transporter_details = session.createQuery(hql).setLong(".contactno", contactno).list();
			System.out.println("Dao find Trasnporter by contact NO success");
		}catch(Exception e){
			e.printStackTrace();
		}	
		finally{
			session.close();
		}
		return  transporter_details;
	}

	public List<AddGiftCard> findGiftCardByoffercode(long offercode) {
		Session session = null;
		List<AddGiftCard> giftcard_details = null;
		try{
			
			session = sessionfactory.openSession();
			
			String hql = "from AddGiftCard i where i.offercode = :offercode";
			giftcard_details = session.createQuery(hql).setLong("offercode", offercode).list();
			System.out.println("Dao find GiftCard by offercode success");
		}catch(Exception e){
			e.printStackTrace();
		}	
		finally{
			session.close();
		}
		return  giftcard_details;
	}

	public List<AddNewOffice> findOfficeByOfficeName(String officename) {
		Session session = null;
		List<AddNewOffice> office_details = null;
		try{
			
			session = sessionfactory.openSession();
			
			String hql = "from AddNewOffice i where i.officeName = :officeName";
			office_details = session.createQuery(hql).setString("officeName", officename).list();
			System.out.println("Dao find Office by Offcie Name success");
		}catch(Exception e){
			e.printStackTrace();
		}	
		finally{
			session.close();
		}
		return  office_details;
	}
	

	public String doDeleteCourier(AddCourier addcourier) {
		Session session = null;
		Transaction tx = null;
		try{
			session = sessionfactory.openSession();
			tx = session.beginTransaction();
			session.delete(addcourier);
			tx.commit();
			return "Success";
			
		}
		catch(Exception e){
			tx.rollback();
			e.printStackTrace();
			return "Failed";
			
		}finally{
			session.close();
		}
	}

	
	
	public String doDeleteCustomer(AddNewCustomer addnewcustomer) {
		Session session = null;
		Transaction tx = null;
		try{
			session = sessionfactory.openSession();
			tx = session.beginTransaction();
			session.delete(addnewcustomer);
			tx.commit();
			return "Success";
			
		}
		catch(Exception e){
			tx.rollback();
			e.printStackTrace();
			return "Failed";
			
		}finally{
			session.close();
		}
	}

	public String doDeleteTracking(AddTracking addtracking) {
		Session session = null;
		Transaction tx = null;
		try{
			session = sessionfactory.openSession();
			tx = session.beginTransaction();
			session.delete(addtracking);
			tx.commit();
			return "Success";
			
		}
		catch(Exception e){
			tx.rollback();
			e.printStackTrace();
			return "Failed";
			
		}finally{
			session.close();
		}
	}

	public String doDeleteOffice(AddNewOffice addnewoffice) {
		Session session = null;
		Transaction tx = null;
		try{
			session = sessionfactory.openSession();
			tx = session.beginTransaction();
			session.delete(addnewoffice);
			tx.commit();
			return "Success";
			
		}
		catch(Exception e){
			tx.rollback();
			e.printStackTrace();
			return "Failed";
			
		}finally{
			session.close();
		}
	}

	public String doDeleteTransporter(AddNewTransporter addnewtransporter) {
		Session session = null;
		Transaction tx = null;
		try{
			session = sessionfactory.openSession();
			tx = session.beginTransaction();
			session.delete(addnewtransporter);
			tx.commit();
			return "Success";
			
		}
		catch(Exception e){
			tx.rollback();
			e.printStackTrace();
			return "Failed";
			
		}finally{
			session.close();
		}
	}

	public String doDeleteGiftCard(AddGiftCard addgiftcard) {
		Session session = null;
		Transaction tx = null;
		try{
			session = sessionfactory.openSession();
			tx = session.beginTransaction();
			session.delete(addgiftcard);
			tx.commit();
			return "Success";
			
		}
		catch(Exception e){
			tx.rollback();
			e.printStackTrace();
			return "Failed";
			
		}finally{
			session.close();
		}
	}
	public boolean insert_pricing_table(Pricing pricing) {
		Session session = null;
		Transaction tr= null;
		
		try{
			session = sessionfactory.openSession();
			
			 tr= session.beginTransaction();
			
			 session.save(pricing);
			
			tr.commit();
			System.out.println("Insert Commit done on Pricing");
			
		}catch(Exception e){
			
			e.printStackTrace();
			
			return false;
		}
		finally {
			session.close();
		}
		return true;
	}
	public List<Pricing> show_pricing_table(){

		Session session = null;
		List<Pricing> pricing_table =null;
		try{
		/*
 * 
		List<User_master> User_list = new ArrayList();
		
		Query query = session.createQuery("from User_master");
		User_list = query.list();
		System.out.println("query executed..!!");
		return User_list;
*/	
		session = sessionfactory.openSession();
		pricing_table = session.createCriteria(Pricing.class).list();
		System.out.println("query executed..!!");
		}catch(Exception e){
			System.out.println("Error is: "+e.getMessage());
		}finally {
			session.close();
		}
		
		return pricing_table;
	}


	public int find_air_price(char grade) {
		Session session = null;
		List<Pricing> list;
		int air_price = 0;
		try{
		
		session = sessionfactory.openSession();
		 		
		String hql ="from Pricing i where i.Grade = :Grade";
		/*String hql = "from Stock s where s.stockCode = :stockCode";*/
		 list = session.createQuery(hql).setCharacter("Grade", grade).list();
		 
		 Pricing obj = new Pricing();
		 Iterator i = list.iterator();
		 while(i.hasNext())
		 {
			 obj = (Pricing)i.next();
			 air_price = obj.getAir_price();
		 }
		 
		 
		System.out.println("Dao Success");
		}catch(Exception e){
			e.printStackTrace();
			
		}

		finally {
			session.close();
		}
		
		return air_price;
		/* <--Where clause by Mihir Patel-->
		  List<User_master> User_list = session.createCriteroa(User_master.class).add(Restrictions.eq("email",email)).list();
		   
		   
		   */
	}


	public int find_railway_price(char grade) {
		Session session = null;
		List<Pricing> list;
		int railway_price = 0;
		try{
		
		session = sessionfactory.openSession();
		 		
		String hql ="from Pricing i where i.Grade = :Grade";
		/*String hql = "from Stock s where s.stockCode = :stockCode";*/
		 list = session.createQuery(hql).setCharacter("Grade", grade).list();
		 
		 Pricing obj = new Pricing();
		 Iterator i = list.iterator();
		 while(i.hasNext())
		 {
			 obj = (Pricing)i.next();
			 railway_price = obj.getRailway_price();
		 }
		 
		 
		System.out.println("Dao Success");
		}catch(Exception e){
			e.printStackTrace();
			
		}

		finally {
			session.close();
		}
		
		return railway_price;
		
	}
	public int find_car_price(char grade) {
		Session session = null;
		List<Pricing> list;
		int car_price = 0;
		try{
		
		session = sessionfactory.openSession();
		 		
		String hql ="from Pricing i where i.Grade = :Grade";
		/*String hql = "from Stock s where s.stockCode = :stockCode";*/
		 list = session.createQuery(hql).setCharacter("Grade", grade).list();
		 
		 Pricing obj = new Pricing();
		 Iterator i = list.iterator();
		 while(i.hasNext())
		 {
			 obj = (Pricing)i.next();
			 car_price = obj.getCar_price();
		 }
		 
		 
		System.out.println("Dao Success");
		}catch(Exception e){
			e.printStackTrace();
			
		}

		finally {
			session.close();
		}
		
		return car_price;
		/* <--Where clause by Mihir Patel-->
		  List<User_master> User_list = session.createCriteroa(User_master.class).add(Restrictions.eq("email",email)).list();
		   
		   
		   */
	}
	public String insert_slider(Sliders slider) {
		Session session = null;
		Transaction tr = null;
		try{
			session = sessionfactory.openSession();
			tr = session.beginTransaction();
			session.save(slider);
			tr.commit();
			return "Success";
			
		}catch(Exception e){
			
			e.printStackTrace();
			return "Failed";
		}
	}
	public String delete_slider(Sliders slider) {
		Session session = null;
		Transaction tr = null;
		try{
			session = sessionfactory.openSession();
			tr = session.beginTransaction();
			session.delete(slider);
			tr.commit();
			return "Success";
			
		}catch(Exception e){
			
			e.printStackTrace();
			return "Failed";
		}
	}
	
	public List<Sliders> show_sliders(){
		Session session = null;
		List<Sliders> slider_list = null;
		try{
			session = sessionfactory.openSession();
			slider_list = session.createCriteria(Sliders.class).list();
			System.out.println("Show Sliders query excecuted..!");
			
		}catch(Exception e){
			e.printStackTrace();
		}
		finally {
			session.close();
		}
		return slider_list;
	}
	public String find_slider(int id) {
		
		Session session = null;
		List<Sliders> list = null;
		String name="";
		try{
		
		session = sessionfactory.openSession();
		 		
		String hql ="from Sliders i where i.id = :id";
		/*String hql = "from Stock s where s.stockCode = :stockCode";*/
		 list = session.createQuery(hql).setInteger("id", id).list();
		 
		 Sliders slider = new Sliders();
		 Iterator i = list.iterator();
		 while(i.hasNext())
		 {
			 slider = (Sliders)i.next();
			 name = slider.getName();
			 System.out.println("filename in dao"+name);
		 }
		 
		System.out.println("Dao Success");
		}catch(Exception e){
			e.printStackTrace();
		}

		finally {
			session.close();
		}
		return name;
		
		
	}
}

