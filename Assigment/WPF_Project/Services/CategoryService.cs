﻿using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WPF_Project.DTOs;
using WPF_Project.Models;

namespace WPF_Project.Services
{
    public class CategoryService
    {
        private ShopDbContext context = new ShopDbContext();
        public CategoryService() { }

        public ObservableCollection<CategoryDTO> GetAllCategory()
        {
            var categorys = context.Categories.ToList();
            ObservableCollection<CategoryDTO> result = new ObservableCollection<CategoryDTO>();
            foreach (var item in categorys)
            {
                result.Add(CategoryDTO.FromCategory(item));
            }
            return result;
        }

        public Category GetCategoryByName(string categoryName)
        {
            return context.Categories.FirstOrDefault(x => x.Name == categoryName);
        }

        public void CreateCategory(Category category)
        {
            context.Categories.Add(category);
            context.SaveChanges();
        }

    }
}
