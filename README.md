# workshop_analytics_devfest_elalto2019
Workshop sobre analiticas realizado en el dev fest del GDG El Alto 2019

# Instalacion:
```git
git clone (repository)
```
```bash
cd yo-participo-mobile
```
```flutter
flutter packages upgrade
flutter run
```

## Credenciales

Usa las siguientes credenciales para ingresar a [firebase console](https://console.firebase.google.com/) y observar los datos

**Usuario**: workshopanalyticsgdgelalto@gmail.com
**Contraseña**: analytics2019

## DebugView

Para poder visualizar las estadisticas en modo *debug*

Enable  (terminal): 
```bash
adb shell setprop debug.firebase.analytics.app com.example.workshop_analytics_devfest_elalto2019
```
    
Disable (terminal): 
```bash
adb shell setprop debug.firebase.analytics.app .none.
```