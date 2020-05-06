!     
! File:   print_mat.f90
! Author: peter
!
! Created on May 6, 2020, 8:55 AM
!

!     
! File:   init.f90
! Author: peter
!
! Created on May 6, 2020, 8:55 AM
!
module print_mat
    implicit none 
    private
    public::print_matrix
    
    interface print_matrix
        procedure print_matrix
    end interface print_matrix

    contains
    function print_matrix(array)
        real, intent(in)::array
        integer:: height, width, n,m
        height = size(array,1)
        width =  size(array,2)
        print *, "This was the init array"
        
        do n = 1,height
            print *, "[",(array(n,m), m =1,width),"]"
        end do
        
    end function print_matrix
    
end module print_mat

