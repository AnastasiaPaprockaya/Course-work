   M S B A M L   `   `   `  ���� A  =course, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:course.Windowscourse.Windows       course.Windows.StartWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     .localclr-namespace:course.Windows     -     � Title$%  Ближайшие задачи��$	��450��$	��800��$��Arial)�$��14(� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�����  �� EndPoint$ 0.5,1&� � MappingMode$ RelativeToBoundingBox=� �� 
StartPoint$ 0.5,0&�.���  � Color$ 	#FF897BE0�� � Offset$ 1Q�� $ 	#FF0A0A0A��� $ 	#FFE3E1EA��.���  � RowDefinitions �� $��7* ��� $��* �.+�&   System.Windows.Controls.DataGrid  -   	  Name$	 dgApproachingTasks��
   AutoGenerateColumns
 .     
IsReadOnly . 
���   �$��0,0,0,10q�   CanUserResizeColumns .     CanUserResizeRows .  4  .System.Windows.Automation.AutomationProperties   AutomationId$
 true�� �� AlternationCount$ 1��   AlternatingRowBackground �	#FFA8A8A8��Z� ��Z�    Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Тег��   Width5  /System.Windows.Controls.DataGridLengthConverter$
 0.8* 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *Tag+  $ Тип��$
 0.8*  �� *Type+  $ Приоритет��$
 1.2*  �� *
Priority+  $ Описание��$ 2*  �� *Description+   ElementStyle ��  �� 
TargetType" ��.���  �� Property � �� �� Value$
 Wrap=�  $ Дата(до)��$ *  �� *
StringDate+�� -    ��Name$ btnOk��$��Понял, принял��$��240,10,257,10q�$��1����Z� ��Z� 