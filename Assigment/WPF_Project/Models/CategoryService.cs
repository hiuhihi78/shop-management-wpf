﻿using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WPF_Project.Models
{
    public class CategoryService
    {
        private ShopTestContext context = new ShopTestContext();
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

    }
}