using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Elasctic.Db.Model;

namespace Elastic.Indexer
{
    class Program
    {
        static void Main(string[] args)
        {
            var context = new ElasticDBEntities();


            var artists = context.Artists.ToList();

        }
    }
}
