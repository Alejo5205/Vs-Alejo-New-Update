
function onCreate()
	-- background shit
	makeLuaSprite('stageAlejo1', 'stageAlejo1', -1300, -1100);
	setScrollFactor('stageAlejo1', 0.9, 0.9);

	makeLuaSprite('stageAlejo2', 'stageAlejo2', -2000, -980);
	setScrollFactor('stageAlejo2', 0.9, 0.9);

	makeAnimatedLuaSprite('people1', 'people1', -950, 170);
	addAnimationByPrefix('people1', 'people', 'people1', 24, true);
	setScrollFactor('people1', 0.9, 0.9);

	--I wanted to add this, but due to copyright that jumped me on twitter, in the end... no
	makeAnimatedLuaSprite('people2', 'people2', -950, -140);
	addAnimationByPrefix('people2', 'people', 'people2', 24, true);
	setScrollFactor('people2', 0.9, 0.9);

	addLuaSprite('stageAlejo1', false);
	addLuaSprite('people1', false);
	addLuaSprite('stageAlejo2', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end