using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookStore.Models
{
    public class Book
    {
        private BookStoreContext context;
        public int Book_id { get; set; }
        public string Book_title { get; set; }
        public string Book_author { get; set; }
        public decimal Book_price { get; set; }
        public string Book_category { get; set; }
        public int Book_quantity { get; set; }
        public string Book_image { get; set; }
    }
}
