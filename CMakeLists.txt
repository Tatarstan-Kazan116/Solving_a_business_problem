cmake_minimum_required(VERSION 3.14)
project(DuckxExample)

# Указываем стандарт C++ (требуется минимум C++11, лучше C++17)
set(CMAKE_CXX_STANDARD 17)

# Подключаем модуль FetchContent
include(FetchContent)

# Настраиваем скачивание DuckX
FetchContent_Declare(
    duckx
    GIT_REPOSITORY https://github.com/amiremohamadi/DuckX.git
    GIT_TAG        master # Или укажите конкретный тег версии, например, v1.2.0
)

# Делаем библиотеку доступной (это также скачает pugixml и miniz)
FetchContent_MakeAvailable(duckx)

# Создаем ваш исполняемый файл
add_executable(my_app Solving_a_business_problem.cpp)

# Привязываем библиотеку duckx к вашему приложению
target_link_libraries(my_app PRIVATE duckx)