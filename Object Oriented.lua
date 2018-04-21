-- lua简单的面向对象实例
-- 定义类Shape，属性有area
Shape = {area = 0}
-- 定义Shape类的new方法
function Shape:new( o, side )
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	side = side or 0
	self.area = side * side
	return o
end
-- 定义Shape类的printArea方法
function Shape:printArea( )
	print("面积为：", self.area)
end

-- 实例化对象myshape
myshape = Shape:new(nil, 10)
myshape:printArea()