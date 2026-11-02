###### Class io.dcloud.feature.bluetooth.BluetoothBaseAdapter (io.dcloud.feature.bluetooth.BluetoothBaseAdapter)
.class public Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;
.super Ljava/lang/Object;
.source "BluetoothBaseAdapter.java"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;
    }
.end annotation


# static fields
.field private static CALLBACK_ADAPTER_STATUS_CHANGED:Ljava/lang/String; = "callback_adapter_status_changed"

.field private static CALLBACK_BLECHARACTERISTIC_VALUE_CHANGE:Ljava/lang/String; = "callback_blecharacteristicvaluechange"

.field private static CALLBACK_CONNECTION_STATUS_CHANGED:Ljava/lang/String; = "callback_connection_status_change"

.field static CALLBACK_DEVICE_FOUND:Ljava/lang/String; = "callback_device_found"

.field public static CLIENT_CHARACTERISTIC_CONFIG:Ljava/lang/String; = "00002902-0000-1000-8000-00805f9b34fb"


# instance fields
.field STATUS_ACTION:Ljava/lang/String;

.field final _JS_FUNCTION:Ljava/lang/String;

.field allowDuplicatesDevice:Z

.field private bleConnected:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothStatuReceiver:Landroid/content/BroadcastReceiver;

.field private callbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/common/DHInterface/IWebview;",
            ">;>;"
        }
    .end annotation
.end field

.field private createGatt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;"
        }
    .end annotation
.end field

.field private gattCallback:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;

.field private getDeviceRSSICallback:Ljava/lang/String;

.field private getDeviceRSSIWebview:Lio/dcloud/common/DHInterface/IWebview;

.field isInit:Z

.field isSearchBTDevice:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->allowDuplicatesDevice:Z

    .line 41
    iput-boolean v0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isInit:Z

    .line 43
    iput-boolean v0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isSearchBTDevice:Z

    .line 45
    const-string/jumbo v0, "{code:%d,message:\'%s\'}"

    iput-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->_JS_FUNCTION:Ljava/lang/String;

    .line 47
    const-string v0, "io.dcloud.bluetooth.sendsearch"

    iput-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->STATUS_ACTION:Ljava/lang/String;

    .line 755
    new-instance v0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$1;

    invoke-direct {v0, p0}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$1;-><init>(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)V

    iput-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bluetoothStatuReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)Ljava/util/Map;
    .registers 1

    .line 35
    iget-object p0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)Ljava/util/Map;
    .registers 1

    .line 35
    iget-object p0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->callbacks:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 35
    sget-object v0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->CALLBACK_CONNECTION_STATUS_CHANGED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)Ljava/util/HashMap;
    .registers 1

    .line 35
    iget-object p0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->createGatt:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .line 35
    sget-object v0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->CALLBACK_BLECHARACTERISTIC_VALUE_CHANGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)Lio/dcloud/common/DHInterface/IWebview;
    .registers 1

    .line 35
    iget-object p0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getDeviceRSSIWebview:Lio/dcloud/common/DHInterface/IWebview;

    return-object p0
.end method

.method static synthetic access$602(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;Lio/dcloud/common/DHInterface/IWebview;)Lio/dcloud/common/DHInterface/IWebview;
    .registers 2

    .line 35
    iput-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getDeviceRSSIWebview:Lio/dcloud/common/DHInterface/IWebview;

    return-object p1
.end method

