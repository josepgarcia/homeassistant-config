# Alarma

1. Armando: De 22h a 9h no suena el armado para no molestar
2. On: Silvido al llegar al On
3. Warning: Suena 5 veces un sonido, **pending_time: 20** (panels/alarm.yaml)
   LLum rotja baix, Llum rotja saló
    - FALTA: revisar el delay, si hay bastante
4. Disparada: Enciende **sirena 1**
    - FALTA: Parpadea luz roja
5. Off: Sonido GW, apaga sirena 1, sirena 2, sirena 3
    - FALTA: Luz verde 2 segundos, luz normal, apagar luz 1
    - Lo anterior, si se pasa de Warning o disparada a OFF.
6. Sirenas: Sonido GW 1, Sonido GW 2, Sonido GW 3
7. Automático ON/OFF: Si en vacaciones = OFF, enciende alarma 23h - 7:30
8. Info armada: Si alarma ON y movimiento PRESENCIA2 y 6,45h - 9h, luz colores

# Botón

1. Click - toggle luz salón

# Dormitorio

1. Leds
    1. Leds NIT: de 21:15h a 22h si PRESENCIA2 -> enciende leds
    2. Leds MATÍ: De Lunes-Viernes de 7:57 a 8:00 -> enciende leds
2. Noche fresca
    1. Aire: Enciende el aire a y "XX:05" durante 5 minutos y lo apaga
    2. Ventilador: Enciende ventilador a y "XX:30" durante 30 minutos y lo apaga

# Enchufes

1. Bombeta ON/OFF: Enciende la bomba agua desde 8:10h a 23:10h
2. Sonof4chpro2:
    1. Relé1: cuando se enciende "ON" se apaga en 20 milisegundos
    2. Relé2: cuando se enciende "ON" se apaga en 20 milisegundos
3. Sonoffbasic: // DESACTIVADO, apaga sonoff basic en 20 milisegundos

# Lolin Node MCU

1. Relay1: Apaga el pin a los 20 milisegundos.

# Presencia

1. Presencia baix:
    1. De 21h a 8h si detecta PRESENCIA1 -> enciende bombilla
    2. De 9h a 22h si detecta PRESENCIA1 -> suena GW
2. Presencia porta garatge:
    1. De 9h a 22h si se abre puerta garaje -> suena GW

# Telegram

1.  aviso_alarma
2.  aviso_puertas
3.  aviso_sensores
4.  log_all
5.  tc_start
6.  tc_alarma
7.  tc_automation
8.  tc_avanzado
9.  tc_puertas
10. tc_remoto
11. tc_status
12. tc_switches
13. tc_temperatura

# vacaciones.yaml

1. Si input_bool en_vacaciones:
    1. Cambia a *"ON": AVISO TENEGRAM* - Apaga bomba agua, apaga calentador
    2. Cambia a *"OFF": AVISO TENEGRAM* - Enciende bomba agua, enciende calentador

# start_homeassistant.yaml

1. Al iniciar Homeassistant: 
    1. *MSG TELEGRAM*
    2. Sonoff4chpro: Relé1-OFF, Relé2-OFF, Relé3-OFF, **Relé4-ON**
