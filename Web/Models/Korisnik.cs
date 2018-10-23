namespace Web.Models
{
    public class Korisnik
    {
        public int IdKorisnik { get; set; }
        public string KorisnickoIme { get; set; }
        public string Lozinka { get; set; }
        public string Ime { get; set; }
        public string Prezime { get; set; }
        public int Pol { get; set; }
        public decimal Jmbg { get; set; }
        public string KontaktTelefon { get; set; }
        public string Email { get; set; }
        public string Uloga { get; set; }
    }
}