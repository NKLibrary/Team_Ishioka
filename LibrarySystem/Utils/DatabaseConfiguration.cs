using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace VirtualCollege.Utils
{
    public static class DatabaseConfiguration
    {
        private static string dbConnectionString;
        private static string dbProviderName;
        private static int productsPerPage;
        private static int productDescriptionLength;
        private static string siteName;

        static DatabaseConfiguration()
        {
            // ado.net database config
            //dbConnectionString = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=LibraryDB;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False";
            // entity framework database config
            //dbConnectionString = @"metadata=res://*/Models.EntityFramework.Model1.csdl|res://*/Models.EntityFramework.Model1.ssdl|res://*/Models.EntityFramework.Model1.msl;provider=System.Data.SqlClient;provider connection string=&quot;data source=localhost\SQLEXPRESS;initial catalog=LibraryDB;integrated security=True;MultipleActiveResultSets=True;App=EntityFramework&quot;";
            // database connection in web.config
            dbConnectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            dbProviderName = "System.Data.SqlClient";
            productsPerPage = 10;
            productDescriptionLength = 70;
            siteName = "Library System";
        }

        public static string DbConnectionString
        {
            get
            {
                return dbConnectionString;
            }
        }

        public static string DbProviderName
        {
            get
            {
                return dbProviderName;
            }
        }
        public static int ProductsPerPage
        {
            get
            {
                return productsPerPage;
            }
        }

        // Returns the length of product descriptions in products lists
        public static int ProductDescriptionLength
        {
            get
            {
                return productDescriptionLength;
            }
        }

        // Returns the length of product descriptions in products lists
        public static string SiteName
        {
            get
            {
                return siteName;
            }
        }
    }
}