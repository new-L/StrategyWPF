   M S B A M L   `   `   `  ����F  BStrategyWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:StrategyWPFStrategyWPF  5   	       StrategyWPF.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:StrategyWPF     5   	     � Title$  StringValidate��5   	   $	��248��6    $	��500��6-   .��5	      � $��Stretch=�6   $��Center=�6'    � ColumnDefinitions 5
   
   �� 5      $��5* �6   �� 5      $	��72* �6   �� 5      $	��37* �6   �� 5      $
��686* �6   .+�5   
   	� -   5         	�Name$ 	NumericRB��5      $��
Число��6)   $��1��69   $
��Left=�6I   $��0,30,0,0q�6d   $	��Top=�6v   $��14��6�   $��87��6�   $
��Bold"�6�   $��3��6�    d� 	IsChecked$
 TrueY�6�   	� 5   
   -   5        $ LowerRB��5      $!��Нижний регистр��6'   $��3��6@   $
��Left=�6P   $��	99,30,0,0q�6k   $	��Top=�6~   $��14��6�   $	��126��6�   $
��Bold"�6�   	� 5   
   -   5        $ UpperRB��5      $#��Верхний регистр��6'   $��3��6A   $
��Left=�6Q   $��
282,30,0,0q�6l   $	��Top=�6�   $��14��6�   $	��123��6�   $
��Bold"�6�   �� 5   
   -   5         ��Name$ TextBox��5      $��2��6#   $
��Left=�63   $��0,88,0,0q�6N   $$��Введите строку...��6`    �� TextWrapping$
 Wrap=�6y   $	��Top=�6�   $	��428��6�   $��2��6�   ���	#FF5F5F5F$��18��6�    �� TextAlignment$ Justify=�6�   �� 5   
   -   5        $��Проверить��5      $��1��6%   $
��Left=�65   $��	0,116,0,0q�6P   $	��Top=�6c   $��3��6{   
����������	#FF0808086�   �� 5   
   -   5         ��Name$
 Desc��5      $��Процессинг��6   $��3��63   $
��Left=�6C   $��
55,114,0,0q�6^   $	��Top=�6r   $��350                ��6�   $��28��5      ���	#FF2B2B2B$y�Hidden=�65   5      5      