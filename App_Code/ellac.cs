using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;



/// <summary>
/// Summary description for ellac
/// </summary>
public class ellac
{
    SqlConnection conn = new SqlConnection(@"Data Source=localhost;Initial Catalog=ellac_cDB;Integrated Security=True");

	public ellac()
	{
        SqlConnection conn = new SqlConnection(@"Data Source=localhost;Initial Catalog=ellac_cDB;Integrated Security=True");
    }
    public void insertdriver(string a,string b,
            string c,string d,int e,string f,string g,string h,string j,string k,
            string l,string m,string n,string p,string q,string r,string s)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("insert into drivers values (@sur,@first,@last,@address,"+
           " @fone,@marry,@quali,@exp,@engage,@placengage,@train,@jobspec,@healtrec,@salary"+
        ",@allowance,@remark,@file)", conn);
        cmd.Parameters.Add("@sur", a);
        cmd.Parameters.Add("@first", b);
        cmd.Parameters.Add("@last", c);
        cmd.Parameters.Add("@address", d);
        cmd.Parameters.Add("@fone", e);
        cmd.Parameters.Add("@marry", f);
        cmd.Parameters.Add("@quali", g);
        cmd.Parameters.Add("@exp", h);
        cmd.Parameters.Add("@engage", j);
        cmd.Parameters.Add("@placengage", k);
        cmd.Parameters.Add("@train", l);
        cmd.Parameters.Add("@jobspec", m);
        cmd.Parameters.Add("@healtrec", n);
        cmd.Parameters.Add("@salary", p);
        cmd.Parameters.Add("@allowance", q);
        cmd.Parameters.Add("@remark", r);
        cmd.Parameters.Add("@file", s);

