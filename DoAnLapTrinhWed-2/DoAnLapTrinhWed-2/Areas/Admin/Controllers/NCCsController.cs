using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using DoAnLapTrinhWed_2.Models;
using PagedList;

namespace DoAnLapTrinhWed_2.Areas.Admin.Controllers
{
    public class NCCsController : Controller
    {
        private ModelLinhKienContext context = new ModelLinhKienContext();

        // GET: Admin/NCCs
        public ActionResult Index(string currentFilter, string SearchString, int? page)
        {
            var listNCC = new List<NCC>();
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
                listNCC = context.NCCs.Where(n => n.TenNCC.Contains(SearchString)).ToList();
            }
            else
            {
                listNCC = context.NCCs.ToList();
            }
            ViewBag.CurrentFilter = SearchString;
            int pageSize = 4;
            int pageNumber = (page ?? 1);
            listNCC = listNCC.OrderBy(n => n.NccId).ToList();
            return View(listNCC.ToPagedList(pageNumber, pageSize));
        }

        // GET: Admin/NCCs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NCC nCC = context.NCCs.Find(id);
            if (nCC == null)
            {
                return HttpNotFound();
            }
            return View(nCC);
        }

        // GET: Admin/NCCs/Create
        public ActionResult Create()
        {
            var context = new ModelLinhKienContext();
            return View();
        }

        // POST: Admin/NCCs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(NCC nCC)
        {
            var context = new ModelLinhKienContext();
            if (ModelState.IsValid)
            {
                context.NCCs.Add(nCC);
                context.SaveChanges();
                return RedirectToAction("Index");
            }
            else
                return RedirectToAction("Create");
        }

        // GET: Admin/NCCs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NCC nCC = context.NCCs.Find(id);
            if (nCC == null)
            {
                return HttpNotFound();
            }
            return View(nCC);
        }

        // POST: Admin/NCCs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "NccId,TenNCC")] NCC nCC)
        {
            if (ModelState.IsValid)
            {
                context.Entry(nCC).State = EntityState.Modified;
                context.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(nCC);
        }

        // GET: Admin/NCCs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NCC nCC = context.NCCs.Find(id);
            if (nCC == null)
            {
                return HttpNotFound();
            }
            return View(nCC);
        }

        // POST: Admin/NCCs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            NCC nCC = context.NCCs.Find(id);
            context.NCCs.Remove(nCC);
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
