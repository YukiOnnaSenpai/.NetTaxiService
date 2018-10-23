namespace Web.Models
{
    public class Lokacija
    {
        public int IdLokacija { get; set; }
        public decimal X {get; set;}
        public decimal Y { get; set; }
        public Adresa IdAdresa { get; set; }

    }
}