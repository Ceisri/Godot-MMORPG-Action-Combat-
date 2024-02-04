extends Node

var network = NetworkedMultiplayerENet.new()
var ip = "127.0.0.1" #self 
var port = 1909 
func _ready():
	ConnectToServer()
func ConnectToServer():
	network.create_client(ip, port)
	get_tree().set_network_peer(network)
func _OnConnectionFailed():
	print("failed to connect")
	
func _OnConnectionSucceded():
	print("connected")
