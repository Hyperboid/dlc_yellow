local Basic, super = Class(LightWave)

function Basic:init()
    super:init(self)
    self:setArenaSize(140, 140)
    self:setArenaPosition(319, 340) -- orig 320, 385
    self.time = 10
end

function Basic:onStart()
    --Game.battle:swapSoul(GreenSoul())
    self.timer:every(1/2, function()

        local bullet = self:spawnBullet("axis/laser_o", Utils.random(Game.battle.arena.left, Game.battle.arena.right), 0, math.rad(90), 6)

        bullet.remove_offscreen = false
    end)
end

function Basic:onEnd()
    --Game.battle:swapSoul(Soul(x, y, {1, 1, 0}))
end

function Basic:update()

    super.update(self)
end

return Basic