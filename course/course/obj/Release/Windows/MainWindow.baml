   M S B A M L   `   `   `  ���� A  =course, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:coursecourse      course.MainWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     &localclr-namespace:course     -     � Title$  Melman's Assistant��$	��500��$
��1000��$��Arial)�$��14(�$
��1000��$	��400�� � WindowStartupLocation$ CenterScreen=� � 	Resources  
  Color1 
 Color2��%:   &	        &	      ��	#FF8A79DD����	#FFD62D2D������  �� EndPoint$ 0.5,1&� � MappingMode$ RelativeToBoundingBox=� �� 
StartPoint$ 0.5,0&�.���  � Color$ 	#FF897BE0�� � Offset$ 1Q�� $ 	#FF0A0A0A��� $ 	#FFE3E1EA��.��� $��0,0,0,-4q�.+��� -    ��Name$ 	tbControl��$��0,0,0,4q���Z� .@��� -   	 ��Name$
	 tab1��$��Текущие��$
��-2,0q�.��� 
 � ColumnDefinitions
 �� $	��52* ��� $	��70* ��� $	��98* ��� $
��579* ��� $
��187* �.+�&   System.Windows.Controls.DataGrid  -     Name$ dgTasks��   AutoGenerateColumns .     
IsReadOnly . 
���   �$��1,0,0,0q�   CanUserResizeColumns .     CanUserResizeRows .  4  .System.Windows.Automation.AutomationProperties   AutomationId$
 true�� �� AlternationCount$ 1��   AlternatingRowBackground �	#FFC3C3C3   SelectionMode$ Single=�$��4����Z� ��Z�    Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Тег��   Width5  /System.Windows.Controls.DataGridLengthConverter$
 0.8* 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *Tag+  $ Тип��$
 0.8*  �� *Type+  $ Приоритет��$
 1.2*  �� *
Priority+  $ Описание��$ 2*  �� *Description+   ElementStyle ��  �� 
TargetType" ��.���  �� Property � �� �� Value$
 Wrap=�  $ Дата(до)��$ *  �� *
StringDate+4  .System.Windows.Controls.DataGridCheckBoxColumn  $ Статус��$
 0.5*  �� *Status+�� -    ��Name$ btnDeleteTask��$%��Завершить задачу��$��
10,60,10,0q�$	��Top=�$��4����Z� ��Z� �� -   $ 
btnAddTask��$#��Добавить задачу��$��
10,10,10,0q�$��4��$	��Top=���Z� ��Z� &   System.Windows.Controls.Calendar  -     Name$ Calendar��   IsRequiredForForm .    SelectionMode$ MultipleRange=�$��Bottom=�$��12(�$
��Bold"�$	��165��$��4����Z� ��Z� �� -   $ btnDisplayAllTasks��$*��$Показать все задачи��$��	5,0,0,170q�$��Bottom=�$��4����Z� ��Z� ����   �� Color$  Black���� -	   $ btnEditTask��$-��'Редактировать задачу��$��
10,35,10,0q�$	��Top=�$��4����Z� ��Z� �� -
   $
	 tab2��$��Завершенные��.��� 
 �� $��* ��� $
��4.5* �.+�  -   $ dgCompletedTasks�� .   . 
���   �$��	1,0,10,59q� .   .  $
 true��$ 1��$��2�� �	#FFBDBDBD$ Single=���Z� ��Z�    $ Тег��$
 0.8*  �� *Tag+  $ Тип��$
 0.8*  �� *Type+  $ Приоритет��$
 1.2*  �� *
Priority+  $ Описание��$ 2*  �� *Description+ �� " ��.���  � ��$
 Wrap=�  $ Дата(до)��$ *  �� *
StringDate+  $# Дата выполнения��$ *  �� *
FinishDate+  $ Статус��$
 0.5*  �� *Status+� -   ! �Name$! pbRate��$��	10,0,0,10q�" J� RenderTransformOrigin$" 0.5,0.5&����	#FF4ECF12$
��Left=�$	��154��$��33��$��Bottom=�# � Value# �� $ �� Source$$ 	GetRate()��% �� Mode$% OneWay=��� -   $ btnClearHistory��$%��Очистить историю��$��1��$��	0,0,10,10q�$��43��$��Bottom=�$��Right=�$	��272����Z� ��Z� �� $��Рейтинг��$��	10,0,0,48q�$��26��$��Bottom=�$
��Left=�$	��154���� -   $
	 tab3��$��Просроченные��$��
-2,0,-13,0q�$
��Left=�$��Bottom=�.��� $	��987��$	��443��
 �� $��* ��� $��* �& � RowDefinitions& �� $��7* ��� $��* �.+�  -   $ dgOverdueTasks�� .   . 
���   � .   .  $
 true��$��Center=�$��Center=�$��2��$ Single=���Z� ��Z�    $ Тег��$
 0.8*  �� *Tag+  $ Тип��$
 0.8*  �� *Type+  $ Приоритет��$
 1.2*  �� *
Priority+  $ Описание��$ 2*  �� *Description+ �� " ��.���  � ��$
 Wrap=�  $ Дата(до)��$ *  �� *
StringDate+�� -   $ btnTrue��$��Выполнена��$
��Bold"�$��10,10,9.5,10q�$��1����Z� ��Z� �� -   $ btnFalse��$��Не выполнена��$
��Bold"�$��1��$��10.5,10,10,10q�$��1����Z� ��Z� �� -   ' ��Name$' lblNum��$
��Left=�$��29��$��
278,-1,0,0q�$	��Top=�$��29��
���  ������ ( �� ElementName$( dgOverdueTasks��) �� Path$) Items.Count�$% OneWay=���Z� 