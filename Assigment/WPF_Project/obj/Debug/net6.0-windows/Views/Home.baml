   M S B A M L   `   `   `  ����F  BWPF_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:WPF_Project.ViewsWPF_Project.Views  5      ?$clr-namespace:WPF_Project.ViewModelsWPF_Project.ViewModels  5
   W       WPF_Project.Views.Home   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:WPF_Project.Views     5      _ [MaterialDesignThemes.Wpf, Version=4.7.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
      5
viewmodels$clr-namespace:WPF_Project.ViewModels  6W   -   5          � DataContext  5      *   $WPF_Project.ViewModels.HomeViewModel  5   
   .��5      #  MaterialDesignThemes.Wpf.Card  .��5   
   �  � ColumnDefinitions 5      �� 5      $
��Auto �6#   �� 5      $��* �6#   .+�5      �� 3  -MaterialDesignThemes.Wpf.NavigationRailAssist   ShowSelectionBackground$
 True��5       J� SnapsToDevicePixels$
 True��5       *  &MaterialDesignNavigationRailTabControl#��[  5       �� TabStripPlacement$
 Left=�5      $��0��5         FloatingContent 5      �� 5      $��\Images\Logo.png��6   $��70��5       $��70��5!      .@�5%      �� ��5&      �� 5'      $
��auto��5(      $
��auto��5)      .+�5*      '  !MaterialDesignThemes.Wpf.PackIcon  $��24��5+   !   $��24��5,   !   $��Center=�5-   !      Kind$ ArrowUpBoldCircleOutline=�5.   !   �� 5/      $��Center=�50   !   $��Orders��51   !   52       J� InputBindings 54      d� 55       d� MouseAction$ 	LeftClicke�6'   	 �� Command	 6?   �� *ClickOrderCommand+57      �� 59      ��5:      �� 5;      $
��auto��5<      $
��auto��5=      .+�5>        $��24��5?   !   $��24��5@   !   $��Center=�5A   !   $  ArrowDownBoldCircleOutline=�5B   !   �� 5C      $��Center=�5D   !   $��Import��5E   !   5F       5H      d� 5I      $ 	LeftClicke�6'   	 6?   �� *ClickImportCommand+5K      �� 5M      ��5N      �� 5O      $
��auto��5P      $
��auto��5Q      .+�5R        $��24��5S   !   $��24��5T   !   $��Center=�5U   !   $ GiftOutline=�5V   !   �� 5W      $��Center=�5X   !   $��Product��5Y   !   5Z       5\      d� 5]      $ 	LeftClicke�6'   	 6?   �� *ClickProductCommand+5_      �� 5b      ��5c      �� 5d      $
��auto��5e      $
��auto��5f      .+�5g        $��24��5h   !   $��24��5i   !   $��Center=�5j   !   $ CalendarImportOutline=�5k   !   �� 5l      $��Center=�5m   !   $��History Order��5n   !   $
��Wrap=�5o   !   $��12(�5p   !   
 �� TextAlignment$
 Center=�5q   !   5r       5t      d� 5u      $ 	LeftClicke�6'   	 6?   �� *ClickHistoryOrderCommand+5w      �� 5y      ��5z      �� 5{      $
��auto��5|      $
��auto��5}      .+�5~        $��24��5   !   $��24��5�   !   $��Center=�5�   !   $ ClipboardTextClockOutline=�5�   !   �� 5�      $��Center=�5�   !   $��History Import��5�   !   $
��Wrap=�5�   !   $��12(�5�   !   $
 Center=�5�   !   5�       5�      d� 5�      $ 	LeftClicke�6'   	 6?   �� *ClickHistoryImportCommand+5�      �� 5�      -   5        $��SupplierManageTab��5�      ��5�      �� 5�      $
��auto��5�      $
��auto��5�      .+�5�        $��24��5�   !   $��24��5�   !   $��Center=�5�   !   $ 
HumanDolly=�5�   !   �� 5�      $��Supplier Manage��5�   !   $��29��68   $
��Wrap=�5�   !   $��60��65   $��10(�5�   !   $
 Center=�5�   !   5�       5�      d� 5�      $ 	LeftClicke�6'   	 6?   �� *ClickSupplierManageCommand+5�      �� 5�      -   5        $��AccoutManageTab��5�      ��5�      �� 5�      $
��auto��5�      $
��auto��5�      .+�5�        $��24��5�   !   $��24��5�   !   $��Center=�5�   !   $ CardAccountDetailsOutline=�5�   !   �� 5�      $��Account Manage��5�   !   $��29��67   $
��Wrap=�5�   !   $��60��65   $��10(�5�   !   $
 Center=�5�   !   5�       5�      d� 5�      $ 	LeftClicke�6'   	 6?   �� *ClickAccountManageCommand+5�      �� 5�      ��5�      �� 5�      $
��auto��5�      $
��auto��5�      .+�5�        $��24��5�   !   $��24��5�   !   $��Center=�5�   !   $ Logout=�5�   !   �� 5�      $��Center=�5�   !   $��Logout��5�   !   5�       5�      d� 5�      $ 	LeftClicke�6'   	 6?   �� *ClickLogoutCommand+5�      5�       � 5�      -   5        $��	MainFrame��5�      $��1��6%     � Source$ 
Order.xaml?�65   5�      5�      5�      