!     
! File:   distance.f90
! Author: peter
!
! Created on May 6, 2020, 12:49 PM
!
module random_init
    use init
    implicit none 
    private
    public::init_start
    
    interface init_start
        procedure init_start
    end interface init_start

contains
    subroutine init_start(A, rank)
        real, Dimension(:,:), intent(in)::A
        integer, intent(in)::rank
        real, Dimension(size(A,1),rank)::array1
        real, Dimension(rank,size(A,1)):: array2
        
        array1 = init_matrix(size(A,1),rank)
        array2 = init_matrix(rank,size(A,1))   
    end subroutine init_start
    
end module random_init

