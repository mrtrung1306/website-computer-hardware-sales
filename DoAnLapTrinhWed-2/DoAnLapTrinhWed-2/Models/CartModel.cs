using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;

namespace DoAnLapTrinhWed_2.Models
{
    public class CartModel
    {
        public Product Product { get; set; }
        public int Quantity { get; set; }
        public int Money
        {
            get
            {
                return (int)(Quantity * Product.Price);
            }
        }
    }
}