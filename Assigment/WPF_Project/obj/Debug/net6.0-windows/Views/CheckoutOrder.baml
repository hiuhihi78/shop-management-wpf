   M S B A M L   `   `   `  ����F  BWPF_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:WPF_Project.ViewsWPF_Project.Views  5      %    WPF_Project.Views.CheckoutOrder   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:WPF_Project.Views     5      _ [MaterialDesignThemes.Wpf, Version=4.7.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
        N� Title$  CheckoutOrder��5       N� FontSize$ 15(�5      .��5      �� .+�5   
   �� $��CHECKOUT ORDER��5      $��30(�5      $
��Bold"�5      $
��Left=�6    �� Left$ 17��6:   $	��Top=�6K   
 �� Top$ 27��6c   �� 5   
   $��Products ordered��5      $��20(�5      $	 240��5      $	 124��6   $��Center=�5      $	��Top=�6*   &   System.Windows.Controls.DataGrid  5   
   -   5        $��gridProducts��5         CanUserAddRows$ False��5         SelectionMode$ Extended=�5          SelectionUnit$
 Cell=�5!         AutoGenerateColumns$ False��5"         
IsReadOnly$
 True��5#      $
��True��5$      $	��301��5%      $ 17��6   $	 174��6+   $��Center=�6<   $	��Top=�6Y   $	��600��6q   ��5      �� *ListOrderProduct+	   Columns	 5'      0  *System.Windows.Controls.DataGridTextColumn  5(      ,  &System.Windows.Controls.DataGridColumn
   Header$

 Name��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 180 6L   1  +System.Windows.Controls.DataGridBoundColumn   Binding 63   �� *Name+6L     5)      $
 Quantity��6%   $	 100 6T    67   �� *
Quantity+6T     5*      $
 Price��6%   $	 100 6N    64   �� *Price+6N     5+      $
 Discount��6%   $ 90 6T    67   �� *
Discount+6T     5,      $
 Category��6%   $	 100 6Y    67   �� *Category.Name+6Y   5.      �� 50   
   $��Customer's info��51      $��20(�52      $	 828��53      $	 137��6   $
��Left=�54      $	��Top=�6(   �� 56   
   $��Center=�57      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 	Full Name��58       !  MaterialDesignOutlinedTextBox#��[  59      $	 745��5:      $	 174��6   $��Center=�5;      $	��315��6*    �� 	MaxLength$ 30��5=      ��5<      �� *
Username+ �� Mode$ TwoWay=�5=      �� 5?   
   $��Center=�5@      $ Phone��5A      #��[  5B      $	 745��5C      $	 250��6   $��Center=�5D      $	��315��6*   $ 10��5F      ��5E      �� *Phone+$ TwoWay=�5F      �� 5H   
   $	��Top=�5I      $ Address��5J      #��[  5K      $	 745��5L      $	 325��6   $��Center=�5M      $	��315��6*   $	 100��5O      ��5N      �� *	Address+$ TwoWay=�5O      �� 5R   
   $��Total:��6   $��24(�5S      $	 745��5T      $	 445��6"   $��Center=�5U      $	��Top=�6-   �� 5V   
   $	��200��5X      $	 833��6   $	 453��6+   $��24(�5Y      $
��Left=�6   $	��Top=�66   ��5W      �� *TotalPriceOrder+5Y   6   �� 5\   
   $	 764��5^      $	 511��6   $
��Left=�5_      $��Center=�6(   $	��133��5`      $��67��6   ���#0077d0$��40(�5b      ��5]      �� *BackToPreviousScreen+��5d      '  !MaterialDesignThemes.Wpf.PackIcon  5e      $��40��5f      $��40��5g         Kind$ KeyboardReturn=�5h      5j      �� 5l   
   $	 927��5n      $	 511��6   $
��Left=�5o      $��Center=�6(   $	��133��5p      $��67��6   ���#49be25$��40(�5r      ��5m      �� *CheckoutOrderProduct+��5t        5u      $��40��5v      $��40��5w      $ CartArrowRight=�5x      5z      5|      5}      