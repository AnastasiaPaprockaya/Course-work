   M S B A M L   `   `   `  ����A  =course, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:coursecourse  5   	       course.AddTask   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:course     5   	   X TXceed.Wpf.Toolkit, Version=3.4.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5   	   -   5          �Name$  AddTaskWindow��5   @    � Title$' !Добавление задачи��5	   	   $	��300��6#   $	��500��60   $	��450��6U   $	��280��6d    � SizeToContent$ WidthAndHeight=�6t    � 
ResizeMode$ NoResize=�6�   $��Arial)�6�   $��14(�6�    � WindowStartupLocation$ CenterScreen=�6�   ��5
      �� 5   
    �� EndPoint$ 0.5,1&�6    � MappingMode$ RelativeToBoundingBox=�6/    �� 
StartPoint$ 0.5,0&�6S   .��5      �  � Color$ 	#FF897BE0��6   	 � Offset$	 1Q�6-   � 5      $ 	#FF0A0A0A��6   � 5      $ 	#FFE3E1EA��6   5      .��5      � $��0,0,2,0q�6   
 J� RenderTransformOrigin$
 0.5,0.5&�6   $	��270��6<   $	��Top=�6I    � ColumnDefinitions 5   
   �� 5      $��6* �6   �� 5      $��7* �6    � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��3* �6   �� 5      $��* �6   .+�5   
   �� $��Дата(до)��6   $��1��6#   $��
0,10,145,0q�63   $
 0.489,0.575&�6G   $��25��6k   $	��Top=�6w   $��1��6�   (  "System.Windows.Controls.DatePicker  5   
   -   5          Name$ dpChooseDate��5         IsTodayHighlighted .  $��	82,10,3,0q�6G   $��1��6Z      FirstDayOfWeek$ Monday=�6j      SelectedDateFormat$
 Long=�6�   $��25��6�   $	��Top=�6�   $��1��6�   $��Center=�6�   �� 5    
   $��Тег��6   $��
6,10,139,0q�6   $��25��63   $	��Top=�6?   �� 5!   
   -   5         ��Name$ cbTags��5!      $��
51,10,14,0q�6#    �� 
IsEditable . $��25��6I   $	��Top=�6U   �� 5#   
   $��Тип��6   $��
6,10,139,0q�6   $��25��63   $��1��6?   $	��Top=�6M   �� 5$   
   -   5        $ cbType��5$      $��
51,10,14,0q�6#   $��1��67    . $��25��6V   $	��Top=�6b   �� 5&   
   $#��Описание задачи��6   $��	6,10,64,0q�6*   $��2��6>   $��30��6K   $	��Top=�6W   �� 5'   
   -   5         ��Name$ tbDescription��5'      $��
10,33,21,0q�6)    �� TextWrapping$
 Wrap=�6=   $��2��6Q    �� 	IsEnabled . $��2��6{   $��93��6�   $	��Top=�6�   �� 5)   
   $��Приоритет��6   $��
0,10,145,0q�6$   $	��Top=�68   $��1��6P   �� 5+   
   -   5        $ 
cbPriority��5+      $��	80,10,5,3q�6'   $��1��6:   
����������	#FFACACAC
���   �$��Center=�6�   $��Center=�6�   .@�5,      �� $��Низкий��6   $��Center=�65   $��Center=�6R   �� 5-      $��Ниже среднего��6   $��Center=�65   $��Center=�6R   �� 5.      $��Средний��6   $��Center=�65   $��Center=�6R   �� 5/      $��Выше среднего��6   $��Center=�65   $��Center=�6R   �� 50      $��Высокий��6   $��Center=�65   $��Center=�6R   51      �� 53   
   -   5         ��Name$ btnAdd��53      $#��Добавить задачу��6!   $��
12,10,64,0q�6;   $��3��6d   $��25��6�   $	��Top=�6�   ��6q   Z� 6�   55      56      