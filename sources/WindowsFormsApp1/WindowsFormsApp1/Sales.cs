using System;
namespace TryMySQL
{
    public class Sales
    {
        public string sales_no;
        public DateTime sales_time;
        public string sales_name;
        public string sales_customer_name;
        public float sales_price;
        public Inventory sales_inventory;

        public Sales()
        {
        }
    }

    public class Purchasing
    {
        public string purchasing_no;
        public DateTime purchasing_time;
        public string purchasing_name;
        public string purchasing_customer_name;
        public string purchasing_price;
        public Inventory purchasing_inventory;

        public Purchasing()
        {

        }

    }

    public enum ServiceStatus
    {
        CheckIn = 1,
        Processing = 2,
        Finished = 3,
        Checkout = 4,
        Cancelled = 5
    }

    public class Service
    {
        public string service_no;
        public DateTime service_checkin_time;
        public DateTime service_finish_time;
        public DateTime service_checkout_time;
        public string service_name;
        public string service_customer_name;
        public string service_customer_phone;
        public string service_price;
        public ServiceStatus service_status;

    }
}
