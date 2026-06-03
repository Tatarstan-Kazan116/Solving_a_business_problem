cmake_minimum_required(VERSION 3.14)
project(Solving_a_business_problem)

set(CMAKE_CXX_STANDARD 17)

include(FetchContent)

FetchContent_Declare(
    duckx
    GIT_REPOSITORY https://github.com/amiremohamadi/DuckX.git
    GIT_TAG master
)

FetchContent_MakeAvailable(duckx)

# Создаем ваш исполняемый файл
add_executable(my_app Solving_a_business_problem.cpp)

# Привязываем библиотеку duckx к вашему приложению
target_link_libraries(my_app PRIVATE duckx)

# Явно указываем ВСЕ пути к заголовочным файлам
target_include_directories(my_app PRIVATE 
    ${duckx_SOURCE_DIR}/include
    ${duckx_SOURCE_DIR}/thirdparty
    ${duckx_SOURCE_DIR}/thirdparty/pugixml
    ${duckx_SOURCE_DIR}/thirdparty/zip
)