using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookStore.Models
{
    public class Customer
    {
        private BookStoreContext context;
        public int Customer_id { get; set; }
        public string Customer_name { get; set; }
        public string Customer_phone { get; set; }
        public string Customer_email { get; set; }
        public string Customer_password { get; set; }
        public string Customer_address { get; set; }
    }
}
