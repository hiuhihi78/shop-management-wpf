   M S B A M L   `   `   `  ����F  BWPF_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:WPF_Project.ViewsWPF_Project.Views  5      ?$clr-namespace:WPF_Project.ViewModelsWPF_Project.ViewModels  5	   P   '    !WPF_Project.Views.DialogSuppliers   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:WPF_Project.Views     5      _ [MaterialDesignThemes.Wpf, Version=4.7.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	      5
viewmodels$clr-namespace:WPF_Project.ViewModels  6P   $��15(�5
        � WindowStartupLocation$  CenterScreen=�5       � WindowStyle$
 None=�5      
�������$	��901��5      $	��544��6)   .��5      �� $��0,0,10,0q�6   .+�5   
   �� $��Suppilers's Information��6   $��25(�5      $
��Bold"�5       �� Left$ 30��5      
 �� Top$ 10��6%   $
��Left=�65   $��Center=�6P   �� 5   
   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Supplier's info��5       �� 	MaxLength$ 40��5         MaterialDesignFilledTextBox#��[  5       �� TextWrapping$
 Wrap=�5      $ 30��6!   $ 72��62   $
��Left=�6B   $	��Top=�6]   $	��399��6u   .  (MaterialDesignThemes.Wpf.TextFieldAssist!   CharacterCounterVisibility 5      ��  �� Path$ 	IsChecked�	 �� ElementName$2	 ,MaterialDesignFilledTextBoxTextCountComboBox��   BooleanToVisibilityConverter
 �� 	Converter#
 [ ��5      �� *SearchSupplier+ �� UpdateSourceTrigger$ PropertyChanged=�&   System.Windows.Controls.DataGrid  5   
      CanUserAddRows$ False��5          SelectionMode$ Extended=�5"         SelectionUnit$
 Cell=�5#         AutoGenerateColumns$ False��5$         
IsReadOnly$
 True��5%      $
��True��5&      $	��264��5'      $ 30��6   $	 153��6+   $
��Left=�6<   $��Center=�6W   $	��819��6r   ��5!      �� *ListSupplier+   Columns 5)      0  *System.Windows.Controls.DataGridTextColumn  5*      ,  &System.Windows.Controls.DataGridColumn   Header$
 Name��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 250 6L   1  +System.Windows.Controls.DataGridBoundColumn   Binding 63   �� *Name+6L     5+      $ Phone��6%   $	 150 6N    64   �� *Phone+6N     5,      $ Address��6%   $	 250 6R    66   �� *	Address+6R   4  .System.Windows.Controls.DataGridTemplateColumn  5-      $ Actions��6)   $ 80 6:      CellTemplate 5.      �� 5/      .R�50      �� ���#49be25��51   !   �� *DataContext.SelectedSupplier+ �� RelativeSource ��  �� AncestorType DataGrid��52   !   �� ��55   "   '	  !MaterialDesignThemes.Wpf.PackIcon	  56   &    	  Kind$ TargetAccount=�6>   58      59      5;      5=      �� 5?   
   -   5        $	 678��5@      $	 449��6   $
��Left=�5A      $	��Top=�6(   $	��133��5B      $��68��6   ���#0077d0$��40(�5D      ��5F      	  5G      $��40��5H      $��40��5I      $ KeyboardReturn=�5J      5L      5N      5O      