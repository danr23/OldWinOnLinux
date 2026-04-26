#!/bin/bash

while getopts 'sfdah' OPTION; do
	case $OPTION in
		s)
			cd;
			sudo zypper install cmake make ninja git gcc gcc-c++ gmp-ecm-devel kf6-extra-cmake-modules qt6-base-devel qt6-quick-devel qt6-svg-devel qt6-quickcontrols2-devel kf6-kwindowsystem-devel kf6-karchive-devel kf6-kirigami-devel kf6-kbookmarks-devel kf6-kcodecs-devel kf6-kcolorscheme-devel kf6-kcompletion-devel kf6-kconfig-devel kf6-kconfigwidgets-devel kf6-kcoreaddons-devel kf6-kguiaddons-devel kf6-ki18n-devel kf6-kio-devel kf6-kitemviews-devel kf6-kjobwidgets-devel kf6-kservice-devel kf6-kwidgetsaddons-devel kf6-kxmlgui-devel kf6-solid-devel kf6-kglobalaccel-devel kf6-kiconthemes-devel kf6-knotifications-devel kf6-kpackage-devel kf6-ksvg-devel plasma6-activities-devel plasma-wayland-protocols qt6-wayland-devel qt6-quicktest-devel qt6-gui-private-devel kdecoration6-devel kf6-kcmutils-devel qt6-uitools-devel kf6-kcrash-devel libepoxy-devel kwin6-devel kwin6-x11-devel kf6-qqc2-desktop-style-devel knotifications-devel kf6-kauth-devel libplasma6-devel plasma5support6-devel plasma6-activities-stats-devel plasma6-workspace-devel kwin6-x11-devel;
			git clone https://www.github.com/aeroshell-desktop/vistathemeplasma;
			cd vistathemeplasma;
			sudo bash ./install.sh --ninja
			;;
		f)
			cd;
			sudo dnf install gcc git gcc-c++ cmake make extra-cmake-modules plasma-workspace-devel libksysguard-devel unzip kvantum qt6-qtmultimedia-devel qt6-qt5compat-devel libplasma-devel qt6-qtbase-devel qt6-qtwayland-devel plasma-activities-devel kf6-kpackage-devel kf6-kglobalaccel-devel qt6-qtsvg-devel wayland-devel plasma-wayland-protocols kf6-ksvg-devel kf6-kcrash-devel kf6-kguiaddons-devel kf6-kcmutils-devel kf6-kio-devel kdecoration-devel kf6-ki18n-devel kf6-knotifications-devel kf6-kirigami-devel kf6-kiconthemes-devel cmake gmp-ecm-devel kf5-plasma-devel libepoxy-devel kwin-devel kf6-karchive kf6-karchive-devel plasma-wayland-protocols-devel qt6-qtbase-private-devel qt6-qtbase-devel kf6-knewstuff-devel kf6-knotifyconfig-devel kf6-attica-devel kf6-krunner-devel kf6-kdbusaddons-devel kf6-sonnet-devel plasma5support-devel plasma-activities-stats-devel polkit-qt6-1-devel qt-devel libdrm-devel kf6-kitemmodels-devel kf6-kstatusnotifieritem-devel kf6-frameworkintegration-devel kwin-x11 kwin-x11-devel;
			git clone https://www.github.com/aeroshell-desktop/vistathemeplasma;
			cd vistathemeplasma;
			sudo bash ./install.sh --ninja
			;;
		d)
			cd;
			sudo apt install git build-essential cmake ninja-build curl libqt6virtualkeyboard6 libqt6multimedia6 libqt6core5compat6 libplasma5support6 libkdecorations3-dev libkf6colorscheme-dev libkf6i18n-dev libkf6iconthemes-dev libkf6kcmutils-dev libkirigami-dev libkf6kio-dev libkf6notifications-dev libkf6svg-dev libkf6crash-dev libkf6globalaccel-dev libplasma-dev libplasmaactivities-dev libxcb-composite0-dev libxcb-randr0-dev libxcb-shm0-dev libxcb-damage0-dev libepoxy-dev libqt6svg6-dev kwin-dev plasma-wayland-protocols libkf5qqc2desktopstyle-dev libkf6qqc2desktopstyle-dev libplasma5support-dev libkf6auth-dev libkf6newstuff-dev libkf6notifyconfig-dev libkf6attica-dev libkf6runner-dev libkf6dbusaddons-dev libkf6sonnet-dev libkf6xmlgui-dev libkf6coreaddons-dev libkf6widgetsaddons-dev libkf6guiaddons-dev qt6-base-dev qt6-5compat-dev qml-module-org-kde-qqc2desktopstyle libplasmaactivitiesstats-dev plasma-workspace-dev libkf6statusnotifieritem-dev qml-module-org-kde-kirigami-addons-sounds qml6-module-org-kde-kirigamiaddons-sounds kwin-x11 kwin-x11-dev;
			git clone https://www.github.com/aeroshell-desktop/vistathemeplasma;
			cd vistathemeplasma;
			sudo bash ./install.sh --ninja
			;;
		a)
			echo "Starting installation of Windows Vista on linux kernel.."
			cd;
			sudo pacman -S git cmake extra-cmake-modules ninja curl unzip qt6-virtualkeyboard qt6-multimedia qt6-5compat qt6-wayland plasma-wayland-protocols plasma5support kvantum sddm sddm-kcm base-devel plasma-nm plasma-pa plasma-workspace plasma-desktop kwin-x11 plasma-x11-session;
			git clone https://www.github.com/aeroshell-desktop/vistathemeplasma;
			cd vistathemeplasma;
			sudo bash ./install.sh --ninja
			;;
		h)
			echo "  			-a stands for arch
			  -d stands for debian 
			  -f stands for fedora 
			  -s stands for openSUSE.
			  This is a script for installing Windows Vista on linux kernel."
			;;
	esac
done

