cmd_Release/obj.target/greenworks-osx/src/api/steam_api_cloud.o := c++ -o Release/obj.target/greenworks-osx/src/api/steam_api_cloud.o ../src/api/steam_api_cloud.cc '-DNODE_GYP_MODULE_NAME=greenworks-osx' '-DUSING_UV_SHARED=1' '-DUSING_V8_SHARED=1' '-DV8_DEPRECATION_WARNINGS=1' '-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS' '-D_GLIBCXX_USE_CXX11_ABI=1' '-D_DARWIN_USE_64_BIT_INODE=1' '-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=64' '-DOPENSSL_NO_PINSHARED' '-DOPENSSL_THREADS' '-DUSE_FILE32API' '-DBUILDING_NODE_EXTENSION' -I/Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node -I/Users/zackstein/Library/Caches/node-gyp/16.14.2/src -I/Users/zackstein/Library/Caches/node-gyp/16.14.2/deps/openssl/config -I/Users/zackstein/Library/Caches/node-gyp/16.14.2/deps/openssl/openssl/include -I/Users/zackstein/Library/Caches/node-gyp/16.14.2/deps/uv/include -I/Users/zackstein/Library/Caches/node-gyp/16.14.2/deps/zlib -I/Users/zackstein/Library/Caches/node-gyp/16.14.2/deps/v8/include -I../deps -I../src -I/Users/zackstein/Downloads/steamworks_sdk/public -I/Users/zackstein/Documents/GitHub/Backup/greenworks/deps/discord_game_sdk -I../node_modules/nan -I../deps/zlib  -O3 -gdwarf-2 -mmacosx-version-min=10.13 -arch x86_64 -Wall -Wendif-labels -W -Wno-unused-parameter -Wno-deprecated-declarations -std=gnu++14 -stdlib=libc++ -fno-rtti -fno-exceptions -std=c++14 -stdlib=libc++ -MMD -MF ./Release/.deps/Release/obj.target/greenworks-osx/src/api/steam_api_cloud.o.d.raw   -c
Release/obj.target/greenworks-osx/src/api/steam_api_cloud.o: \
  ../src/api/steam_api_cloud.cc ../node_modules/nan/nan.h \
  /Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node/node_version.h \
  /Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node/uv.h \
  /Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node/uv/errno.h \
  /Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node/uv/version.h \
  /Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node/uv/unix.h \
  /Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node/uv/threadpool.h \
  /Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node/uv/darwin.h \
  /Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node/node.h \
  /Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node/v8.h \
  /Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node/cppgc/common.h \
  /Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node/v8config.h \
  /Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node/v8-internal.h \
  /Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node/v8-version.h \
  /Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node/v8-platform.h \
  /Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node/node_buffer.h \
  /Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node/node_object_wrap.h \
  ../node_modules/nan/nan_callbacks.h \
  ../node_modules/nan/nan_callbacks_12_inl.h \
  ../node_modules/nan/nan_maybe_43_inl.h \
  ../node_modules/nan/nan_converters.h \
  ../node_modules/nan/nan_converters_43_inl.h \
  ../node_modules/nan/nan_new.h \
  ../node_modules/nan/nan_implementation_12_inl.h \
  ../node_modules/nan/nan_persistent_12_inl.h \
  ../node_modules/nan/nan_weak.h ../node_modules/nan/nan_object_wrap.h \
  ../node_modules/nan/nan_private.h \
  ../node_modules/nan/nan_typedarray_contents.h \
  ../node_modules/nan/nan_json.h ../src/greenworks_async_workers.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/steam_api.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/steam_api_common.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/steamtypes.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/steamclientpublic.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/steamuniverse.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/steam_api_internal.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamclient.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamuser.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamfriends.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamutils.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/isteammatchmaking.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/matchmakingtypes.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamuserstats.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamremotestorage.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamapps.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamnetworking.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamscreenshots.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/isteammusic.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/isteammusicremote.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamhttp.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/steamhttpenums.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamcontroller.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/isteaminput.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamugc.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamapplist.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamhtmlsurface.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/isteaminventory.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamvideo.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamparentalsettings.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamremoteplay.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamnetworkingsockets.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/steamnetworkingtypes.h \
  /Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamnetworkingutils.h \
  ../src/steam_async_worker.h ../src/greenworks_utils.h \
  ../src/greenworks_workshop_workers.h ../src/api/steam_api_registry.h
../src/api/steam_api_cloud.cc:
../node_modules/nan/nan.h:
/Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node/node_version.h:
/Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node/uv.h:
/Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node/uv/errno.h:
/Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node/uv/version.h:
/Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node/uv/unix.h:
/Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node/uv/threadpool.h:
/Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node/uv/darwin.h:
/Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node/node.h:
/Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node/v8.h:
/Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node/cppgc/common.h:
/Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node/v8config.h:
/Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node/v8-internal.h:
/Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node/v8-version.h:
/Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node/v8-platform.h:
/Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node/node_buffer.h:
/Users/zackstein/Library/Caches/node-gyp/16.14.2/include/node/node_object_wrap.h:
../node_modules/nan/nan_callbacks.h:
../node_modules/nan/nan_callbacks_12_inl.h:
../node_modules/nan/nan_maybe_43_inl.h:
../node_modules/nan/nan_converters.h:
../node_modules/nan/nan_converters_43_inl.h:
../node_modules/nan/nan_new.h:
../node_modules/nan/nan_implementation_12_inl.h:
../node_modules/nan/nan_persistent_12_inl.h:
../node_modules/nan/nan_weak.h:
../node_modules/nan/nan_object_wrap.h:
../node_modules/nan/nan_private.h:
../node_modules/nan/nan_typedarray_contents.h:
../node_modules/nan/nan_json.h:
../src/greenworks_async_workers.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/steam_api.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/steam_api_common.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/steamtypes.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/steamclientpublic.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/steamuniverse.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/steam_api_internal.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamclient.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamuser.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamfriends.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamutils.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/isteammatchmaking.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/matchmakingtypes.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamuserstats.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamremotestorage.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamapps.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamnetworking.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamscreenshots.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/isteammusic.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/isteammusicremote.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamhttp.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/steamhttpenums.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamcontroller.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/isteaminput.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamugc.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamapplist.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamhtmlsurface.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/isteaminventory.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamvideo.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamparentalsettings.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamremoteplay.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamnetworkingsockets.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/steamnetworkingtypes.h:
/Users/zackstein/Downloads/steamworks_sdk/public/steam/isteamnetworkingutils.h:
../src/steam_async_worker.h:
../src/greenworks_utils.h:
../src/greenworks_workshop_workers.h:
../src/api/steam_api_registry.h:
