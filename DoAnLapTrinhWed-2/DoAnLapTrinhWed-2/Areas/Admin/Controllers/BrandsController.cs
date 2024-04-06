using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using System.Web.UI;
using DoAnLapTrinhWed_2.Models;
using PagedList;

namespace DoAnLapTrinhWed_2.Areas.Admin.Controllers
{
    public class BrandsController : Controller
    {
        private ModelLinhKienContext context = new ModelLinhKienContext();

        // GET: Admin/Brands
        [Authorize(Roles = "Admin")]
        public ActionResult Index(string currentFilter, string SearchString, int? page)
        {
            var listBrand = new List<Brand>();
            if (SearchString != null)
            {
                page = 1;
            }
            else
            {
                SearchString = currentFilter;
            }
            if (!String.IsNullOrEmpty(SearchString))
            {
                listBrand = context.Brands.Where(n => n.Name.Contains(SearchString)).ToList();
            }
            else
            {
                listBrand = context.Brands.ToList();
            }
            ViewBag.CurrentFilter = SearchString;
            int pageSize = 4;
            int pageNumber = (page ?? 1);
            listBrand = listBrand.OrderBy(n => n.BrandId).ToList();
            return View(listBrand.ToPagedList(pageNumber, pageSize));

        }

        // GET: Admin/Brands/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Brand brand = context.Brands.Find(id);
            if (brand == null)
            {
                return HttpNotFound();
            }
            return View(brand);
        }

        // GET: Admin/Brands/Create
        public ActionResult Create()
        {
            var context = new ModelLinhKienContext();
            return View();
        }

        // POST: Admin/Brands/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Brand brand)
        {
            var context = new ModelLinhKienContext();

            if (ModelState.IsValid)
            {
                if (brand.ImageFile != null && brand.ImageFile.ContentLength > 0)
                {
                    var fileName = Path.GetFileName(brand.ImageFile.FileName);
                    var filePath = Path.Combine(Server.MapPath("~/Content/images/items/"), fileName);
                    brand.ImageFile.SaveAs(filePath);
                    brand.Avartar = "" + fileName;
                }
                context.Brands.Add(brand);
                context.SaveChanges();
                return RedirectToAction("Index");
            }
            else
                return RedirectToAction("Create");
        }

        // GET: Admin/Brands/Edit/5
        public ActionResult Edit(int id)
        {
            ModelLinhKienContext context = new ModelLinhKienContext();
            Brand firstBrand = context.Brands.FirstOrDefault(p => p.BrandId == id);
            if (firstBrand != null)
            {
                return View(firstBrand);
            }
            return Content("Không tìm thấy id");
        }

        // POST: Admin/Brands/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Brand brand)
        {
            ModelLinhKienContext context = new ModelLinhKienContext();
            Brand firstBrand = context.Brands.FirstOrDefault(p => p.BrandId == brand.BrandId);
            if (firstBrand == null)
            {
                return HttpNotFound("Không tìm thấy mã sách này!");
            }
            else
            {
                if (brand.ImageFile != null && brand.ImageFile.ContentLength > 0)
                {
                    var fileName = Path.GetFileName(brand.ImageFile.FileName);
                    var filePath = Path.Combine(Server.MapPath("~/Content/images/items/"), fileName);
                    brand.ImageFile.SaveAs(filePath);
                    brand.Avartar = "" + fileName;
                }
                firstBrand.Name = brand.Name;
                firstBrand.Avartar = brand.Avartar;
                context.SaveChanges();
                return RedirectToAction("Index");
            }
        }

        // GET: Admin/Brands/Delete/5
        public ActionResult Delete(int? id)
        {
            ModelLinhKienContext context = new ModelLinhKienContext();
            Brand firstBrand = context.Brands.FirstOrDefault(p => p.BrandId == id);
            if (firstBrand != null)
            {
                return View(firstBrand);
            }
            return Content("Không tìm thấy id");
        }

        // POST: Admin/Brands/Delete/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Delete(int id)
        {
            ModelLinhKienContext context = new ModelLinhKienContext();
            Brand firstBrand = context.Brands.FirstOrDefault(p => p.BrandId == id);
            if (firstBrand == null)
            {
                return HttpNotFound("Không tìm thấy linh kiện này!");
            }
            else
            {
                context.Brands.Remove(firstBrand);
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
