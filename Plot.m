l = 0.23;

quat = quaternion(out.simQ);

pos1 = out.simP + rotatepoint(quat,[l/sqrt(2), l/sqrt(2), 0]);
pos2 = out.simP + rotatepoint(quat,[-l/sqrt(2), l/sqrt(2), 0]);
pos3 = out.simP + rotatepoint(quat,[-l/sqrt(2), -l/sqrt(2), 0]);
pos4 = out.simP + rotatepoint(quat,[l/sqrt(2), -l/sqrt(2), 0]);

plot3(out.simP(:,1), out.simP(:,2), out.simP(:,3), ...
    pos1(:,1), pos1(:,2), pos1(:,3), ...
    pos2(:,1), pos2(:,2), pos2(:,3), ...
    pos3(:,1), pos3(:,2), pos3(:,3), ...
    pos4(:,1), pos4(:,2), pos4(:,3))
xlabel("North-x (m)");
ylabel("East-y (m)");
zlabel("Down-z (m)");
set(gca,'zdir','reverse');
set(gca,'ydir','reverse');