   M S B A M L   `   `   `  ����F  BWPF_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:WPF_Project.ViewsWPF_Project.Views  5   	   ?$clr-namespace:WPF_Project.ViewModelsWPF_Project.ViewModels  5   R   &     WPF_Project.Views.DialogProducts   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:WPF_Project.Views     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5	   	   ] YXceed.Wpf.Toolkit.NET5, Version=4.5.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f47toolkit)http://schemas.xceed.com/wpf/xaml/toolkit  5
   	   _ [MaterialDesignThemes.Wpf, Version=4.7.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   5
viewmodels$clr-namespace:WPF_Project.ViewModels  6R   $��15(�5   	     � WindowStartupLocation$  CenterScreen=�5   	    � WindowStyle$
 None=�5   	   
�������$	��657��5   !   $	��570��6-   .��5      �� .+�5   
   �� $��Product's info��5      $��30(�5      $
��Bold"�5      $
��Left=�6    �� Left$ 24��5      $	��Top=�6   
 �� Top$ 10��66   �� 5   
   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Product Name��5       �� 	MaxLength$ 30��5         MaterialDesignFilledTextBox#��[  5       �� TextWrapping$
 Wrap=�5      $	 164��6!   $ 72��63   $
��Left=�6C   $	��330��6^   $	��Top=�6j   .  (MaterialDesignThemes.Wpf.TextFieldAssist!   CharacterCounterVisibility 5      ��  �� Path$ 	IsChecked�	 �� ElementName$2	 ,MaterialDesignFilledTextBoxTextCountComboBox����5      �� *Product.Name+
 �� UpdateSourceTrigger$
 PropertyChanged=� �� Mode$ TwoWay=�{�5      �� *IsEnableItem+�� 5"   
   $ Category��5#      $	��259��5$         MaterialDesignFilledComboBox#��[ 5%      $	 166��6C   $	 135��6U   $
��Left=�6f   $��Center=�6�    �� DisplayMemberPath$
 Name��5'       �� SelectedValuePath$ Id��5(      ��5&      �� *	Categorys+ �� SelectedValue 5)      �� *Product.CategoryId+$
 PropertyChanged=�$ TwoWay=�{�5*      �� *IsEnableItem+�� 5.   
    ( $MaterialDesignTextFieldBoxBackground#���  5/        MaterialDesignIconButton#��[ 50       � ToolTip$ Create new category��51      $	 442��54      $	 137��6   ��52      �� *CreateNewCategory+{�53      �� *IsEnableItem+.��55      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$
 Plus=�6&   56      �� 58   
   $ Quantity��59       �� AcceptsReturn$
 True��5:      #��[  5;      $
 Wrap=�5<      $	 165��6!   $	 198��63   $��Center=�6D   $	��Top=�6a   $	��330��6y   ${�False��5>      ��5=      �� *Product.Quantity+$
 PropertyChanged=�$ TwoWay=�5>      �� 5@   
   $ Price��5A      $
 True��5B      #��[  5C      $
 Wrap=�5D      $	 164��6!   $	 258��63   $��Center=�6D   $	��Top=�6a   $	��330��6y   ��5E      �� *Product.Price+$
 PropertyChanged=�$ TwoWay=�{�5F      �� *IsEnableItem+�� 5I   
   $
��Wrap=�5J      $	 180��6!   $	 326��63   $��Center=�5K      $	��Top=�6*   $	��109��6B   $��37��6N   $��Discount��5L      $��17(�5M      $  Xceed.Wpf.Toolkit.DoubleUpDown  5P   
   -   5        $ Discount��5Q      $	��171��5R      $	 319��5S      $	 320��6   $��Center=�5T      $��45��6*   $	��Top=�66   ���#e5e3e8�  �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.Double, System.Runtime, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a]], System.Runtime, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a]]   Maximum 1005V         Minimum 05W      ,  &Xceed.Wpf.Toolkit.Primitives.InputBase   Text 5X      �� *Product.Discount+$
 PropertyChanged=�$ TwoWay=�{�5Z      �� *IsEnableItem+.  (System.Windows.Interactivity.Interaction   Triggers 5\      /  )System.Windows.Interactivity.EventTrigger  5]         	EventName$ ValueChanged��6!   5_      5a      �� 5c   
   $
 Made��5d      $
 True��5e      #��[  5f      $
 Wrap=�5g      $	 162��6!   $	 378��63   $��Center=�6D   $	��Top=�6a   $	��330��6y   ��5h      �� *Product.Country+$
 PropertyChanged=�$ TwoWay=�{�5i      �� *IsEnableItem+�� 5l   
   $	 319��5m      $	 462��6   $��Center=�5n      $	��Top=�6*   $	��106��5o      $��68��6   ���#49be25$��40(�5q      $
 Save��5r      ��5s      �� *SaveCommand+{�5t      �� *IsEnableItem+��5v        5w      $��40��5x      $��40��5y      $ CheckCircleOutline=�5z      $��Center=�6/   5|      �� 5~   
   -   5        $	 453��5      $	 464��6   $��Center=�5�      $	��Top=�6*   $	��107��5�      $��68��6   ���#0077d0$��40(�5�      $
 Back��5�      ��5�        5�      $��40��5�      $��40��5�      $ KeyboardReturn=�5�      5�      5�      5�      