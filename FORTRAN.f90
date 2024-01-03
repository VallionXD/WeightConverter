program Weight_Converter
    implicit none
    real(8) :: Kg_Base = 0.453592d0
    real(8) :: Lbs_Base = 2.20462d0
    integer :: Conversion
    real(8) :: Weight, Converted_Weight

    print *, "What type of conversion do you need?"
    print *, "1. KG to LBS"
    print *, "2. LBS to KG"
    print *, "Select an option using numbers (1 or 2): "
    read *, Conversion
    print *

    select case (Conversion)
        case (1)
            print *, "Enter the amount of KG to convert: "
            read *, Weight
            Converted_Weight = dble(int(Weight * Lbs_Base * 10.0d0) / 10.0d0)
            print *, Weight, " KG = ", Converted_Weight, " LBS"
        case (2)
            print *, "Enter the amount of LBS to convert: "
            read *, Weight
            Converted_Weight = dble(int(Weight * Kg_Base * 10.0d0) / 10.0d0)
            print *, Weight, " LBS = ", Converted_Weight, " KG"
        case default
            print *, "Invalid option"
    end select

end program Weight_Converter
