using Godot;

namespace GodotDotnetThreadedLoad;

public partial class SceneToLoad : Node
{
	public override void _Ready()
	{
		AddChild(new Sprite2D
		{
			Texture = GD.Load<Texture2D>("res://icon.svg")
		});
	}
}