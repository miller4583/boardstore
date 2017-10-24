using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Project.Web.Models;
using System.Data.SqlClient;
using System.Configuration;

namespace Project.Web.DAL
{
    public class ProductSqlDAL : IProductDAL        
    {
        private string ProductConnectionString = ConfigurationManager.ConnectionStrings["board"].ConnectionString;
        private const string SQL_Get_All_Products= "Select * from products where category_id = @catID;";
        private const string SQL_Get_Product = "Select * from products where id=@productID;";


        public Product GetProduct(int productID)
        {
            Product p = new Product();
            try
            {
                using (SqlConnection conn = new SqlConnection(ProductConnectionString))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand(SQL_Get_Product, conn);
                    cmd.Parameters.AddWithValue("@productID", productID);
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {                        
                        p.ProductID = Convert.ToInt32(reader["id"]);
                        p.Name = Convert.ToString(reader["product"]);
                        p.Price = Convert.ToDouble(reader["price"]);
                        p.Description = Convert.ToString(reader["description"]);
                        p.CategroryID = Convert.ToInt32(reader["category_id"]);
                        p.ImgName = Convert.ToString(reader["image_name"]);
                        p.Rating = Convert.ToInt32(reader["rating"]);
                        p.Sold = Convert.ToInt32(reader["sold"]);                        
                    }

                }
            }
            catch (SqlException ex)
            {
                throw;
            }
            return p;
        }

        public List<Product> GetProducts(int catID)
        {
            List<Product> output = new List<Product>();
            try
            {
                using (SqlConnection conn = new SqlConnection(ProductConnectionString))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand(SQL_Get_All_Products, conn);
                    cmd.Parameters.AddWithValue("@catID", catID);
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Product p = new Product();
                        p.ProductID = Convert.ToInt32(reader["id"]);
                        p.Name = Convert.ToString(reader["product"]);
                        p.Price = Convert.ToDouble(reader["price"]);
                        p.Description = Convert.ToString(reader["description"]);
                        p.CategroryID = Convert.ToInt32(reader["category_id"]);
                        p.ImgName = Convert.ToString(reader["image_name"]);
                        p.Rating = Convert.ToInt32(reader["rating"]);
                        p.Sold = Convert.ToInt32(reader["sold"]);
                        output.Add(p);
                    }

                }
            }
            catch(SqlException ex)
            {
                throw;
            }
            return output;
        }
    }
}