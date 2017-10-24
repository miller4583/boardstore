using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Project.Web.Models;
using System.Data.SqlClient;
using System.Configuration;

namespace Project.Web.DAL
{
    public class CategorySqlDAl : ICategoryDAL
    {
        private string ProductConnectionString = ConfigurationManager.ConnectionStrings["board"].ConnectionString;
        private const string Sql_Get_Categories = "Select * from categories;";


        public List<Category> GetAllCategories()
        {
            List<Category> list = new List<Category>();
            try
            {
                using(SqlConnection conn = new SqlConnection(ProductConnectionString))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand(Sql_Get_Categories, conn);
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Category c = new Category();
                        c.CatID = Convert.ToInt32(reader["id"]);
                        c.CatName = Convert.ToString(reader["name"]);
                        c.CatImg = Convert.ToString(reader["img_name"]);
                        list.Add(c);
                    }
                }
            }
            catch(SqlException ex)
            {
                throw;
            }
            return list;
        }
    }
}