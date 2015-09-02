namespace Elastic.Indexer
{
    using System;
    using System.Linq;
    using Elasctic.Db.Model;
    using Nest;

    class Program
    {
        static void Main(string[] args)
        {
            var context = new ElasticDBEntities();

            var artists = context.Artists.ToList();

            var node = "http://localhost:9200";

            var searchBoxUri = new Uri(node);
            var settings = new ConnectionSettings(searchBoxUri);
            //settings.SetDefaultIndex("sample");

            var client = new ElasticClient(settings);
            
            if (client.IndexExists("store").Exists)
            {
                client.DeleteIndex("store");
            }

            //client.CreateIndex("sample");

            foreach (var artist in artists)
            {
                //var index = client.Index(artist);
                var index = client.Index(artist, i => i.Index("store").Refresh());
            }

            // Index all documents
            //client.IndexMany<Artist>(artists);

        }
    }
}
