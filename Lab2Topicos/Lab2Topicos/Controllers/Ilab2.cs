using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace Lab2Topicos.Controllers
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "Ilab2" in both code and config file together.
    [ServiceContract]
    public interface Ilab2
    {
        [OperationContract]
        void DoWork();
    }
}
