   M S B A M L   `   `   `  ����F  BWPF_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:WPF_ProjectWPF_Project  5   	       WPF_Project.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:WPF_Project     5   	   _ [MaterialDesignThemes.Wpf, Version=4.7.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5          � Title$  
MainWindow��5   	   $	��700��6   $
��1200��6)    � 
ResizeMode$ NoResize=�5	   	    � WindowStartupLocation$ CenterScreen=�5
   	    � WindowStyle$
 None=�5   	    � Icon$ \Images\garlic.ico��5   	   .��5      ��  �� CornerRadius$ 10��6   
����������#652811$��2q�5       J� Opacity$	 0.8Q�5      ._�5   
   �  � RowDefinitions 5      �� 5      $��30 �6    �� 5      $��* �6    .+�5      � $��0��6    � ColumnDefinitions 5"      �� 5#      $��* �6'   �� 5$      $��40 �6'   �� 5%      $��40 �6'   �� 5&      $��5 �6'   .+�5)      �� $��
CUTOI SHOP��6   
���   �$��20(�5+      $��
Montserrat)�5,      $��0��5-      $��Center=�5.      $��10,0,0,0q�5/      �� 51      -   5        $��btnMinimize��51      ���#1163a1$��0q�53      $��-��54      
�������$��16(�56      $��
Montserrat)�57      	 � Cursor$
	 Hand��58      $��1��59      ��5<      �� 5=      
 �� 
TargetType"
 ��6     �� Triggers 5>      P� 5?   "    P� Property �@J�IsMouseOver P� Value$
 True��6A   . �5@   &   ��  �� Property � �� �� Value �#278BEF6C   5A   #   5C      5E      �� 5G      -   5        $��btnClose��5G      
���  ��$��0q�5I      $��X��5J      
�������$��10(�5L      $��
Montserrat)�5M      $
	 Hand��5N      $��2��5O      $ 1Q�5Q      ��5S      �� 5T      "
 ��6     5U      P� 5V   "    �@J�IsMouseOver$
 True��6A   . �5W   &   ��  � �� �#C62DAE6C   5X   #   5Z      5\      5^       � 5`      -   5        $��	MainFrame��5`        � NavigationUIVisibility$ Hidden=�5a      $��1��5b      5c      5e      5g      