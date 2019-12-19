 function shuffled = shuffle(V)
 % Shuffle numbers in a vector.
 % AGReetz 2019
     shuffled = V(randperm(length(V)));
 end