   M S B A M L   `   `   `  ����F  BWPF_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:WPF_Project.ViewsWPF_Project.Views  5   	   ?$clr-namespace:WPF_Project.ViewModelsWPF_Project.ViewModels  5   R   $    WPF_Project.Views.DialogStaffs   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:WPF_Project.Views     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5
   	   ] YXceed.Wpf.Toolkit.NET5, Version=4.5.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f47toolkit)http://schemas.xceed.com/wpf/xaml/toolkit  5   	   _ [MaterialDesignThemes.Wpf, Version=4.7.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   5
viewmodels$clr-namespace:WPF_Project.ViewModels  6R   $��15(�5   	     � WindowStartupLocation$  CenterScreen=�5   	    � WindowStyle$
 None=�5   	   
�������$	��657��5   !   $	��619��6-    � DataContext 5      2   ,WPF_Project.ViewModels.DialogStaffsViewModel  5   
   .��5      �� .+�5   
   �� $��Product's info��5      $��30(�5      $
��Bold"�5      $
��Left=�6    �� Left$ 24��5      $	��Top=�6   
 �� Top$ 10��66   �� 5   
   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Username��5       �� 	MaxLength$ 30��5         MaterialDesignFilledTextBox#��[  5        �� TextWrapping$
 Wrap=�5!      $	 164��6!   $ 72��63   $
��Left=�6C   $	��330��6^   $	��Top=�6j   .  (MaterialDesignThemes.Wpf.TextFieldAssist!   CharacterCounterVisibility 5      �� 	 �� Path$	 	IsChecked�
 �� ElementName$2
 ,MaterialDesignFilledTextBoxTextCountComboBox����5"      �� *Staff.Username+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�{�5#      �� *IsEnableItem+�� 5&   
   $ Password��5'      $ 30��5)      #��[  5*      $
 Wrap=�5+      $	 164��6!   $	 130��63   $��Center=�6D   $	��330��6a   $	��Top=�6m   ${�False��5-       5(      �� $	 	IsChecked�$2
 ,MaterialDesignFilledTextBoxTextCountComboBox����5,      �� *Staff.Password+$ PropertyChanged=�$ TwoWay=�5-      �� 50   
   $
 Role��51      $	��259��52         MaterialDesignFilledComboBox#��[ 53      $	 166��6C   $	 195��6U   $��Center=�6f   $	��Top=�6�    �� DisplayMemberPath$
 Name��55       �� SelectedValuePath$ Id��56      ��54      �� *Roles+ �� SelectedValue 57      �� *
Staff.Role+$ PropertyChanged=�$ TwoWay=�{�58      �� *IsEnableItem+�� 5<   
    ( $MaterialDesignTextFieldBoxBackground#���  5=        MaterialDesignIconButton#��[ 5>       � ToolTip$ Create new category��5?      $	 442��5A      $	 199��6   $��Center=�60   $	��Top=�6M   ��5@      �� *CreateNewCategory+.��5B      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$
 Plus=�6&   5C      �� 5E   
   $ Fullname��5F       �� AcceptsReturn$
 True��5G      #��[  5H      $
 Wrap=�5I      $	 165��6!   $	 260��63   $��Center=�6D   $	��Top=�6a   $	��330��6y   ��5J      �� *Staff.Fullname+$ PropertyChanged=�$ TwoWay=�{�5K      �� *IsEnableItem+�� 5M   
   $ Phone��5N      $
 True��5O      #��[  5P      $
 Wrap=�5Q      $	 164��6!   $	 318��63   $��Center=�6D   $	��Top=�6a   $	��330��6y   ��5R      �� *Staff.Phone+$ PropertyChanged=�$ TwoWay=�{�5S      �� *IsEnableItem+�� 5V   
   $ Address��5W      $
 True��5X      #��[  5Y      $
 Wrap=�5Z      $	 162��6!   $	 378��63   $��Center=�6D   $	��Top=�6a   $	��330��6y   ��5[      �� *Staff.Address+$ PropertyChanged=�$ TwoWay=�{�5\      �� *IsEnableItem+�� 5`   
   $	 319��5a      $	 508��6   $��Center=�5b      $	��Top=�6*   $	��106��5c      $��68��6   ���#49be25$��40(�5e      $
 Save��5f      ��5g      �� *SaveCommand+��5i        5j      $��40��5k      $��40��5l      $ CheckCircleOutline=�5m      $��Center=�6/   5o      �� 5q   
   -   5        $	 466��5r      $	 508��6   $��Center=�5s      $	��Top=�6*   $	��107��5t      $��68��6   ���#0077d0$��40(�5v      $
 Back��5w      {�5x      �� *IsEnableItem+��5z        5{      $��40��5|      $��40��5}      $ KeyboardReturn=�5~      5�      5�      5�      