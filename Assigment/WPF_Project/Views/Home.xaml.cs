﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using WPF_Project.Models;
using WPF_Project.Navigation;
using WPF_Project.ViewModels;
using WPF_Project.Views;

namespace WPF_Project.Views
{
    /// <summary>
    /// Interaction logic for Home.xaml
    /// </summary>
    public partial class Home : Page
    {
        public Home()
        {
            InitializeComponent();
            DataContext = new HomeViewModel();
            NavigationFrameContentHomeScreen.Initialize(MainFrame);
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            var tabAccount = (TabItem)this.FindName("AccoutManageTab");
            var tabSupplier = (TabItem)this.FindName("SupplierManageTab");
            var currentUserIsAdmin = ((Staff)Navigation.NavigationParameters.Parameters["currentUser"]).Role == 1;
            if(currentUserIsAdmin) 
            {
                tabAccount.Visibility= Visibility.Visible;
                tabSupplier.Visibility = Visibility.Visible;
            }
            else
            {
                tabAccount.Visibility= Visibility.Hidden;
                tabSupplier.Visibility = Visibility.Hidden;
            }
        }
    }
}
