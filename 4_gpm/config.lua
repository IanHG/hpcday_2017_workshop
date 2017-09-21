-- GPM config file
config = {
   nprocesses = 3,

   -- Install directory
   install_directory = lfs.currentdir(),

   -- Modulefiles setup
   groups = {"core", "apps", "tools"},
   heirarchical = {"core"},
}
