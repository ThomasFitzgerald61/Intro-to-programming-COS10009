# Acknowledgement to the original authors of the code on which this
# example is based.
import pygame

# initializes th Pygame library
pygame.init()

# defines the windows height and width of the screen
SCREEN_HEIGHT = 400
SCREEN_WIDTH = 400

# creates the game window
screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))

# sets the state of the game
done = False
is_blue = True
x = 30
y = 30

time = pygame.time
# Start the games loop
while not done:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            done = True
        if event.type == pygame.KEYDOWN and event.key == pygame.K_SPACE:
            is_blue = not is_blue
    # check which keys are pressed
    pressed = pygame.key.get_pressed()

    # Move the shape left or right
    if pressed[pygame.K_LEFT]:
        x -= 1
    if pressed[pygame.K_RIGHT]:
        x += 1
    # Move the shape up or down
    if pressed[pygame.K_UP]:
        y -= 1
    if pressed[pygame.K_DOWN]:
        y += 1

    # Ensure the shape does not move out of the window
    x = max(0, min(x, SCREEN_WIDTH - 60))
    y = max(0, min(y, SCREEN_HEIGHT - 60))

    print(f"x is {x} y is {y} timer is {time.get_ticks()}")

    screen.fill((0, 0, 0))
    if is_blue:
        color = (0, 128, 255)
    else:
        color = (255, 100, 0)

    rect = pygame.Rect(x, y, 60, 60)
    pygame.draw.rect(screen, color, rect)

    pygame.display.flip()
