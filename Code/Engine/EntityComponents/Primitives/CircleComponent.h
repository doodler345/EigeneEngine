#pragma once

#include <memory>

#include "SFML/Graphics.hpp"
#include "../../Entity/Entity.h"

class CircleComponent : public EntityComponent
{
public:
	CircleComponent(Entity* owner);

	// TODO: Circle Position not really moved yet! It just gets rendered at owners position
	sf::CircleShape* GetCircle() { return m_drawable.get(); }
	void SetRadius(float radius);
	void Center();

private:
	std::unique_ptr<sf::CircleShape> m_drawable;
	void ShutDown() override;
};