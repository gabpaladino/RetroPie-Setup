rp_module_id="sdl2o"
rp_module_desc="SDL (Simple DirectMedia Layer) v2.0.1"
rp_module_menus="2"
rp_module_flags=""

function depends_sdl2o() {
    # Depedencies from the debian package control + additional dependencies for the pi (some are excluded like dpkg-dev as they are
    # already covered by the build-essential package retropie relies on.
    getDepends debhelper dh-autoreconf libasound2-dev libudev-dev libdbus-1-dev libx11-dev libxcursor-dev libxext-dev libxi-dev libxinerama-dev libxrandr-dev libxss-dev libxt-dev libxxf86vm-dev
}

function sources_sdl2o() {
    wget -O- -q http://libsdl.org/release/SDL2-2.0.1.tar.gz | tar -xvz --strip-components=1
}

function build_sdl2o() {
    #./configure --disable-video-opengl
    ./configure
    make clean
    make
}


function install_sdl2o() {
    make install	
}

