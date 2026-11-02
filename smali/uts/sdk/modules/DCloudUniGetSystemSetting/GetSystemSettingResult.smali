###### Class uts.sdk.modules.DCloudUniGetSystemSetting.GetSystemSettingResult (uts.sdk.modules.DCloudUniGetSystemSetting.GetSystemSettingResult)
.class public Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;
.super Lio/dcloud/uts/UTSObject;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u001a\u0008\u0016\u0018\u00002\u00020\u0001BI\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001e\u0010\u0006\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\u0008\u0019\u0010\r\"\u0004\u0008\u001a\u0010\u000fR\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0012\"\u0004\u0008\u001c\u0010\u0014R\u001e\u0010\t\u001a\u00020\u00058\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0012\"\u0004\u0008\u001e\u0010\u0014\u00a8\u0006\u001f"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;",
        "Lio/dcloud/uts/UTSObject;",
        "bluetoothEnabled",
        "",
        "bluetoothError",
        "",
        "locationEnabled",
        "wifiEnabled",
        "wifiError",
        "deviceOrientation",
        "<init>",
        "(Ljava/lang/Boolean;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V",
        "getBluetoothEnabled",
        "()Ljava/lang/Boolean;",
        "setBluetoothEnabled",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "getBluetoothError",
        "()Ljava/lang/String;",
        "setBluetoothError",
        "(Ljava/lang/String;)V",
        "getLocationEnabled",
        "()Z",
        "setLocationEnabled",
        "(Z)V",
        "getWifiEnabled",
        "setWifiEnabled",
        "getWifiError",
        "setWifiError",
        "getDeviceOrientation",
        "setDeviceOrientation",
        "uni-getSystemSetting_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private bluetoothEnabled:Ljava/lang/Boolean;

.field private bluetoothError:Ljava/lang/String;

.field private deviceOrientation:Ljava/lang/String;
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field

.field private locationEnabled:Z
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field

.field private wifiEnabled:Ljava/lang/Boolean;

.field private wifiError:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string v0, "deviceOrientation"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Lio/dcloud/uts/UTSObject;-><init>()V

    .line 64
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;->bluetoothEnabled:Ljava/lang/Boolean;

    .line 65
    iput-object p2, p0, Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;->bluetoothError:Ljava/lang/String;

    .line 66
    iput-boolean p3, p0, Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;->locationEnabled:Z

    .line 68
    iput-object p4, p0, Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;->wifiEnabled:Ljava/lang/Boolean;

    .line 69
    iput-object p5, p0, Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;->wifiError:Ljava/lang/String;

    .line 70
    iput-object p6, p0, Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;->deviceOrientation:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 10

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_b

    move-object p2, v0

    :cond_b
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_10

    const/4 p3, 0x0

    :cond_10
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_15

    move-object p4, v0

    :cond_15
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_1c

    move-object p7, p6

    move-object p6, v0

    goto :goto_1e

    :cond_1c
    move-object p7, p6

    move-object p6, p5

    :goto_1e
    move-object p5, p4

    move p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 63
    invoke-direct/range {p1 .. p7}, Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;-><init>(Ljava/lang/Boolean;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBluetoothEnabled()Ljava/lang/Boolean;
    .registers 2

    .line 64
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;->bluetoothEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getBluetoothError()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;->bluetoothError:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOrientation()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;->deviceOrientation:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationEnabled()Z
    .registers 2

    .line 66
    iget-boolean v0, p0, Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;->locationEnabled:Z

    return v0
.end method

.method public getWifiEnabled()Ljava/lang/Boolean;
    .registers 2

    .line 68
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;->wifiEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getWifiError()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;->wifiError:Ljava/lang/String;

    return-object v0
.end method

.method public setBluetoothEnabled(Ljava/lang/Boolean;)V
    .registers 2

    .line 64
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;->bluetoothEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public setBluetoothError(Ljava/lang/String;)V
    .registers 2

    .line 65
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;->bluetoothError:Ljava/lang/String;

    return-void
.end method

.method public setDeviceOrientation(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;->deviceOrientation:Ljava/lang/String;

    return-void
.end method

.method public setLocationEnabled(Z)V
    .registers 2

    .line 66
    iput-boolean p1, p0, Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;->locationEnabled:Z

    return-void
.end method

.method public setWifiEnabled(Ljava/lang/Boolean;)V
    .registers 2

    .line 68
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;->wifiEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public setWifiError(Ljava/lang/String;)V
    .registers 2

    .line 69
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;->wifiError:Ljava/lang/String;

    return-void
.end method
