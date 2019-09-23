using System;
namespace TryMySQL
{
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
        public int carats;
        public int price;
    }

    public class Inventory
    {
        public string inventory_id;
        public string inventory_name;
        public Subcategory inventory_sub;
        public int inventory_carats;
        public float inventory_weight;
        public int inventory_status;

        public Inventory()
        {
        }
    }


}
