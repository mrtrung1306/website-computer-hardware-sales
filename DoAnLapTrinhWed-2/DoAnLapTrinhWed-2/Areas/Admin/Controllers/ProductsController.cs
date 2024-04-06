using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.Mvc;
using DoAnLapTrinhWed_2.Models;
using PagedList;

namespace DoAnLapTrinhWed_2.Areas.Admin.Controllers
{
    public class ProductsController : Controller
    {
       
        private ModelLinhKienContext context = new ModelLinhKienContext();

        // GET: Admin/Products
        [Authorize(Roles = "Admin")]
        public ActionResult Index(string currentFilter,string SearchString,int? page)
        {
            //var products = context.Products.Where(n=>n.Name.Contains(SearchString)).ToList();
            var listProduct = new List<Product>();
            if(SearchString != null)
            {
                page = 1;
            }
            else
            {   
                SearchString = currentFilter;
            }
            if (!String.IsNullOrEmpty(SearchString))
            {
                listProduct = context.Products.Where(n => n.Name.Contains(SearchString)).ToList();
            }
            else
            {
                listProduct = context.Products.ToList();
            }
            ViewBag.CurrentFilter = SearchString;
            int pageSize = 4;
            int pageNumber = (page ?? 1);
            listProduct = listProduct.OrderBy(n => n.Id).ToList();
            return View(listProduct.ToPagedList(pageNumber, pageSize));
           
        }

        // GET: Admin/Products/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = context.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        // GET: Admin/Products/Create
        public ActionResult Create()
        {
            var context = new ModelLinhKienContext();
            ViewBag.ListBrand = context.Brands.ToList();
            ViewBag.ListNCC = context.NCCs.ToList();
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Product product)
        {
            var context = new ModelLinhKienContext();
            if (ModelState.IsValid)
            {
                string allfile = "";
                string[]split= null; ;
                foreach (var file in product.ImageFile)
                {
                    if (file != null && file.ContentLength > 0)
                    {
                        var fileName = Path.GetFileName(file.FileName);
                        var filePath = Path.Combine(Server.MapPath("~/Content/images/items/"), fileName);
                        file.SaveAs(filePath);
                        allfile += "|" +fileName ;
                    }
                    
                }
                split = allfile.Split('|');
                product.Avartar = "" + split[1];
                product.Avartar1 = "" + split[2];
                product.Avartar2 = "" + split[3];
                product.Avartar3 = "" + split[4];
                context.Products.Add(product);
                context.SaveChanges();
                return RedirectToAction("Index");
            }
            else
                return RedirectToAction("Create");
        }

        // GET: Admin/Products/Edit/5
        public ActionResult Edit(int id)
        {
            ModelLinhKienContext context = new ModelLinhKienContext();
            ViewBag.ListNCC = context.NCCs.ToList();
            ViewBag.ListBrand = context.Brands.ToList();
            Product firstBook = context.Products.FirstOrDefault(p => p.Id == id);
            if (firstBook != null)
            {
                return View(firstBook);
            }
            return Content("Không tìm thấy id");
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Product product)
        {
            var context = new ModelLinhKienContext();
            Product firstProduct = context.Products.FirstOrDefault(p => p.Id == product.Id);
            if (firstProduct == null)
            {
                return HttpNotFound("Không tìm thấy linh kiện này!");
            }
            else
            {
                string allfile = "";
                string[] split = null; ;
                foreach (var file in product.ImageFile)
                {
                    if (file != null && file.ContentLength > 0)
                    {
                        var fileName = Path.GetFileName(file.FileName);
                        var filePath = Path.Combine(Server.MapPath("~/Content/images/items/"), fileName);
                        file.SaveAs(filePath);
                        allfile += "|" + fileName;
                    }

                }
                split = allfile.Split('|');
                product.Avartar = "" + split[1];
                product.Avartar1 = "" + split[2];
                product.Avartar2 = "" + split[3];
                product.Avartar3 = "" + split[4];
                firstProduct.Name = product.Name;
                firstProduct.Avartar = product.Avartar;
                firstProduct.Avartar1 = product.Avartar1;
                firstProduct.Avartar2 = product.Avartar2;
                firstProduct.Avartar3 = product.Avartar3;
                firstProduct.ShortDes = product.ShortDes;
                firstProduct.Price = product.Price;
                firstProduct.TinhTrang = product.TinhTrang;
                firstProduct.BaoHanh = product.BaoHanh;
                firstProduct.BrandId = product.BrandId;
                firstProduct.NCCId = product.NCCId;
                context.SaveChanges();
                return RedirectToAction("Index");
            }
        }

        // GET: Admin/Products/Delete/5
        public ActionResult Delete(int id)
        {
            ModelLinhKienContext context = new ModelLinhKienContext();
            Product firstProduct = context.Products.FirstOrDefault(p => p.Id == id);
            if (firstProduct != null)
            {
                return View(firstProduct);
            }
            return Content("Không tìm thấy id");
        }

        // POST: Admin/Products/Delete/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Delete(Product deleteProduct)
        {
            ModelLinhKienContext context = new ModelLinhKienContext();
            Product firstProduct = context.Products.FirstOrDefault(p => p.Id == deleteProduct.Id);
            if (firstProduct == null)
            {
                return HttpNotFound("Không tìm thấy linh kiện này!");
            }
            else
            {
                context.Products.Remove(firstProduct);
                context.SaveChanges();
                return RedirectToAction("Index");
            }
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                context.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
