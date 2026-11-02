###### Class io.dcloud.feature.bluetooth.BluetoothUnder21 (io.dcloud.feature.bluetooth.BluetoothUnder21)
.class public Lio/dcloud/feature/bluetooth/BluetoothUnder21;
.super Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;
.source "BluetoothUnder21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;
    }
.end annotation


# instance fields
.field private m21ScanCallback:Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public closeBluetoothAdapter(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 3

    .line 25
    invoke-super {p0, p1, p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->closeBluetoothAdapter(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    .line 26
    iget-boolean p1, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21;->isSearchBTDevice:Z

    if-eqz p1, :cond_17

    .line 27
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 28
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21;->m21ScanCallback:Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;

    if-eqz p2, :cond_17

    .line 29
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21;->isSearchBTDevice:Z

    :cond_17
    return-void
.end method

.method public dispose(Ljava/lang/String;)V
    .registers 3

    .line 126
    invoke-super {p0, p1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->dispose(Ljava/lang/String;)V

    .line 127
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 129
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21;->m21ScanCallback:Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    const/4 p1, 0x0

    .line 130
    iput-boolean p1, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21;->isSearchBTDevice:Z

    :cond_11
    return-void
.end method

.method public getBluetoothDevices(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 11

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    iget-boolean p2, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21;->isInit:Z

    const/4 v1, 0x1

    if-eqz p2, :cond_70

    .line 108
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    iget-object v3, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21;->m21ScanCallback:Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;

    const-string v4, ","

    if-eqz v3, :cond_4a

    .line 110
    invoke-virtual {v3}, Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;->getScanList()Ljava/util/Map;

    move-result-object v3

    .line 111
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_21
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 112
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;

    invoke-virtual {v6}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 115
    :cond_4a
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x5

    if-le v3, v5, :cond_58

    .line 116
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 118
    :cond_58
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string/jumbo p2, "{devices:[%s]}"

    invoke-static {p2, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void

    :cond_70
    move-object v1, p1

    const/4 p1, 0x1

    const/16 p2, 0x2710

    .line 120
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v0

    const-string p2, "not init"

    aput-object p2, v3, p1

    const-string/jumbo p1, "{code:%d,message:\'%s\'}"

    invoke-static {p1, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public startBluetoothDevicesDiscovery(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 13

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    .line 38
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    .line 39
    const-string v3, "services"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 40
    const-string v4, "allowDuplicatesKey"

    invoke-virtual {p2, v4, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21;->allowDuplicatesDevice:Z

    .line 41
    const-string v4, "interval"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    iget-boolean p2, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21;->isInit:Z

    const/4 v4, 0x2

    const-string/jumbo v5, "{code:%d,message:\'%s\'}"

    if-eqz p2, :cond_fc

    .line 44
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p0, p2}, Lio/dcloud/feature/bluetooth/BluetoothUnder21;->isLocationEnabled(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_4a

    const/16 p2, 0x2720

    .line 45
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p2, v3, v0

    const-string p2, "Location services are turned off"

    aput-object p2, v3, v1

    invoke-static {v5, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void

    :cond_4a
    move-object v1, p1

    const/4 p1, 0x1

    .line 48
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    if-eqz p2, :cond_e1

    .line 50
    new-instance v6, Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;

    invoke-direct {v6, p0}, Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;-><init>(Lio/dcloud/feature/bluetooth/BluetoothUnder21;)V

    iput-object v6, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21;->m21ScanCallback:Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;

    const/4 v6, 0x0

    if-eqz v3, :cond_76

    .line 53
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    .line 54
    :goto_62
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_77

    .line 56
    :try_start_68
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    .line 57
    invoke-static {v9}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v9

    .line 58
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_73} :catch_73

    :catch_73
    add-int/lit8 v8, v8, 0x1

    goto :goto_62

    :cond_76
    move-object v7, v6

    :cond_77
    if-eqz v7, :cond_82

    .line 63
    new-array v3, v0, [Ljava/util/UUID;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, [Ljava/util/UUID;

    :cond_82
    iget-object v3, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21;->m21ScanCallback:Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;

    invoke-virtual {p2, v6, v3}, Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result p2

    if-eqz p2, :cond_c7

    .line 64
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 65
    iget-object v3, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21;->STATUS_ACTION:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    const/16 v6, 0xc

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 69
    iput-boolean p1, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21;->isSearchBTDevice:Z

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p2, v3, v0

    const-string p2, "ok"

    aput-object p2, v3, p1

    invoke-static {v5, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_fb

    :cond_c7
    const/16 p2, 0x271f

    .line 72
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p2, v3, v0

    const-string p2, "startBluetoothDevicesDiscovery fail"

    aput-object p2, v3, p1

    invoke-static {v5, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_fb

    :cond_e1
    const/16 p2, 0x271a

    .line 75
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p2, v3, v0

    const-string/jumbo p2, "unsupport"

    aput-object p2, v3, p1

    invoke-static {v5, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :goto_fb
    return-void

    :cond_fc
    move-object v1, p1

    const/4 p1, 0x1

    const/16 p2, 0x2710

    .line 78
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p2, v3, v0

    const-string p2, "not init"

    aput-object p2, v3, p1

    invoke-static {v5, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public stopBluetoothDevicesDiscovery(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 10

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 85
    iget-boolean p2, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21;->isInit:Z

    const/4 v1, 0x1

    const/4 v3, 0x2

    const-string/jumbo v4, "{code:%d,message:\'%s\'}"

    if-eqz p2, :cond_75

    .line 86
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    .line 87
    iget-object v5, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21;->m21ScanCallback:Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;

    if-eqz v5, :cond_59

    if-eqz p2, :cond_59

    .line 88
    invoke-virtual {p2, v5}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 89
    iput-boolean v0, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21;->isSearchBTDevice:Z

    .line 90
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 91
    iget-object v5, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21;->STATUS_ACTION:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    const/16 v6, 0xc

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v0

    const-string p2, "ok"

    aput-object p2, v3, v1

    invoke-static {v4, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void

    :cond_59
    move-object v1, p1

    const/4 p1, 0x1

    const/16 p2, 0x271f

    .line 97
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v0

    const-string p2, "stopBluetoothDevicesDiscovery fail"

    aput-object p2, v3, p1

    invoke-static {v4, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void

    :cond_75
    move-object v1, p1

    const/4 p1, 0x1

    const/16 p2, 0x2710

    .line 100
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v0

    const-string p2, "not init"

    aput-object p2, v3, p1

    invoke-static {v4, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

###### Class io.dcloud.feature.bluetooth.BluetoothUnder21.BTScanCallback (io.dcloud.feature.bluetooth.BluetoothUnder21$BTScanCallback)
.class Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;
.super Ljava/lang/Object;
.source "BluetoothUnder21.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/bluetooth/BluetoothUnder21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BTScanCallback"
.end annotation


# instance fields
.field private __JS__FUNCTION:Ljava/lang/String;

.field private scanList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/dcloud/feature/bluetooth/DCBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/dcloud/feature/bluetooth/BluetoothUnder21;


# direct methods
.method public constructor <init>(Lio/dcloud/feature/bluetooth/BluetoothUnder21;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothUnder21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const-string/jumbo p1, "{devices:[%s]}"

    iput-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;->__JS__FUNCTION:Ljava/lang/String;

    .line 139
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;->scanList:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getScanList()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/dcloud/feature/bluetooth/DCBluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;->scanList:Ljava/util/Map;

    return-object v0
.end method

.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .registers 10

    .line 144
    new-instance v0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;

    invoke-direct {v0, p1, p3}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;-><init>(Landroid/bluetooth/BluetoothDevice;[B)V

    .line 145
    invoke-virtual {v0, p2}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->setRSSI(I)V

    .line 146
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothUnder21;

    iget-boolean p2, p2, Lio/dcloud/feature/bluetooth/BluetoothUnder21;->allowDuplicatesDevice:Z

    const/4 p3, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2f

    .line 147
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothUnder21;

    sget-object v2, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->CALLBACK_DEVICE_FOUND:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;->__JS__FUNCTION:Ljava/lang/String;

    invoke-virtual {v0}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, p3

    invoke-static {v3, v5}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v2, p3, v1}, Lio/dcloud/feature/bluetooth/BluetoothUnder21;->execJsCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 148
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;->scanList:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 150
    :cond_2f
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 151
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;->scanList:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_55

    .line 152
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;->scanList:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothUnder21;

    sget-object p2, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->CALLBACK_DEVICE_FOUND:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;->__JS__FUNCTION:Ljava/lang/String;

    invoke-virtual {v0}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, p3

    invoke-static {v2, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3, v1}, Lio/dcloud/feature/bluetooth/BluetoothUnder21;->execJsCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_55
    return-void
.end method
