# Flemme d'update python aujourd'hui en 3.12, pas de switch sorry

#Ex1
def degage_minus(age:int) -> str:
    if age < 18:
        return f"Vous pouvez entrer vous êtes majeur vous avez {age}"
    if age > 41:
        return f"Bienvenu patron"
    return f"Vous pouvez entrer vous êtes majeur vous avez {age}"


#Ex2
import random
def weird_rules():
    num = random.randint(0,30)
    if num < 11:
        return "Cool"
    if num > 20:
        return "Warm"
    return "Tepid"


#Ex3
# had to install 3.12 just for this ...
import datetime
def monday_or_not(date:str) -> str:
    given_date = datetime.datetime.strptime(date, '%d %m %Y')
    week_day = given_date + 1 # monday is 0
    match week_day:
        case 1:
            day_str = "Lundi"
        case 2:
            day_str = "Mardi"
        case 3:
            day_str = "Mercredi"
        case 4:
            day_str = "Jeudi"
        case 5:
            day_str = "Vendredi"
        case 6:
            day_str = "Samedi"
        case _:
            day_str = "Dimanche"
    return f"Nous somme {day_str}"


#Ex4
def story_of_the_dwaf_socks() -> None:
    user_forced_aggreement = input("Do you wish to hear about the dwarf socks?")
    if user_forced_aggreement:
        print("It's about the fantastic story about some mithril socks")
        user_useless_input = input("Guess which material was used to make it?")
        if user_useless_input.lower() == "mithril":
            print("smarty pants are ya? Not that only but also some dragon nostril hair !")
            return
        
        print("Are you brain dead ? Mithril obviously ! Now drink with me !")
        print("The dwarf socks, the dwarf socks it's so good the song is already over")
        return
    
    print("Oya oya, we got some smartass who figured out the response to life, universe and the rest!")
    print("which is shutting the fuck up!")
    return

# story_of_the_dwaf_socks()


#Ex5
# wups_im_commented = "haha"
print(42 if "wups_im_commented" in locals() else "cette variable n'existe pas")


#Ex6
def im_too_dumb_to_percent_myself(price:float, discount:float) -> float:
    # discount is like 0.5 for 50%
    price_after_discount = price * discount
    half_price = price / 2
    if half_price < price_after_discount:
        raise ValueError('Discount given was too big for us')
    return price_after_discount

#Ex7
def odd_or_even() -> str:
    num = input("Gimme number, Int plz")
    if not isinstance(num, int):
        raise ValueError('Int i said, you dimwit')
    return "Odd" if num % 2 == 1 else "Even"

