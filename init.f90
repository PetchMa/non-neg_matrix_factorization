!     
! File:   init.f90
! Author: peter
!
! Created on May 6, 2020, 8:55 AM
!
module init
    implicit none 
    private
    public::init_matrix
    
    interface init_matrix
        procedure init_matrix
    end interface init_matrix

    contains
    function init_matrix(height,width) result(array)
        integer, intent(in)::height,width
        real, Dimension(:,:), Allocatable :: array
        integer :: n,m
        Allocate(array(height,width))
        do n = 1,height
            do m = 1,width
                array(n,m)= rand()
            end do
        end do
        print *, "This was the init array"
        do n = 1,height
            print *, "[",(array(n,m), m =1,width),"]"
        end do
        
    end function init_matrix
    
end module init
