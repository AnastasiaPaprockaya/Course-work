   M S B A M L   `   `   `  ���� A  =course, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:coursecourse      course.AddTask   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     &localclr-namespace:course     X TXceed.Wpf.Toolkit, Version=3.4.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  -     �Name$  AddTaskWindow�� � Title$' !Добавление задачи��$	��300��$	��500��$	��450��$	��280�� � SizeToContent$ WidthAndHeight=� � 
ResizeMode$ NoResize=�$��Arial)�$��14(� � WindowStartupLocation$ CenterScreen=�����  �� EndPoint$ 0.5,1&� � MappingMode$ RelativeToBoundingBox=� �� 
StartPoint$ 0.5,0&�.���  � Color$ 	#FF897BE0��	 � Offset$	 1Q�� $ 	#FF0A0A0A��� $ 	#FFE3E1EA��.��� $��0,0,2,0q�
 J� RenderTransformOrigin$
 0.5,0.5&�$	��270��$	��Top=� � ColumnDefinitions �� $��6* ��� $��7* � � RowDefinitions �� $��* ��� $��* ��� $��3* ��� $��* �.+��� $��Дата(до)��$��1��$��
0,10,145,0q�$
 0.489,0.575&�$��25��$	��Top=�$��1��(  "System.Windows.Controls.DatePicker  -     Name$ dpChooseDate��   IsTodayHighlighted .  $��	82,10,3,0q�$��1��   FirstDayOfWeek$ Monday=�   SelectedDateFormat$
 Long=�$��25��$	��Top=�$��1��$��Center=��� $��Тег��$��
6,10,139,0q�$��25��$	��Top=��� -    ��Name$ cbTags��$��
51,10,14,0q� �� 
IsEditable . $��25��$	��Top=��� $��Тип��$��
6,10,139,0q�$��25��$��1��$	��Top=��� -   $ cbType��$��
51,10,14,0q�$��1�� . $��25��$	��Top=��� $#��Описание задачи��$��	6,10,64,0q�$��2��$��30��$	��Top=��� -    ��Name$ tbDescription��$��
10,33,21,0q� �� TextWrapping$
 Wrap=�$��2�� �� 	IsEnabled . $��2��$��93��$	��Top=��� $��Приоритет��$��
0,10,145,0q�$	��Top=�$��1���� -   $ 
cbPriority��$��	80,10,5,3q�$��1��
����������	#FFACACAC
���   �$��Center=�$��Center=�.@��� $��Низкий��$��Center=�$��Center=��� $��Ниже среднего��$��Center=�$��Center=��� $��Средний��$��Center=�$��Center=��� $��Выше среднего��$��Center=�$��Center=��� $��Высокий��$��Center=�$��Center=��� -    ��Name$ btnAdd��$#��Добавить задачу��$��
12,10,64,0q�$��3��$��25��$	��Top=���Z� 