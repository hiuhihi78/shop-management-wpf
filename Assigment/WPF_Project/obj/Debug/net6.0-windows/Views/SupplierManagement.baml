   M S B A M L   `   `   `  ����F  BWPF_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:WPF_Project.ViewsWPF_Project.Views  5      ?$clr-namespace:WPF_Project.ValidationWPF_Project.Validation  5
      ?$clr-namespace:WPF_Project.ViewModelsWPF_Project.ViewModels  5   L   *    $WPF_Project.Views.SupplierManagement   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:WPF_Project.Views     5      ?ValidationRule$clr-namespace:WPF_Project.Validation     5
      _ [MaterialDesignThemes.Wpf, Version=4.7.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      ] YXceed.Wpf.Toolkit.NET5, Version=4.5.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f47toolkit)http://schemas.xceed.com/wpf/xaml/toolkit  5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      5
viewmodels$clr-namespace:WPF_Project.ViewModels  6L     N� FontSize$  15(�5       � DataContext 5      8   2WPF_Project.ViewModels.SuppliermanagementViewModel  5   
   .��5      �� .+�5   
   �� $��	Suppliers��5      $��30(�5      $
��Bold"�5      $��Center=�6    �� Left$ 45��5      $	��Top=�6   
 �� Top$ 28��66   �� 5   
   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Supplier's Info��5       �� 	MaxLength$ 40��5!         MaterialDesignFilledTextBox#��[  5"       �� TextWrapping$
 Wrap=�5#      $ 97��6!   $	 125��62   $
��Left=�6C   $	��Top=�6^   $	��395��6v    J� RenderTransformOrigin$ 0.501,0.559&�6�   .  (MaterialDesignThemes.Wpf.TextFieldAssist!   CharacterCounterVisibility 5       �� 	 �� Path$	 	IsChecked�
 �� ElementName$2
 ,MaterialDesignFilledTextBoxTextCountComboBox��   BooleanToVisibilityConverter �� 	Converter# [ ��5$      �� *SearchSupplier+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=��� 5'   
   3  -MaterialDesignThemes.Wpf.ButtonProgressAssist   IsIndeterminate$
 True��5(         IsIndicatorVisible$
 True��5)         Value$ -1Q�5*      $��New supplier��5+        MaterialDesignRaisedButton#��[ 5,      $ 97��5-      $	 210��6   $
��Left=�6/   $	��Top=�6J   ���#00cc95��5/      �� *CreateNewSupplier+&   System.Windows.Controls.DataGrid  52   
   -   5        $��gridProducts��53         CanUserAddRows$ False��54         SelectionMode$ Extended=�56         SelectionUnit$
 Cell=�57         AutoGenerateColumns$ False��58         
IsReadOnly$
 True��59      $
��True��5:      $	��298��5;      $ 97��6   $	 274��6+   $
��Left=�6<   $	��Top=�6W   $	��906��6o   ��55      �� *	Suppliers+   Columns 5=      0  *System.Windows.Controls.DataGridTextColumn  5>      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$ 30 6'     5?         Header$
 Name��6%   $	 300 6L   1	  +System.Windows.Controls.DataGridBoundColumn 	  Binding 63   �� *Name+6L     5@      $ Phone��6%   $	 200 6N    64   �� *Phone+6N     5A      $ Address��6%   $	 200 6R    66   �� *	Address+6R   4
  .System.Windows.Controls.DataGridTemplateColumn
  5D      $  ��6)   $ 80 63    
  CellTemplate 5E      �� 5F      .R�5G      �� ���#76b5c5 � ToolTip$ Update��5K   !   ��5H   !   �� *DataContext.UpdateSupplier+ �� RelativeSource ��  �� AncestorType DataGrid��5I   !   �� {�5L   !   �� *	IsAdmin+��5N   "   '  !MaterialDesignThemes.Wpf.PackIcon  5O   &      Kind$ Update=�6>   5Q      5R      5T      
  5V      $  ��6)   $ 80 63    5W      �� 5X      .R�5Y      �� ���#1e81b0$
 View��5]   !   ��5Z   !   �� *DataContext.ViewSupplier+ ��  DataGrid��5[   !   �� ��5_   "     5`   &   $	 Eye=�6>   5b      5c      5e      5g      5h      5i      