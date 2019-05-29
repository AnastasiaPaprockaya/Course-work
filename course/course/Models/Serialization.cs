using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Serialization;

namespace course
{
    public class Serialization <T>
    {
        public static void Serialize(T tempVar, string filename)
        {
            XmlSerializer serializer = new XmlSerializer(typeof(T));
            using (FileStream fs = new FileStream(filename, FileMode.Create))
            {
                serializer.Serialize(fs, tempVar);
            }
        }

        public static T Deserialize(string filename)
        {
            T tempVar;
            using (FileStream fs = new FileStream(filename, FileMode.Open))
            {
                XmlSerializer deserializer = new XmlSerializer(typeof(T));
                tempVar = (T)deserializer.Deserialize(fs);

                return tempVar;
            }
        }
    }
}
