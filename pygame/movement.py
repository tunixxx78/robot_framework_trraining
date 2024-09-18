import pygame
import time

pygame.init()  
win = pygame.display.set_mode((600, 600))     
pygame.display.set_caption("Jump Game") 

x = 200
y = 200
width = 10
height = 20
vel = 10
run = True

while run: 
   
    win.fill((0, 0, 0)) 

    pygame.draw.rect(win, (120, 100, 0), (x, y, width, height)) 

    for event in pygame.event.get(): 
           
        if event.type == pygame.QUIT: 
            run = False

    keys = pygame.key.get_pressed() 
        
       
    if keys[pygame.K_LEFT] and x>0: 
        x -= vel 

    if keys[pygame.K_RIGHT] and x<500-width: 
        x += vel 

    if keys[pygame.K_UP] and y>0: 
        y -= vel 

    if keys[pygame.K_DOWN] and y<500-height: 
        y += vel 

    pygame.time.delay(10) 

    pygame.display.update()  
pygame.quit() 