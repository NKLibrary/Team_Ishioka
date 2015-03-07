using System;
using System.Collections.Generic;
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
            dbConnectionString = "Data Source=MAUNIL-PC;Initial Catalog=LibraryDB;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False";
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