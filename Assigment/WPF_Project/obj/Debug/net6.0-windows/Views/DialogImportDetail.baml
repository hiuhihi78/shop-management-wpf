   M S B A M L   `   `   `  ����F  BWPF_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:WPF_Project.ViewsWPF_Project.Views  5   	   ?$clr-namespace:WPF_Project.ViewModelsWPF_Project.ViewModels  5   R   *    $WPF_Project.Views.DialogImportDetail   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:WPF_Project.Views     5   	   _ [MaterialDesignThemes.Wpf, Version=4.7.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   5
viewmodels$clr-namespace:WPF_Project.ViewModels  6R   $��15(�5	   	     � WindowStartupLocation$  CenterScreen=�5   	    � WindowStyle$
 None=�5   	   
�������$	��901��5   !   $	��544��6-   .��5      �� .+�5   
   �� $��Import Detail��6   $��25(�5      $
��Bold"�5       �� Left$ 30��5      
 �� Top$ 10��6%   $
��Left=�65   $��Center=�6P   �� 5   
   $	��237��5      $��Center=�5      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Import's Id��5       %  !MaterialDesignFloatingHintTextBox#��[  5      ${�False��5      $
��Left=�5      $ 54��6(   $ 50��68   ��5      �� *ImportDTO.Id+5   8   �� 5   
   $	��235��5      $��Center=�5       $ Import's Date��5!      #��[  5"      ${�False��5$      $
��Left=�5%      $	 103��6(   $ 52��69   ��5#      �� *ImportDTO.ImportDate+5%   9   �� 5'   
   $	��235��5(      $	��Top=�5)      $ Staff order��5*      #��[  5+      ${�False��5-      $
��Left=�5.      $	 152��6(   $ 52��69   ��5,      �� *StaffImport+5.   9   �� 50   
   $	��235��51      $	��Top=�52      $ Total��53      #��[  54      ${�False��56      $��Center=�57      $	 204��6*   $ 52��6;   ��55      �� *ImportDTO.TotalAmount+57   ;   �� 5:   
   $	��235��5;      $	��Top=�5<      $ Supplier name��5=      #��[  5>      ${�False��5@      $
��Left=�5A      $	 104��6(   $	 350��69   ��5?      �� *Supplier.Name+5A   9   �� 5C   
   $	��235��5D      $	��Top=�5E      $ Supplier Phone��5F      #��[  5G      ${�False��5I      $
��Left=�5J      $	 154��6(   $	 350��69   ��5H      �� *Supplier.Phone+5J   9   �� 5L   
   $	��235��5M      $	��Top=�5N      $ Supplier Address��5O      #��[  5P      ${�False��5R      $
��Left=�5S      $	 204��6(   $	 350��69   ��5Q      �� *Supplier.Address+5S   9   &   System.Windows.Controls.DataGrid  5U   
      CanUserAddRows$ False��5V         SelectionMode$ Extended=�5X         SelectionUnit$
 Cell=�5Y         AutoGenerateColumns$ False��5Z      	   
IsReadOnly$
	 True��5[      $
��True��5\      $	��178��5]      $ 38��6   $	 272��6+   $��Center=�6<   $	��Top=�6Y   $	��819��6q   ��5W      �� *ImportDetails+
   Columns
 5_      0  *System.Windows.Controls.DataGridTextColumn  5`      ,  &System.Windows.Controls.DataGridColumn   Header$
 Name��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 250 6T   1  +System.Windows.Controls.DataGridBoundColumn   Binding 63   �� *Product.Name+6T     5a      $ Quantity��6%   $	 200 6T    67   �� *
Quantity+6T     5b      $ Price��6%   $	 200 6T    64   �� *PriceImport+6T   5d      �� 5f   
   -   5        $	 723��5g      $	 459��6   $��Center=�5h      $	��Top=�6*   $	��107��5i      $��68��6   ���#0077d0$��40(�5k       � ToolTip$
 Back��5l      ��5n      '  !MaterialDesignThemes.Wpf.PackIcon  5o      $��40��5p      $��40��5q         Kind$ KeyboardReturn=�5r      5t      5u      5x      