from robot.api.deco import keyword

@keyword
def create_equipment(eq: dict):
        new_equipment = Equipment(eq['name'], eq['manufacturer'], eq['year'], eq['category'], eq['model'],
                         eq['color'], eq['size'], eq['condition'], eq['skill_level'], eq['description'])
        print(new_equipment)
        return new_equipment
        

class Equipment:
    def __init__(self, name: str, manufacturer: str, year: int, 
                 category: str, model: str, color: str, size: str, 
                 condition: str, skill_level: str, description: str):
        if type(name) is not str:
            raise TypeError("Name must be string!")
        else:
            self.name = name
            
        self.manufacturer = manufacturer
        self.year = year
        self.category = category
        self.model = model
        self.color = color
        self.size = size
        self.condition = condition
        self.skill_level = skill_level
        self.description = description
        