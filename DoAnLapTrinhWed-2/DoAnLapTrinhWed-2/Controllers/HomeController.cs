using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DoAnLapTrinhWed_2.Models;
namespace DoAnLapTrinhWed_2.Controllers
{
    public class HomeController : Controller
    {
        ModelLinhKienContext context = new ModelLinhKienContext();
        public ActionResult Index()
        {
            HomeModels obj= new HomeModels();
            obj.ListBrands = context.Brands.ToList();
            obj.ListProducts= context.Products.ToList();
            return View(obj);
        }

        [HttpGet]
        public ActionResult GetBrand()
        {
            ModelLinhKienContext context = new ModelLinhKienContext();
            var listbrand = context.Brands.ToList();
            return PartialView(listbrand);
        }
        public ActionResult GetBrand1()
        {
            ModelLinhKienContext context = new ModelLinhKienContext();
            var listbrand = context.Brands.ToList();
            return PartialView(listbrand);
        }
        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}