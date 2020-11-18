using System;

namespace TokoEmasAppNET
{
    public class Carat
    {
        public int id;
        public string value;

        public Carat(int _id, string _val)
        {
            id = _id;
            value = _val;
        }
    }

    public class Category
    {
        public string category_id;
        public string category_name;

        public Category(string id, string name)
        {
            category_id = id;
            category_name = name;
        }
    }

    public class Subcategory
    {
        public Category parent;
        public string subcategory_id;
        public string subcategory_name;

        public Subcategory(Category category, string id, string name)
        {
            parent = category;
            subcategory_id = id;
            subcategory_name = name;
        }
    }

    public class Price
    {
        public int price_id;
        public DateTime price_time;
        public int carats_id;
        public int sell_price;
        public int buyback_price;
    }

    public class Inventory
    {
        public string inventory_id;
        public string inventory_name;
        public Subcategory inventory_sub;
        public int inventory_carats;
        public float inventory_weight;
        public int inventory_status;
        public Supplier inventory_supplier;
        public DateTime inventory_create_time;
        public DateTime inventory_update_time;

        public Inventory()
        {
        }

        public string GetStatus()
        {
            switch(inventory_status)
            {
                case 1: return "INSIDE";
                case 2: return "OUTSIDE";
                case 3: return "SOLD";
                default: return "UNKNOWN";
            }
        }

        public string GetCreateTimestamp()
        {
            return inventory_create_time.ToString("yyyy-MM-dd HH:mm:ss");
        }

        public string GetUpdateTimestamp()
        {
            return inventory_update_time.ToString("yyyy-MM-dd HH:mm:ss");
        }
    }

    public class StockItem
    {
        public int id;
        public string timestamp;
        public string user;
        public int status;
        public int in_out;
        public string GetStatus()
        {
            switch(status)
            {
                case 0:
                    return "ON GOING";
                case 1:
                    return "FINISHED";
                case -1:
                    return "CANCELLED";
                default:
                    return string.Empty;
            }
        }
    }

    public class StockItemDetail
    {
        public int stockItemID;
        public string itemID;
        public int checkStatus;

        public string GetCheckStatus()
        {
            switch(checkStatus)
            {
                case 0:
                    return "UNCHECKED";
                case 1:
                    return "CHECKED";
                default:
                    return string.Empty;
            }
        }
    }
}
