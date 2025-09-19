import turtle 

sc = turtle.Screen()
sc.setup(width=600, height=600)  
sc.bgcolor("black")
sc.title("Python Snake")

kopf = turtle.Turtle()
kopf.shape("square")
kopf.color("white")
kopf.penup()
kopf.goto(0, 0)
turtle.done()