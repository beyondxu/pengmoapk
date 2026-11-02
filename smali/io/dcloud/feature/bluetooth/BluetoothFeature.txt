###### Class io.dcloud.feature.bluetooth.BluetoothFeature (io.dcloud.feature.bluetooth.BluetoothFeature)
.class public Lio/dcloud/feature/bluetooth/BluetoothFeature;
.super Lio/dcloud/common/DHInterface/StandardFeature;
.source "BluetoothFeature.java"


# instance fields
.field private bluetoothF:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lio/dcloud/common/DHInterface/StandardFeature;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/bluetooth/BluetoothFeature;)Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;
    .registers 1

    .line 15
    iget-object p0, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature;->bluetoothF:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    return-object p0
.end method


# virtual methods
.method public closeBLEConnection(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 5

    .line 134
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Bluetooth-closeBLEConnection"

    invoke-static {v0, v1}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature;->bluetoothF:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->closeBLEConnection(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    return-void
.end method

.method public closeBluetoothAdapter(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 5

    .line 32
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Bluetooth-closeBluetoothAdapter"

    invoke-static {v0, v1}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature;->bluetoothF:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->closeBluetoothAdapter(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    return-void
.end method

.method public createBLEConnection(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 5

    .line 119
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Bluetooth-createBLEConnection"

    invoke-static {v0, v1}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature;->bluetoothF:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->createBLEConnection(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    return-void
.end method

.method public dispose(Ljava/lang/String;)V
    .registers 3

    .line 175
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature;->bluetoothF:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->dispose(Ljava/lang/String;)V

    return-void
.end method

.method public getBLEDeviceCharacteristics(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 5

    .line 139
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Bluetooth-getBLEDeviceCharacteristics"

    invoke-static {v0, v1}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature;->bluetoothF:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getBLEDeviceCharacteristics(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    return-void
.end method

.method public getBLEDeviceRSSI(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 5

    .line 129
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Bluetooth-getBLEDeviceRSSI"

    invoke-static {v0, v1}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature;->bluetoothF:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getBLEDeviceRSSI(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    return-void
.end method

.method public getBLEDeviceServices(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 5

    .line 144
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Bluetooth-getBLEDeviceServices"

    invoke-static {v0, v1}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature;->bluetoothF:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getBLEDeviceServices(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    return-void
.end method

.method public getBluetoothAdapterState(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 5

    .line 37
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Bluetooth-getBluetoothAdapterState"

    invoke-static {v0, v1}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature;->bluetoothF:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getBluetoothAdapterState(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    return-void
.end method

.method public getBluetoothDevices(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 5

    .line 52
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Bluetooth-getBluetoothDevices"

    invoke-static {v0, v1}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature;->bluetoothF:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getBluetoothDevices(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    return-void
.end method

.method public getConnectedBluetoothDevices(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 5

    .line 57
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Bluetooth-getConnectedBluetoothDevices"

    invoke-static {v0, v1}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature;->bluetoothF:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getConnectedBluetoothDevices(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    return-void
.end method

.method public init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .registers 3

    .line 22
    invoke-super {p0, p1, p2}, Lio/dcloud/common/DHInterface/StandardFeature;->init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V

    .line 23
    new-instance p1, Lio/dcloud/feature/bluetooth/BluetoothUnder21;

    invoke-direct {p1}, Lio/dcloud/feature/bluetooth/BluetoothUnder21;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature;->bluetoothF:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    return-void
.end method

.method public notifyBLECharacteristicValueChange(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 5

    .line 149
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Bluetooth-notifyBLECharacteristicValueChange"

    invoke-static {v0, v1}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature;->bluetoothF:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->notifyBLECharacteristicValueChange(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    return-void
.end method

.method public onBLECharacteristicValueChange(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 5

    .line 154
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Bluetooth-onBLECharacteristicValueChange"

    invoke-static {v0, v1}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature;->bluetoothF:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->onBLECharacteristicValueChange(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    return-void
.end method

.method public onBLEConnectionStateChange(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 5

    .line 159
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Bluetooth-onBLEConnectionStateChange"

    invoke-static {v0, v1}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature;->bluetoothF:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->onBLEConnectionStateChange(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    return-void
.end method

.method public onBluetoothAdapterStateChange(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 5

    .line 42
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Bluetooth-onBluetoothAdapterStateChange"

    invoke-static {v0, v1}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature;->bluetoothF:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->onBluetoothAdapterStateChange(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    return-void
.end method

.method public onBluetoothDeviceFound(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 5

    .line 47
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Bluetooth-onBluetoothDeviceFound"

    invoke-static {v0, v1}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature;->bluetoothF:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->onBluetoothDeviceFound(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    return-void
.end method

.method public openBluetoothAdapter(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 5

    .line 27
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Bluetooth-openBluetoothAdapter"

    invoke-static {v0, v1}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature;->bluetoothF:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->openBluetoothAdapter(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    return-void
.end method

.method public readBLECharacteristicValue(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 5

    .line 164
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Bluetooth-readBLECharacteristicValue"

    invoke-static {v0, v1}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature;->bluetoothF:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->readBLECharacteristicValue(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    return-void
.end method

.method public setBLEMTU(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 5

    .line 124
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Bluetooth-setBLEMTU"

    invoke-static {v0, v1}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature;->bluetoothF:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->setBLEMTU(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    return-void
.end method

.method public startBluetoothDevicesDiscovery(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 8

    .line 62
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Bluetooth-startBluetoothDevicesDiscovery"

    invoke-static {v0, v1}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    if-lt v0, v1, :cond_28

    .line 64
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    const-string v4, "android.permission.BLUETOOTH_CONNECT"

    filled-new-array {v1, v4, v3, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/dcloud/feature/bluetooth/BluetoothFeature$1;

    invoke-direct {v2, p0, p1, p2}, Lio/dcloud/feature/bluetooth/BluetoothFeature$1;-><init>(Lio/dcloud/feature/bluetooth/BluetoothFeature;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    invoke-static {v0, v1, v2}, Lio/dcloud/common/adapter/util/PermissionUtil;->useSystemPermissions(Landroid/app/Activity;[Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    return-void

    .line 91
    :cond_28
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/dcloud/feature/bluetooth/BluetoothFeature$2;

    invoke-direct {v2, p0, p1, p2}, Lio/dcloud/feature/bluetooth/BluetoothFeature$2;-><init>(Lio/dcloud/feature/bluetooth/BluetoothFeature;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    invoke-static {v0, v1, v2}, Lio/dcloud/common/adapter/util/PermissionUtil;->useSystemPermissions(Landroid/app/Activity;[Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    return-void
.end method

.method public stopBluetoothDevicesDiscovery(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 5

    .line 114
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Bluetooth-stopBluetoothDevicesDiscovery"

    invoke-static {v0, v1}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature;->bluetoothF:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->stopBluetoothDevicesDiscovery(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    return-void
.end method

.method public writeBLECharacteristicValue(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 5

    .line 169
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Bluetooth-writeBLECharacteristicValue"

    invoke-static {v0, v1}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature;->bluetoothF:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->writeBLECharacteristicValue(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    return-void
.end method

###### Class io.dcloud.feature.bluetooth.BluetoothFeature.AnonymousClass1 (io.dcloud.feature.bluetooth.BluetoothFeature$1)
.class Lio/dcloud/feature/bluetooth/BluetoothFeature$1;
.super Lio/dcloud/common/adapter/util/PermissionUtil$Request;
.source "BluetoothFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/bluetooth/BluetoothFeature;->startBluetoothDevicesDiscovery(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/bluetooth/BluetoothFeature;

.field time:I

.field final synthetic val$args:Lorg/json/JSONArray;

.field final synthetic val$pwebview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method constructor <init>(Lio/dcloud/feature/bluetooth/BluetoothFeature;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 4

    .line 69
    iput-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature$1;->this$0:Lio/dcloud/feature/bluetooth/BluetoothFeature;

    iput-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature$1;->val$pwebview:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature$1;->val$args:Lorg/json/JSONArray;

    invoke-direct {p0}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;-><init>()V

    const/4 p1, 0x0

    .line 72
    iput p1, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature$1;->time:I

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .registers 10

    .line 83
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature$1;->val$args:Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 84
    iget-object v2, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature$1;->val$pwebview:Lio/dcloud/common/DHInterface/IWebview;

    const/16 v0, 0x2710

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "permission denied"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    const/4 v0, 0x1

    aput-object p1, v4, v0

    const-string/jumbo p1, "{code:%d,message:\'%s\'}"

    invoke-static {p1, v4}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .registers 4

    .line 75
    iget p1, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature$1;->time:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature$1;->time:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_16

    .line 77
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature$1;->this$0:Lio/dcloud/feature/bluetooth/BluetoothFeature;

    invoke-static {p1}, Lio/dcloud/feature/bluetooth/BluetoothFeature;->access$000(Lio/dcloud/feature/bluetooth/BluetoothFeature;)Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature$1;->val$pwebview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature$1;->val$args:Lorg/json/JSONArray;

    invoke-virtual {p1, v0, v1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->startBluetoothDevicesDiscovery(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    :cond_16
    return-void
.end method

###### Class io.dcloud.feature.bluetooth.BluetoothFeature.AnonymousClass2 (io.dcloud.feature.bluetooth.BluetoothFeature$2)
.class Lio/dcloud/feature/bluetooth/BluetoothFeature$2;
.super Lio/dcloud/common/adapter/util/PermissionUtil$Request;
.source "BluetoothFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/bluetooth/BluetoothFeature;->startBluetoothDevicesDiscovery(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/bluetooth/BluetoothFeature;

.field times:I

.field final synthetic val$args:Lorg/json/JSONArray;

.field final synthetic val$pwebview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method constructor <init>(Lio/dcloud/feature/bluetooth/BluetoothFeature;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 4

    .line 91
    iput-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature$2;->this$0:Lio/dcloud/feature/bluetooth/BluetoothFeature;

    iput-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature$2;->val$pwebview:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature$2;->val$args:Lorg/json/JSONArray;

    invoke-direct {p0}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;-><init>()V

    const/4 p1, 0x0

    .line 92
    iput p1, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature$2;->times:I

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .registers 4

    .line 104
    iget p1, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature$2;->times:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature$2;->times:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_16

    .line 106
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature$2;->this$0:Lio/dcloud/feature/bluetooth/BluetoothFeature;

    invoke-static {p1}, Lio/dcloud/feature/bluetooth/BluetoothFeature;->access$000(Lio/dcloud/feature/bluetooth/BluetoothFeature;)Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature$2;->val$pwebview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature$2;->val$args:Lorg/json/JSONArray;

    invoke-virtual {p1, v0, v1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->startBluetoothDevicesDiscovery(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    :cond_16
    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .registers 4

    .line 96
    iget p1, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature$2;->times:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature$2;->times:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_16

    .line 98
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature$2;->this$0:Lio/dcloud/feature/bluetooth/BluetoothFeature;

    invoke-static {p1}, Lio/dcloud/feature/bluetooth/BluetoothFeature;->access$000(Lio/dcloud/feature/bluetooth/BluetoothFeature;)Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature$2;->val$pwebview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/bluetooth/BluetoothFeature$2;->val$args:Lorg/json/JSONArray;

    invoke-virtual {p1, v0, v1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->startBluetoothDevicesDiscovery(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    :cond_16
    return-void
.end method
