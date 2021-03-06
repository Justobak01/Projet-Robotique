clear ; close all ; clc ; %initialisation

%Définition des variables articulaires (Longueurs et angles)

OA = 352 ; AB = 360 ; BC = 360 ; CP = 85 ;

l1 = AB ; l2 = BC ; l3 = CP ;

theta1 = linspace(180,-20,100) ;
theta2 = linspace(150,-150,100) ;
theta3 = linspace(115,-115,100);

[THETA1 , THETA2 , THETA3] = meshgrid (theta1,theta2,theta3);%matrice comportant les angle

%Calcul des coordonnées des centres des axes.

Bx = l1*cosd(THETA1);
By = OA + l1*sind(THETA1);
    
Cx = Bx + l2*cosd(THETA1 + THETA2);
Cy = By + l2*sind(THETA1 + THETA2);

X = Cx + l3*cosd(THETA1 + THETA2 + THETA3);
Y = Cy + l3*sind(THETA1 + THETA2 + THETA3);


plot(X(:),Y(:),'r.')
axis equal;
xlabel('X','fontsize',10)
ylabel('Y','fontsize',10,'Rotation',0)%nom de axe verticale
