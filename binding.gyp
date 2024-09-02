{
  "variables": {
    "steamworks_sdk_dir": "sdk",  // Updated to reflect the new SDK location
    "discord_game_sdk_dir": "<!(node tools/discord_game_sdk_dir.js)"
  },

  "conditions": [
    ["OS=='win'", {
      "conditions": [
        ["target_arch=='ia32'", {
          "variables": {
            "target_dir": "lib/win32",
            "project_name": "greenworks-win32",
            "redist_bin_dir": "redistributable_bin/win32",  // Updated to reflect the SDK directory structure
            "public_lib_dir": "public/steam/lib/win32",  // Updated to reflect the SDK directory structure
            "discord_lib_dir": "x86",
            "lib_steam": "steam_api.lib",
            "lib_encryptedappticket": "sdkencryptedappticket.lib",
            "lib_discord": "discord_game_sdk.dll.lib",
            "lib_dll_steam": "steam_api.dll",
            "lib_dll_encryptedappticket": "sdkencryptedappticket.dll",
            "lib_dll_discord": "discord_game_sdk.dll"
          }
        }],
        ["target_arch=='x64'", {
          "variables": {
            "target_dir": "lib/win64",
            "project_name": "greenworks-win64",
            "redist_bin_dir": "redistributable_bin/win64",  // Updated to reflect the SDK directory structure
            "public_lib_dir": "public/steam/lib/win64",  // Updated to reflect the SDK directory structure
            "discord_lib_dir": "x86_64",
            "lib_steam": "steam_api64.lib",
            "lib_encryptedappticket": "sdkencryptedappticket64.lib",
            "lib_discord": "discord_game_sdk.dll.lib",
            "lib_dll_steam": "steam_api64.dll",
            "lib_dll_encryptedappticket": "sdkencryptedappticket64.dll",
            "lib_dll_discord": "discord_game_sdk.dll"
          }
        }]
      ]
    }],
    ["OS=='mac'", {
      "variables": {
        "target_dir": "lib/osx",
        "project_name": "greenworks-osx",
        "redist_bin_dir": "redistributable_bin/osx",  // Updated to reflect the SDK directory structure
        "public_lib_dir": "public/steam/lib/osx",  // Updated to reflect the SDK directory structure
        "discord_lib_dir": "x86_64",
        "lib_steam": "libsteam_api.dylib",
        "lib_encryptedappticket": "libsdkencryptedappticket.dylib",
        "lib_discord": "discord_game_sdk.dylib"
      }
    }],
    ["OS=='linux'", {
      "variables": {
        "discord_lib_dir": "x86_64",
        "lib_steam": "libsteam_api.so",
        "lib_encryptedappticket": "libsdkencryptedappticket.so",
        "lib_discord": "discord_game_sdk.so"
      },
      "conditions": [
        ["target_arch=='ia32'", {
          "variables": {
            "target_dir": "lib/linux32",
            "project_name": "greenworks-linux32",
            "redist_bin_dir": "redistributable_bin/linux32",  // Updated to reflect the SDK directory structure
            "public_lib_dir": "public/steam/lib/linux32"  // Updated to reflect the SDK directory structure
          }
        }],
        ["target_arch=='x64'", {
          "variables": {
            "target_dir": "lib/linux64",
            "project_name": "greenworks-linux64",
            "redist_bin_dir": "redistributable_bin/linux64",  // Updated to reflect the SDK directory structure
            "public_lib_dir": "public/steam/lib/linux64"  // Updated to reflect the SDK directory structure
          }
        }]
      ]
    }]
  ],

  "targets": [
    {
      "target_name": "<(project_name)",
      "sources": [
        "deps/discord_game_sdk/cpp/types.cpp",
        "deps/discord_game_sdk/cpp/core.cpp",
        "deps/discord_game_sdk/cpp/achievement_manager.cpp",
        "deps/discord_game_sdk/cpp/activity_manager.cpp",
        "deps/discord_game_sdk/cpp/application_manager.cpp",
        "deps/discord_game_sdk/cpp/image_manager.cpp",
        "deps/discord_game_sdk/cpp/lobby_manager.cpp",
        "deps/discord_game_sdk/cpp/network_manager.cpp",
        "deps/discord_game_sdk/cpp/overlay_manager.cpp",
        "deps/discord_game_sdk/cpp/relationship_manager.cpp",
        "deps/discord_game_sdk/cpp/storage_manager.cpp",
        "deps/discord_game_sdk/cpp/store_manager.cpp",
        "deps/discord_game_sdk/cpp/user_manager.cpp",
        "deps/discord_game_sdk/cpp/voice_manager.cpp",
        "src/api/greenworks_api_utils.cc",
        "src/api/steam_api_achievement.cc",
        "src/api/steam_api_auth.cc",
        "src/api/steam_api_cloud.cc",
        "src/api/steam_api_dlc.cc",
        "src/api/steam_api_friends.cc",
        "src/api/steam_api_inventory.cc",
        "src/api/steam_api_matchmaking.cc",
        "src/api/steam_api_registry.h",
        "src/api/steam_api_settings.cc",
        "src/api/steam_api_stats.cc",
        "src/api/steam_api_workshop.cc",
        "src/api/discord_api.cc",
        "src/api/discord_api.h",
        "src/greenworks_api.cc",
        "src/greenworks_async_workers.cc",
        "src/greenworks_async_workers.h",
        "src/greenworks_unzip.cc",
        "src/greenworks_unzip.h",
        "src/greenworks_utils.cc",
        "src/greenworks_utils.h",
        "src/greenworks_version.h",
        "src/greenworks_workshop_workers.cc",
        "src/greenworks_workshop_workers.h",
        "src/greenworks_zip.cc",
        "src/greenworks_zip.h",
        "src/steam_async_worker.cc",
        "src/steam_async_worker.h",
        "src/steam_client.cc",
        "src/steam_client.h",
        "src/steam_event.cc",
        "src/steam_event.h",
        "src/steam_id.cc",
        "src/steam_id.h"
      ],
      "include_dirs": [
        "deps",
        "src",
        "sdk/public",  // Updated path for the Steamworks SDK headers
        "<(discord_game_sdk_dir)",
        "<!(node -e \"require('nan')\")"
      ],
      "dependencies": [ "deps/zlib/zlib.gyp:minizip" ],
      "link_settings": {
        "library_dirs": [
          "sdk/redistributable_bin/<(redist_bin_dir)",  // Updated path for the Steamworks SDK libraries
          "sdk/public/steam/lib/<(public_lib_dir)",  // Updated path for the Steamworks SDK libraries
          "<(discord_game_sdk_dir)/lib/<(discord_lib_dir)"
        ],
        "conditions": [
          ["OS=='linux' or OS=='mac'", {
            "libraries": ["-lsteam_api", "-lsdkencryptedappticket", "-Wl,-rpath,@loader_path/../../lib/discord_game_sdk.dylib"]
          }],
          ["OS=='win'", {
            "libraries": ["-l<(lib_steam)", "-l<(lib_encryptedappticket)", "-l<(lib_discord)"]
          }]
        ]
      },
      "cflags": [ "-std=c++14" ],
      "conditions": [
        ["OS== 'mac'", {
          "cflags": [ "-std=c++14", "-m32" ]
        }],
        ["OS== 'linux'", {
          "ldflags": [
            "-Wl,-rpath,$$ORIGIN"
          ],
          "cflags": [
            "-Wno-unknown-pragmas",
            "-Wno-attributes"
          ]
        }],
        ["OS== 'win' and target_arch=='x64'", {
          "defines": [
            "_AMD64_"
          ]
        }],
        ["OS=='mac' or OS=='ios' or OS=='android'", {
          "defines": [
            "USE_FILE32API"
          ]
        }]
      ],
      "xcode_settings": {
        "WARNING_CFLAGS": [
          "-Wno-deprecated-declarations"
        ],
        "OTHER_CPLUSPLUSFLAGS": [
          "-std=c++14",
          "-stdlib=libc++"
        ],
        "OTHER_LDFLAGS": [
          "-stdlib=libc++"
        ]
      },
      "msvs_disabled_warnings": [
        4068,
        4267
      ]
    },
    {
      "target_name": "copy_binaries",
      "dependencies": [
        "<(project_name)"
      ],
      "type": "none",
      "actions": [
        {
          "action_name": "Copy Binaries",
          "variables": {
            "conditions": [
              ["OS=='win'", {
                "lib_steam_path": "sdk/redistributable_bin/<(redist_bin_dir)/<(lib_dll_steam)",
                "lib_encryptedappticket_path": "sdk/public/steam/lib/<(public_lib_dir)/<(lib_dll_encryptedappticket)",
                "lib_discord_path": "<(discord_game_sdk_dir)/lib/<(discord_lib_dir)/<(lib_dll_discord)"
              }],
              ["OS=='mac' or OS=='linux'", {
                "lib_steam_path": "sdk/redistributable_bin/<(redist_bin_dir)/<(lib_steam)",
                "lib_encryptedappticket_path": "sdk/public/steam/lib/<(public_lib_dir)/<(lib_encryptedappticket)",
                "lib_discord_path": "<(discord_game_sdk_dir)/lib/<(discord_lib_dir)/<(lib_discord)"
              }]
            ]
          },
          "inputs": [
            "<(lib_steam_path)",
            "<(lib_encryptedappticket_path)",
            "<(lib_discord_path)",
            "<(PRODUCT_DIR)/<(project_name).node"
          ],
          "outputs": [
            "<(target_dir)"
          ],
          "action": [
            "python",
            "tools/copy_binaries.py",
            "<@(_inputs)",
            "<@(_outputs)"
          ]
        }
      ]
    }
  ]
}
