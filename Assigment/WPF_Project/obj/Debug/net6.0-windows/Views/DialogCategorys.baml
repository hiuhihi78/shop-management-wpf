   M S B A M L   `   `   `  ����F  BWPF_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:WPF_Project.ViewsWPF_Project.Views  5   	   ?$clr-namespace:WPF_Project.ViewModelsWPF_Project.ViewModels  5   R   '    !WPF_Project.Views.DialogCategorys   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:WPF_Project.Views     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5	   	   ] YXceed.Wpf.Toolkit.NET5, Version=4.5.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f47toolkit)http://schemas.xceed.com/wpf/xaml/toolkit  5
   	   _ [MaterialDesignThemes.Wpf, Version=4.7.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   5
viewmodels$clr-namespace:WPF_Project.ViewModels  6R   $��15(�5   	     � WindowStartupLocation$  CenterScreen=�5   	    � WindowStyle$
 None=�5   	   
�������$	��474��5   !   $	��358��6-   .��5      �� .+�5   
   �� $��Category��5      $��30(�5      $
��Bold"�5      $
��Left=�6    �� Left$ 24��5      $	��Top=�6   
 �� Top$ 10��66   �� 5   
   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Category Name��5       �� 	MaxLength$ 30��5         MaterialDesignFilledTextBox#��[  5       �� TextWrapping$
 Wrap=�5      $ 72��6!   $ 91��62   $
��Left=�6B   $	��330��6]   $	��Top=�6i   .  (MaterialDesignThemes.Wpf.TextFieldAssist!   CharacterCounterVisibility 5      ��  �� Path$ 	IsChecked�	 �� ElementName$2	 ,MaterialDesignFilledTextBoxTextCountComboBox����5      �� *
Category+
 �� UpdateSourceTrigger$
 PropertyChanged=� �� Mode$ TwoWay=�{�5       �� *IsEnableItem+�� 5#   
   $	 187��5$      $	 213��6   $
��Left=�5%      $	��Top=�6(   $	��106��5&      $��68��6   ���#49be25$��40(�5(       � ToolTip$
 Save��5)      ��5*      �� *SaveCommand+��5,      '  !MaterialDesignThemes.Wpf.PackIcon  5-      $��40��5.      $��40��5/         Kind$ CheckCircleOutline=�50      $��Center=�6/    J� RenderTransformOrigin$ 0.5,0.5&�6J   z�51      V� 52      .~�53      �� �� 54      �� 55       �� Angle$ -3.644Q�6.   T� 56      57      59      5;      �� 5=   
   -   5        $	 329��5>      $	 213��6   $
��Left=�5?      $	��Top=�6(   $	��107��5@      $��68��6   ���#0077d0$��40(�5B      $
 Back��5C      ��5F        5G      $��40��5H      $��40��5I      $ KeyboardReturn=�5J      5L      5M      5N      