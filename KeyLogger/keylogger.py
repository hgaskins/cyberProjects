import pynput

from pynput.keyboard import Key, Listener

def on_key_press(key):
	print("(0) pressed".format(key))


def on_key_release(key):
	if key == Key.esc:
		return False

with Listener(on_key_press=on_key_press, on_key_release=on_key_release) as listener:
	listener.join()

