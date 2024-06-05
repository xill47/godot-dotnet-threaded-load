using Godot;

namespace GodotDotnetThreadedLoad;

public partial class InitFix : Node
{
    public override void _Ready()
    {
        ResourceLoader.Load("res://InitFix.cs");
    }
}