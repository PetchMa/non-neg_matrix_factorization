!     
! File:   matrix_mult.f90
! Author: peter
!
! Created on May 6, 2020, 10:51 AM
!

!     
! File:   init.f90
! Author: peter
!
! Created on May 6, 2020, 8:55 AM
!
module matrix_mult
    
    implicit none 
    private
    public::multiply
    
    interface multiply
        procedure multiply
    end interface multiply

contains
    function multiply(array,array2) result(array)
        real, Dimension(:,:), intent(in)::array, array2
        
        
    end function multiply
    
end module matrix_mult

