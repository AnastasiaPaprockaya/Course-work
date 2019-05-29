using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace course.Windows
{
    /// <summary>
    /// Логика взаимодействия для StartWindow.xaml
    /// </summary>
    public partial class StartWindow : Window
    {
        TaskManager taskManager = TaskManager.GetInstance();
        
        public StartWindow()
        {
            InitializeComponent();
            taskManager.LoadResources();
            DataContext = taskManager;
            taskManager.CheckTasks();
            CheckApproachingTasks();
            dgApproachingTasks.ItemsSource = taskManager.approachingTasks;
        }

        private void BtnOk_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindow = new MainWindow(this);
            mainWindow.Owner = this;
            this.Hide();
            mainWindow.Show();
        }
        private void CheckApproachingTasks()
        {
            if (taskManager.approachingTasks.Count.Equals(0))
            {
                MessageBox.Show("Список ближайших задач пуст!", "Ближайшие задачи", MessageBoxButton.OK, MessageBoxImage.None);
                if (MessageBox.Show("Список ближайших задач пуст!", "Ближайшие задачи", MessageBoxButton.OK, MessageBoxImage.None) == MessageBoxResult.OK)
                {
                    this.Show();
                    this.Hide();
                    MainWindow mainWindow = new MainWindow(this);
                    mainWindow.Owner = this;
                    mainWindow.Show();
                }
            }
        }
        private void Window_Closed(object sender, EventArgs e)
        {
            taskManager = TaskManager.GetInstance();
            taskManager.SaveResources();
        }
    }
}
