public class StringArrayTest{
public static List<String> generateStringArray(Integer i){
List<String> str = new List<String>();

for(Integer n=0; n<i; n++){
str.add('Test '+n);
}
return str;
}
}