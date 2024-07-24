int Score_setter({int age=0 , int score=0, double salary=0, String jobtype="", int experience=0})
{
  if(age>=21 && score>=750 && jobtype=="salarird" && salary>=15000 && experience>=1)
  {
    return 6;
  }
  if(age>=21 && score>=850 && jobtype=="salarird" && salary>=30000 && experience>=5)
  {
    return 8;
  }
  if(age>=21 && score>=750 && jobtype=="self salarird" && salary>=15000 && experience>=1)
  {
    return 5;
  }
  if(age>=21 && score>=850 && jobtype=="self salarird" && salary>=30000 && experience>=5)
  {
    return 7;
  }
  return 0;

}