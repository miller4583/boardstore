using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace Project.Web.Models
{
    public class Product
    {
        public int ProductID { get; set; }
        public string Name { get; set; }
        public double Price { get; set; }
        public string Description { get; set; }
        public int CategroryID { get; set; }
        public string ImgName { get; set; }
        public int Rating { get; set; }
        public int Sold { get; set; }
        public int Quantity { get; set; }
        
    }
}