.method static synthetic access$700(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)Ljava/lang/String;
    .registers 1

    .line 35
    iget-object p0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getDeviceRSSICallback:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 35
    iput-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getDeviceRSSICallback:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800()Ljava/lang/String;
    .registers 1

    .line 35
    sget-object v0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->CALLBACK_ADAPTER_STATUS_CHANGED:Ljava/lang/String;

    return-object v0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .registers 8

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 582
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_27

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    .line 583
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 584
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1d

    .line 585
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 586
    :cond_1d
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 588
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 13

    .line 517
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 p3, 0x1

    aput-object p4, v0, p3

    const-string/jumbo p3, "{code:%d,message:\'%s\'}"

    invoke-static {p3, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move v4, p5

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method private getBluetoothGatt(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;
    .registers 3

    .line 521
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    if-eqz v0, :cond_1b

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 522
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothGatt;

    return-object p1

    :cond_1b
    const/4 p1, 0x0

    return-object p1
.end method

.method private getStringIWebviewHashMap(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/common/DHInterface/IWebview;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->callbacks:Ljava/util/Map;

    if-nez p1, :cond_b

    .line 174
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->callbacks:Ljava/util/Map;

    .line 176
    :cond_b
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public static hexToByte(Ljava/lang/String;)[B
    .registers 5

    .line 571
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 572
    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_25

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x2

    .line 573
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    .line 574
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_25
    return-object v0
.end method


# virtual methods
.method varargs checkNull(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 14

    .line 625
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_20

    aget-object v3, p3, v2

    .line 626
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 627
    const-string v8, "invalid data,please check parameters"

    sget v9, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v7, 0x271d

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v4 .. v9}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    const/4 p1, 0x1

    return p1

    :cond_1b
    move-object v5, p1

    move-object v6, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_20
    return v1
.end method

.method public closeBLEConnection(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 11

    const/4 v0, 0x1

    .line 357
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "deviceId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 358
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 360
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v4, p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->checkNull(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1d

    move-object v2, p0

    goto/16 :goto_91

    .line 362
    :cond_1d
    iget-boolean p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isInit:Z

    if-eqz p2, :cond_92

    .line 363
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    if-nez p2, :cond_31

    .line 364
    const-string v6, "no connection"

    sget v7, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v5, 0x2714

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    :cond_31
    move-object v2, p0

    move-object v3, p1

    .line 367
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4b

    iget-object p1, v2, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->createGatt:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4b

    .line 368
    const-string v6, "no connection"

    sget v7, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v5, 0x2714

    invoke-direct/range {v2 .. v7}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    .line 371
    :cond_4b
    const-string p1, ""

    invoke-direct {p0, p1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getStringIWebviewHashMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 372
    invoke-virtual {p1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object p2, v2, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->callbacks:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget-object p1, v2, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_74

    iget-object p1, v2, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_74

    .line 375
    iget-object p1, v2, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 377
    :cond_74
    iget-object p1, v2, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->createGatt:Ljava/util/HashMap;

    if-eqz p1, :cond_91

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_91

    iget-object p1, v2, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->createGatt:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_91

    .line 378
    iget-object p1, v2, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->createGatt:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    :cond_91
    :goto_91
    return-void

    :cond_92
    move-object v2, p0

    move-object v3, p1

    .line 382
    const-string v6, "not init"

    sget v7, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v5, 0x2710

    invoke-direct/range {v2 .. v7}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public closeBluetoothAdapter(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 10

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    .line 101
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.bluetooth_le"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 102
    const-string v5, "system not support"

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v4, 0x2719

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    :cond_25
    move-object v2, p1

    if-nez p2, :cond_34

    .line 105
    const-string/jumbo v5, "unsupport"

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v4, 0x271a

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    .line 107
    :cond_34
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_45

    .line 108
    const-string v5, "not available"

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v4, 0x2711

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    :cond_45
    move-object v1, p0

    .line 111
    iput-boolean v0, v1, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isInit:Z

    .line 112
    iget-object p1, v1, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    if-eqz p1, :cond_7c

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_7c

    .line 113
    iget-object p1, v1, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_77

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 114
    iget-object v0, v1, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothGatt;

    .line 115
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 116
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->close()V

    goto :goto_5c

    .line 118
    :cond_77
    iget-object p1, v1, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 120
    :cond_7c
    iget-object p1, v1, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->createGatt:Ljava/util/HashMap;

    if-eqz p1, :cond_83

    .line 121
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 122
    :cond_83
    const-string v5, "ok"

    sget v6, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public createBLEConnection(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 13

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    .line 211
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    .line 212
    const-string v1, "deviceId"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    const-string v2, "timeout"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 214
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v3, v5}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->checkNull(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    goto/16 :goto_b9

    .line 216
    :cond_22
    iget-boolean v5, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isInit:Z

    if-eqz v5, :cond_ba

    .line 217
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    .line 218
    iget-object v6, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    if-nez v6, :cond_35

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    .line 219
    :cond_35
    iget-object v6, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->createGatt:Ljava/util/HashMap;

    if-nez v6, :cond_40

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->createGatt:Ljava/util/HashMap;

    .line 221
    :cond_40
    :try_start_40
    invoke-virtual {v5, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    .line 222
    iget-object v6, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_64

    iget-object v6, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_64

    .line 223
    const-string v5, "already connect"

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_58} :catch_aa

    const/4 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    :try_start_5b
    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_60

    move-object p1, v1

    return-void

    :catch_60
    move-object p1, v1

    move-object v6, v3

    move-object v3, v2

    goto :goto_ad

    :cond_64
    move-object v6, v3

    move-object v3, p1

    move-object p1, p0

    .line 226
    :try_start_67
    const-string v7, ""

    invoke-direct {p0, v7}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getStringIWebviewHashMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v7

    .line 227
    invoke-virtual {v7, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v8, p1, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->callbacks:Ljava/util/Map;

    invoke-interface {v8, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_87

    .line 231
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p1, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->gattCallback:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;

    const/4 v9, 0x2

    invoke-static {v5, v7, v0, v8, v9}, Lio/dcloud/p/g4$$ExternalSyntheticApiModelOutline0;->m(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    goto :goto_91

    .line 233
    :cond_87
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p1, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->gattCallback:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;

    invoke-virtual {v5, v7, v0, v8}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 235
    :goto_91
    iget-object v5, p1, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->createGatt:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b9

    invoke-static {v4}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p2
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_a0} :catch_ad

    if-nez p2, :cond_b9

    .line 238
    :try_start_a2
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 239
    invoke-static {p0, v1, v2, v0}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;JLjava/lang/Object;)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a9} :catch_b9

    goto :goto_b9

    :catch_aa
    move-object v6, v3

    move-object v3, p1

    move-object p1, p0

    .line 244
    :catch_ad
    :goto_ad
    const-string v5, "no device"

    move-object v2, v3

    move-object v3, v6

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v4, 0x2712

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    :catch_b9
    :cond_b9
    :goto_b9
    return-void

    :cond_ba
    move-object v2, p1

    .line 247
    const-string v5, "not init"

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v4, 0x2710

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public dispose(Ljava/lang/String;)V
    .registers 5

    .line 77
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->callbacks:Ljava/util/Map;

    if-eqz p1, :cond_3d

    .line 78
    sget-object v0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->CALLBACK_ADAPTER_STATUS_CHANGED:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_38

    .line 80
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 81
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 82
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bluetoothStatuReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_16

    .line 85
    :cond_38
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->callbacks:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_3d
    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isInit:Z

    .line 88
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    if-eqz p1, :cond_74

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_74

    .line 89
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_54
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    .line 91
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 92
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    goto :goto_54

    .line 94
    :cond_6f
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_74
    return-void
.end method

.method protected execJsCallback(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    const/4 v0, 0x1

    .line 645
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execJsCallback(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method protected execJsCallback(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 13

    .line 635
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->callbacks:Ljava/util/Map;

    if-nez v0, :cond_5

    goto :goto_38

    .line 636
    :cond_5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_38

    .line 638
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 639
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p4, :cond_2e

    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    goto :goto_30

    :cond_2e
    sget v1, Lio/dcloud/common/util/JSUtil;->ERROR:I

    :goto_30
    move v5, v1

    const/4 v6, 0x1

    move-object v4, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_15

    :cond_38
    :goto_38
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .registers 11

    .line 651
    :try_start_0
    check-cast p1, Landroid/bluetooth/BluetoothGatt;

    .line 652
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 653
    iget-object v1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1b

    goto :goto_8c

    .line 656
    :cond_1b
    iget-object v1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->callbacks:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_8c

    .line 659
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_8c

    .line 660
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 661
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lio/dcloud/common/DHInterface/IWebview;

    .line 662
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 663
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bluetooth"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    const/4 v2, 0x7

    .line 664
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object v1

    .line 665
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_62
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 666
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    goto :goto_8c

    .line 668
    :cond_79
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 669
    const-string v7, "operate time out"

    sget v8, Lio/dcloud/common/util/JSUtil;->ERROR:I
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_80} :catch_8c

    const/16 v6, 0x271c

    move-object v3, p0

    :try_start_83
    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    .line 670
    iget-object p1, v3, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->callbacks:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_8b} :catch_8d

    return-void

    :catch_8c
    :cond_8c
    :goto_8c
    move-object v3, p0

    :catch_8d
    return-void
.end method

.method public getBLEDeviceCharacteristics(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 13

    const/4 v0, 0x0

    .line 387
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    .line 388
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    .line 389
    const-string v2, "deviceId"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 390
    const-string v4, "serviceId"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 391
    filled-new-array {v2, p2}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v3, v4}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->checkNull(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    return-void

    .line 393
    :cond_21
    iget-boolean v4, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isInit:Z

    if-eqz v4, :cond_f7

    .line 394
    iget-object v4, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    if-eqz v4, :cond_eb

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_eb

    iget-object v4, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_eb

    .line 395
    iget-object v4, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGatt;

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p2

    if-nez p2, :cond_55

    .line 397
    const-string v5, "no service"

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v4, 0x2714

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    :cond_55
    move-object v2, p1

    .line 400
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object p1

    .line 401
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    .line 402
    :goto_60
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_d1

    .line 403
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v6, 0x0

    .line 406
    :try_start_6d
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    :try_end_72
    .catch Lorg/json/JSONException; {:try_start_6d .. :try_end_72} :catch_ca

    .line 407
    :try_start_72
    const-string/jumbo v6, "uuid"

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 408
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 409
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v5

    .line 410
    const-string v8, "read"

    and-int/lit8 v9, v5, 0x2

    if-lez v9, :cond_95

    const/4 v9, 0x1

    goto :goto_96

    :cond_95
    const/4 v9, 0x0

    :goto_96
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    and-int/lit8 v8, v5, 0x8

    if-gtz v8, :cond_a4

    and-int/lit8 v8, v5, 0x4

    if-lez v8, :cond_a2

    goto :goto_a4

    :cond_a2
    const/4 v8, 0x0

    goto :goto_a5

    :cond_a4
    :goto_a4
    const/4 v8, 0x1

    .line 413
    :goto_a5
    const-string/jumbo v9, "write"

    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 414
    const-string v8, "notify"

    and-int/lit8 v9, v5, 0x10

    if-lez v9, :cond_b3

    const/4 v9, 0x1

    goto :goto_b4

    :cond_b3
    const/4 v9, 0x0

    :goto_b4
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 415
    const-string v8, "indicate"

    and-int/lit8 v5, v5, 0x20

    if-lez v5, :cond_bf

    const/4 v5, 0x1

    goto :goto_c0

    :cond_bf
    const/4 v5, 0x0

    :goto_c0
    invoke-virtual {v6, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 416
    const-string v5, "properties"

    invoke-virtual {v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c8
    .catch Lorg/json/JSONException; {:try_start_72 .. :try_end_c8} :catch_c9

    goto :goto_cb

    :catch_c9
    move-object v6, v7

    :catch_ca
    move-object v7, v6

    .line 419
    :goto_cb
    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    .line 421
    :cond_d1
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string/jumbo p1, "{\'characteristics\':%s}"

    invoke-static {p1, p2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget v4, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v2

    move-object v2, v3

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void

    :cond_eb
    move-object v2, p1

    .line 423
    const-string v5, "no connection"

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v4, 0x2714

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    :cond_f7
    move-object v2, p1

    .line 426
    const-string v5, "not init"

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v4, 0x2710

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public getBLEDeviceRSSI(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 11

    const/4 v0, 0x1

    .line 292
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "deviceId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 293
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 294
    iget-boolean p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isInit:Z

    if-nez p2, :cond_20

    .line 295
    const-string v6, "not init"

    sget v7, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v5, 0x2710

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    :cond_20
    move-object v2, p0

    move-object v3, p1

    .line 298
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, v4, p1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->checkNull(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2d

    return-void

    .line 301
    :cond_2d
    iget-object p1, v2, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    if-eqz p1, :cond_5b

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5b

    iget-object p1, v2, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5b

    .line 302
    iget-object p1, v2, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothGatt;

    if-nez p1, :cond_53

    .line 304
    const-string v6, "no service"

    sget v7, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v5, 0x2714

    invoke-direct/range {v2 .. v7}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    .line 306
    :cond_53
    iput-object v3, v2, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getDeviceRSSIWebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 307
    iput-object v4, v2, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getDeviceRSSICallback:Ljava/lang/String;

    .line 308
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    return-void

    .line 311
    :cond_5b
    const-string v6, "no connection"

    sget v7, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v5, 0x2714

    invoke-direct/range {v2 .. v7}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public getBLEDeviceServices(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 12

    const/4 v0, 0x1

    .line 431
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "deviceId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 432
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 433
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v5, p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->checkNull(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1c

    goto/16 :goto_8d

    .line 435
    :cond_1c
    iget-boolean p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isInit:Z

    if-eqz p2, :cond_8e

    .line 436
    invoke-direct {p0, v1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getBluetoothGatt(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    if-eqz p2, :cond_82

    .line 438
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p2

    .line 439
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 440
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_33
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattService;

    .line 441
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 443
    :try_start_44
    const-string/jumbo v6, "uuid"

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 444
    const-string v6, "isPrimary"

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v3

    if-nez v3, :cond_60

    const/4 v3, 0x1

    goto :goto_61

    :cond_60
    const/4 v3, 0x0

    :goto_61
    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_64
    .catch Lorg/json/JSONException; {:try_start_44 .. :try_end_64} :catch_64

    .line 447
    :catch_64
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_33

    .line 449
    :cond_68
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const-string/jumbo p2, "{\'services\':%s}"

    invoke-static {p2, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget v6, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, v5

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_8d

    :cond_82
    move-object v4, p1

    .line 451
    const-string v7, "no connection"

    sget v8, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v6, 0x2714

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    :goto_8d
    return-void

    :cond_8e
    move-object v4, p1

    .line 454
    const-string v7, "not init"

    sget v8, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v6, 0x2710

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public getBluetoothAdapterState(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 10

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 128
    iget-boolean p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isInit:Z

    if-eqz p2, :cond_24

    .line 129
    iget-boolean p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isSearchBTDevice:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string/jumbo p2, "{discovering:%b,available:true}"

    invoke-static {p2, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void

    :cond_24
    move-object v1, p1

    .line 131
    const-string v5, "not init"

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v4, 0x2710

    move-object v3, v2

    move-object v2, v1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public getBluetoothDevices(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 3

    return-void
.end method

.method public getConnectedBluetoothDevices(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 11

    const/4 v0, 0x0

    .line 180
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    .line 181
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    const-string v3, "services"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 182
    iget-boolean p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isInit:Z

    if-eqz p2, :cond_84

    .line 183
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v3, "bluetooth"

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothManager;

    if-eqz p2, :cond_83

    const/4 v3, 0x7

    .line 185
    invoke-virtual {p2, v3}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object p2

    .line 186
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 187
    iget-object v4, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    if-eqz v4, :cond_6c

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_6c

    .line 189
    :try_start_35
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_39
    :goto_39
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 190
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 191
    iget-object v6, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 192
    const-string v6, "name"

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string v6, "deviceId"

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_6b} :catch_6c

    goto :goto_39

    .line 200
    :catch_6c
    :cond_6c
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string/jumbo p2, "{devices:%s}"

    invoke-static {p2, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :cond_83
    return-void

    :cond_84
    move-object v1, p1

    .line 203
    const-string v5, "not init"

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v4, 0x2710

    move-object v3, v2

    move-object v2, v1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public isLocationEnabled(Landroid/content/Context;)Z
    .registers 4

    .line 316
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    .line 319
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 322
    const-string v1, "network"

    invoke-virtual {p1, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    if-nez v0, :cond_1b

    if-eqz p1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    return p1

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    return p1
.end method

.method public notifyBLECharacteristicValueChange(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 11

    const/4 v0, 0x0

    .line 461
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    .line 462
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    .line 463
    const-string v1, "serviceId"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 464
    const-string v2, "deviceId"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 465
    const-string v4, "characteristicId"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 466
    const-string v5, "state"

    invoke-virtual {p2, v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 467
    filled-new-array {v1, v2, v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v3, v5}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->checkNull(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    return-void

    .line 469
    :cond_2d
    iget-boolean v5, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isInit:Z

    if-eqz v5, :cond_c9

    .line 471
    invoke-direct {p0, v2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getBluetoothGatt(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    if-eqz v2, :cond_bd

    .line 473
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    if-eqz v1, :cond_b1

    .line 476
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    if-nez v1, :cond_57

    .line 478
    const-string v5, "no characteristic"

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v4, 0x2715

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    :cond_57
    move-object v7, v2

    move-object v2, p1

    move-object p1, v7

    .line 481
    invoke-virtual {p1, v1, v0}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v0

    .line 483
    sget-object v4, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v4

    if-eqz v4, :cond_a6

    if-nez p2, :cond_75

    .line 486
    sget-object p2, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v4, p2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 487
    invoke-virtual {p1, v4}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    goto :goto_8f

    .line 489
    :cond_75
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p2

    const/16 v1, 0x20

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_87

    .line 491
    sget-object p2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    invoke-virtual {v4, p2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 492
    invoke-virtual {p1, v4}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    goto :goto_8f

    .line 495
    :cond_87
    sget-object p2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v4, p2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 496
    invoke-virtual {p1, v4}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    :goto_8f
    if-eqz v0, :cond_9b

    .line 504
    const-string v5, "ok"

    sget v6, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    .line 506
    :cond_9b
    const-string v5, "notify fail"

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v4, 0x271b

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    .line 500
    :cond_a6
    const-string v5, "no descriptor"

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v4, 0x2718

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    :cond_b1
    move-object v2, p1

    .line 508
    const-string v5, "no service"

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v4, 0x2714

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    :cond_bd
    move-object v2, p1

    .line 510
    const-string v5, "no connection"

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v4, 0x2714

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    :cond_c9
    move-object v2, p1

    .line 513
    const-string v5, "not init"

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v4, 0x2710

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public onBLECharacteristicValueChange(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 5

    .line 528
    sget-object v0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->CALLBACK_BLECHARACTERISTIC_VALUE_CHANGE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getStringIWebviewHashMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    .line 529
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->callbacks:Ljava/util/Map;

    sget-object p2, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->CALLBACK_BLECHARACTERISTIC_VALUE_CHANGE:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onBLEConnectionStateChange(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 5

    .line 534
    sget-object v0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->CALLBACK_CONNECTION_STATUS_CHANGED:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getStringIWebviewHashMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    .line 535
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->callbacks:Ljava/util/Map;

    sget-object p2, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->CALLBACK_CONNECTION_STATUS_CHANGED:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onBluetoothAdapterStateChange(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 8

    .line 155
    sget-object v0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->CALLBACK_ADAPTER_STATUS_CHANGED:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getStringIWebviewHashMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    .line 156
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->callbacks:Ljava/util/Map;

    sget-object v1, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->CALLBACK_ADAPTER_STATUS_CHANGED:Ljava/lang/String;

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 160
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 161
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 162
    new-instance v2, Landroid/content/IntentFilter;

    iget-object v3, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->STATUS_ACTION:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bluetoothStatuReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v3, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bluetoothStatuReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bluetoothStatuReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p2, v0, :cond_5d

    .line 167
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bluetoothStatuReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x4

    invoke-static {p1, p2, v2, v0}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void

    .line 169
    :cond_5d
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bluetoothStatuReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onBluetoothDeviceFound(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 5

    .line 136
    sget-object v0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->CALLBACK_DEVICE_FOUND:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getStringIWebviewHashMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    .line 137
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->callbacks:Ljava/util/Map;

    sget-object p2, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->CALLBACK_DEVICE_FOUND:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public openBluetoothAdapter(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 10

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    .line 60
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 61
    const-string v5, "system not support"

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v4, 0x2719

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    :cond_25
    move-object v2, p1

    if-nez p2, :cond_34

    .line 64
    const-string/jumbo v5, "unsupport"

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v4, 0x271a

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    .line 66
    :cond_34
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_45

    .line 67
    const-string v5, "not available"

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v4, 0x2711

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    :cond_45
    move-object v1, p0

    .line 70
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    const/4 p1, 0x1

    .line 71
    iput-boolean p1, v1, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isInit:Z

    .line 72
    new-instance p1, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;-><init>(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$1;)V

    iput-object p1, v1, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->gattCallback:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;

    .line 73
    const-string v5, "ok"

    sget v6, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public readBLECharacteristicValue(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 10

    const/4 v0, 0x0

    .line 540
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    .line 541
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    .line 542
    const-string v0, "serviceId"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 543
    const-string v1, "deviceId"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 544
    const-string v2, "characteristicId"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 545
    filled-new-array {v0, v1, p2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v3, v2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->checkNull(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_6c

    .line 547
    :cond_27
    iget-boolean v2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isInit:Z

    if-eqz v2, :cond_79

    .line 548
    invoke-direct {p0, v1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getBluetoothGatt(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    if-eqz v1, :cond_6d

    .line 550
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 552
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    if-nez p2, :cond_51

    .line 554
    const-string v5, "no characteristic"

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v4, 0x2715

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    :cond_51
    move-object v2, p1

    .line 557
    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 558
    const-string v5, "ok"

    sget v6, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    .line 560
    :cond_62
    const-string v5, "property not support"

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v4, 0x2717

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    :cond_6c
    :goto_6c
    return-void

    :cond_6d
    move-object v2, p1

    .line 564
    const-string v5, "no connection"

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v4, 0x2714

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    :cond_79
    move-object v2, p1

    .line 566
    const-string v5, "not init"

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v4, 0x2710

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public setBLEMTU(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 12

    const/4 v0, 0x1

    .line 253
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "deviceId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 254
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 255
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "mtu"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 260
    iget-boolean v0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isInit:Z

    if-nez v0, :cond_2a

    .line 261
    const-string v7, "not init"

    sget v8, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v6, 0x2710

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    :cond_2a
    move-object v3, p0

    move-object v4, p1

    .line 264
    filled-new-array {v1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, v5, p1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->checkNull(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_37

    return-void

    .line 267
    :cond_37
    :try_start_37
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 p2, 0x16

    if-le p1, p2, :cond_79

    const/16 p2, 0x200

    if-gt p1, p2, :cond_79

    .line 269
    iget-object p2, v3, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    if-eqz p2, :cond_6e

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6e

    .line 270
    iget-object p2, v3, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothGatt;

    if-eqz p2, :cond_63

    .line 272
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    .line 273
    const-string v7, "ok"

    sget v8, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    .line 275
    :cond_63
    const-string v7, "no service"

    sget v8, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v6, 0x2714

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    .line 278
    :cond_6e
    const-string v7, "no connection"

    sget v8, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v6, 0x2714

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    .line 281
    :cond_79
    const-string v7, "invalid data"

    sget v8, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v6, 0x271d

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_83} :catch_84

    return-void

    .line 284
    :catch_84
    const-string v7, "parameter.mtu should be Number"

    sget v8, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v6, 0x271d

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public startBluetoothDevicesDiscovery(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 3

    return-void
.end method

.method public stopBluetoothDevicesDiscovery(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 3

    return-void
.end method

.method public writeBLECharacteristicValue(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 10

    const/4 v0, 0x0

    .line 592
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    .line 593
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    .line 594
    const-string v0, "serviceId"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 595
    const-string v1, "deviceId"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 596
    const-string v2, "characteristicId"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 597
    const-string/jumbo v4, "value"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 598
    filled-new-array {v0, v1, v2, p2}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v3, v4}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->checkNull(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    goto :goto_7a

    .line 600
    :cond_2e
    invoke-static {p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->hexToByte(Ljava/lang/String;)[B

    move-result-object p2

    .line 601
    iget-boolean v4, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isInit:Z

    if-eqz v4, :cond_87

    .line 602
    invoke-direct {p0, v1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getBluetoothGatt(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    if-eqz v1, :cond_7b

    .line 604
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-eqz v0, :cond_7a

    .line 606
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_5c

    .line 608
    const-string v5, "no characteristic"

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v4, 0x2715

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    :cond_5c
    move-object v2, p1

    .line 611
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 612
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    if-eqz p1, :cond_70

    .line 613
    const-string v5, "ok"

    sget v6, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    .line 615
    :cond_70
    const-string v5, "property not support"

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v4, 0x2717

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    :cond_7a
    :goto_7a
    return-void

    :cond_7b
    move-object v2, p1

    .line 619
    const-string v5, "no connection"

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v4, 0x2714

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    :cond_87
    move-object v2, p1

    .line 621
    const-string v5, "not init"

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v4, 0x2710

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

###### Class io.dcloud.feature.bluetooth.BluetoothBaseAdapter.AnonymousClass1 (io.dcloud.feature.bluetooth.BluetoothBaseAdapter$1)
.class Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;


# direct methods
.method constructor <init>(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)V
    .registers 2

    .line 755
    iput-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$1;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .line 758
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 759
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const-string/jumbo v2, "{discovering:%b,available:%b}"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_3f

    .line 760
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 761
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$1;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-static {}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$800()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$1;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    iget-boolean v5, v5, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isSearchBTDevice:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v6, 0xc

    if-ne p1, v6, :cond_2c

    const/4 p1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p1, 0x0

    :goto_2d
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v3

    aput-object p1, v1, v4

    invoke-static {v2, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1, v4}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execJsCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 762
    :cond_3f
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$1;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    iget-object p2, p2, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->STATUS_ACTION:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_68

    .line 763
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$1;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-static {}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$800()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$1;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    iget-boolean v0, v0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isSearchBTDevice:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    aput-object v5, v1, v4

    invoke-static {v2, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execJsCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_68
    return-void
.end method

###### Class io.dcloud.feature.bluetooth.BluetoothBaseAdapter.BTBluetoothGattCallback (io.dcloud.feature.bluetooth.BluetoothBaseAdapter$BTBluetoothGattCallback)
.class Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BluetoothBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BTBluetoothGattCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;


# direct methods
.method private constructor <init>(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)V
    .registers 2

    .line 679
    iput-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$1;)V
    .registers 3

    .line 679
    invoke-direct {p0, p1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;-><init>(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 9

    .line 732
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-static {}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$500()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    invoke-static {p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object v2, v4, p1

    const/4 v2, 0x2

    aput-object v3, v4, v2

    const/4 v2, 0x3

    aput-object p2, v4, v2

    const-string/jumbo p2, "{deviceId:\'%s\',serviceId:\'%s\',characteristicId:\'%s\',value:\'%s\'}"

    invoke-static {p2, v4}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2, p1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execJsCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 9

    .line 737
    iget-object p3, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-static {}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$500()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    invoke-static {p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v1, v3, p1

    const/4 v1, 0x2

    aput-object v2, v3, v1

    const/4 v1, 0x3

    aput-object p2, v3, v1

    const-string/jumbo p2, "{deviceId:\'%s\',serviceId:\'%s\',characteristicId:\'%s\',value:\'%s\'}"

    invoke-static {p2, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v0, p2, p1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execJsCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 4

    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 14

    .line 684
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 685
    const-string v1, "ok"

    const-string/jumbo v2, "{deviceId:\'%s\',connected:%b}"

    const-string/jumbo v3, "{code:%d,message:\'%s\'}"

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 714
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 694
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-nez p2, :cond_5e

    if-ne p3, v4, :cond_5e

    .line 686
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result p2

    if-nez p2, :cond_157

    .line 687
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-static {p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$100(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    new-array p2, v4, [Ljava/lang/Object;

    aput-object v8, p2, v6

    aput-object v1, p2, v5

    invoke-static {v3, p2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2, v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execJsCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 689
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-static {p1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$200(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-static {}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$300()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v6

    aput-object p3, v1, v5

    invoke-static {v2, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3, v5}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execJsCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_5e
    if-nez p2, :cond_d5

    if-nez p3, :cond_d5

    .line 693
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 694
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    new-array p2, v4, [Ljava/lang/Object;

    aput-object v8, p2, v6

    aput-object v1, p2, v5

    invoke-static {v3, p2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2, v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execJsCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 695
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-static {p1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$100(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_c2

    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-static {p1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$100(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c2

    .line 696
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-static {p1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$100(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 697
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-static {p1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$100(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 698
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-static {p1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$100(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-static {}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$300()Ljava/lang/String;

    move-result-object p2

    new-array p3, v4, [Ljava/lang/Object;

    aput-object v0, p3, v6

    aput-object v7, p3, v5

    invoke-static {v2, p3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3, v5}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execJsCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 701
    :cond_c2
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-static {p1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$400(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-static {p1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$200(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_d5
    if-nez p3, :cond_103

    .line 705
    iget-object p3, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    const/16 v1, 0x271c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "connect fail.status:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v1, v8, v6

    aput-object p2, v8, v5

    invoke-static {v3, v8}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v0, p2, v6, v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execJsCallback(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 706
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-static {p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$200(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    :cond_103
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 709
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 710
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-static {p1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$100(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_157

    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-static {p1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$100(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_157

    .line 711
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-static {p1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$100(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 712
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-static {p1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$100(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 713
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-static {p1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$100(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-static {}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$300()Ljava/lang/String;

    move-result-object p2

    new-array p3, v4, [Ljava/lang/Object;

    aput-object v0, p3, v6

    aput-object v7, p3, v5

    invoke-static {v2, p3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3, v5}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execJsCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_157
    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 10

    .line 747
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-static {p1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$600(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    if-eqz p1, :cond_46

    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-static {p1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$700(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_46

    .line 748
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-static {p1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$600(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-static {p1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$700(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, p2

    const/4 p1, 0x1

    aput-object p3, v2, p1

    const-string/jumbo p1, "{RSSI:%d,code:%d}"

    invoke-static {p1, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 749
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$602(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;Lio/dcloud/common/DHInterface/IWebview;)Lio/dcloud/common/DHInterface/IWebview;

    .line 750
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-static {p1, p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$702(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;Ljava/lang/String;)Ljava/lang/String;

    :cond_46
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 8

    if-nez p2, :cond_51

    .line 722
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    .line 723
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-static {v0}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$100(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const-string v1, "ok"

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const-string/jumbo v1, "{code:%d,message:\'%s\'}"

    invoke-static {v1, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1, v0}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execJsCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 725
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-static {p1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$200(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-static {}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    aput-object v3, v2, v4

    const-string/jumbo p2, "{deviceId:\'%s\',connected:%b}"

    invoke-static {p2, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2, v4}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execJsCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_51
    return-void
.end method
