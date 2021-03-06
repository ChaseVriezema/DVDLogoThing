class SceneOne < SKScene
  include ScreenSizes

  attr_accessor :root

  def didMoveToView _
    self.scaleMode = SKSceneScaleModeAspectFit

    #$scene = self
    self.backgroundColor = UIColor.blackColor

    @logo = add_sprite device_screen_width.fdiv(2),
                         device_screen_height.fdiv(2),
                         'DVD_video_logo.png'

    @logo.size

  end
end


def add_sprite x, y, path
  # Sprites are created using a texture. So first we have to create a
  # texture from the png in the /resources directory.
  texture = SKTexture.textureWithImageNamed path

  # Then we can create the sprite and set it's location.
  sprite = SKSpriteNode.spriteNodeWithTexture texture
  sprite.position = CGPointMake x, y
  sprite.xScale = 0.1
  sprite.yScale = 0.1
 # sprite.color = .red
  addChild sprite
  sprite
end

def update currentTime

end