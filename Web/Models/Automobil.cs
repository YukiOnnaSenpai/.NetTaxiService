namespace Web.Models
{
    public class Automobil
    {
        public int IdAutomobil { get; set; }
        public Vozac IdVozac { get; set; }
        public int Godiste { get; set; }
        public string Registracija { get; set; }
        public int BrVozila { get; set; }
        public int TipAutomobila { get; set; }
    }
}