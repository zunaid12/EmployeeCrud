using System.ComponentModel.DataAnnotations;

namespace EmployeeCrud.Models
{
    public class Employee
    {
        [Key]
        public int Id { get; set; }
        [Required(ErrorMessage ="Employee Name Is required")]
        [Display(Name = "Employee Name")]
        public string Name { get; set; }

        [Required(ErrorMessage = "Designation Name Is required")]
        public string Designation { get; set; }


        [Required(ErrorMessage = "Address Name Is required")]
        [DataType(DataType.MultilineText)]
        public string Address { get; set; }

        [Required(ErrorMessage = "Date Is required")]
        public DateTime? RecordCreatedOn { get; set; }
    }
}
