   M S B A M L   `   `   `  ����F  BWPF_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:WPF_Project.ViewsWPF_Project.Views  5      ?$clr-namespace:WPF_Project.ValidationWPF_Project.Validation  5      =#clr-namespace:WPF_Project.ConverterWPF_Project.Converter  5      ?$clr-namespace:WPF_Project.ViewModelsWPF_Project.ViewModels  5   L   '    !WPF_Project.Views.StaffManagement   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:WPF_Project.Views     5      ?ValidationRule$clr-namespace:WPF_Project.Validation     5      _ [MaterialDesignThemes.Wpf, Version=4.7.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	      3	converter#clr-namespace:WPF_Project.Converter  5      ] YXceed.Wpf.Toolkit.NET5, Version=4.5.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f47toolkit)http://schemas.xceed.com/wpf/xaml/toolkit  5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      5
viewmodels$clr-namespace:WPF_Project.ViewModels  6L     N� FontSize$  15(�5       � DataContext 5      5   /WPF_Project.ViewModels.StaffManagementViewModel  5   
    � 	Resources 5      8   2WPF_Project.Converter.BooleanToVisibilityConverter    BooleanToVisibilityConverter��%   &	          5   
   61   5      .��5      �� .+�5   
   �� $��Staff management��5      $��30(�5      $
��Bold"�5      $
��Left=�6    �� Left$ 71��5      $��Center=�6   
 �� Top$ 27��69   �� 5    
   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Staff's info��5!       �� 	MaxLength$ 40��5#        MaterialDesignFilledTextBox#��[ 5$       �� TextWrapping$
 Wrap=�5%      $	 107��6!   $ 92��63   $��Center=�6C   $	��Top=�6`   $	��395��6x    J� RenderTransformOrigin$ 0.501,0.559&�6�   .  (MaterialDesignThemes.Wpf.TextFieldAssist!	   CharacterCounterVisibility	 5"      �� 
 �� Path$
 	IsChecked� �� ElementName$2 ,MaterialDesignFilledTextBoxTextCountComboBox�� �� 	Converter# [  ��5&      �� *SearchStaff+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=��� 5)   
   $ Staff's Role��5*      $	��280��5+         MaterialDesignFilledComboBox#��[ 5,      $	 107��6C   $	 159��6U   $��Center=�6f   $	��Top=�6�    �� DisplayMemberPath$
 Name��5/       �� SelectedValuePath$ Id��50      ��5.      �� *Roles+ �� SelectedValue 51      �� *SelectedRole+$ PropertyChanged=�$ TwoWay=��� 54   
   3  -MaterialDesignThemes.Wpf.ButtonProgressAssist   IsIndeterminate$
 True��55         IsIndicatorVisible$
 True��56         Value$ -1Q�57        MaterialDesignRaisedButton#��[ 58      $ ��Create new staff's account��59      $	 107��5:      $	 247��6   $��Center=�60   $	��Top=�6M   ���#00cc95��5<      �� *CreateNewStaff+&   System.Windows.Controls.DataGrid  5>   
   -   5        $��gridProducts��5?         CanUserAddRows$ False��5@         SelectionMode$ Extended=�5B         SelectionUnit$
 Cell=�5C         AutoGenerateColumns$ False��5D         
IsReadOnly$
 True��5E      $
��True��5F      $	��298��5G      $ 71��6   $	 301��6+   $
��Left=�6<   $��Center=�6W   $	��975��6r   ��5A      �� *Staffs+   Columns 5I      0  *System.Windows.Controls.DataGridTextColumn  5J      ,  &System.Windows.Controls.DataGridColumn   Header$ Id��6%      Width5	  /System.Windows.Controls.DataGridLengthConverter$ 50	 6H   1
  +System.Windows.Controls.DataGridBoundColumn 
  Binding 61   �� *Id+6H     5K      $ Username��6%   $	 150	 6T    67   �� *
Username+6T     5L      $ Fullname��6%   $	 150	 6T    67   �� *
Fullname+6T     5N      $ Phone��6%   $	 120	 6N    64   �� *Phone+6N     5O      $ Address��6%   $	 150	 6R    66   �� *	Address+6R     5P      $
 Role��6%   $	 100	 6[    63   �� *RoleNavigation.Name+6[   4  .System.Windows.Controls.DataGridTemplateColumn  5R      $ Status��6)   $	 112	 69      CellTemplate 5S      �� 5T      .R�5U      ��  �� Orientation$ 
Horizontal=�6)   .+�5V   "   �� ��5W   %   �� *DataContext.ChangeStaffStatus+  �� RelativeSource  �� ! �� AncestorType! DataGrid��5X   %   �� ��5Z   &   �� 5[   *   " �� 
TargetType"" ��6:   .R�5\   .   �� # ��Name$# border��5]   1   #��z��5^   1   #��z��5_   1   #��z��5`   1   $ � Cursor#$ z$ 5a   1   % J� SnapsToDevicePixels$
% True��5b   1   ._�5c   2   �� & ��Name$& contentPresenter��5d   5   #��z��5e   5   #��z��5f   5   #��z��5g   5   #��z��5h   5   ' �� ContentStringFormat( �� ContentStringFormat#( z' 5i   5   #��z��5j   5   $|�False��5k   5   $
��True��5l   5   #% z% 5m   5   5n   /   ) �� Triggers) 5o   .   P� 5p   2   * P� Property* �@J�IsMouseOver+ P� Value$
+ True��6Q   . �5q   6   �� , �� 
TargetName$, border��6=   - �� Property- � ��. �� Value
. ����6g   �� 5r   6   $, border��6=   - � ��$. 1q�6l   �� 5s   6   $, border��6=   - �@�Cursor$
. Hand��6c   5t   3   5v   +    5x   &   / �� 
TargetType0 �� Triggers1 �� Binding2 �� Value��%�  '��       �� 5y   *   "/ ��60   .�5z   .   �� - � y�$. 	Collapsed=�6K   0 5{   .   �� 5|   2   1 6>   �� *Status+2 true6Y   .a�5}   6   �� - � y�$. Visible=�6S   �� 5~   6   - � ��. �	#FF4AD10A6S   �� 5   6   - � ��$. 80��6N   �� 5�   6   - � ��$. 35��6O   �� 5�   6   - � ��$. Center=�6c   �� 5�   6   - � ��$. Center=�6a   �� 5�   6   - � ��$. 1q�6X   5�   3   5�   +   5�   '   ��5�   &   �� 5�   *   Active6<   5�   #   �� 5�   "   ��5�   %   �� *DataContext.ChangeStaffStatus+  �� ! DataGrid��5�   %   �� ��5�   &   �� 5�   *   "" ��6:   .R�5�   .   �� $# border��5�   1   #��z��5�   1   #��z��5�   1   #��z��5�   1   #$ z$ 5�   1   $
% True��5�   1   ._�5�   2   �� $& contentPresenter��5�   5   #��z��5�   5   #��z��5�   5   #��z��5�   5   #��z��5�   5   #( z' 5�   5   #��z��5�   5   $|�False��5�   5   $
��True��5�   5   #% z% 5�   5   5�   /   ) 5�   .   P� 5�   2   * �@J�IsMouseOver$
+ True��6Q   . �5�   6   �� $, border��6=   - � ��. �	#FFFF64646g   �� 5�   6   $, border��6=   - � ��$. 1q�6l   �� 5�   6   $, border��6=   - �@�Cursor$
. Hand��6c   5�   3   5�   +    5�   &   ��%�  '��       �� 5�   *   "/ ��60   .�5�   .   �� - � y�$. 	Collapsed=�6K   0 5�   .   �� 5�   2   1 6>   �� *Status+	2 false6Y   .a�5�   6   �� - � y�$. Visible=�6S   �� 5�   6   - � ��
. �  ��6S   �� 5�   6   - � ��$. 80��6N   �� 5�   6   - � ��$. 35��6O   �� 5�   6   - � ��$. Center=�6c   �� 5�   6   - � ��$. Center=�6a   �� 5�   6   - � ��$. 1q�6X   5�   3   5�   +   5�   '   ��5�   &   �� 5�   *   
Deactive6>   5�   #   5�      5�      5�      5�      5�      5�      