        cmd.ExecuteNonQuery();
    }
    public void insertnanies(string a, string b,
            string c, string d, int e, string f, string g, string h, string j, string k,
            string l, string m, string n, string p, string q, string r,string s)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("insert into nanies values (@sur,@first,@last,@address," +
           " @fone,@marry,@quali,@exp,@engage,@placengage,@train,@jobspec,@healtrec,@salary" +
        ",@allowance,@remark,@file)", conn);
        cmd.Parameters.Add("@sur", a);
        cmd.Parameters.Add("@first", b);
        cmd.Parameters.Add("@last", c);
        cmd.Parameters.Add("@address", d);
        cmd.Parameters.Add("@fone", e);
        cmd.Parameters.Add("@marry", f);
        cmd.Parameters.Add("@quali", g);
        cmd.Parameters.Add("@exp", h);
        cmd.Parameters.Add("@engage", j);
        cmd.Parameters.Add("@placengage", k);
        cmd.Parameters.Add("@train", l);
        cmd.Parameters.Add("@jobspec", m);
        cmd.Parameters.Add("@healtrec", n);
        cmd.Parameters.Add("@salary", p);
        cmd.Parameters.Add("@allowance", q);
        cmd.Parameters.Add("@remark", r);
        cmd.Parameters.Add("@file", s);

        cmd.ExecuteNonQuery();
    }
    public void insertchefs(string a, string b,
            string c, string d, int e, string f, string g, string h, string j, string k,
            string l, string m, string n, string p, string q, string r,string s)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("insert into chefs values (@sur,@first,@last,@address," +
           " @fone,@marry,@quali,@exp,@engage,@placengage,@train,@jobspec,@healtrec,@salary" +
        ",@allowance,@remark,@file)", conn);
        cmd.Parameters.Add("@sur", a);
        cmd.Parameters.Add("@first", b);
        cmd.Parameters.Add("@last", c);
        cmd.Parameters.Add("@address", d);
        cmd.Parameters.Add("@fone", e);
        cmd.Parameters.Add("@marry", f);
        cmd.Parameters.Add("@quali", g);
        cmd.Parameters.Add("@exp", h);
        cmd.Parameters.Add("@engage", j);
        cmd.Parameters.Add("@placengage", k);
        cmd.Parameters.Add("@train", l);
        cmd.Parameters.Add("@jobspec", m);
        cmd.Parameters.Add("@healtrec", n);
        cmd.Parameters.Add("@salary", p);
        cmd.Parameters.Add("@allowance", q);
        cmd.Parameters.Add("@remark", r);
        cmd.Parameters.Add("@file", s);

        cmd.ExecuteNonQuery();
    }

    public void insertsalesgirls (string a, string b,
            string c, string d, int e, string f, string g, string h, string j, string k,
            string l, string m, string n, string p, string q, string r,string s)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("insert into salesgirls values (@sur,@first,@last,@address," +
           " @fone,@marry,@quali,@exp,@engage,@placengage,@train,@jobspec,@healtrec,@salary" +
        ",@allowance,@remark,@file)", conn);
        cmd.Parameters.Add("@sur", a);
        cmd.Parameters.Add("@first", b);
        cmd.Parameters.Add("@last", c);
        cmd.Parameters.Add("@address", d);
        cmd.Parameters.Add("@fone", e);
        cmd.Parameters.Add("@marry", f);
        cmd.Parameters.Add("@quali", g);
        cmd.Parameters.Add("@exp", h);
        cmd.Parameters.Add("@engage", j);
        cmd.Parameters.Add("@placengage", k);
        cmd.Parameters.Add("@train", l);
        cmd.Parameters.Add("@jobspec", m);
        cmd.Parameters.Add("@healtrec", n);
        cmd.Parameters.Add("@salary", p);
        cmd.Parameters.Add("@allowance", q);
        cmd.Parameters.Add("@remark", r);
        cmd.Parameters.Add("@file", s);
        cmd.ExecuteNonQuery();
    }

    public void addcategory(string a)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("insert into staffs_category values (@category,@date)", conn);
        cmd.Parameters.Add("@category", a);
        cmd.Parameters.Add("@date", DateTime.Now);
        cmd.ExecuteNonQuery();

    }
    public void insertclients(string a, string b, string c, string d)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("insert into clients values (@name,@phone,@address,@request_cat,@date)", conn);
        cmd.Parameters.Add("@name", a);
        cmd.Parameters.Add("@phone", b);
        cmd.Parameters.Add("@address", c);
        cmd.Parameters.Add("@request_cat", d);
        cmd.Parameters.Add("@date", DateTime.Now);
        cmd.ExecuteNonQuery();
    }

    public void regstaff(string a, string b,
            string c, string d, int e, string f, string g, string h, string k,
            string l, string m, string n, string p, string q, string r, string s)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("insert into staffs (surname,firstname,lastname,address,phone,marital," +
        " qualification,experience,staff_cat,training,job_specification,healthRecords,salary,allowance,remarks,imageurl) values (@sur,@first,@last,@address," +
           " @fone,@marry,@quali,@exp,@placengage,@train,@jobspec,@healtrec,@salary" +
        ",@allowance,@remark,@file)", conn);
        cmd.Parameters.Add("@sur", a);
        cmd.Parameters.Add("@first", b);
        cmd.Parameters.Add("@last", c);
        cmd.Parameters.Add("@address", d);
        cmd.Parameters.Add("@fone", e);
        cmd.Parameters.Add("@marry", f);
        cmd.Parameters.Add("@quali", g);
        cmd.Parameters.Add("@exp", h);
        
        cmd.Parameters.Add("@placengage", k);
        cmd.Parameters.Add("@train", l);
        cmd.Parameters.Add("@jobspec", m);
        cmd.Parameters.Add("@healtrec", n);
        cmd.Parameters.Add("@salary", p);
        cmd.Parameters.Add("@allowance", q);
        cmd.Parameters.Add("@remark", r);
        cmd.Parameters.Add("@file", s);

        cmd.ExecuteNonQuery();
    }
}