   M S B A M L   `   `   `  ����F  BWPF_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:WPF_Project.ViewsWPF_Project.Views  5          WPF_Project.Views.Order   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:WPF_Project.Views     5      _ [MaterialDesignThemes.Wpf, Version=4.7.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
        N� Title$  Order��5       N� FontSize$ 15(�5      .��5      �� .+�5   
   �� $��ORDER��5      $��30(�5      $
��Bold"�5      $
��Left=�6    �� Left$ 17��6:   $	��Top=�6K   
 �� Top$ 27��6c   �� 5   
   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Product's name��5       �� 	MaxLength$ 40��5         MaterialDesignFilledTextBox#��[  5       �� TextWrapping$
 Wrap=�5      $	 107��6!   $ 84��63   $
��Left=�6C   $��Center=�6^   $	��395��6y    J� RenderTransformOrigin$ 0.501,0.559&�6�   .  (MaterialDesignThemes.Wpf.TextFieldAssist!   CharacterCounterVisibility 5      �� 	 �� Path$	 	IsChecked�
 �� ElementName$2
 ,MaterialDesignFilledTextBoxTextCountComboBox��   BooleanToVisibilityConverter �� 	Converter# [ ��5      �� *SearchProductName+�� 5   
   -   5         ��Name$ cboCategory��5      $ Product's category��5      $	��280��5          MaterialDesignFilledComboBox#��[ 5"      $	 107��6C   $	 149��6U   $
��Left=�6f   $��Center=�6�    �� DisplayMemberPath$
 Name��5%       �� SelectedValuePath$ Id��5&      {�5!      �� $	 	IsChecked�$#
 FilledComboBoxEnabledCheckBox����5$      �� *	Categorys+ �� SelectedValue 5'      �� *SelectedCategory+�� 5*   
   $��Search��5+       # MaterialDesignRaisedLightButton#��[ 5-       � ToolTip$4 .Resource name: MaterialDesignRaisedLightButton��5.      $	 406��5/      $	 156��6   $
��Left=�60   $��Center=�50      $��96��6(   $��45��63   ��5,      �� *SearchProduct+50   3   �� 53   
   $��Products��54      $��17(�55      $��DemiBold"�56      $
��Left=�6#   $	 315��57      $	��Top=�6   $	 231��67   �� 59   
   $
��Cart��5:      $��17(�5;      $��DemiBold"�5<      $
��Left=�6#   $	 879��5=      $	��Top=�6   $	 238��67   &   System.Windows.Controls.DataGrid  5?   
   -   5        $��gridProducts��5@         CanUserAddRows$ False��5A         SelectionMode$ Extended=�5D         SelectionUnit$
 Cell=�5E         AutoGenerateColumns$ False��5F         
IsReadOnly$
 True��5G      $
��True��5H      $	��301��5I      $ 10��6   $	 277��6+   $
��Left=�6<   $	��Top=�6W   $	��678��6o   ��5B      �� *
Products+ �� SelectedItem 5C      �� *SelectedProduct+   Columns 5K      0  *System.Windows.Controls.DataGridTextColumn  5L      ,  &System.Windows.Controls.DataGridColumn   Header$
 Name��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 180 6L   1  +System.Windows.Controls.DataGridBoundColumn   Binding 63   �� *Name+6L     5M      $ Quantity��6%   $	 100 6T    67   �� *
Quantity+6T     5N      $ Price��6%   $	 100 6N    64   �� *Price+6N     5O      $ Discount��6%   $ 90 6T    67   �� *
Discount+6T     5P      $ Category��6%   $	 100 6Y    67   �� *Category.Name+6Y   4  .System.Windows.Controls.DataGridTemplateColumn  5Q      $ Actions��6)   $ 80 6:      CellTemplate 5R      �� 5S      .R�5T      �� ��5U   !   �� *DataContext.AddToCart+ �� RelativeSource ��  �� AncestorType DataGrid��5V   !   �� ��5X   "   '	  !MaterialDesignThemes.Wpf.PackIcon	  5Y   &    	  Kind$ 	PlusThick=�6>   5[      5\      5^      5`        5a   
   $ False��5b      $ Extended=�5e      $
 Cell=�5f      $ False��5g      $
 True��5h      $
��Left=�5i      $	 710��5j      $��Center=�5k      $
��True��5l      $	��244��5m      $	 277��6   $	��370��6+   ��5c      �� *ListOrderProduct+ �� Mode$ TwoWay=� 5d      �� *SelectedRemoveProduct+ 5o        5p      $
 Name��6%   $	 160 6L    63   �� *Name+6L     5q      $ Quantity��6)    5r      �� 5s      .R�5t      �� $��80��6B   ��6(   �� *
Quantity+6B   5u      5w        5x      $ Actions��6)    5y      �� 5z      .R�5{      �� ��5|   !   �� *!DataContext.RemoveProductInCart+ ��  DataGrid��5}   !   �� ��5   "   	  5�   &   $ 
CloseThick=�6>   5�      5�      5�      5�      �� 5�   
   $��Total:��6   $��24(�5�      $	 737��5�      $	 538��6"   $
��Left=�5�      $	��Top=�6+   �� 5�   
   $	��200��5�      $	 807��6   $	 542��6+   $��24(�5�      $
��Left=�6   $��Center=�66   ��5�      �� *TotalPriceOrder+5�   6   �� 5�   
   $	 912��5�      $	 584��6   $
��Left=�5�      $��Center=�6(   $��95��5�      $��56��6   ���#49be25$��40(�5�      ��5�      �� *CheckoutOrder+{�5�      �� *EnableButtonCheckout+��5�      	  5�      $��40��5�      $��40��5�      $ CartArrowRight=�5�      5�      5�      5�      