import pygame
import sys

pygame.init()

display = pygame.display.set_mode((900, 900))

while True:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            pygame.quit()
            sys.exit()

    if event.type == pygame.KEYDOWN:
        print("Key has pressed!")
