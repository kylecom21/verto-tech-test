using Microsoft.AspNetCore.Mvc;
using tech_test.Services;
using tech_test.Models;
using System.Diagnostics;

namespace tech_test.Controllers
{
    public class HomeController : Controller
    {
        private readonly DatabaseService _databaseService;
        private readonly ILogger<HomeController> _logger;

        public HomeController(DatabaseService databaseService, ILogger<HomeController> logger)
        {
            _databaseService = databaseService;
            _logger = logger;
        }

        public IActionResult Index()
        {
            var textContent = _databaseService.GetTextContent();
            var imageContent = _databaseService.GetImageContent();

            var viewModel = new HomeViewModel
            {
                Texts = textContent,
                Images = imageContent
            };

            return View(viewModel);
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
