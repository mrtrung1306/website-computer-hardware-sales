using DoAnLapTrinhWed_2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Services.Description;

namespace DoAnLapTrinhWed_2.Controllers
{
    public class ShoppingCartController : Controller
    {
        ModelLinhKienContext context = new ModelLinhKienContext();
        // GET: ShoppingCart
        public ActionResult Index()
        {
            //return View((List<CartModel>)Session["cart"]);
            List<CartModel> cart = ((List<CartModel>)Session["cart"]);
            if(cart == null)
            {
                cart = new List<CartModel>();
                Session["cart"] = cart;
            }
            else
            {
                ViewBag.TongTien = cart.Sum(p => p.Quantity * p.Product.Price);
            }
            return View(cart);
        }
        public ActionResult AddToCart(int id,int quantity)
        {
            if (Session["cart"] == null)
            {
                List<CartModel> cart = new List<CartModel>();
                cart.Add(new CartModel { Product = context.Products.Find(id), Quantity = quantity });
                Session["cart"] = cart;
                Session["count"] = 1;
            }
            else
            {
                List<CartModel> cart = (List<CartModel>)Session["cart"];
                //kiểm tra sản phẩm có tồn tại trong giỏ hàng chưa???
                int index = isExist(id);
                if (index != -1)
                {
                    //nếu sp tồn tại trong giỏ hàng thì cộng thêm số lượng
                    cart[index].Quantity += quantity;
                }
                else
                {
                    //nếu không tồn tại thì thêm sản phẩm vào giỏ hàng
                    cart.Add(new CartModel { Product = context.Products.Find(id), Quantity = quantity });
                    //Tính lại số sản phẩm trong giỏ hàng
                    Session["count"] = Convert.ToInt32(Session["count"]) + 1;
                }
                
                Session["cart"] = cart;
            }
            return Json(new { Message = "Thành công", JsonRequestBehavior.AllowGet });
        }
        private int isExist(int id)
        {
            List<CartModel> cart = (List<CartModel>)Session["cart"];
            for (int i = 0; i < cart.Count; i++)
                if (cart[i].Product.Id.Equals(id))
                    return i;
            return -1;
        }
        public ActionResult Remove(int Id)
        {
            List<CartModel> li = (List<CartModel>)Session["Cart"];
            li.RemoveAll(x => x.Product.Id == Id);

            Session["Cart"] = li;
            Session["Count"] = Convert.ToInt32(Session["Count"]) - 1;
            return Json(new { Message = "Thành công", JsonRequestBehavior.AllowGet });
        }
        [HttpPost]
        public ActionResult UpdateProductQuantity(int id, int quantity)
        {
            List<CartModel> cart = (List<CartModel>)Session["cart"];
            CartModel cartItem = cart.FirstOrDefault(p => p.Product.Id == id);
            if (cartItem != null)
            {
                cartItem.Quantity = quantity;
            }

            Session["cart"] = cart;
            return Json(new { Message = "Thành công", JsonRequestBehavior.AllowGet });
        }
    }
}