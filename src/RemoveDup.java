
public class RemoveDup {

	public static void main(String[] args) {
		
		String[] data = {"a","b","c","d","a","b","c","d"};
		int lengthOfArray = data.length;
		/*System.out.println("before deletion");;
		for(int l=0;l<lengthOfArray;l++){
			System.out.println(data[l]);
		}
		*/
		for(int i=0;i<lengthOfArray;i++){
			for(int j=i+1;j<lengthOfArray;j++){
				if(data[i]==data[j]){
					while(j<lengthOfArray-1){
						data[j]=data[j+1];
						j++;
					}
					lengthOfArray--;
				}
			}
			
		}
		
		System.out.println("After deletion:");
		for(int k=0;k<lengthOfArray;k++){
			System.out.println(data[k]);
		}
	}
}
















/*public class Task{
public static void main(String[] args) {
	String[] arr = { "a", "b", "b", "c", "c" ,"d","e","f","f"};
	int count=0;
	for (int i=0;i<arr.length-1;i++){
		if(arr[i]==arr[i+1]){
			count++;
		}
	}
	int size = arr.length;
	int resultCount = size-count;
	
	System.out.println("number of unique elements "+resultCount);
	}
}
*/

/*public class RemoveDup {
    public static void main(String args[])
     
    {
     
            int array[] = { 10, 20, 30, 20, 40, 40, 50, 60, 70, 80 };
            int size = array.length;
            System.out.println("Size before deletion: " + size);
 
            for (int i = 0; i < size; i++) 
            {
 
                for (int j = i + 1; j < size; j++) 
                {
 
 
                    if (array[i] == array[j]) // checking one element with all the
// element
                    {
                        while (j < (size) - 1) 
                        {
                            array[j] = array[j + 1];// shifting the values
                            j++;
                        }   
                        size--;
                    }
                }
            }
            System.out.println("Size After deletion: " + size);
 
            for (int k = 0; k < size; k++) 
            {
                System.out.println(array[k]); // printing the values
            }
    }
}*/