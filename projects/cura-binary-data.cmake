
ExternalProject_Add(cura-binary-data
    GIT_REPOSITORY https://github.com/uframer/uframer-cura-binary-data
    GIT_TAG origin/${TAG_OR_BRANCH}
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${EXTERNALPROJECT_INSTALL_PREFIX}
    UPDATE_DISCONNECTED ${WORK_OFFLINE}
)

SetProjectDependencies(TARGET cura-binary-data DEPENDS Cura)
