inputs  =[Energy;Entropy;Contrast;Correation;Filled; Box];
mat=vec2mat((inputs)',6);
BinTreeModel =  fitctree(mat,Val);
classOrder = BinTreeModel.ClassNames;
inputs1  =[Energy1;Entropy1;Contrast1;Correation1;Filled1; Box1];
mat1=vec2mat((inputs1)',6);
label = predict(BinTreeModel,mat1);
data=[(label),Val1];
hist(data);
legend('predicted','actual');
title('Support Vector Machine');
saveas(gcf,'BinaryTree.png');
treeerrors =sum(abs(Val1-label));
display('Percentage=');
display((treeerrors/length(Val1))*100);