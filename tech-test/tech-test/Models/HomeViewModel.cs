using System.Collections.Generic;

namespace tech_test.Models
{
    public class HomeViewModel
    {
        public List<(string Section, string Key, string Value)> Texts { get; set; } = new();
        public List<(string Section, string Key, string ImagePath, string AltText)> Images { get; set; } = new();
    }
}
