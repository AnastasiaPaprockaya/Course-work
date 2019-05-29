using System;
using System.Collections.ObjectModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Media;


namespace course
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public TaskManager taskManager = TaskManager.GetInstance();
        public MainWindow(Window window)
        {
            InitializeComponent();
            DataContext = taskManager;
            taskManager.CheckTasks();
            InitializeDataGrids();
            DisableButtons();
            GetRate();
            Calendar.BlackoutDates.AddDatesInPast();
        }

        private void BtnAddTask_Click(object sender, RoutedEventArgs e)
        {
            if (AddTask.isExist != null)
            {
                return;
            }
            else
            {
                AddTask addTask = new AddTask(this);
                addTask.Owner = this;
                addTask.Show();
            }
        }
        private void BtnCompleteTask_Click(object sender, RoutedEventArgs e)
        {
            if (taskManager.tasks.Count != 0 && taskManager.tasks != null)
            {
                if (dgTasks.SelectedItem == null)
                {
                    MessageBox.Show("Выделите задачу!");
                }
                else
                {
                    if (MessageBox.Show("Задача выполнена?", "Прогресс", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
                    {
                        taskManager.CompleteTask((Task)dgTasks.SelectedItem, true);
                        GetRate();
                    }
                    else
                    {
                        taskManager.CompleteTask((Task)dgTasks.SelectedItem, false);
                        GetRate();
                    }
                }
                
            }
            else
                MessageBox.Show("Список задач пуст!");
        }
        private void BtnTrue_Click(object sender, RoutedEventArgs e)
        {
            Task task = dgOverdueTasks.SelectedValue as Task;
                taskManager.CompleteTask(task, true);
            taskManager.overdueTasks.Remove(dgOverdueTasks.SelectedItem as Task);
            GetRate();
            if (dgOverdueTasks.SelectedItem == null || dgOverdueTasks.Items.Count.Equals(0))
            {
                btnTrue.IsEnabled = false;
                btnFalse.IsEnabled = false;
            }
         
            btnClearHistory.IsEnabled = true;
        }
        private void BtnFalse_Click(object sender, RoutedEventArgs e)
        {
            Task task = dgOverdueTasks.SelectedValue as Task;
            taskManager.CompleteTask(task, false);
            taskManager.overdueTasks.Remove(dgOverdueTasks.SelectedItem as Task);
            GetRate();
            if (dgOverdueTasks.SelectedItem == null || dgOverdueTasks.Items.Count.Equals(0))
            {
                btnTrue.IsEnabled = false;
                btnFalse.IsEnabled = false;
            }
            btnClearHistory.IsEnabled = true;
        }
        private void BtnDisplayAllTasks_Click(object sender, RoutedEventArgs e)
        {
            dgTasks.ItemsSource = null;
            dgTasks.ItemsSource = taskManager.tasks;
            btnDisplayAllTasks.IsEnabled = false;
            
            Calendar.Focus();
        }
        private void Calendar_SelectedDatesChanged(object sender, SelectionChangedEventArgs e)
        {
            taskManager.FindTasks(Calendar.SelectedDates);
            dgTasks.ItemsSource = null;
            dgTasks.ItemsSource = taskManager.tempTasks;
            btnDisplayAllTasks.IsEnabled = true;
        }
        private void BtnClearHistory_Click(object sender, RoutedEventArgs e)
        {
            taskManager.completedTasks.Clear();
            GetRate();
            btnClearHistory.IsEnabled = false;
        }
        private void BtnEditTask_Click(object sender, RoutedEventArgs e)
        {
            if (taskManager.tasks.Count != 0 && taskManager.tasks != null)
            {
                if (dgTasks.SelectedItem == null)
                {
                    MessageBox.Show("Выделите задачу!");
                }
                else
                {
                    if (EditWindow.isExist != null)
                    {
                        return;
                    }
                    else
                    {
                        EditWindow addTask = new EditWindow(this, (Task)dgTasks.SelectedItem);
                        addTask.Owner = this;
                        addTask.Show();
                    }
                }
            }
            else
                MessageBox.Show("Список задач пуст!");
        }
        private void DgOverdueTasks_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (dgOverdueTasks.SelectedItem == null)
            {
                    btnTrue.IsEnabled = false;
                    btnFalse.IsEnabled = false;
            }
            else
            {
                btnTrue.IsEnabled = true;
                btnFalse.IsEnabled = true;
            }
        }

        private void Window_Closed(object sender, EventArgs e)
        {

            taskManager.CheckTasks();
            Owner.Close();
        }

        private void GetRate()
        {
            if (taskManager.completedTasks.Count.Equals(0) || taskManager.completedTasks == null)
            {
                pbRate.Value = 0.0;
            }
            else
            {
                pbRate.Value = 0.0;
                double rate = 0.0;

                double percentage = 100 / taskManager.completedTasks.Count;

                foreach (Task task in taskManager.completedTasks)
                {
                    if (task.Status)
                    {
                        rate++;
                    }
                }

                rate *= percentage;
                if (rate <= 50)
                {
                    pbRate.Foreground.SetValue(SolidColorBrush.ColorProperty, Colors.Red);
                }
                else if (rate <= 70)
                {
                    pbRate.Foreground.SetValue(SolidColorBrush.ColorProperty, Colors.Green);
                }
                else if (rate > 90)
                {
                    pbRate.Foreground.SetValue(SolidColorBrush.ColorProperty, Colors.Purple);
                }
                pbRate.Value = rate;
            }
        }
        private void DisableButtons()
        {
            btnDisplayAllTasks.IsEnabled = false;
            btnTrue.IsEnabled = false;
            btnFalse.IsEnabled = false;

            if (taskManager.completedTasks.Count.Equals(0))
                btnClearHistory.IsEnabled = false;
            else
                btnClearHistory.IsEnabled = true;

        }
        private void InitializeDataGrids()
        {
            dgTasks.ItemsSource = taskManager.tasks;
            dgCompletedTasks.ItemsSource = taskManager.completedTasks;
            dgOverdueTasks.ItemsSource = taskManager.overdueTasks;
        }
    }
}


