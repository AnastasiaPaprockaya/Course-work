   M S B A M L   `   `   `  ����A  =course, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:coursecourse  5   	       course.EditWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:course     5   	     � Title$/  )Редактирование задачи��5   	   $��313.636��6'   $	��550��68   $��Arial)�6D   $��14(�6W    � 
ResizeMode$ NoResize=�6e    � WindowStartupLocation$ CenterScreen=�6{   ��5	      �� 5
   
    �� EndPoint$ 0.5,1&�6    � MappingMode$ RelativeToBoundingBox=�6/    �� 
StartPoint$ 0.5,0&�6S   .��5      �  � Color$ 	#FF897BE0��6    � Offset$ 1Q�6-   � 5      $ 	#FF0A0A0A��6   � 5      $ 	#FFE3E1EA��6   5      .��5      � $��0,0,2,2q�6    � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   	 � RowDefinitions	 5   
   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��3* �6   .+�5   
   �� $��Дата(до)��6   $��1��6#   $��
0,10,145,0q�63   
 J� RenderTransformOrigin$
 0.489,0.575&�6G   $��25��6k   $	��Top=�6w   $��1��6�   (  "System.Windows.Controls.DatePicker  5   
   -   5          Name$ dpChooseDate��5         IsTodayHighlighted . $��	80,10,5,0q�6F   $��1��6Y      FirstDayOfWeek$ Monday=�6i      SelectedDateFormat$
 Long=�6�   $��25��6�   $	��Top=�6�   $��1��6�   $��Center=�6�   �� 5   
   $��Тег��6   $��
6,10,139,0q�6   $��25��63   $	��Top=�6?   �� 5    
   -   5         ��Name$ cbTags��5       $��
51,10,14,0q�6#    �� 
IsEditable . $��26��6I   $	��Top=�6U   �� 5"   
   $��Тип��6   $��
6,10,139,0q�6   $��25��63   $��1��6?   $	��Top=�6M   �� 5#   
   -   5        $ cbType��5#      $��
51,10,14,0q�6#   $��1��67    . $��25��6V   $	��Top=�6b   �� 5%   
   $#��Описание задачи��6   $��	6,10,64,0q�6*   $��2��6>   $��30��6K   $	��Top=�6W   �� 5&   
   -   5         ��Name$ tbDescription��5&      $��10,33,10,43q�6)    �� TextWrapping$
 Wrap=�6>   $��2��6R    �� 	IsEnabled . $��2��6|   �� 5(   
   $��Приоритет��6   $��
0,10,145,0q�6$   $	��Top=�68   $��1��6P   �� 5*   
   -   5        $ 
cbPriority��5*      $��
80,10,5,20q�6'   $��1��6;   
����������	#FFACACAC
���   �$��Center=�6�   $��Center=�6�   .@�5+      �� $��Низкий��6   $��Center=�65   $��Center=�6R   �� 5,      $��Ниже среднего��6   $��Center=�65   $��Center=�6R   �� 5-      $��Средний��6   $��Center=�65   $��Center=�6R   �� 5.      $��Выше среднего��6   $��Center=�65   $��Center=�6R   �� 5/      $��Высокий��6   $��Center=�65   $��Center=�6R   50      �� 52   
   -   5         ��Name$ btnEdit��52      $5��/Закончить редактирование��6"   $��
10,131,0,7q�6E   $��2��6p   $
��Left=�6�   $	��194��6�   ��6}   Z� 6�   54      55      