#pragma once

#include <string>

#include "../Entity/Entity.h"
#include "../EntityComponents/TextComponent.h"
#include "../EntityComponents/Primitives/RectangleComponent.h"

class InputField : public Entity
{
protected:
	void EntityInit() override;

public:
	void Update(float deltaTime) override;
	void Activate(bool setActive);
	void SetText(std::string text);
	void SetFileEnding(std::string fileEnding);
	void SetMaxChars(int maxChars);
	void AppendCharacter(std::string newChar);
	void RemoveCharacter();
	std::string GetText() { return m_inputText; }


private:
	void UpdateText();
	void DestroyDerived() override;

	RectangleComponent* m_rectangleComponent = nullptr;
	RectangleComponent* m_rectangleMarker = nullptr;
	TextComponent* m_textComponent = nullptr;
	TextComponent* m_textComponentFileEnding = nullptr;
	
	std::string m_inputText;
	std::string m_fileEndingText;
	const sf::Vector2f m_inputFieldSize = sf::Vector2f(220, 30);
	sf::Vector2f m_textOffset;
	int m_maxChars = 99;
	bool m_isActive = false;

	//marker
	const sf::Vector2f m_markerSize = sf::Vector2f(7, 20);
	const sf::Color m_markerColor = sf::Color::Black;
	float m_blinkTimer = 0;
	bool m_markerIsVisible = true;
};

