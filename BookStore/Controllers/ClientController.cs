using Dapper;
using BookStore.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace BookStore.Controllers
{
    public class ClientController : Controller
    {
        private string _connectionString = "server=localhost;user=root;password=123456789;port=3306;database=bookstore";
        private MySqlConnection _connection;
        public ClientController()
        {
            _connection = new MySqlConnection(_connectionString);
        }
        public IActionResult Index()
        {
            //var entities = _connection.Query<Book>("SELECT * FROM books", commandType: CommandType.Text).ToList();

            return View();
        }
        [HttpGet]
        public IActionResult Search(string query)
        {
            var queryString = "SELECT * FROM books WHERE book_title LIKE '%" + query + "%'";
            var searchResult = _connection.Query<Book>(queryString, commandType: CommandType.Text).ToList();
            return View(searchResult);
        }
    }
}
