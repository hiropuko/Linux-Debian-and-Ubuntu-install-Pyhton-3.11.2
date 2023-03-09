#!/bin/bash

# Update packages
# Обновление пакетов
sudo apt-get update

# Change to the /tmp directory and download the Python archive
# Переход в директорию /tmp и загрузка архива Python
cd /tmp/

# Downloading the latest Python interpreter archive
# Скачиваем последний архив интерпретатора Python
sudo wget https://www.python.org/ftp/python/3.11.2/Python-3.11.2.tgz

# Unpack the archive and change to the Python-3.11.2 directory
# Распаковка архива и переход в директорию Python-3.11.2
sudo tar -xzvf Python-3.11.2.tgz
cd Python-3.11.2/

# Install dependencies
# Установка зависимостей
sudo apt-get install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev

# Конфигурация, инициализация и установка сборки Python 3.11.2
./configure --enable-optimizations
sudo make -j `nproc`
sudo make altinstall

# Install the package manager for Python 3.11.2
# Устанавливаем менеджер пакетов для Python 3.11.2
sudo apt-get install -y python3-pip

# Output version of Python 3.11.2
# Вывод версии Python 3.11.2
sudo python3.11 --version
echo
echo
echo ////////////////////////////////////////////////////
echo
echo _ _ _ _ _ _ INSTALLATION COMPLETE _ _ _ _ _ _ _ _ _
echo 
echo JOIN TO TELEGRAM GROUP: t.me/repackScript
echo PYTHON 3.11.2 has been successfully installed.
echo PYTHON 3.11.2 успешно установлен.
echo ПРИСОЕДИНЯЙТЕСЬ В ГРУППУ: t.me/repackScript
echo https://github.com/repackScript/
echo
echo _ _ _ _ _ _ УСТАНОВКА ЗАКОНЧЕНА _ _ _ _ _ _ _ _ _ _
echo
echo ////////////////////////////////////////////////////
echo
echo

