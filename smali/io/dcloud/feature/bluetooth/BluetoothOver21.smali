###### Class io.dcloud.feature.bluetooth.BluetoothOver21 (io.dcloud.feature.bluetooth.BluetoothOver21)
.class public Lio/dcloud/feature/bluetooth/BluetoothOver21;
.super Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;
.source "BluetoothOver21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/bluetooth/BluetoothOver21$BTScanCallback;
    }
.end annotation


# instance fields
.field private mScanCallback:Lio/dcloud/feature/bluetooth/BluetoothOver21$BTScanCallback;

.field private scanner:Landroid/bluetooth/le/BluetoothLeScanner;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public closeBluetoothAdapter(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 3

    .line 34
    invoke-super {p0, p1, p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->closeBluetoothAdapter(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    .line 35
    iget-boolean p1, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21;->isSearchBTDevice:Z

    if-eqz p1, :cond_15

    .line 36
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21;->scanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz p1, :cond_15

    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21;->mScanCallback:Lio/dcloud/feature/bluetooth/BluetoothOver21$BTScanCallback;

    if-eqz p2, :cond_15

    .line 37
    invoke-virtual {p1, p2}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21;->isSearchBTDevice:Z

    :cond_15
    return-void
.end method

.method public dispose(Ljava/lang/String;)V
    .registers 3

    .line 138
    invoke-super {p0, p1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->dispose(Ljava/lang/String;)V

    .line 139
    iget-boolean p1, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21;->isSearchBTDevice:Z

    if-eqz p1, :cond_11

    .line 141
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21;->scanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21;->mScanCallback:Lio/dcloud/feature/bluetooth/BluetoothOver21$BTScanCallback;

    invoke-virtual {p1, v0}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    const/4 p1, 0x0

    .line 142
    iput-boolean p1, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21;->isSearchBTDevice:Z

    :cond_11
    return-void
.end method

.method public getBluetoothDevices(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 11

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 46
    iget-boolean p2, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21;->isInit:Z

    const/4 v1, 0x1

    if-eqz p2, :cond_70

    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    iget-object v3, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21;->mScanCallback:Lio/dcloud/feature/bluetooth/BluetoothOver21$BTScanCallback;

    const-string v4, ","

    if-eqz v3, :cond_4a

    .line 49
    invoke-virtual {v3}, Lio/dcloud/feature/bluetooth/BluetoothOver21$BTScanCallback;->getScanList()Ljava/util/Map;

    move-result-object v3

    .line 50
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

    .line 51
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

    .line 54
    :cond_4a
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x5

    if-le v3, v5, :cond_58

    .line 55
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 57
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

    .line 59
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
    .registers 15

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    .line 71
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    .line 72
    const-string v3, "services"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 73
    const-string v4, "allowDuplicatesKey"

    invoke-virtual {p2, v4, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21;->allowDuplicatesDevice:Z

    .line 74
    const-string v4, "interval"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 76
    iget-boolean v4, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21;->isInit:Z

    const/4 v5, 0x2

    const-string/jumbo v6, "{code:%d,message:\'%s\'}"

    if-eqz v4, :cond_c8

    .line 77
    new-instance v4, Lio/dcloud/feature/bluetooth/BluetoothOver21$BTScanCallback;

    invoke-direct {v4, p0}, Lio/dcloud/feature/bluetooth/BluetoothOver21$BTScanCallback;-><init>(Lio/dcloud/feature/bluetooth/BluetoothOver21;)V

    iput-object v4, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21;->mScanCallback:Lio/dcloud/feature/bluetooth/BluetoothOver21$BTScanCallback;

    .line 78
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    if-eqz v4, :cond_c7

    .line 81
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v4

    iput-object v4, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21;->scanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 83
    new-instance v4, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v4}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    if-eqz v3, :cond_71

    .line 84
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_71

    .line 85
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    .line 86
    :goto_4c
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_72

    .line 87
    new-instance v9, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v9}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 88
    new-instance v10, Landroid/os/ParcelUuid;

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v9, v10}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 89
    invoke-virtual {v9}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4c

    :cond_71
    const/4 v7, 0x0

    .line 92
    :cond_72
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7f

    .line 94
    :try_start_78
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Landroid/bluetooth/le/ScanSettings$Builder;->setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7f} :catch_7f

    .line 98
    :catch_7f
    :cond_7f
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21;->scanner:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-virtual {v4}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v3

    iget-object v4, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21;->mScanCallback:Lio/dcloud/feature/bluetooth/BluetoothOver21$BTScanCallback;

    invoke-virtual {p2, v7, v3, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 99
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 100
    iget-object v3, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21;->STATUS_ACTION:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    const/16 v4, 0xc

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 104
    iput-boolean v1, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21;->isSearchBTDevice:Z

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p2, v3, v0

    const-string p2, "ok"

    aput-object p2, v3, v1

    invoke-static {v6, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :cond_c7
    return-void

    :cond_c8
    move-object v1, p1

    const/4 p1, 0x1

    const/16 p2, 0x2710

    .line 109
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p2, v3, v0

    const-string p2, "not init"

    aput-object p2, v3, p1

    invoke-static {v6, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

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

    .line 115
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 116
    iget-boolean p2, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21;->isInit:Z

    const/4 v1, 0x1

    const/4 v3, 0x2

    const-string/jumbo v4, "{code:%d,message:\'%s\'}"

    if-eqz p2, :cond_57

    .line 118
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21;->scanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz p2, :cond_56

    iget-object v5, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21;->mScanCallback:Lio/dcloud/feature/bluetooth/BluetoothOver21$BTScanCallback;

    if-eqz v5, :cond_56

    .line 119
    invoke-virtual {p2, v5}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 120
    iput-boolean v0, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21;->isSearchBTDevice:Z

    .line 121
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 122
    iget-object v5, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21;->STATUS_ACTION:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    const/16 v6, 0xc

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 126
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

    :cond_56
    return-void

    :cond_57
    move-object v1, p1

    const/4 p1, 0x1

    const/16 p2, 0x2710

    .line 130
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

###### Class io.dcloud.feature.bluetooth.BluetoothOver21.BTScanCallback (io.dcloud.feature.bluetooth.BluetoothOver21$BTScanCallback)
.class Lio/dcloud/feature/bluetooth/BluetoothOver21$BTScanCallback;
.super Landroid/bluetooth/le/ScanCallback;
.source "BluetoothOver21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/bluetooth/BluetoothOver21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BTScanCallback"
.end annotation


# instance fields
.field private __JS__FUNCTION:Ljava/lang/String;

.field private callbackId:Ljava/lang/String;

.field private pwebview:Lio/dcloud/common/DHInterface/IWebview;

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

.field final synthetic this$0:Lio/dcloud/feature/bluetooth/BluetoothOver21;


# direct methods
.method public constructor <init>(Lio/dcloud/feature/bluetooth/BluetoothOver21;)V
    .registers 3

    const/4 v0, 0x0

    .line 157
    invoke-direct {p0, p1, v0, v0}, Lio/dcloud/feature/bluetooth/BluetoothOver21$BTScanCallback;-><init>(Lio/dcloud/feature/bluetooth/BluetoothOver21;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lio/dcloud/feature/bluetooth/BluetoothOver21;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4

    .line 160
    iput-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21$BTScanCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothOver21;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    .line 154
    const-string/jumbo p1, "{devices:[%s]}"

    iput-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21$BTScanCallback;->__JS__FUNCTION:Ljava/lang/String;

    .line 161
    iput-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21$BTScanCallback;->pwebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 162
    iput-object p3, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21$BTScanCallback;->callbackId:Ljava/lang/String;

    .line 163
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21$BTScanCallback;->scanList:Ljava/util/Map;

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

    .line 186
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21$BTScanCallback;->scanList:Ljava/util/Map;

    return-object v0
.end method

.method public onScanFailed(I)V
    .registers 2

    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .registers 8

    .line 168
    new-instance p1, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;

    invoke-direct {p1, p2}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;-><init>(Landroid/bluetooth/le/ScanResult;)V

    .line 170
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21$BTScanCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothOver21;

    iget-boolean v0, v0, Lio/dcloud/feature/bluetooth/BluetoothOver21;->allowDuplicatesDevice:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    .line 171
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21$BTScanCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothOver21;

    sget-object v0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->CALLBACK_DEVICE_FOUND:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21$BTScanCallback;->__JS__FUNCTION:Ljava/lang/String;

    invoke-virtual {p1}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v3, v4}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1, v2}, Lio/dcloud/feature/bluetooth/BluetoothOver21;->execJsCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 173
    :cond_23
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    .line 174
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21$BTScanCallback;->scanList:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 175
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21$BTScanCallback;->scanList:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21$BTScanCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothOver21;

    sget-object v0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->CALLBACK_DEVICE_FOUND:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/feature/bluetooth/BluetoothOver21$BTScanCallback;->__JS__FUNCTION:Ljava/lang/String;

    invoke-virtual {p1}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v3, v4}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1, v2}, Lio/dcloud/feature/bluetooth/BluetoothOver21;->execJsCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4d
    return-void
.end method
