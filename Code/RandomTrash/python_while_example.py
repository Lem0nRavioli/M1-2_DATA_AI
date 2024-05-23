def player_guess():
  choice_game = None

  # le prompt est généré à partir des choix possibles
  choices = {
    0: "HS",
    1: "HS, but fullscreen",
  }
  options = ', '.join([f"{key}: {value}" for key, value in choices.items()])
  prompt = f"A quel hearthstone tu veux jouer ? {options}\n"

  while not choice_game:

    user_input = input(prompt)

    # pour remplacer le try/except, cas mauvaise réponse
    if not user_input.isnumeric() or int(user_input) >= len(choices):
      prompt = prompt[:-1] # on retire le \n (prompt = prompt sauf dernier charactère)
      prompt += ", connard\n" # on le remet ici
      continue # retourne case départ boucle

    # cas bonne réponse, on selectionne l'entrée correspondante de "choices"
    choice_game = choices[int(user_input)]
    print(f"Bon choix avec {choice_game}")

player_guess()
