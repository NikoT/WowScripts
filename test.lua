
-- kick offline GROUP_ROSTER_UPDATE, PARTY_MEMBER_DISABLE
function ()
	local NumGroup = GetNumGroupMembers()
    print("  NumGroup  " .. NumGroup)

	for i=1,NumGroup do
		local indexID = "raid" .. tostring(i)
		local isOnline = UnitIsConnected(indexID)
		local fullname = GetUnitName(indexID,true)
        local name = GetUnitName(indexID,false)

		if name and isOnline == false then 
                print("!!!kick" .. tostring(fullname))
                UninviteUnit(name)
                UninviteUnit(fullname)
		end
	end
	return true
end

/run for i=1,GetNumGroupMembers() do local f=GetUnitName("raid"..i,true) local s = GetUnitName("raid"..i,false) print("k") UninviteUnit(s) UninviteUnit(f) end

/run for i=1,GetNumGroupMembers() do local f=GetUnitName("raid"..i,true) local s = GetUnitName("raid"..i,false) print("k") UninviteUnit(s) UninviteUnit(f) end 


--memeber 10 GROUP_ROSTER_UPDATE
function ()
    local NumGroup = GetNumGroupMembers()
    if NumGroup == 10 then 
        C_LFGList.RemoveListing()
        return true
    end
end

--auto invite LFG_LIST_APPLICANT_LIST_UPDATED
function ()
    
    local currentCount = GetNumGroupMembers(LE_PARTY_CATEGORY_HOME)
    local applicants = C_LFGList.GetApplicants() or {}
    for k, v in pairs(applicants) do
        -- print("IDIDIDIDID : " .. v)
        local applicantInfo = C_LFGList.GetApplicantInfo(v)
        local status = applicantInfo.applicationStatus
        local numMembers = applicantInfo.numMembers
        local numAllowed = 10
        local numInvited = C_LFGList.GetNumInvitedApplicantMembers()
        
        local toInvite = 0
        if numMembers + currentCount + numInvited > numAllowed then
            toInvite = 0
        elseif status == 'applied' then
            print("come ")
            toInvite = 1
        end
        
        if toInvite == 1 then
            C_LFGList.InviteApplicant(v)
        end
    end
    
    return true
end



   --  print("battle status",event, ...)
   --  local arg = {...}
   --  for i,v in ipairs(arg) do
   --  print("... :" , i, v)
   --  local stat = GetBattlefieldStatus(1)
   --  print("stat :" , stat)
   -- end
-- UPDATE_BATTLEFIELD_STATUS
function (event, ...)
    RepopMe()
    local stat = GetBattlefieldStatus(1)
    print("stat :" , stat)
    if stat == "none" then 
        return false
    elseif stat == "active" then
        local winner = GetBattlefieldWinner()
        print("winner :" , winner)
        if winner then 
        --LeaveBattlefield()
        end
        return true
    else
        return true
    end
end
