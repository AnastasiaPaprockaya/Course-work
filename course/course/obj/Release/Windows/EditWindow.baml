   M S B A M L   `   `   `  ���� A  =course, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:coursecourse      course.EditWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     &localclr-namespace:course       � Title$/  )Редактирование задачи��$��313.636��$	��550��$��Arial)�$��14(� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�����  �� EndPoint$ 0.5,1&� � MappingMode$ RelativeToBoundingBox=� �� 
StartPoint$ 0.5,0&�.���  � Color$ 	#FF897BE0�� � Offset$ 1Q�� $ 	#FF0A0A0A��� $ 	#FFE3E1EA��.��� $��0,0,2,2q� � ColumnDefinitions �� $��* ��� $��* �	 � RowDefinitions	 �� $��* ��� $��* ��� $��3* �.+��� $��Дата(до)��$��1��$��
0,10,145,0q�
 J� RenderTransformOrigin$
 0.489,0.575&�$��25��$	��Top=�$��1��(  "System.Windows.Controls.DatePicker  -     Name$ dpChooseDate��   IsTodayHighlighted . $��	80,10,5,0q�$��1��   FirstDayOfWeek$ Monday=�   SelectedDateFormat$
 Long=�$��25��$	��Top=�$��1��$��Center=��� $��Тег��$��
6,10,139,0q�$��25��$	��Top=��� -    ��Name$ cbTags��$��
51,10,14,0q� �� 
IsEditable . $��26��$	��Top=��� $��Тип��$��
6,10,139,0q�$��25��$��1��$	��Top=��� -   $ cbType��$��
51,10,14,0q�$��1�� . $��25��$	��Top=��� $#��Описание задачи��$��	6,10,64,0q�$��2��$��30��$	��Top=��� -    ��Name$ tbDescription��$��10,33,10,43q� �� TextWrapping$
 Wrap=�$��2�� �� 	IsEnabled . $��2���� $��Приоритет��$��
0,10,145,0q�$	��Top=�$��1���� -   $ 
cbPriority��$��
80,10,5,20q�$��1��
����������	#FFACACAC
���   �$��Center=�$��Center=�.@��� $��Низкий��$��Center=�$��Center=��� $��Ниже среднего��$��Center=�$��Center=��� $��Средний��$��Center=�$��Center=��� $��Выше среднего��$��Center=�$��Center=��� $��Высокий��$��Center=�$��Center=��� -    ��Name$ btnEdit��$5��/Закончить редактирование��$��
10,131,0,7q�$��2��$
��Left=�$	��194����Z� 