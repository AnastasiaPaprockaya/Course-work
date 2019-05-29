using System;
using System.Windows;
using System.Windows.Controls;

namespace course
{
    /// <summary>
    /// Логика взаимодействия для AddTask.xaml
    /// </summary>
    public partial class AddTask : Window
    {
        MainWindow f1;
        public static AddTask isExist = null;
       
        public AddTask(MainWindow mainWindow)
        {
            InitializeComponent();
            isExist = this;
            f1 = mainWindow;
            cbTags.ItemsSource = f1.taskManager.tags;
            cbType.ItemsSource = f1.taskManager.types;

            dpChooseDate.BlackoutDates.AddDatesInPast();
        }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            if (tbDescription.Text.Equals(null) || tbDescription.Text.Replace(" ","") == "" )
            {
                MessageBox.Show("Введите описание задачи!");
                tbDescription.Clear();
                tbDescription.Focus();
            }
            else if (dpChooseDate.SelectedDate == null)
            {
                MessageBox.Show("Установите дату!");
                dpChooseDate.Focus();
                dpChooseDate.IsDropDownOpen = true;
            }
            else
            {
                f1.taskManager.IsTagExist(cbTags.Text);
                f1.taskManager.IsTypeExist(cbType.Text);
                
                Add();
                Reset();
            }
        }
        private void Window_Closed_1(object sender, EventArgs e)
        {
            isExist = null;
            Owner.Activate();
        }

        private void Add()
        {         
            Task temp = new Task(cbType.Text, cbTags.Text,cbPriority.Text, tbDescription.Text, (DateTime)dpChooseDate.SelectedDate);
            f1.taskManager.AddTask(temp);
            MessageBox.Show("Задача была добавлена");
        }
        private void Reset()
        {
            cbTags.SelectedIndex.Equals(null);
            cbType.SelectedIndex.Equals(null);
            tbDescription.Text = null;
            cbPriority.SelectedIndex.Equals(null);
            dpChooseDate.SelectedDate = null;

        }
    }
}