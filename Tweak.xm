%hook ZMProductHelperAdapter
-(void) setDeviceJailBreak:(bool)arg1 {
    arg1 = FALSE;
}
%end

%hook KSSystemInfo
+(bool) isJailbroken {
    return FALSE;
}
%end

%hook ZMNDevice
-(bool) isJailbroken {
    return FALSE;
}

-(bool) _checkJailbrokenStatus {
    return FALSE;
}
%end