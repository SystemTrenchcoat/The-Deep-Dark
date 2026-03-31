//get all enemies from flock id
for (var i = 0; i < instance_number(flockType); ++i)
{
	var instance = instance_find(flockType, i);
   if(instance.flock == flock)
   {
	   ds_list_add(flockMembers, instance);
	   instance.flock = self;
   }
}