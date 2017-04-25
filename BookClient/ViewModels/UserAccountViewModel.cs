using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using BookClient.Enum;
using Foolproof;

namespace BookClient.ViewModels
{
    public class UserAccountViewModel
    {
        [Required(ErrorMessage = "User name is required.")]
        [Display(Name = "User Name")]
        public string UserName { get; set; }

        [Required(ErrorMessage = "Password is required.")]
        [DataType(DataType.Password)]
        public string Password { get; set; }

        [Compare(nameof(Password), ErrorMessage = "Please confirm your password.")]
        [DataType(DataType.Password)]
        [Display(Name = "Confirm Password")]
        public string ConfirmPassword { get; set; }

        public DateTime CreateTime { get; set; }

        public short UserGroupId { get; set; }

        [Required(ErrorMessage = "First name is required.")]
        [Display(Name = "First Name")]
        public string FirstName { get; set; }

        [Required(ErrorMessage = "Last name is required.")]
        [Display(Name = "Last Name")]
        public string LastName { get; set; }

        [Required(ErrorMessage = "Ssn is required.")]
        [Display(Name = "SSN")]
        public string Ssn { get; set; }

        [Display(Name = "Women")]
        public bool IsFemale { get; set; }

        [Required(ErrorMessage = "Home address is required.")]
        [Display(Name = "Home Address")]
        public string HomeAddress { get; set; }

        [Required(ErrorMessage = "Postcode is required.")]
        [RegularExpression(@"\d{4}", ErrorMessage = "Postcode has to be 4 digit number")]
        [Range(1000, 9999)]
        [Display(Name = "Postcode")]
        public int? PostCode { get; set; }

        [Required(ErrorMessage = "City is required.")]
        [Display(Name = "City")]
        public string City { get; set; }

        [Display(Name = "Campus Address")]
        public string CampusAddress { get; set; }

        [Display(Name = "Campus Postcode")]
        [RequiredIfNotEmpty(nameof(CampusAddress))]
        [Range(1000, 9999)]
        [RegularExpression(@"\d{4}", ErrorMessage = "Postcode has to be 4 digit number")]
        public int? CampusPostCode { get; set; }

        [Display(Name = "Campus City")]
        [RequiredIfNotEmpty(nameof(CampusAddress))]
        public string CampusCity { get; set; }

        [Display(Name = "Mail Choice")]
        public List<MailChoiceEnum> MailChoices { get; set; }

        public MailChoiceEnum SelectedMailChoice { get; set; } = MailChoiceEnum.HomeAddress;

        [RequiredIfNotEmpty(nameof(Email))]
        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }
    }
}