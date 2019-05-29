using System.Windows;
using System.Windows.Controls;

namespace course
{
    /// <summary>
    /// Логика взаимодействия для EditWindow.xaml
    /// </summary>
    public partial class EditWindow : Window
    {
        MainWindow f1;
        public static EditWindow isExist = null;
        Task tempTask;

        public EditWindow(MainWindow mainWindow, Task task)
        {
            InitializeComponent();
            f1 = mainWindow;
            tempTask = task;
            DataContext = task;
            cbTags.ItemsSource = f1.taskManager.tags;
            cbType.ItemsSource = f1.taskManager.types;

            dpChooseDate.BlackoutDates.AddDatesInPast();
            dpChooseDate.SelectedDate = tempTask.Date.Date;

            cbPriority.SelectedItem = tempTask.Priority;
            cbTags.SelectedItem = tempTask.Tag;
            cbType.SelectedItem = tempTask.Type;
            tbDescription.Text = tempTask.Description;
        }

        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            if (tbDescription.Text.Equals(null) || tbDescription.Text.Replace(" ", "") == "")
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
                foreach (Task task in f1.taskManager.tasks)
                {
                    if (task == tempTask)
                    {
                        task.Date = dpChooseDate.SelectedDate.Value;
                        task.Priority = cbPriority.Text;
                        task.Tag = cbTags.Text;
                        task.Type = cbType.Text;
                        task.Description = tbDescription.Text;

                        f1.taskManager.IsTagExist(cbTags.Text);
                        f1.taskManager.IsTypeExist(cbType.Text);

                        break;
                    }
                }
                f1.dgTasks.ItemsSource = null;
                f1.dgTasks.ItemsSource = f1.taskManager.tasks;
                EditWindow.isExist = null;
                this.Close();
                this.Owner.Activate();
            } 
        }

        private void cbTags_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}
