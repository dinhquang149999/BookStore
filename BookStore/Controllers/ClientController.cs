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
using Microsoft.AspNetCore.Http;

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
            ViewBag.LoggedIn = 0;
            //var entities = _connection.Query<Book>("SELECT * FROM books", commandType: CommandType.Text).ToList();
            if (HttpContext.Session.GetString("email") != null)
            {
                ViewBag.LoggedIn = 1;
            }
            return View();
        }
        [HttpGet]
        public IActionResult Search(string query)
        {
            ViewBag.LoggedIn = 0;
            var queryString = "SELECT * FROM books WHERE book_title LIKE '%" + query + "%'";
            var searchResult = _connection.Query<Book>(queryString, commandType: CommandType.Text).ToList();
            if(HttpContext.Session.GetString("email") != null)
            {
                ViewBag.LoggedIn = 1;
            }
            return View(searchResult);
        }
        [HttpPost]
        public IActionResult Login(string email, string password)
        {
            ViewBag.LoggedIn = 0;
            var queryString = "SELECT * FROM customers WHERE email = '" + email + "' AND password = '" + password + "'";
            var result = _connection.Query<Customer>(queryString, commandType: CommandType.Text).FirstOrDefault();
            if(result != null)
            {
                HttpContext.Session.SetString("email", email);
                ViewBag.Success = 1;
                ViewBag.LoggedIn = 1;
                return View("Index");
            } else
            {
                ViewBag.Success = 0;
                return View("Index");
            }
        }
        public IActionResult Logout()
        {
            HttpContext.Session.Clear();
            ViewBag.LoggedIn = 0;
            return RedirectToAction("Index");
        }
        [HttpPost]
        public IActionResult SignUp(string fullName, string phoneNumber, string email, string address, string password, string confirmPassword)
        {
            var queryString = "INSERT INTO customers(fullname, phoneNumber, email, address, password) VALUES('"+fullName+"','"+phoneNumber+"','"+email+"','"+address+"','"+password+"')";
            var result = _connection.Query<Customer>(queryString, commandType: CommandType.Text);
            ViewBag.SignedUp = 1;
            return RedirectToAction("Index");
        }
    }
}
