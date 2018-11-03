import serial

sp = serial.Serial(
    port="COM3",
    baudrate=115200,     # baudrate
    bytesize=8,             # number of databits
    parity=serial.PARITY_NONE,
    stopbits=1,
    xonxoff=0,              # don't enable software flow control
    rtscts=0,               # don't enable RTS/CTS flow control
    timeout=5               # set a timeout value, None for waiting forever
)
while True:
    buffer = sp.read(11)
    print(buffer)