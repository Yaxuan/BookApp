using System.ComponentModel.DataAnnotations;

namespace BookClient.ViewModels
{
    public class UserLoginViewModel
    {
        [Required(ErrorMessage = "User name is required.")]
        [Display(Name = "User Name")]
        public string User_name { get; set; }

        [Required(ErrorMessage = "Password is required.")]
        [DataType(DataType.Password)]
        public string Password { get; set; }
    }
}