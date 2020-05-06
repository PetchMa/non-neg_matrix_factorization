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
    
    
contains
    integer function print_matrix(array)
        implicit none
        real, Dimension(:,:)::array
        integer:: height, width, n,m
        height = size(array,1)
        width =  size(array,2)
        print *, "This is your Matrix"
        do n = 1,height
            print *, "[",(array(n,m), m =1,width),"]"
        end do
    end function print_matrix
    
    
    
end module print_mat

