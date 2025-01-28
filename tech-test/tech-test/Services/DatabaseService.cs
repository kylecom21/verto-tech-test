using Microsoft.Data.Sqlite; 
using System.Collections.Generic; 

namespace tech_test.Services
{
    public class DatabaseService
    {
        private readonly string _connectionString;

        public DatabaseService(string connectionString)
        {
            _connectionString = connectionString;
        }

        public List<(string Section, string Key, string Value)> GetTextContent()
        {
            var textContentList = new List<(string Section, string Key, string Value)>();

            using (var connection = new SqliteConnection(_connectionString))
            {
                connection.Open();
                var command = connection.CreateCommand();
                command.CommandText = "SELECT Section, Key, Value FROM TextContent";

                using (var reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        textContentList.Add((reader.GetString(0), reader.GetString(1), reader.GetString(2)));
                    }
                }
            }

            return textContentList;
        }

        public List<(string Section, string Key, string ImagePath, string AltText)> GetImageContent()
        {
            var imageContentList = new List<(string Section, string Key, string ImagePath, string AltText)>();

            using (var connection = new SqliteConnection(_connectionString))
            {
                connection.Open();
                var command = connection.CreateCommand();
                command.CommandText = "SELECT Section, Key, ImagePath, AltText FROM ImageContent";

                using (var reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        imageContentList.Add((reader.GetString(0), reader.GetString(1), reader.GetString(2), reader.GetString(3)));
                    }
                }
            }

            return imageContentList;
        }
    }
}
