inputs  =[Energy;Entropy;Contrast;Correation;Filled; Box];
mat=vec2mat((inputs)',6);
TreeModel =  fitcdiscr(mat,Val);
classOrder = TreeModel.ClassNames;
inputs1  =[Energy1;Entropy1;Contrast1;Correation1;Filled1; Box1];
mat1=vec2mat((inputs1)',6);
label = predict(TreeModel,mat1);
data=[(label),Val1];
hist(data);
legend('predicted','actual');
title('Linear Classifier');
saveas(gcf,'LinearClassifier.png');
classerrors =sum(abs(Val1-label));
display('Percentage=');
display((classerrors/length(Val1))*100);