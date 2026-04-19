program chute 

    use, intrinsic  :: iso_fortran_env, only : wp =>real64
    implicit none
    
    character(len=30) :: nomFichier = "chutelibre.dat"
    
    !parametre de la simulation 
    real(wp), parameter :: m = 1.0_wp  !masse du syteme en kg  
    real(wp) :: z0 = 5.0_wp !hauteur initiale en m 
    real(wp) :: v0 = 10.0_wp !vitesse initiale en m.s-1
    real(wp), parameter :: g = 9.81_wp !acceleration de pesanteur en m.s-2 
    real(wp), parameter :: tMax = 2.5_wp , t0 = 0.0_wp !borne de l'intervalle
    real(wp), parameter :: dt  = 0.1_wp  !pas de temps dt 
    integer, parameter :: Nmax = int((tMax-t0)/dt) 
    
    !declaration des variables 
    real(wp) ::zn, vn, tn, zn_1, vn_1  !altitude et vitesse a un instant t 
    integer  :: n , io 
    
    !ouverture du fichier de données 
    open(newunit=io, file=trim(nomFichier))
    !ecriture de la premiere ligne du fichier -> conditions initiales 
    write(io,*) t0,'   ',z0,'   ', v0 
    
    !mise en oeuvre de l'algorithme d'euler implicite 
    vn_1 = v0 
    zn_1 = z0 
    
    do n=1, Nmax 
       ! calcul de l'instant tn 
       tn = t0 + n*dt 
       ! implementation des equations d'évolution de l'algo d'euler
       vn =  vn_1-g*dt
       zn =  zn_1 +vn_1*dt 
       !enregistrement des données 
       write(io,*) tn, '   ', zn, '   ', vn 
       !substitutions pour preparer le pas d'apres
       zn_1=zn 
       vn_1=vn 
       
        
    end do
    
    
    
    
    
    !fermeture du fichier de données
    close(io) 
    
    
    ! déclaration des tableaux nécessaires 
    
    
    


end program chute 
