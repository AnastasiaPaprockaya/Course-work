using System;

namespace course
{
    [Serializable]
    public class Task
    {
        public int ID { get; set; }
        public string Type { get; set; }
        public string Tag { get; set; }
        public string Priority { get; set; }
        public string Description { get; set; }
        public string StringDate { get; set; }
        public bool Status { get; set; } 
        public DateTime Date { get; set; }
        public string FinishDate { get; set; }

        public Task()
        {
            Status = false;
        }

        public Task(string type, string tag, string priority, string description, DateTime date)
        {
            Type = type;
            Tag = tag;
            Priority = priority;
            Description = description;
            StringDate = date.ToLongDateString();
            Date = date.Date;
            Status = false;
        }

        public void ChangeStatus()
        {
            if (!Status)
            {
                Status = true;
            }
        }
    }
}
