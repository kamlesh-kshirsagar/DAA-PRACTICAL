function pivotIndex=partion(arr,low,high,pivot)
i=low;
j=low;

for j=low:high
if arr(j) < pivot
swap(arr,i,j);
i=i+1;
elseif arr(j)==pivot
swap(arr,j,high);
j=j-1;
end
end
swap(arr,i,high);
pivotIndex=i;
endfunction

function quickSort(nuts,bolts,low,high)
if low < high
randomIndex=low+rand()*(high-low+1);
pivot=nuts(floor(randomIndex));
pivotIndex=partion(bolts,low,high,pivot);
partion(nuts,low,high,bolts(pivotIndex));
quickSort(nuts,bolts,low,pivotIndex -1);
quickSort(nuts,bolts,pivotIndex +1,high);
end
endfunction
funcprot(0)

function swap(arr,i,j)
    temp=arr(i)
    arr(i)=arr(j)
    arr(j)=temp
endfunction

nuts=[3,1,2,4];
bolts=[4,2,1,3];
quickSort(nuts,bolts,1,length(nuts));
disp("Matched nuts and bolts:");
disp(nuts);
disp(bolts);
