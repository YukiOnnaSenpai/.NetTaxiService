using System;

namespace Web.Models
{
    public class Komentar
    {
        public int IdKomentar { get; set; }
        public string Opis { get; set; }
        public DateTime DatumObjave { get; set; }
        public Korisnik Korisnik { get; set; }
        public int Ocena { get; set; }
    }
}