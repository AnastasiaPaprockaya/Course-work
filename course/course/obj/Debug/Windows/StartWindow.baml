   M S B A M L   `   `   `  ����A  =course, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:course.Windowscourse.Windows  5   	        course.Windows.StartWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:course.Windows     5   	   -   5          � Title$%  Ближайшие задачи��5   	   $	��450��6"   $	��800��6/   $��Arial)�6;   $��14(�6N    � 
ResizeMode$ NoResize=�6s    � WindowStartupLocation$ CenterScreen=�6�   ��5	      �� 5
   
    �� EndPoint$ 0.5,1&�6    � MappingMode$ RelativeToBoundingBox=�6/    �� 
StartPoint$ 0.5,0&�6S   .��5      �  � Color$ 	#FF897BE0��6    � Offset$ 1Q�6-   � 5      $ 	#FF0A0A0A��6   � 5      $ 	#FFE3E1EA��6   5      .��5      �  � RowDefinitions 5   
   �� 5      $��7* �6   �� 5      $��* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5        	  Name$	 dgApproachingTasks��5      
   AutoGenerateColumns
 .     
IsReadOnly . 
���   �$��0,0,0,10q�6�      CanUserResizeColumns .     CanUserResizeRows .  4  .System.Windows.Automation.AutomationProperties   AutomationId$
 true��6�    �� AlternationCount$ 1��6�      AlternatingRowBackground �	#FFA8A8A8��6]   Z� ��6  Z�    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Тег��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$
 0.8* 62   1  +System.Windows.Controls.DataGridBoundColumn   Binding 5      �� *Tag+  5      $ Тип��6%   $
 0.8* 62    5      �� *Type+  5      $ Приоритет��6%   $
 1.2* 68    5       �� *
Priority+  5"      $ Описание��6%   $ 2* 68    5#      �� *Description+   ElementStyle 5$      �� 5%       �� 
TargetType" ��6    .�5&      ��  �� Property � �� �� Value$
 Wrap=�6=   5'      5)        5+      $ Дата(до)��6%   $ * 67    5,      �� *
StringDate+5/      �� 51   
   -   5         ��Name$ btnOk��51      $��Понял, принял��6!   $��240,10,257,10q�6<   $��1��6�   ��6k   Z� ��6�   Z� 6�   54      55      