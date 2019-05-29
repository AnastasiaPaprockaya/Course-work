using System;
using System.Xml.Serialization;
using System.Collections.ObjectModel;
using System.Windows.Controls;

namespace course
{
    [Serializable] 
    [XmlInclude(typeof(Task))]
    public class TaskManager
    {
        private static TaskManager instance;
        public static TaskManager GetInstance()
        {
            if (instance == null)
            {
                instance = new TaskManager();
            }
            return instance;
        }

        public TaskManager(){ }

        public ObservableCollection<Task> tasks = new ObservableCollection<Task>();
        public ObservableCollection<Task> completedTasks = new ObservableCollection<Task>();
        public ObservableCollection<Task> approachingTasks = new ObservableCollection<Task>();
        public ObservableCollection<Task> tempTasks = new ObservableCollection<Task>();
        public ObservableCollection<Task> overdueTasks = new ObservableCollection<Task>();
        public ObservableCollection<string> tags = new ObservableCollection<string>();
        public ObservableCollection<string> types = new ObservableCollection<string>();
        
        public void AddTask(Task newTask)
        {
            newTask.ID = tasks.Count + 1;
            tasks.Add(newTask);
        }
        public void CompleteTask(Task task, bool status)
        {
            if (status)
            {
                task.FinishDate = DateTime.Today.Date.ToLongDateString();
                task.ChangeStatus();
                completedTasks.Add(task);
                tasks.Remove(task);
                approachingTasks.Remove(task);
            }
            else
            {
                task.FinishDate = DateTime.Today.Date.ToLongDateString();
                completedTasks.Add(task);
                tasks.Remove(task);
                approachingTasks.Remove(task);
            }
                      
        }
        public void FindTasks(SelectedDatesCollection dates)
        {
            if (tempTasks!=null || tempTasks.Count!=0)
            {
                tempTasks.Clear();
            }
            foreach (DateTime date in dates)
            {
                foreach (Task task in tasks)
                {
                    if (task.Date == date)
                    {
                        tempTasks.Add(task);
                    }
                }
            }
           
        }
        public bool IsTagExist(string tag)
        {
            if (tags.Contains(tag))
                return true;
            else
            {
                tags.Add(tag);
                return false;
            }
        }
        public bool IsTypeExist(string type)
        {
            if (types.Contains(type))
                return true;
            else
            {
                types.Add(type);
                return false;
            }
               
        }

        public void CheckTasks()
        {
            if (tasks.Count.Equals(0))
            {
                approachingTasks.Clear();
            }
            for (int i = 0; i < tasks.Count; i++)
            {
                if (tasks[i].Date.Date <= DateTime.Today.Date.AddDays(4) && tasks[i].Date.Date >= DateTime.Today.Date)
                {
                    if (!approachingTasks.Contains(tasks[i]))
                    {
                        approachingTasks.Add(tasks[i]);
                        continue;
                    }
                    
                }

                if (tasks[i].Date.Date < DateTime.Today && !overdueTasks.Contains(tasks[i]))
                {                 
                        overdueTasks.Add(tasks[i]);
                        tasks.Remove(tasks[i]);
                        --i;
                }
            }
        }
        public void LoadResources()
        {
            tasks = Serialization<ObservableCollection<Task>>.Deserialize("tasks.xml");
            completedTasks = Serialization<ObservableCollection<Task>>.Deserialize("completedTasks.xml");
            overdueTasks = Serialization<ObservableCollection<Task>>.Deserialize("overdueTasks.xml");
            tags = Serialization<ObservableCollection<string>>.Deserialize("tags.xml");
            types = Serialization<ObservableCollection<string>>.Deserialize("types.xml");
        }
        public void SaveResources()
        {
            Serialization<ObservableCollection<Task>>.Serialize(tasks, "tasks.xml");
            Serialization<ObservableCollection<Task>>.Serialize(completedTasks, "completedTasks.xml");
            Serialization<ObservableCollection<Task>>.Serialize(overdueTasks, "overdueTasks.xml");
            Serialization<ObservableCollection<string>>.Serialize(tags,"tags.xml");
            Serialization<ObservableCollection<string>>.Serialize(types, "types.xml");
        }
    }
}
