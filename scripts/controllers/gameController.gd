extends Node

@export var quiz : QuizTheme
@export var collor_rigth : Color
@export var collor_wrong: Color

var buttoms: Array[Button]
var index: int
var correct: int 

@onready var label_pegunta: Label = $conteudo/Questoes/LabelPegunta
@onready var question_imagem: TextureRect = $conteudo/Questoes/ImagemHolder/QuestionImagem
@onready var question_video: VideoStreamPlayer = $conteudo/Questoes/ImagemHolder/QuestionVideo
@onready var question_audio: AudioStreamPlayer = $conteudo/Questoes/ImagemHolder/QuestionAudio



func _ready() -> void:
	for button in $conteudo/QuestionHolder.get_children():
		buttoms.append(button)
	
	load_quiz()

func load_quiz() -> void:
	label_pegunta.text =  quiz.theme[index].question_info
