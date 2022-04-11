
-- kick offline GROUP_ROSTER_UPDATE, PARTY_MEMBER_DISABLE
function ()
	local NumGroup = GetNumGroupMembers()
	for i=1,NumGroup do
		local indexID = "raid" .. tostring(i)
		local isOnline = UnitIsConnected(indexID)
		local name = GetUnitName(indexID,true)
		-- print(name .. "  online  " .. tostring(isOnline))
		if isOnline == false then 
			print("kick" .. tostring(name))
			UninviteUnit(name)
		end
	end
	return true
end


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




-- UPDATE_BATTLEFIELD_STATUS
function ()
    return true
end
