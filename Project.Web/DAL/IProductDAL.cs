using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Project.Web.Models;

namespace Project.Web.DAL
{
    public interface IProductDAL
    {
        List<Product> GetProducts(int catID);
        Product GetProduct(int productID);
    }
}
