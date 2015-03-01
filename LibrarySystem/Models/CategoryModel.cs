using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using VirtualCollege.Models.Entity;

namespace VirtualCollege.Models
{
    public class CategoryModel
    {
        public static List<Category> GetAllBookCategories()
        {
            return new List<Category> { new Category { catId = 3, catName = "Financial" }, new Category { catId = 1, catName = "Novel" }, new Category { catId = 2, catName = "Dictionary" } };
        }
    }
}