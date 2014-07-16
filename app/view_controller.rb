class ViewController < UIViewController
  def loadView
    self.view = SKView.alloc.init
  end
  # http://blog.timgaleckas.com/landscape-sprite-kit-rubymotion/
  def viewWillLayoutSubviews
    super
    unless self.view.scene
      scene = MyScene.alloc.initWithSize(self.view.bounds.size)
      self.view.presentScene scene
    end
  end
  def shouldAutorotate
    true
  end
end
