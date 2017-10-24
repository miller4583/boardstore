using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project.Web.Models;
using Project.Web.DAL;

namespace Project.Web.Controllers
{
    public class HomeController : Controller
    {
        private IProductDAL proDal;
        private ICategoryDAL catDal;
        
        public HomeController(IProductDAL productDal, ICategoryDAL categoryDal)
        {
            this.proDal = productDal;
            this.catDal = categoryDal;
        }

        // GET: Main Menu
        public ActionResult Main()
        {
            List<Category> model = catDal.GetAllCategories();
            return View("Main", model);
        }
        //Get: List of products in category from given id
        public ActionResult CategoryProducts(int id)
        {
            List<Product> input = proDal.GetProducts(id);
            return View("CategoryProducts", input);
        }
        //Get:product detail by given product id
        public ActionResult Detail(int id)
        {
            Product p = proDal.GetProduct(id);
            return View("Detail", p);
        }
        [HttpPost]
        public ActionResult Detail( int id, int quantity)
        {

            Product p = proDal.GetProduct(id);
            p.Quantity = quantity;
            if (Session["cart"] == null)
            {
                Session["cart"] =  new List<Product>();

            }
            else
            {
                int newId = id;
                Product c = proDal.GetProduct(newId);
                var listItems = (Session["cart"]) as List<Product>;
                for (int i = 0; i < listItems.Count; i++)
                {
                    if (listItems[i].ProductID == c.ProductID)
                    {
                        listItems.Remove(listItems[i]);
                    }
                }
            }

           (Session["cart"] as List<Product>).Add(p);         

            return RedirectToAction("ShoppingCart");
        }

        public ActionResult ShoppingCart()
        {
            List<Product> model = Session["cart"] as List<Product>;
            return View("ShoppingCart", model);
        }
        
    }
}