using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Web;

namespace VirtualCollege.Utils
{
    public static class GenericDataAccess
    {
        static GenericDataAccess()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public static DataTable ExecuteSelectCommand(DbCommand command)
        {
            DataTable table;
            try
            {
                // open connection
                command.Connection.Open();
                // execute query and store results
                DbDataReader reader = command.ExecuteReader();
                table = new DataTable();
                table.Load(reader);
                // close connection
                reader.Close();
            }
            catch (Exception e) { throw; }
            finally
            {
                command.Connection.Close();
            }
            return table;
        }

        public static DbCommand CreateCommand(string sql)
        {
            string dataProviderName = DatabaseConfiguration.DbProviderName;
            string connectionString = DatabaseConfiguration.DbConnectionString;
            DbProviderFactory factory = DbProviderFactories.GetFactory(dataProviderName);
            DbConnection conn = factory.CreateConnection();
            conn.ConnectionString = connectionString;
            DbCommand comm = conn.CreateCommand();
            comm.CommandText = sql;
            return comm;
        }

        // execute add/update/delete
        public static int ExecuteNonQuery(DbCommand command)
        {
            int affectedRows = -1;
            try
            {
                command.Connection.Open();
                affectedRows = command.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                throw;
            }
            finally
            {
                command.Connection.Close();
            }
            return affectedRows;
        }

        public static string ExecuteScalar(DbCommand command)
        {
            string value = "";
            try
            {
                command.Connection.Open();
                value = command.ExecuteScalar().ToString();
            }
            catch (Exception e)
            {
                throw;
            }
            finally
            {
                command.Connection.Close();
            }
            return value;
        }
    }
}