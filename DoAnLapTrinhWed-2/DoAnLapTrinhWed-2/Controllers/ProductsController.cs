using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using DoAnLapTrinhWed_2.Models;

namespace DoAnLapTrinhWed_2.Controllers
{
    public class ProductsController : Controller
    {
        private ModelLinhKienContext context = new ModelLinhKienContext();

        // GET: Products
        public ActionResult Index()
        {
            return View(context.Products.ToList());
        }
        public ActionResult GetProducts(int? id)
        {
            return View("Index", context.Products.Where(p => p.BrandId == id).ToList());
        }
        public ActionResult GetBrand()
        {
            ModelLinhKienContext context = new ModelLinhKienContext();
            var listbrand = context.Brands.ToList();
            return PartialView(listbrand);
        }
        public ActionResult GetBrand2()
        {
            ModelLinhKienContext context = new ModelLinhKienContext();
            var listbrand = context.Brands.ToList();
            return PartialView(listbrand);
        }
        // GET: Products/Details/5
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

        // GET: Products/Create
        public ActionResult Create()
        {
            ViewBag.BrandId = new SelectList(context.Brands, "BrandId", "Name");
            ViewBag.NCCId = new SelectList(context.NCCs, "NccId", "TenNCC");
            return View();
        }

        // POST: Products/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Name,Avartar,Avartar1,Avartar2,Avartar3,ShortDes,FullDescription,Price,PriceDiscount,Slug,Deleted,ShowOnHomePage,DisplayOrder,TinhTrang,BaoHanh,CreatedOnUtc,UpdateOnUtc,BrandId,NCCId")] Product product)
        {
            if (ModelState.IsValid)
            {
                context.Products.Add(product);
                context.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.BrandId = new SelectList(context.Brands, "BrandId", "Name", product.BrandId);
            ViewBag.NCCId = new SelectList(context.NCCs, "NccId", "TenNCC", product.NCCId);
            return View(product);
        }

        // GET: Products/Edit/5
        public ActionResult Edit(int? id)
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
            ViewBag.BrandId = new SelectList(context.Brands, "BrandId", "Name", product.BrandId);
            ViewBag.NCCId = new SelectList(context.NCCs, "NccId", "TenNCC", product.NCCId);
            return View(product);
        }

        // POST: Products/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Name,Avartar,Avartar1,Avartar2,Avartar3,ShortDes,FullDescription,Price,PriceDiscount,Slug,Deleted,ShowOnHomePage,DisplayOrder,TinhTrang,BaoHanh,CreatedOnUtc,UpdateOnUtc,BrandId,NCCId")] Product product)
        {
            if (ModelState.IsValid)
            {
                context.Entry(product).State = EntityState.Modified;
                context.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.BrandId = new SelectList(context.Brands, "BrandId", "Name", product.BrandId);
            ViewBag.NCCId = new SelectList(context.NCCs, "NccId", "TenNCC", product.NCCId);
            return View(product);
        }

        // GET: Products/Delete/5
        public ActionResult Delete(int? id)
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

        // POST: Products/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Product product = context.Products.Find(id);
            context.Products.Remove(product);
            context.SaveChanges();
            return RedirectToAction("Index");
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
