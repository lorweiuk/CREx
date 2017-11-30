.onLoad <- function(path, libname) {
  
  print("loadBinaries")
  
  try( library.dynam( chname="libjpeg-9",    package=libname, lib.loc=path) )
  try( library.dynam( chname="libmodplug-1", package=libname, lib.loc=path) )
  try( library.dynam( chname="libogg-0",    package=libname, lib.loc=path) )
  try( library.dynam( chname="libvorbis-0", package=libname, lib.loc=path) )

  try( library.dynam( chname="libvorbisfile-3", package=libname, lib.loc=path) )
  try( library.dynam( chname="libwebp-4",       package=libname, lib.loc=path) )
  try( library.dynam( chname="SDL2",            package=libname, lib.loc=path) )
  try( library.dynam( chname="SDL2_image",      package=libname, lib.loc=path) )

  try( library.dynam( chname="SDL2_mixer", package=libname, lib.loc=path) )
  try( library.dynam( chname="SDL2_ttf",   package=libname, lib.loc=path) )
  try( library.dynam( chname="smpeg2",     package=libname, lib.loc=path) )
  try( library.dynam( chname="zlib1",      package=libname, lib.loc=path) )

  try( library.dynam( chname="libtiff-5",     package=libname, lib.loc=path) )
  try( library.dynam( chname="libpng16-16",   package=libname, lib.loc=path) )
  try( library.dynam( chname="libfreetype-6", package=libname, lib.loc=path) )
  try( library.dynam( chname="libFLAC-8",     package=libname, lib.loc=path) )
  try( library.dynam( chname="SDLDLL",        package=libname, lib.loc=path) )

}

.onUnload <- function(path, libname) {

    print("unloadBinaries")

    try( library.dynam.unload( chname="libjpeg-9",    libpath = paste0(path,"/",libname) ) )
    try( library.dynam.unload( chname="libmodplug-1", libpath = paste0(path,"/",libname) ) )
    try( library.dynam.unload( chname="libogg-0",    libpath = paste0(path,"/",libname) ) )
    try( library.dynam.unload( chname="libvorbis-0", libpath = paste0(path,"/",libname) ) )

    try( library.dynam.unload( chname="libvorbisfile-3", libpath = paste0(path,"/",libname) ) )
    try( library.dynam.unload( chname="libwebp-4",       libpath = paste0(path,"/",libname) ) )
    try( library.dynam.unload( chname="SDL2",            libpath = paste0(path,"/",libname) ) )
    try( library.dynam.unload( chname="SDL2_image",      libpath = paste0(path,"/",libname) ) )

    try( library.dynam.unload( chname="SDL2_mixer",  libpath = paste0(path,"/",libname) ) )
    try( library.dynam.unload( chname="SDL2_ttf",    libpath = paste0(path,"/",libname) ) )
    try( library.dynam.unload( chname="smpeg2",      libpath = paste0(path,"/",libname) ) )
    try( library.dynam.unload( chname="zlib1",       libpath = paste0(path,"/",libname) ) )

    try( library.dynam.unload( chname="libtiff-5",     libpath = paste0(path,"/",libname) ) )
    try( library.dynam.unload( chname="libpng16-16",   libpath = paste0(path,"/",libname) ) )
    try( library.dynam.unload( chname="libfreetype-6", libpath = paste0(path,"/",libname) ) )
    try( library.dynam.unload( chname="libFLAC-8",     libpath = paste0(path,"/",libname) ) )
    try( library.dynam.unload( chname="SDLDLL",        libpath = paste0(path,"/",libname) ) )

}