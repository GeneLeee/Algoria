function CheckSeason()
	if startStage == 1 then
  		--CreateSpring()
  	elseif startStage == 2 then
  		--CreateSummer()
  	elseif startStage == 3 then
	  	CreateFall()
  	elseif startStage == 4 then
	  	--CreateWinter()
  end
end

function CheckPortal() --0725 마을에서 포탈같이 일정 좌표에서 ↑키를 누르면 장소가 이동되도록 해봄. by.현식
  -- body
  if love.keyboard.isDown('up') and startStage == 0 then --마을에서 스테이지로 넘어갈 때, 좌표값 뿐만 아니라 스테이지레벨도 같이 조건을 줘야할 듯. by.현식 0727
    if 170 < pl:GetX() and pl:GetX() < 190 then --0722 스테이지 변경을 위한 테스트 진행중.. by.현식
      deleteVillage()
      startStage = 3 -- 추후에는 이 부분을 팝업창에서 선택할 수 있도록..
    end
    CheckSeason()
  end
end