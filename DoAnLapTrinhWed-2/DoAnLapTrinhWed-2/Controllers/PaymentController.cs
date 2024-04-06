using DoAnLapTrinhWed_2.Models;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAnLapTrinhWed_2.Controllers
{
    public class PaymentController : Controller
    {
        ModelLinhKienContext context = new ModelLinhKienContext();
        // GET: Payment
        public ActionResult Index()
        {
            if (!User.Identity.IsAuthenticated)
            {
                // Nếu người dùng chưa đăng nhập, chuyển hướng tới trang đăng nhập
                Response.Redirect("~/Account/Login");
            }
            else
            {
                var lscart = (List<CartModel>)Session["cart"];
                Order objOrder = new Order();
                objOrder.CustomerId = User.Identity.GetUserId();
                objOrder.OrderDate = DateTime.Now;
                objOrder.status = 1;
                context.Orders.Add(objOrder);
                context.SaveChanges();
                int intOrderId = objOrder.Id;
                List<OrderDetail> listOrderDetail = new List<OrderDetail> { };
                foreach (var item in lscart)
                {
                    OrderDetail obj = new OrderDetail();
                    obj.Quantity = item.Quantity;
                    obj.OrderId = intOrderId;
                    obj.ProductId = item.Product.Id;
                    listOrderDetail.Add(obj);
                }
                context.OrderDetails.AddRange(listOrderDetail);
                context.SaveChanges();
                foreach (var item in listOrderDetail)
                {
                    var cartItem = lscart.FirstOrDefault(c => c.Product.Id == item.ProductId);
                    if (cartItem != null)
                    {
                        lscart.Remove(cartItem);
                    }
                }
                Session["cart"] = lscart;
                Session["Count"] = 0;
            }
            return View();
        }
    }
}