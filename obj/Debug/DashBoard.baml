   M S B A M L   `   `   `  ����D  @LoginPage, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:LoginPage	LoginPage  5   	       LoginPage.DashBoard   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:LoginPage     5   	   b ^MaterialDesignThemes.Wpf, Version=4.1.0.2556, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  	DashBoard��5	   	   $	��620��6   ���	#FF733989$	��800��6?   $��16(�6K    � 
ResizeMode$ NoResize=�6Y    � WindowStartupLocation$ CenterScreen=�6o   .��5
      �  � ColumnDefinitions 5   
   �� 5      $��30 �6   6,   �� 5      $��* �6   6+   �� 5      $��* �6   6+   �� 5      $��* �6   6+   �� 5      $��* �6   6+   �� 5      $��30 �6   6,    � RowDefinitions 5   
   �� 5      $��30 �6   6*   �� 5      $��* �6   6)   �� 5      $��* �6   6)   �� 5      $��* �6   6)   �� 5      $��* �6   6)   �� 5      $��30 �6   6*   .+�5   
   �� $��15q�6   $��70��6!   $	��Top=�6-   $��1��6E   $��4��6U   $��0��6i   $��2��6v   .+�5      �� $
��auto��6   $��70��6"   ���	#FF322F2F
�������$	��2.4q�6Y    �� CornerRadius$ 5��6o   +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth5=�6�      Darken . ._�5      �� .+�5      c� $��66��6   $��
15 20 15 5q�6*      MaterialDesignToolBar#���   6?   }�.  .@�5       �� $��Center=�6!   $	��Top=�6>    � ToolTip$ Twitter��6V   ��6h   0  *MaterialDesignThemes.Wpf.PackIconExtension  	   Kind$	 AccountDetails=��� 5!      -   5        $��Profile_Name��5!         MaterialDesignLabel#���  64   $	��200��6b   $��0,0,0,8q�6n   
���   �$��Center=�6�   5"      5#      5$      5%      �� 5'   
   $��
27 70 27 0q�6   $��3��6)   $��2��69   $��1��6M   $��4��6Z   .+�5(      �� $
��auto��6   $	��450��6#   ���	#FF322F2F$��3��6G   $��2��6W   $��1��6k   $��4��6x   $ 10��6�   $��3q�6�   ._�5)      �� .+�5*      �� $��Friends List��6   #��[ 64   $��Center=�6a   $��10q�6~   $��24(�6�   $
��Bold"�6�   ���	#DDFFFFFF6�   �� 5+      -   5        
 ��Name$
 Friend_ListBox��5+      $
��Auto=�66   ��. $��Visible=�6�    + 'MaterialDesignToolVerticalToggleListBox#��[ 6�   $��Center=�6  $	��260��6&  $	��300��62  $	��300��6?  $��15 10q�6O  
�������
���   �$ �� IsSynchronizedWithCurrentItem$ FalseY�6�  $��Ink Free)�6�  5-      �� 5.      -   5         ��Name$ Refresh_Btn��5.      $��30��62   $	��100��6>   $��Center=�6J   $��Bottom=�6g    " MaterialDesignFlatDarkBgButton#��[ 6�   $��Refresh��6�   
�������6�   5/      50      51      �� 52   
   $��1��6   $��4��6"   $��1��63   $��2��6C   $��
27 70 27 0q�6W    �� Orientation$ Vertical=�6k   .+�53      �� $
��auto��6   $	��450��6"   ���	#FF322F2F$ 10��6F   ._�54      �� .+�55      �� -   5         ��Name$ FirstNameBox��55      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
First Name��64    % !MaterialDesignFloatingHintTextBox#��[ 6`   $	��198��6�   $��48��6�   $��Center=�6�   $��Center=�6�   $��	0,30 0 10q�6�   
�������$��2q�6  
�������6&  �� 56      -   5        $ LastNameBox��56      $ 	Last Name��63   #��[ 6^   $	��198��6�   $��48��6�   $��Center=�6�   $��Center=�6�   $
��0,13q�6�   
�������$��2q�6  
�������6  �� 57      -   5        $ EmailBox��57      $ Email Address��60   #��[ 6_   $	��198��6�   $��48��6�   $��Center=�6�   $��Center=�6�   $
��0,13q�6�   
�������$��2q�6  
�������6   �� 58      -   5         ��Name$ GenderComBox��58      $ Gender��65    & "MaterialDesignFloatingHintComboBox#��[ 6]   $	��198��6�   $��48��6�   $��Center=�6�   $��Center=�6�   $
��0,13q�6�   
�������$��2q�6  
�������.@�59      �� $
��Male��6'   �� 5:      $��Female��6'   �� 5;      $��Other��6'   5<      �� 5>      -   5        $ AddBtn��5>      $
��0 30q�6-   $��Center=�6;   $��Bottom=�6X   $	��120��6s   $��
Add Friend��6�   (  "System.Windows.Controls.WebBrowser  5?      -	   5          Name$	 web��5?   !   $
��auto��6.   $
��40px��6a   5A      5C      5D      5E      5I      5J      