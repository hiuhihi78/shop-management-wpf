   M S B A M L   `   `   `  ����F  BWPF_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:WPF_Project.ViewsWPF_Project.Views  5      ?$clr-namespace:WPF_Project.ValidationWPF_Project.Validation  5
      ?$clr-namespace:WPF_Project.ViewModelsWPF_Project.ViewModels  5   L   $    WPF_Project.Views.HistoryOrder   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:WPF_Project.Views     5      ?ValidationRule$clr-namespace:WPF_Project.Validation     5
      _ [MaterialDesignThemes.Wpf, Version=4.7.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      ] YXceed.Wpf.Toolkit.NET5, Version=4.5.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f47toolkit)http://schemas.xceed.com/wpf/xaml/toolkit  5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      5
viewmodels$clr-namespace:WPF_Project.ViewModels  6L     N� Title$  HistoryOrder��5       N� FontSize$ 15(�5       � DataContext 5      2   ,WPF_Project.ViewModels.OrderHistoryViewModel  5   
   .��5      �� .+�5   
   �� $��ORDER HISTORY��5      $��30(�5      $
��Bold"�5      $��Center=�6    �� Left$ 35��6<   $	��Top=�6M   
 �� Top$ 10��6e   �� 5   
   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
Order'Info��5       �� 	MaxLength$ 40��5         MaterialDesignFilledTextBox#��[  5       �� TextWrapping$
 Wrap=�5       $	 111��6!   $ 67��63   $
��Left=�6C   $��Center=�6^   $	��395��6y    J� RenderTransformOrigin$ 0.501,0.559&�6�   .  (MaterialDesignThemes.Wpf.TextFieldAssist!	   CharacterCounterVisibility	 5      �� 
 �� Path$
 	IsChecked� �� ElementName$2 ,MaterialDesignFilledTextBoxTextCountComboBox��   BooleanToVisibilityConverter �� 	Converter# [ ��5!      �� *SearchOrderInfo+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�(  "System.Windows.Controls.DatePicker  5$   
   $	��140��5%      /  )MaterialDesignThemes.Wpf.DatePickerAssist&   OutlinedBorderInactiveThickness$ 2q�5&         FloatingOffset$ 0,-22&�5'      $ 
Start date��5(       $  MaterialDesignOutlinedDatePicker#��[ 5)      $	 109��5*      $	 129��6   $
��Left=�5,   0      SelectedDate 5+      �� *	StartDate+$ PropertyChanged=�$ TwoWay=�   DisplayDateEnd 5,      �� *	EndDate+60     5/   
   $	��140��50      $ 2q�51      $ 0,-22&�52      $ End date��53      #��[ 54      $	 274��55      $	 129��6   $
��Left=�60    56      �� *	EndDate+$ PropertyChanged=�$ TwoWay=�&   System.Windows.Controls.DataGrid  59   
   -   5        $��gridProducts��5:         CanUserAddRows$ False��5;         SelectionMode$ Extended=�5=         SelectionUnit$
 Cell=�5>         AutoGenerateColumns$ False��5?         
IsReadOnly$
 True��5@      $
��True��5A      $	��301��5B      $	 109��6   $	 238��6,   $
��Left=�6=   $	��Top=�6X   $	��907��6p   ��5<      �� *Orders+$ TwoWay=�   Columns 5D      0  *System.Windows.Controls.DataGridTextColumn  5E      ,  &System.Windows.Controls.DataGridColumn   Header$ Customer name��6%      Width5	  /System.Windows.Controls.DataGridLengthConverter$	 130	 6]   1
  +System.Windows.Controls.DataGridBoundColumn 
  Binding 6<   �� *CustomerName+6]     5F      $ Customer Phone��6%   $	 140	 6_    6=   �� *CustomerPhone+6_     5G      $ 
Order date��6%   $	 170	 6W    69   �� *	OrderDate+6W     5H      $ Total Amount��6%   $	 150	 6[    6;   �� *TotalAmount+6[     5I      $ Staff order��6%   $	 100	 6]    6:   �� *Staff.Fullname+6]   4  .System.Windows.Controls.DataGridTemplateColumn  5J      $  ��6)   $ 80	 63      CellTemplate 5K      �� 5L      .R�5M      ��  � ToolTip$ View detail��5P   !   
����  ���5N   !   �� *DataContext.ViewOrderDetail+ �� RelativeSource ��  �� AncestorType DataGrid��5O   !   �� ��5S   "   '  !MaterialDesignThemes.Wpf.PackIcon  5T   &       Kind$	  Eye=�6>   5V      5W      5Y        5[      $  ��6)   $	 110	 63    5\      �� 5]      .R�5^      �� $ Cancel order��5a   %   
���  ��$��Cancel��5c   %   ��5_   %   �� *DataContext.CancelOrder+ ��  DataGrid��5`   %   �� ! � 	Resources! 5e   "   " �� 
TargetType# �� Property$ �� Value% �� Triggers& �� Binding' �� Value��%�   '��       �� 5f   &   "" ��6,   .�5g   *   �� # � y�$$ 	Collapsed=�6G   % 5h   *   �� 5i   .   & 6:   �� *	CanCancel+' True6X   .a�5j   2   �� # � y�$$ Visible=�6O   5k   /   5n   '   5o   #   5p      5q      5s      5u      5v      5w      