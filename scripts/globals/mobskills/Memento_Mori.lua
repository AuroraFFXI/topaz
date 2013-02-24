---------------------------------------------------
-- Memento Mori
-- Enhances Magic Attack.
---------------------------------------------------

require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");

---------------------------------------------------

function OnMobSkillCheck(target,mob,skill)
    return 0;
end;

function OnMobWeaponSkill(target, mob, skill)
    local typeEffect = EFFECT_MAGIC_ATK_BOOST;
    skill:setMsg(MobBuffMove(target, typeEffect, 20, 0, 300));
    return typeEffect;
end;
