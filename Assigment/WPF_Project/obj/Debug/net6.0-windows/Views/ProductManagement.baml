   M S B A M L   `   `   `  ����F  BWPF_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:WPF_Project.ViewsWPF_Project.Views  5      ?$clr-namespace:WPF_Project.ViewModelsWPF_Project.ViewModels  5
   P   )    #WPF_Project.Views.ProductManagement   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:WPF_Project.Views     5      _ [MaterialDesignThemes.Wpf, Version=4.7.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
      5
viewmodels$clr-namespace:WPF_Project.ViewModels  6P     N� Title$  ProductManagement��5	       N� FontSize$ 15(�5       � DataContext 5      7  1WPF_Project.ViewModels.ProductManagementViewModel  5   
   .��5      �� .+�5   
   �� $��Products��5      $��30(�5      $
��Bold"�5      $
��Left=�6    �� Left$ 17��5      $	��Top=�6   
 �� Top$ 27��66   �� 5   
   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Product's name��5       �� 	MaxLength$ 40��5         MaterialDesignFilledTextBox#��[  5       �� TextWrapping$
 Wrap=�5      $	 107��6!   $ 84��63   $
��Left=�6C   $��Center=�6^   $	��395��6y    J� RenderTransformOrigin$ 0.501,0.559&�6�   .  (MaterialDesignThemes.Wpf.TextFieldAssist!	   CharacterCounterVisibility	 5      �� 
 �� Path$
 	IsChecked� �� ElementName$2 ,MaterialDesignFilledTextBoxTextCountComboBox��   BooleanToVisibilityConverter �� 	Converter# [ ��5       �� *SearchProductName+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=��� 5"   
   -   5         ��Name$ cboCategory��5$      $ Product's category��5#      $	��280��5%         MaterialDesignFilledComboBox#��[ 5'      $	 107��6C   $	 149��6U   $
��Left=�6f   $��Center=�6�    �� DisplayMemberPath$
 Name��5*       �� SelectedValuePath$ Id��5+      {�5&      �� $
 	IsChecked�$# FilledComboBoxEnabledCheckBox����5)      �� *	Categorys+ �� SelectedValue 5,      �� *SelectedCategory+�� 5/   
   3  -MaterialDesignThemes.Wpf.ButtonProgressAssist   IsIndeterminate$
 True��50         IsIndicatorVisible$
 True��51         Value$ -1Q�52      $��Create new product��53        MaterialDesignRaisedButton#��[ 54      $	 107��55      $	 247��6   $��Center=�60   $	��Top=�6M   ���#00cc95{�57      �� *	IsAdmin+��58      �� *CreateNewProduct+&   System.Windows.Controls.DataGrid  5;   
   -   5        $��gridProducts��5<         CanUserAddRows$ False��5=         SelectionMode$ Extended=�5?         SelectionUnit$
 Cell=�5@         AutoGenerateColumns$ False��5A         
IsReadOnly$
 True��5B      $
��True��5C      $	��298��5D      $	 108��6   $	 290��6,   $
��Left=�6=   $��Center=�6X   $	��916��6s   ��5>      �� *
Products+   Columns 5F      0  *System.Windows.Controls.DataGridTextColumn  5G      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$ 30 6'     5H         Header$
 Name��6%   $	 220 6L   1	  +System.Windows.Controls.DataGridBoundColumn 	  Binding 63   �� *Name+6L     5I      $ Quantity��6%   $	 100 6T    67   �� *
Quantity+6T     5J      $ Quantity��6%   $	 130 6Q    67   �� *Price+6Q     5L      $ Discount��6%   $ 90 6T    67   �� *
Discount+6T     5M      $ Category��6%   $	 150 6Y    67   �� *Category.Name+6Y   4
  .System.Windows.Controls.DataGridTemplateColumn
  5O      $  ��6)   $ 80 63    
  CellTemplate 5P      �� 5Q      .R�5R      �� ���#76b5c5  � ToolTip$  Update��5V   !   ��5S   !   �� *DataContext.UpdateProduct+! �� RelativeSource! �� " �� AncestorType" DataGrid��5T   !   �� {�5W   !   �� *	IsAdmin+��5Y   "   '  !MaterialDesignThemes.Wpf.PackIcon  5Z   &   #   Kind$# Update=�6>   5\      5]      5_      
  5a      $  ��6)   $ 80 63    5b      �� 5c      .R�5d      �� ���#1e81b0$
  View��5h   !   ��5e   !   �� *DataContext.ViewProduct+! �� " DataGrid��5f   !   �� ��5j   "     5k   &   $	# Eye=�6>   5m      5n      5p      5r      5t      5u      