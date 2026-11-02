###### Class io.dcloud.common.adapter.util.PermissionUtil (io.dcloud.common.adapter.util.PermissionUtil)
.class public Lio/dcloud/common/adapter/util/PermissionUtil;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReflectAble;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/adapter/util/PermissionUtil$Request;,
        Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;,
        Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;,
        Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;,
        Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;
    }
.end annotation


# static fields
.field public static final PMS_CAMERA:Ljava/lang/String; = "CAMERA"

.field public static final PMS_CONTACTS:Ljava/lang/String; = "CONTACTS"

.field public static final PMS_GALLERY:Ljava/lang/String; = "GALLERY"

.field public static final PMS_LOCATION:Ljava/lang/String; = "LOCATION"

.field public static final PMS_NATIVEJS:Ljava/lang/String; = "NATIVE.JS"

.field public static final PMS_PHONE:Ljava/lang/String; = "PHONE"

.field public static final PMS_PUSH:Ljava/lang/String; = "PUSH"

.field public static final PMS_RECORD:Ljava/lang/String; = "RECORD"

.field public static final PMS_SHORTCUT:Ljava/lang/String; = "SHORTCUT"

.field public static final PMS_SMS:Ljava/lang/String; = "SMS"

.field public static final PMS_STORAGE:Ljava/lang/String; = "STORAGE"

.field public static final PMS_STORAGE_IMAGE:Ljava/lang/String; = "STORAGE_IMAGE"

.field private static alwaysDeniedPer:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static isCheckPermissionDisabled:Z = false

.field private static sActivityResultCallBacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sDefQequestCode:I

.field private static sPermissionData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;",
            ">;"
        }
    .end annotation
.end field

.field private static sRequestCallBacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Lio/dcloud/common/adapter/util/PermissionUtil$Request;",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sRequestCodeCounter:I

.field public static sUseStreamAppPermissionDialogCount:I

.field private static sUseStreamAppPermissionDialogs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;",
            ">;"
        }
    .end annotation
.end field

.field private static useRejectedCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/dcloud/common/adapter/util/PermissionUtil;->useRejectedCache:Ljava/util/HashMap;

    .line 300
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/dcloud/common/adapter/util/PermissionUtil;->sActivityResultCallBacks:Ljava/util/HashMap;

    .line 463
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lio/dcloud/common/adapter/util/PermissionUtil;->sUseStreamAppPermissionDialogs:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 464
    sput v0, Lio/dcloud/common/adapter/util/PermissionUtil;->sUseStreamAppPermissionDialogCount:I

    .line 821
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sRequestCallBacks:Ljava/util/HashMap;

    .line 880
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sPermissionData:Ljava/util/HashMap;

    .line 882
    new-instance v2, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;

    sget v3, Lio/dcloud/base/R$string;->dcloud_permissions_whether_allow:I

    const-string v4, "LOCATION"

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v2, v4, v3, v5, v6}, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    sget-object v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sPermissionData:Ljava/util/HashMap;

    new-instance v2, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;

    sget v3, Lio/dcloud/base/R$string;->dcloud_permissions_record_whether_allow:I

    const-string v4, "RECORD"

    invoke-direct {v2, v4, v3, v5, v6}, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    sget-object v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sPermissionData:Ljava/util/HashMap;

    new-instance v2, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;

    sget v3, Lio/dcloud/base/R$string;->dcloud_permissions_camera_whether_allow:I

    const-string v4, "CAMERA"

    invoke-direct {v2, v4, v3, v5, v6}, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    sget-object v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sPermissionData:Ljava/util/HashMap;

    new-instance v2, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;

    sget v3, Lio/dcloud/base/R$string;->dcloud_permissions_album_whether_allow:I

    const-string v4, "GALLERY"

    invoke-direct {v2, v4, v3, v5, v6}, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    sget-object v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sPermissionData:Ljava/util/HashMap;

    new-instance v2, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;

    sget v3, Lio/dcloud/base/R$string;->dcloud_permissions_informs_whether_allow:I

    const-string v4, "PUSH"

    invoke-direct {v2, v4, v3, v5, v6}, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    sget-object v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sPermissionData:Ljava/util/HashMap;

    new-instance v2, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;

    sget v3, Lio/dcloud/base/R$string;->dcloud_permissions_short_cut_close_tips:I

    const-string v4, "SHORTCUT"

    invoke-direct {v2, v4, v3, v6, v0}, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    sget-object v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sPermissionData:Ljava/util/HashMap;

    new-instance v2, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;

    sget v3, Lio/dcloud/base/R$string;->dcloud_permissions_sms_whether_allow:I

    const-string v4, "SMS"

    invoke-direct {v2, v4, v3, v5, v6}, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    sget-object v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sPermissionData:Ljava/util/HashMap;

    new-instance v2, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;

    sget v3, Lio/dcloud/base/R$string;->dcloud_permissions_phone_call_whether_allow:I

    const-string v4, "PHONE"

    invoke-direct {v2, v4, v3, v5, v6}, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    sget-object v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sPermissionData:Ljava/util/HashMap;

    new-instance v2, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;

    sget v3, Lio/dcloud/base/R$string;->dcloud_permissions_njs_whether_allow:I

    const-string v4, "NATIVE.JS"

    invoke-direct {v2, v4, v3, v6, v0}, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0xec59

    .line 1010
    sput v0, Lio/dcloud/common/adapter/util/PermissionUtil;->sDefQequestCode:I

    .line 1012
    sput v0, Lio/dcloud/common/adapter/util/PermissionUtil;->sRequestCodeCounter:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/PermissionUtil;->useRejectedCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;I)V
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/dcloud/common/adapter/util/PermissionUtil;->saveCallabckData(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;I)V

    return-void
.end method

.method static synthetic access$500(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/ISysEventListener;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lio/dcloud/common/adapter/util/PermissionUtil;->unregisterWebAppReStartEvent(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/ISysEventListener;)V

    return-void
.end method

.method static synthetic access$600()V
    .registers 0

    .line 1
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->showStreamAppPermissionDialog()V

    return-void
.end method

.method static synthetic access$700()I
    .registers 1

    .line 1
    sget v0, Lio/dcloud/common/adapter/util/PermissionUtil;->sDefQequestCode:I

    return v0
.end method

.method private static caseVersion(Landroid/app/Activity;)Z
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_24

    if-eqz p0, :cond_24

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt p0, v1, :cond_24

    sget-object p0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v0, Lio/dcloud/common/adapter/util/MobilePhoneModel;->GIONEE:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    sget-object v0, Lio/dcloud/common/adapter/util/MobilePhoneModel;->QIHU360:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public static checkLocationPermission(Landroid/app/Activity;)Z
    .registers 4

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PermissionUtil;->isEMUIRom(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkPermission_EMUI(Landroid/app/Activity;)Z

    move-result p0

    return p0

    .line 3
    :cond_b
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PermissionUtil;->isMiuiRom(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    .line 4
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lio/dcloud/common/adapter/util/PermissionUtil;->isMiui(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/16 v0, -0x64

    if-eq p0, v0, :cond_2d

    if-nez p0, :cond_20

    return v1

    :cond_20
    const/4 p0, 0x0

    return p0

    .line 8
    :cond_22
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PermissionUtil;->isFlymeRom(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 9
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkPermission_Flyme(Landroid/app/Activity;)Z

    move-result p0

    return p0

    :cond_2d
    return v1
.end method

.method public static checkLocationService(Landroid/app/Activity;)Z
    .registers 4

    const/4 v0, 0x1

    .line 1
    :try_start_1
    const-string v1, "location"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    .line 2
    const-string v1, "gps"

    invoke-virtual {p0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 3
    const-string v2, "network"

    invoke-virtual {p0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_1d

    if-nez v1, :cond_1c

    if-eqz p0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x0

    return p0

    :cond_1c
    :goto_1c
    return v0

    :catch_1d
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static checkPermission(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 1
    aget-object v1, p1, v0

    const-string v2, "SHORTCUT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2
    invoke-static {p0, p1}, Lio/dcloud/common/core/permission/PermissionControler;->checkPermission(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_10
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/adapter/util/PermissionUtil;->caseVersion(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 5
    invoke-static {p0, p1}, Lio/dcloud/common/core/permission/PermissionControler;->checkPermission(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1f
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    aget-object p1, p1, v0

    invoke-static {p1}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert2SystemPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p0

    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p1, p0}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkSelfPermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_3b

    .line 9
    const-string p0, "denied"

    return-object p0

    .line 11
    :cond_3b
    const-string p0, "notdeny"

    return-object p0
.end method

.method public static checkPermissionDenied(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PermissionUtil;->initAlwaysDenied(Landroid/app/Activity;)V

    .line 2
    sget-object v0, Lio/dcloud/common/adapter/util/PermissionUtil;->alwaysDeniedPer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3
    sget-boolean v0, Lio/dcloud/common/adapter/util/PermissionUtil;->isCheckPermissionDisabled:Z

    if-nez v0, :cond_15

    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_17

    :cond_15
    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method private static checkPermission_EMUI(Landroid/app/Activity;)Z
    .registers 8

    const/4 v0, 0x1

    .line 1
    :try_start_1
    const-string v1, "com.huawei.android.app.AppOpsManagerEx"

    const-string v2, "getMode"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v6

    aput-object p0, v3, v0

    const/4 p0, 0x0

    invoke-static {v1, v2, p0, v4, v3}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_30

    if-ne p0, v0, :cond_2f

    return v0

    :cond_2f
    return v6

    :catchall_30
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method private static checkPermission_Flyme(Landroid/app/Activity;)Z
    .registers 7

    const/4 p0, 0x1

    .line 1
    :try_start_1
    const-string v0, "meizu.security.FlymePermissionManager"

    const-string v1, "isFlymePermissionGranted"

    new-array v2, p0, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0x4b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v5, p0, [Ljava/lang/Object;

    aput-object v3, v5, v4

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v5}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_22

    return p0

    :catchall_22
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return p0
.end method

.method public static checkPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .registers 8

    if-eqz p1, :cond_1c

    .line 1
    array-length v0, p1

    if-lez v0, :cond_1c

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_1c

    aget-object v3, p1, v2

    .line 3
    move-object v4, p0

    check-cast v4, Landroid/app/Activity;

    const-string v5, ""

    invoke-static {v4, v3, v5}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkSelfPermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_19

    return v1

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1c
    const/4 p0, 0x1

    return p0
.end method

.method public static checkSelfPermission(Landroid/app/Activity;Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_2b

    if-eqz p1, :cond_2b

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v2, v4, v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string p1, "checkSelfPermission"

    invoke-static {v1, p1, p0, v4, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 13
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_2b

    .line 14
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2b
    return v0
.end method

.method public static checkSelfPermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 1
    const-string v0, "android.permission.INSTALL_SHORTCUT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2
    invoke-static {p0, p2}, Lio/dcloud/common/util/AppPermissionUtil;->checkPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p1, p0, :cond_11

    const/4 p0, 0x0

    return p0

    :cond_11
    const/4 p0, -0x1

    return p0

    .line 8
    :cond_13
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PermissionUtil;->caseVersion(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_20

    if-eqz p1, :cond_20

    .line 9
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 11
    :cond_20
    invoke-static {p0, p1, p2}, Lio/dcloud/common/adapter/util/PermissionUtil;->trycatchGetPermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static checkStreamAppPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 1
    const-string/jumbo v0, "stream_permission"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static clearPermission(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 1
    const-string/jumbo v0, "stream_permission"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    sget-object v0, Lio/dcloud/common/adapter/util/PermissionUtil;->sPermissionData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 5
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_16

    .line 9
    :cond_3a
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static clearUseRejectedCache()V
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/PermissionUtil;->useRejectedCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private static declared-synchronized continueShowStreamAppPermissionDialog(Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;)Z
    .registers 4

    const-class v0, Lio/dcloud/common/adapter/util/PermissionUtil;

    monitor-enter v0

    .line 1
    :try_start_3
    iget-boolean v1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->force:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1e

    .line 2
    sget v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sUseStreamAppPermissionDialogCount:I

    if-eqz v1, :cond_11

    .line 3
    sget-object v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sUseStreamAppPermissionDialogs:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_11
    sget p0, Lio/dcloud/common/adapter/util/PermissionUtil;->sUseStreamAppPermissionDialogCount:I

    add-int/2addr p0, v2

    sput p0, Lio/dcloud/common/adapter/util/PermissionUtil;->sUseStreamAppPermissionDialogCount:I

    .line 6
    sget-object p0, Lio/dcloud/common/adapter/util/PermissionUtil;->sUseStreamAppPermissionDialogs:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_20

    monitor-exit v0

    return p0

    :cond_1e
    monitor-exit v0

    return v2

    :catchall_20
    move-exception p0

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public static convert2StreamPermission(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "android.permission.CAMERA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    const-string p0, "CAMERA"

    return-object p0

    .line 3
    :cond_b
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4
    const-string p0, "RECORD"

    return-object p0

    .line 5
    :cond_16
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 6
    const-string p0, "LOCATION"

    return-object p0

    .line 7
    :cond_21
    const-string v0, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 8
    const-string p0, "CONTACTS"

    return-object p0

    .line 9
    :cond_2c
    const-string v0, "android.permission.SEND_SMS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 10
    const-string p0, "SMS"

    return-object p0

    .line 11
    :cond_37
    const-string v0, "android.permission.CALL_PHONE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 12
    const-string p0, "PHONE"

    return-object p0

    .line 13
    :cond_42
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 14
    const-string p0, "STORAGE"

    return-object p0

    .line 15
    :cond_4d
    const-string v0, "android.permission.INSTALL_SHORTCUT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 16
    const-string p0, "SHORTCUT"

    return-object p0

    .line 17
    :cond_58
    const-string v0, "GALLERY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    goto :goto_69

    .line 18
    :cond_61
    const-string v0, "NATIVE.JS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    :goto_69
    return-object p0

    .line 19
    :cond_6a
    const-string v0, "PUSH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static convert2SystemPermission(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "CAMERA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    const-string p0, "android.permission.CAMERA"

    return-object p0

    .line 3
    :cond_b
    const-string v0, "RECORD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4
    const-string p0, "android.permission.RECORD_AUDIO"

    return-object p0

    .line 5
    :cond_16
    const-string v0, "LOCATION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 6
    const-string p0, "android.permission.ACCESS_COARSE_LOCATION"

    return-object p0

    .line 7
    :cond_21
    const-string v0, "CONTACTS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 8
    const-string p0, "android.permission.WRITE_CONTACTS"

    return-object p0

    .line 9
    :cond_2c
    const-string v0, "STORAGE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-eqz v0, :cond_37

    return-object v1

    .line 11
    :cond_37
    const-string v0, "STORAGE_IMAGE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 13
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-ge p0, v0, :cond_46

    return-object v1

    .line 18
    :cond_46
    const-string p0, "android.permission.READ_MEDIA_IMAGES"

    return-object p0

    .line 20
    :cond_49
    const-string v0, "SMS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 21
    const-string p0, "android.permission.SEND_SMS"

    return-object p0

    .line 22
    :cond_54
    const-string v0, "PHONE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 23
    const-string p0, "android.permission.CALL_PHONE"

    return-object p0

    .line 24
    :cond_5f
    const-string v0, "SHORTCUT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 25
    const-string p0, "android.permission.INSTALL_SHORTCUT"

    :cond_69
    return-object p0
.end method

.method public static convert5PlusValue(I)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lio/dcloud/common/core/permission/PermissionControler;->convert5PlusValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertNativePermission(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lio/dcloud/common/core/permission/PermissionControler;->convertNativePermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDeivceSuitablePixel(Landroid/app/Activity;I)I
    .registers 3

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3
    iget p0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float p1, p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static getRequestCode()I
    .registers 2

    .line 1
    sget v0, Lio/dcloud/common/adapter/util/PermissionUtil;->sRequestCodeCounter:I

    const v1, 0xffff

    if-lt v0, v1, :cond_a

    .line 3
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->restRequstCode()V

    .line 5
    :cond_a
    sget v0, Lio/dcloud/common/adapter/util/PermissionUtil;->sRequestCodeCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sRequestCodeCounter:I

    return v0
.end method

.method public static goPermissionCenter(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V
    .registers 4

    .line 1
    invoke-static {p0, p2, p3}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->access$300(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 4
    :cond_7
    invoke-virtual {p3, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onDenied(Ljava/lang/String;)V

    return-void
.end method

.method public static goSafeCenter(Landroid/app/Activity;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->access$200(Landroid/app/Activity;)V

    return-void
.end method

.method public static hasDefinedInManifest(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x1000

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_26

    const/4 v1, 0x0

    .line 4
    :goto_14
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_26

    .line 5
    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1f} :catch_27

    if-eqz v2, :cond_23

    const/4 p0, 0x1

    return p0

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_26
    return v0

    :catch_27
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static initAlwaysDenied(Landroid/app/Activity;)V
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/PermissionUtil;->alwaysDeniedPer:Ljava/util/List;

    if-nez v0, :cond_2b

    .line 2
    const-string v0, "ALWAYS_DENIED_PERMISSION"

    const-string v1, "permissions"

    invoke-static {p0, v0, v1}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lio/dcloud/common/adapter/util/PermissionUtil;->alwaysDeniedPer:Ljava/util/List;

    return-void

    .line 6
    :cond_24
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sput-object p0, Lio/dcloud/common/adapter/util/PermissionUtil;->alwaysDeniedPer:Ljava/util/List;

    :cond_2b
    return-void
.end method

.method private static isAndroid(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)Z
    .registers 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    const-string v1, "com.android.Setting"

    const-string v2, "com.android.SubSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->getRequestCode()I

    move-result v1

    .line 5
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 6
    invoke-static {p0, p1, p2, v1}, Lio/dcloud/common/adapter/util/PermissionUtil;->saveCallabckData(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public static isEMUIRom(Landroid/app/Activity;)Z
    .registers 2

    .line 1
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "huawei"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static isFlyme(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)Z
    .registers 6

    .line 1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "Meizu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    const-string v1, "com.meizu.safe"

    const-string v2, "com.meizu.safe.security.AppSecActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->getRequestCode()I

    move-result v1

    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 8
    invoke-static {p0, p1, p2, v1}, Lio/dcloud/common/adapter/util/PermissionUtil;->saveCallabckData(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;I)V

    const/4 p0, 0x1

    return p0

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method private static isFlymeRom(Landroid/app/Activity;)Z
    .registers 2

    .line 1
    sget-object p0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "meizu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isMainStreamPermission(Ljava/lang/String;)Z
    .registers 2

    .line 1
    const-string v0, "LOCATION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "SHORTCUT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "RECORD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method

.method private static isMiui(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I
    .registers 12

    .line 1
    :try_start_0
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PermissionUtil;->isMiuiRom(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_85

    .line 3
    const-string p1, "appops"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_85

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "OP_GPS"

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p2

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "checkOp"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v6

    aput-object v2, v3, v7

    aput-object p0, v3, v8

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v1, "MODE_IGNORED"

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p2

    if-ne p0, p2, :cond_6b

    const/4 p0, -0x1

    return p0

    .line 11
    :cond_6b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "MODE_ALLOWED"

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1
    :try_end_79
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_79} :catch_81
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_79} :catch_7c

    if-ne p0, p1, :cond_85

    return v6

    :catch_7c
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_85

    :catch_81
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_85
    :goto_85
    const/16 p0, -0x64

    return p0
.end method

.method private static isMiui(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)Z
    .registers 9

    .line 21
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "Xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6f

    goto :goto_25

    :cond_17
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "miui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 23
    :goto_25
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->getRequestCode()I

    move-result v0

    .line 24
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 26
    const-string v2, "com.miui.permcenter.permissions.PermissionsEditorActivity"

    const-string v3, "com.miui.securitycenter"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "extra_pkgname"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 29
    :try_start_3f
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 30
    invoke-static {p0, p1, p2, v0}, Lio/dcloud/common/adapter/util/PermissionUtil;->saveCallabckData(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;I)V
    :try_end_45
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3f .. :try_end_45} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_45} :catch_46

    return v2

    :catch_46
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6e

    :catch_4b
    const/4 v4, 0x0

    .line 47
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 48
    const-string v5, "com.miui.permcenter.permissions.AppPermissionsEditorActivity"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    :try_start_54
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 51
    invoke-static {p0, p1, p2, v0}, Lio/dcloud/common/adapter/util/PermissionUtil;->saveCallabckData(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;I)V
    :try_end_5a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_54 .. :try_end_5a} :catch_60
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5a} :catch_5b

    goto :goto_6e

    :catch_5b
    move-exception p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6e

    .line 59
    :catch_60
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 60
    const-string v3, "com.android.Setting"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 62
    invoke-static {p0, p1, p2, v0}, Lio/dcloud/common/adapter/util/PermissionUtil;->saveCallabckData(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;I)V

    :goto_6e
    return v2

    :cond_6f
    const/4 p0, 0x0

    return p0
.end method

.method private static isMiuiRom(Landroid/app/Activity;)Z
    .registers 2

    .line 2
    const-string p0, "http.agent"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "miui"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public static onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .registers 10

    .line 1
    sget-object p2, Lio/dcloud/common/adapter/util/PermissionUtil;->sActivityResultCallBacks:Ljava/util/HashMap;

    rem-int/lit16 p1, p1, 0x2710

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    if-eqz p2, :cond_61

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "__go_center_time__"

    invoke-virtual {p3, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const/4 p3, 0x0

    .line 4
    aget-object p3, p2, p3

    check-cast p3, Ljava/lang/String;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/16 v0, 0x3e8

    cmp-long v5, v3, v0

    if-lez v5, :cond_58

    .line 6
    sget-object v0, Lio/dcloud/common/adapter/util/PermissionUtil;->sActivityResultCallBacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p3}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert2SystemPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 8
    aget-object p2, p2, v0

    check-cast p2, Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkSelfPermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_55

    .line 11
    invoke-virtual {p2, p3}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onGranted(Ljava/lang/String;)V

    goto :goto_58

    .line 13
    :cond_55
    invoke-virtual {p2, p3}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onDenied(Ljava/lang/String;)V

    .line 16
    :cond_58
    :goto_58
    sget-object p0, Lio/dcloud/common/DHInterface/message/action/PermissionRequestAction;->TYPE_COMPLETE:Ljava/lang/String;

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/dcloud/common/core/permission/PermissionControler;->invokeUTSAndroidPermissionRequest(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_61
    return-void
.end method

.method public static onRequestSysPermissionResume(Landroid/app/Activity;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "__go_center_request_code__"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v2, v1}, Lio/dcloud/common/adapter/util/PermissionUtil;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    :cond_11
    return-void
.end method

.method public static onSystemPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .registers 10

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/PermissionUtil;->sRequestCallBacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_aa

    .line 2
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_aa

    .line 3
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    .line 5
    array-length v2, v0

    if-lez v2, :cond_27

    .line 6
    aget-object v0, v0, v1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    .line 7
    :goto_28
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PermissionUtil;->initAlwaysDenied(Landroid/app/Activity;)V

    const/4 v2, 0x0

    .line 8
    :goto_2c
    array-length v3, p2

    if-ge v2, v3, :cond_6c

    .line 9
    aget v3, p3, v2

    .line 10
    aget-object v4, p2, v2

    invoke-static {v4}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert2StreamPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    if-ne v3, v5, :cond_51

    .line 13
    :try_start_3a
    aget-object v3, p2, v2

    invoke-static {p0, v3}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 14
    sget-object v3, Lio/dcloud/common/adapter/util/PermissionUtil;->alwaysDeniedPer:Ljava/util/List;

    aget-object v5, p2, v2

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_49} :catch_4a

    goto :goto_4b

    :catch_4a
    nop

    :cond_4b
    :goto_4b
    if-eqz v0, :cond_69

    .line 19
    invoke-virtual {v0, v4}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onDenied(Ljava/lang/String;)V

    goto :goto_69

    :cond_51
    if-nez v3, :cond_69

    .line 22
    sget-object v3, Lio/dcloud/common/adapter/util/PermissionUtil;->alwaysDeniedPer:Ljava/util/List;

    aget-object v5, p2, v2

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 23
    sget-object v3, Lio/dcloud/common/adapter/util/PermissionUtil;->alwaysDeniedPer:Ljava/util/List;

    aget-object v5, p2, v2

    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_64
    if-eqz v0, :cond_69

    .line 25
    invoke-virtual {v0, v4}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onGranted(Ljava/lang/String;)V

    :cond_69
    :goto_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 28
    :cond_6c
    sget-object v2, Lio/dcloud/common/adapter/util/PermissionUtil;->alwaysDeniedPer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8b

    .line 29
    sget-object v2, Lio/dcloud/common/adapter/util/PermissionUtil;->alwaysDeniedPer:Ljava/util/List;

    new-array v3, v1, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 30
    const-string v3, ","

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 31
    const-string v3, "ALWAYS_DENIED_PERMISSION"

    const-string v4, "permissions"

    invoke-static {p0, v3, v4, v2}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_8b
    array-length p0, p2

    if-nez p0, :cond_aa

    array-length p0, p3

    if-nez p0, :cond_aa

    if-eqz v0, :cond_aa

    .line 41
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    if-eqz p0, :cond_aa

    .line 43
    array-length p1, p0

    :goto_9c
    if-ge v1, p1, :cond_aa

    aget-object p3, p0, v1

    .line 44
    invoke-static {p3}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert2StreamPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 45
    invoke-virtual {v0, p3}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onDenied(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9c

    .line 51
    :cond_aa
    sget-object p0, Lio/dcloud/common/DHInterface/message/action/PermissionRequestAction;->TYPE_COMPLETE:Ljava/lang/String;

    invoke-static {p0, p2}, Lio/dcloud/common/core/permission/PermissionControler;->invokeUTSAndroidPermissionRequest(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static putStreamAppPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 1
    const-string/jumbo v0, "stream_permission"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static removeStreamAppPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    const-string/jumbo v0, "stream_permission"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static removeTempPermission(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .line 1
    const-string/jumbo v0, "stream_permission"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    sget-object v0, Lio/dcloud/common/adapter/util/PermissionUtil;->sPermissionData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 5
    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-interface {p0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v4, 0x1

    .line 9
    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_53

    .line 10
    const-string v4, "SHORTCUT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    const-string v4, "NATIVE.JS"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 11
    :cond_53
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_16

    .line 15
    :cond_57
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .registers 4

    .line 1
    sget-object v0, Lio/dcloud/common/DHInterface/message/action/PermissionRequestAction;->TYPE_REQUEST:Ljava/lang/String;

    invoke-static {v0, p1}, Lio/dcloud/common/core/permission/PermissionControler;->invokeUTSAndroidPermissionRequest(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1, p2}, Lio/dcloud/common/core/permission/PermissionControler;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;IZ)V
    .registers 4

    .line 3
    invoke-static {p0, p1, p2}, Lio/dcloud/common/core/permission/PermissionControler;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public static requestSystemPermissions(Landroid/app/Activity;[Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V
    .registers 5

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lio/dcloud/common/adapter/util/PermissionUtil;->requestSystemPermissions(Landroid/app/Activity;[Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;Z)V

    return-void
.end method

.method public static requestSystemPermissions(Landroid/app/Activity;[Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;Z)V
    .registers 10

    .line 2
    invoke-static {p3}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->access$000(Lio/dcloud/common/adapter/util/PermissionUtil$Request;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 3
    sget-object v0, Lio/dcloud/common/DHInterface/message/action/PermissionRequestAction;->TYPE_REQUEST:Ljava/lang/String;

    invoke-static {v0, p1}, Lio/dcloud/common/core/permission/PermissionControler;->invokeUTSAndroidPermissionRequest(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_b
    const/4 v0, 0x1

    .line 5
    invoke-static {p3, v0}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->access$002(Lio/dcloud/common/adapter/util/PermissionUtil$Request;Z)Z

    .line 6
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PermissionUtil;->caseVersion(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_63

    if-eqz p1, :cond_63

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-virtual {v0, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v2, Lio/dcloud/common/adapter/util/PermissionUtil;->sRequestCallBacks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_5f

    .line 13
    array-length p4, p1

    const/4 v2, 0x0

    :goto_32
    if-ge v2, p4, :cond_51

    aget-object v3, p1, v2

    .line 14
    invoke-static {p0, v3}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkPermissionDenied(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4b

    if-eqz p3, :cond_4a

    .line 16
    invoke-virtual {p3, v3}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onDenied(Ljava/lang/String;)V

    .line 17
    sget-object p0, Lio/dcloud/common/DHInterface/message/action/PermissionRequestAction;->TYPE_COMPLETE:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/dcloud/common/core/permission/PermissionControler;->invokeUTSAndroidPermissionRequest(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_4a
    return-void

    .line 21
    :cond_4b
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 24
    :cond_51
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_5f

    .line 25
    new-array p1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 28
    :cond_5f
    invoke-static {p0, p1, p2, v1}, Lio/dcloud/common/adapter/util/PermissionUtil;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;IZ)V

    return-void

    :cond_63
    if-eqz p1, :cond_74

    .line 32
    :try_start_65
    array-length p0, p1

    :goto_66
    if-ge v1, p0, :cond_74

    aget-object p2, p1, v1

    .line 33
    invoke-static {p2}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert2StreamPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onGranted(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    .line 34
    :cond_74
    sget-object p0, Lio/dcloud/common/DHInterface/message/action/PermissionRequestAction;->TYPE_COMPLETE:Ljava/lang/String;

    invoke-static {p0, p1}, Lio/dcloud/common/core/permission/PermissionControler;->invokeUTSAndroidPermissionRequest(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_79} :catch_7a

    return-void

    :catch_7a
    move-exception p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static restRequstCode()V
    .registers 1

    .line 1
    sget v0, Lio/dcloud/common/adapter/util/PermissionUtil;->sDefQequestCode:I

    sput v0, Lio/dcloud/common/adapter/util/PermissionUtil;->sRequestCodeCounter:I

    return-void
.end method

.method private static saveCallabckData(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;I)V
    .registers 8

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/PermissionUtil;->sActivityResultCallBacks:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "__go_center_request_code__"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-string p3, "__go_center_time__"

    invoke-virtual {p0, p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-void
.end method

.method private static declared-synchronized showStreamAppPermissionDialog()V
    .registers 3

    const-class v0, Lio/dcloud/common/adapter/util/PermissionUtil;

    monitor-enter v0

    .line 1
    :try_start_3
    sget v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sUseStreamAppPermissionDialogCount:I

    const/4 v2, 0x1

    if-lez v1, :cond_b

    sub-int/2addr v1, v2

    .line 2
    sput v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sUseStreamAppPermissionDialogCount:I

    .line 4
    :cond_b
    sget-object v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sUseStreamAppPermissionDialogs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    .line 5
    sget-object v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sUseStreamAppPermissionDialogs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;

    .line 6
    iput-boolean v2, v1, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->force:Z

    .line 7
    invoke-static {v1}, Lio/dcloud/common/adapter/util/PermissionUtil;->useStreamPermission(Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;)I

    move-result v1

    if-eq v2, v1, :cond_28

    .line 9
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->showStreamAppPermissionDialog()V
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_2a

    monitor-exit v0

    return-void

    :cond_28
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method private static showStreamAppPermissionDialog(Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;)V
    .registers 19

    move-object/from16 v2, p0

    .line 10
    iget-object v5, v2, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->activity:Landroid/app/Activity;

    .line 11
    iget-object v6, v2, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->appid:Ljava/lang/String;

    .line 12
    iget-object v0, v2, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->appName:Ljava/lang/String;

    .line 13
    iget-object v7, v2, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->streamPerName:Ljava/lang/String;

    .line 14
    iget-object v4, v2, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "showStreamAppPermissionDialog streamPerName="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";count="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lio/dcloud/common/adapter/util/PermissionUtil;->sUseStreamAppPermissionDialogCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Permission"

    invoke-static {v3, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sPermissionData:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;

    if-nez v1, :cond_37

    .line 18
    invoke-virtual {v4, v7}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onGranted(Ljava/lang/String;)V

    return-void

    .line 21
    :cond_37
    invoke-static {v2}, Lio/dcloud/common/adapter/util/PermissionUtil;->continueShowStreamAppPermissionDialog(Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;)Z

    move-result v8

    if-nez v8, :cond_3e

    return-void

    .line 24
    :cond_3e
    iget v8, v2, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->tryTimes:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v2, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->tryTimes:I

    const/4 v10, 0x0

    if-ne v8, v9, :cond_49

    const/4 v11, 0x1

    goto :goto_4a

    :cond_49
    const/4 v11, 0x0

    .line 26
    :goto_4a
    invoke-static {v5, v9}, Lio/dcloud/common/util/DialogUtil;->initDialogTheme(Landroid/app/Activity;Z)Lcom/dcloud/android/widget/dialog/DCloudAlertDialog;

    move-result-object v12

    if-eqz v5, :cond_5a

    .line 27
    instance-of v8, v5, Lio/dcloud/WebAppActivity;

    if-eqz v8, :cond_5a

    .line 28
    move-object v8, v5

    check-cast v8, Lio/dcloud/WebAppActivity;

    invoke-virtual {v8, v12}, Lio/dcloud/WebAppActivity;->recordDialog(Landroid/app/Dialog;)V

    .line 30
    :cond_5a
    invoke-virtual {v12, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const-string v8, "LOCATION"

    if-eqz v11, :cond_a1

    .line 32
    sget-object v13, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v14, Lio/dcloud/common/adapter/util/MobilePhoneModel;->QiKU:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_75

    .line 33
    sget v0, Lio/dcloud/base/R$string;->dcloud_permissions_short_cut_tips:I

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_e1

    .line 35
    :cond_75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_8d

    .line 36
    iget v13, v1, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;->messageId:I

    invoke-virtual {v5, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-array v14, v9, [Ljava/lang/Object;

    aput-object v0, v14, v10

    invoke-static {v13, v14}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_e1

    .line 38
    :cond_8d
    iget v0, v1, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;->messageId:I

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v13, v9, [Ljava/lang/Object;

    const-string v14, "App"

    aput-object v14, v13, v10

    invoke-static {v0, v13}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_e1

    .line 42
    :cond_a1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v13, Lio/dcloud/common/adapter/util/MobilePhoneModel;->QiKU:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 43
    sget v0, Lio/dcloud/base/R$string;->dcloud_permissions_short_cut_tips2:I

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 44
    :cond_b4
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 45
    sget v0, Lio/dcloud/base/R$string;->dcloud_permissions_geo_retry_tips:I

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_e1

    .line 47
    :cond_c4
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 48
    sget v13, Lio/dcloud/base/R$string;->dcloud_permissions_retry_tips:I

    invoke-virtual {v5, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-array v14, v9, [Ljava/lang/Object;

    aput-object v0, v14, v10

    invoke-static {v13, v14}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 52
    :goto_e1
    iget v0, v1, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;->checkbox:I

    const/4 v13, -0x1

    if-eq v0, v13, :cond_112

    if-eqz v11, :cond_112

    const/4 v0, -0x1

    .line 53
    new-instance v13, Landroid/widget/CheckBox;

    invoke-direct {v13, v5}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 54
    sget v14, Lio/dcloud/base/R$string;->dcloud_permissions_checkbox_close_tips:I

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    const/high16 v14, -0x10000

    .line 55
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    iget v1, v1, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;->checkbox:I

    if-ne v1, v9, :cond_fd

    goto :goto_fe

    :cond_fd
    const/4 v9, 0x0

    :goto_fe
    invoke-virtual {v13, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const/16 v1, 0x14

    .line 57
    invoke-static {v5, v1}, Lio/dcloud/common/adapter/util/PermissionUtil;->getDeivceSuitablePixel(Landroid/app/Activity;I)I

    move-result v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v15, v14

    const/4 v9, -0x1

    .line 58
    invoke-virtual/range {v12 .. v17}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    move-object v1, v12

    goto :goto_115

    :cond_112
    move-object v1, v12

    const/4 v9, -0x1

    const/4 v13, 0x0

    .line 60
    :goto_115
    new-instance v0, Lio/dcloud/common/adapter/util/PermissionUtil$3;

    invoke-direct {v0, v1, v2, v4, v7}, Lio/dcloud/common/adapter/util/PermissionUtil$3;-><init>(Landroid/app/AlertDialog;Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;Lio/dcloud/common/adapter/util/PermissionUtil$Request;Ljava/lang/String;)V

    .line 77
    iget-object v10, v2, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->mApp:Lio/dcloud/common/DHInterface/IApp;

    if-eqz v10, :cond_12a

    .line 78
    const-string v10, "showStreamAppPermissionDialog registerSysEventListener"

    invoke-static {v3, v10}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v3, v2, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->mApp:Lio/dcloud/common/DHInterface/IApp;

    sget-object v10, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppReStart:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {v3, v0, v10}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    :cond_12a
    move-object v3, v0

    .line 82
    new-instance v0, Lio/dcloud/common/adapter/util/PermissionUtil$4;

    move-object v10, v8

    move-object v8, v4

    move-object v4, v13

    invoke-direct/range {v0 .. v8}, Lio/dcloud/common/adapter/util/PermissionUtil$4;-><init>(Landroid/app/AlertDialog;Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;Lio/dcloud/common/DHInterface/ISysEventListener;Landroid/widget/CheckBox;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    move-object v6, v5

    move-object v5, v7

    move-object v4, v8

    if-eqz v11, :cond_13b

    .line 100
    sget v2, Lio/dcloud/base/R$string;->dcloud_common_no_allow:I

    goto :goto_13d

    :cond_13b
    sget v2, Lio/dcloud/base/R$string;->dcloud_common_cancel:I

    :goto_13d
    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v11, :cond_14a

    .line 101
    sget v7, Lio/dcloud/base/R$string;->dcloud_common_allow:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_168

    :cond_14a
    sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v8, Lio/dcloud/common/adapter/util/MobilePhoneModel;->QiKU:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_162

    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15b

    goto :goto_162

    .line 102
    :cond_15b
    sget v7, Lio/dcloud/base/R$string;->dcloud_permissions_reauthorization:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_168

    .line 103
    :cond_162
    :goto_162
    sget v7, Lio/dcloud/base/R$string;->dcloud_permissions_reopened:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_168
    const/4 v8, -0x2

    .line 105
    invoke-virtual {v1, v8, v2, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 106
    invoke-virtual {v1, v9, v7, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 107
    new-instance v0, Lio/dcloud/common/adapter/util/PermissionUtil$5;

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v5}, Lio/dcloud/common/adapter/util/PermissionUtil$5;-><init>(Landroid/app/AlertDialog;Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/adapter/util/PermissionUtil$Request;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 123
    :try_start_179
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 124
    new-instance v0, Lio/dcloud/common/adapter/util/PermissionUtil$6;

    invoke-direct {v0, v6, v1}, Lio/dcloud/common/adapter/util/PermissionUtil$6;-><init>(Landroid/app/Activity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_179 .. :try_end_184} :catch_185

    return-void

    :catch_185
    move-exception v0

    .line 133
    const-string v1, "ian"

    const-string/jumbo v2, "try dialog"

    invoke-static {v1, v2}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private static trycatchGetPermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    const-string v0, "/temp.3gp"

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 1
    :try_start_4
    const-string v3, "android.permission.CAMERA"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_a} :catch_1ce
    .catchall {:try_start_4 .. :try_end_a} :catchall_1d6

    const/4 v4, 0x1

    if-eqz v3, :cond_45

    const/4 p0, 0x0

    .line 4
    :goto_e
    :try_start_e
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result p1

    if-ge p0, p1, :cond_28

    .line 5
    new-instance p1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {p1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 6
    invoke-static {p0, p1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 7
    iget p1, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne p1, v4, :cond_25

    .line 8
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p0

    goto :goto_29

    :cond_25
    add-int/lit8 p0, p0, 0x1

    goto :goto_e

    :cond_28
    const/4 p0, 0x0

    :goto_29
    if-nez p0, :cond_2f

    .line 13
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object p0

    :cond_2f
    if-eqz p0, :cond_1ce

    .line 16
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    if-eqz p1, :cond_3a

    .line 18
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    .line 20
    :cond_3a
    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3d} :catch_3f
    .catchall {:try_start_e .. :try_end_3d} :catchall_1d6

    goto/16 :goto_1d6

    :catch_3f
    move-exception p0

    .line 24
    :try_start_40
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1ce

    .line 26
    :cond_45
    const-string v3, "android.permission.RECORD_AUDIO"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_4b
    .catch Ljava/lang/SecurityException; {:try_start_40 .. :try_end_4b} :catch_1ce
    .catchall {:try_start_40 .. :try_end_4b} :catchall_1d6

    if-eqz v3, :cond_117

    .line 28
    :try_start_4d
    new-instance p1, Landroid/media/MediaRecorder;

    invoke-direct {p1}, Landroid/media/MediaRecorder;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->reset()V

    .line 31
    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    const p2, 0x17700

    .line 33
    invoke-virtual {p1, p2}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 34
    invoke-virtual {p1, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    const/4 p2, 0x3

    .line 35
    invoke-virtual {p1, p2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 36
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->prepare()V

    .line 37
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->start()V

    .line 38
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->stop()V

    .line 39
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->release()V

    .line 40
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1
    :try_end_a7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4d .. :try_end_a7} :catch_1ce
    .catch Ljava/lang/IllegalStateException; {:try_start_4d .. :try_end_a7} :catch_1d6
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_a7} :catch_eb
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_a7} :catch_d1
    .catchall {:try_start_4d .. :try_end_a7} :catchall_1d6

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-lez v5, :cond_1ce

    .line 42
    :try_start_ad
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_ca
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ad .. :try_end_ca} :catch_1d6
    .catch Ljava/lang/IllegalStateException; {:try_start_ad .. :try_end_ca} :catch_1d6
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_ca} :catch_ce
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_ca} :catch_cb
    .catchall {:try_start_ad .. :try_end_ca} :catchall_1d6

    return v1

    :catch_cb
    move-exception p0

    const/4 v2, 0x0

    goto :goto_d2

    :catch_ce
    move-exception p0

    const/4 v2, 0x0

    goto :goto_ec

    :catch_d1
    move-exception p0

    .line 60
    :goto_d2
    :try_start_d2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1d6

    .line 61
    const-string p1, "start failed"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e8

    const-string p1, "setAudioSource failed"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1d6

    :catch_e8
    :cond_e8
    :goto_e8
    move v1, v2

    goto/16 :goto_1d6

    :catch_eb
    move-exception p0

    .line 62
    :goto_ec
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_10b

    .line 63
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Permission deny"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e8

    .line 64
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Permission denied"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_10b

    goto :goto_e8

    .line 67
    :cond_10b
    sget-object p0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object p1, Lio/dcloud/common/adapter/util/MobilePhoneModel;->GIONEE:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_113
    .catch Ljava/lang/SecurityException; {:try_start_d2 .. :try_end_113} :catch_e8
    .catchall {:try_start_d2 .. :try_end_113} :catchall_1d6

    if-nez p0, :cond_e8

    goto/16 :goto_1d6

    .line 80
    :cond_117
    :try_start_117
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 81
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 82
    const-string v3, "gps"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 83
    const-string v4, "network"

    invoke-virtual {v0, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 84
    const-string v4, "ZTE B880"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v3, :cond_144

    if-eqz v0, :cond_140

    goto :goto_144

    :cond_140
    if-eqz v4, :cond_1ce

    goto/16 :goto_1d6

    .line 86
    :cond_144
    :goto_144
    invoke-static {p0, p1, p2}, Lio/dcloud/common/adapter/util/PermissionUtil;->isMiui(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/16 p1, -0x64

    if-eq p0, p1, :cond_1d6

    return p0

    .line 94
    :cond_14d
    const-string v0, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_157

    goto/16 :goto_1ce

    .line 95
    :cond_157
    const-string v0, "android.permission.SEND_SMS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_161

    goto/16 :goto_1ce

    .line 96
    :cond_161
    const-string v0, "android.permission.CALL_PHONE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16a

    goto :goto_1ce

    .line 97
    :cond_16a
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_170
    .catch Ljava/lang/SecurityException; {:try_start_117 .. :try_end_170} :catch_1ce
    .catchall {:try_start_117 .. :try_end_170} :catchall_1d6

    if-eqz v0, :cond_1ae

    .line 99
    :try_start_172
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/temp.arm"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_19f

    .line 101
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 103
    :cond_19f
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1d6

    .line 104
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_1a8
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_1a8} :catch_1a9
    .catchall {:try_start_172 .. :try_end_1a8} :catchall_1d6

    goto :goto_1d6

    :catch_1a9
    move-exception p0

    .line 108
    :try_start_1aa
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1ce

    .line 110
    :cond_1ae
    const-string v0, "android.permission.INSTALL_SHORTCUT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bd

    .line 111
    invoke-static {p0, p2}, Lio/dcloud/common/util/AppPermissionUtil;->checkPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-eq v4, p0, :cond_1ce

    goto :goto_1d6

    .line 114
    :cond_1bd
    const-string p0, "GALLERY"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c6

    goto :goto_1ce

    .line 115
    :cond_1c6
    const-string p0, "NATIVE.JS"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d0

    :catch_1ce
    :cond_1ce
    :goto_1ce
    const/4 v1, -0x1

    goto :goto_1d6

    .line 116
    :cond_1d0
    const-string p0, "PUSH"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1d5
    .catch Ljava/lang/SecurityException; {:try_start_1aa .. :try_end_1d5} :catch_1ce
    .catchall {:try_start_1aa .. :try_end_1d5} :catchall_1d6

    return v2

    :catch_1d6
    :catchall_1d6
    :cond_1d6
    :goto_1d6
    return v1
.end method

.method private static unregisterWebAppReStartEvent(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/ISysEventListener;)V
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppReStart:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p0, p1, v0}, Lio/dcloud/common/DHInterface/IApp;->unregisterSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    return-void
.end method

.method public static usePermission(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V
    .registers 4

    .line 71
    invoke-static {p1}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert2SystemPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lio/dcloud/common/adapter/util/PermissionUtil$2;

    invoke-direct {v0, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$2;-><init>(Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    invoke-static {p0, p1, v0}, Lio/dcloud/common/adapter/util/PermissionUtil;->useSystemPermission(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)Z

    return-void
.end method

.method public static declared-synchronized usePermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V
    .registers 9

    const-class v0, Lio/dcloud/common/adapter/util/PermissionUtil;

    monitor-enter v0

    .line 1
    :try_start_3
    invoke-static {p4}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->access$000(Lio/dcloud/common/adapter/util/PermissionUtil$Request;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 2
    sget-object v1, Lio/dcloud/common/DHInterface/message/action/PermissionRequestAction;->TYPE_REQUEST:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/dcloud/common/core/permission/PermissionControler;->invokeUTSAndroidPermissionRequest(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4
    :cond_12
    const-string v1, "STORAGE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_36

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_36

    .line 6
    invoke-virtual {p4, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onGranted(Ljava/lang/String;)V

    .line 7
    sget-object p0, Lio/dcloud/common/DHInterface/message/action/PermissionRequestAction;->TYPE_COMPLETE:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/dcloud/common/core/permission/PermissionControler;->invokeUTSAndroidPermissionRequest(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_94

    monitor-exit v0

    return-void

    .line 11
    :cond_36
    :try_start_36
    invoke-static {p2}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert2SystemPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {p4}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkSelfPermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_52

    .line 14
    invoke-virtual {p4, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onGranted(Ljava/lang/String;)V

    .line 15
    sget-object p0, Lio/dcloud/common/DHInterface/message/action/PermissionRequestAction;->TYPE_COMPLETE:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/dcloud/common/core/permission/PermissionControler;->invokeUTSAndroidPermissionRequest(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_36 .. :try_end_50} :catchall_94

    monitor-exit v0

    return-void

    .line 19
    :cond_52
    :try_start_52
    sget-object v2, Lio/dcloud/common/adapter/util/PermissionUtil;->useRejectedCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    if-lez p3, :cond_86

    .line 20
    sget-object v2, Lio/dcloud/common/adapter/util/PermissionUtil;->useRejectedCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_86

    .line 21
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, p3, :cond_86

    .line 22
    invoke-virtual {p4, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onDenied(Ljava/lang/String;)V

    .line 23
    sget-object p0, Lio/dcloud/common/DHInterface/message/action/PermissionRequestAction;->TYPE_COMPLETE:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/dcloud/common/core/permission/PermissionControler;->invokeUTSAndroidPermissionRequest(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_84
    .catchall {:try_start_52 .. :try_end_84} :catchall_94

    monitor-exit v0

    return-void

    .line 28
    :cond_86
    :try_start_86
    new-instance p2, Lio/dcloud/common/adapter/util/PermissionUtil$1;

    invoke-direct {p2, p1, p4}, Lio/dcloud/common/adapter/util/PermissionUtil$1;-><init>(Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    const/4 p1, 0x1

    .line 69
    invoke-static {p2, p1}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->access$002(Lio/dcloud/common/adapter/util/PermissionUtil$Request;Z)Z

    .line 70
    invoke-static {p0, v1, p2}, Lio/dcloud/common/adapter/util/PermissionUtil;->useSystemPermission(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)Z
    :try_end_92
    .catchall {:try_start_86 .. :try_end_92} :catchall_94

    monitor-exit v0

    return-void

    :catchall_94
    move-exception p0

    :try_start_95
    monitor-exit v0
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    throw p0
.end method

.method private static useStreamPermission(Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;)I
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->activity:Landroid/app/Activity;

    .line 2
    iget-object v1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->appid:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->streamPerName:Ljava/lang/String;

    .line 4
    iget-object v3, p0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    .line 5
    invoke-static {v0, v1, v2}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkStreamAppPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    if-eqz v0, :cond_19

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    return v0

    .line 11
    :cond_15
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PermissionUtil;->showStreamAppPermissionDialog(Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;)V

    return v0

    .line 12
    :cond_19
    invoke-virtual {v3, v2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onGranted(Ljava/lang/String;)V

    return v0

    .line 18
    :cond_1d
    invoke-virtual {v3, v2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onDenied(Ljava/lang/String;)V

    return v0
.end method

.method public static useSystemPermission(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)Z
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-lt v0, v3, :cond_1c

    if-eqz p1, :cond_1c

    .line 2
    const-string v0, "android.permission"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 3
    :goto_1d
    invoke-static {p1}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert2StreamPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {p2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->access$000(Lio/dcloud/common/adapter/util/PermissionUtil$Request;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 5
    sget-object v4, Lio/dcloud/common/DHInterface/message/action/PermissionRequestAction;->TYPE_REQUEST:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/dcloud/common/core/permission/PermissionControler;->invokeUTSAndroidPermissionRequest(Ljava/lang/String;[Ljava/lang/String;)V

    .line 7
    :cond_30
    invoke-static {p2, v1}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->access$002(Lio/dcloud/common/adapter/util/PermissionUtil$Request;Z)Z

    if-eqz v0, :cond_a4

    .line 9
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->getRequestCode()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->setRequestCode(I)V

    .line 10
    invoke-virtual {p2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkSelfPermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_94

    .line 12
    invoke-static {p0, p1}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkPermissionDenied(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 13
    invoke-virtual {p2, v3}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onDenied(Ljava/lang/String;)V

    .line 14
    sget-object p0, Lio/dcloud/common/DHInterface/message/action/PermissionRequestAction;->TYPE_COMPLETE:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/dcloud/common/core/permission/PermissionControler;->invokeUTSAndroidPermissionRequest(Ljava/lang/String;[Ljava/lang/String;)V

    return v1

    .line 18
    :cond_5a
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 19
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->getRequestCode()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lio/dcloud/common/adapter/util/PermissionUtil;->requestSystemPermissions(Landroid/app/Activity;[Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    return v2

    .line 20
    :cond_70
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 22
    const-string v0, "android.permission.READ_MEDIA_VIDEO"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->getRequestCode()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lio/dcloud/common/adapter/util/PermissionUtil;->requestSystemPermissions(Landroid/app/Activity;[Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    return v2

    .line 24
    :cond_88
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->getRequestCode()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lio/dcloud/common/adapter/util/PermissionUtil;->requestSystemPermissions(Landroid/app/Activity;[Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    return v2

    :cond_94
    if-nez v0, :cond_a3

    .line 29
    invoke-virtual {p2, v3}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onGranted(Ljava/lang/String;)V

    .line 30
    sget-object p0, Lio/dcloud/common/DHInterface/message/action/PermissionRequestAction;->TYPE_COMPLETE:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/dcloud/common/core/permission/PermissionControler;->invokeUTSAndroidPermissionRequest(Ljava/lang/String;[Ljava/lang/String;)V

    return v1

    :cond_a3
    return v2

    .line 34
    :cond_a4
    invoke-virtual {p2, v3}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onGranted(Ljava/lang/String;)V

    .line 35
    sget-object p0, Lio/dcloud/common/DHInterface/message/action/PermissionRequestAction;->TYPE_COMPLETE:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/dcloud/common/core/permission/PermissionControler;->invokeUTSAndroidPermissionRequest(Ljava/lang/String;[Ljava/lang/String;)V

    return v1
.end method

.method public static useSystemPermissions(Landroid/app/Activity;[Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-lt v0, v3, :cond_17

    if-eqz p1, :cond_17

    array-length v0, p1

    if-lez v0, :cond_17

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 3
    :goto_18
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-static {p2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->access$000(Lio/dcloud/common/adapter/util/PermissionUtil$Request;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 5
    sget-object v4, Lio/dcloud/common/DHInterface/message/action/PermissionRequestAction;->TYPE_REQUEST:Ljava/lang/String;

    invoke-static {v4, p1}, Lio/dcloud/common/core/permission/PermissionControler;->invokeUTSAndroidPermissionRequest(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2c
    if-eqz v0, :cond_a7

    .line 8
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->getRequestCode()I

    move-result p1

    invoke-virtual {p2, p1}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->setRequestCode(I)V

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    sget-object v0, Lio/dcloud/common/adapter/util/PermissionUtil;->alwaysDeniedPer:Ljava/util/List;

    if-nez v0, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v1, 0x0

    :goto_40
    const/4 v0, 0x0

    .line 14
    :goto_41
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_7b

    .line 15
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 16
    invoke-static {v4}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert2SystemPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-virtual {p2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkSelfPermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_66

    .line 19
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-static {v4}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert2StreamPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onGranted(Ljava/lang/String;)V

    goto :goto_78

    .line 21
    :cond_66
    invoke-static {p0, v4}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkPermissionDenied(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_78

    if-nez v1, :cond_78

    .line 22
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-static {v4}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert2StreamPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onDenied(Ljava/lang/String;)V

    :cond_78
    :goto_78
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 26
    :cond_7b
    sget-object v0, Lio/dcloud/common/DHInterface/message/action/PermissionRequestAction;->TYPE_COMPLETE:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lio/dcloud/common/core/permission/PermissionControler;->invokeUTSAndroidPermissionRequest(Ljava/lang/String;[Ljava/lang/String;)V

    .line 27
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_91

    .line 28
    invoke-interface {v3, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 29
    :cond_91
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_a6

    .line 30
    new-array p1, v2, [Ljava/lang/String;

    invoke-interface {v3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->getRequestCode()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lio/dcloud/common/adapter/util/PermissionUtil;->requestSystemPermissions(Landroid/app/Activity;[Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    :cond_a6
    return-void

    .line 33
    :cond_a7
    :goto_a7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_bd

    .line 34
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert2StreamPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onGranted(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a7

    .line 36
    :cond_bd
    sget-object p0, Lio/dcloud/common/DHInterface/message/action/PermissionRequestAction;->TYPE_COMPLETE:Ljava/lang/String;

    invoke-static {p0, p1}, Lio/dcloud/common/core/permission/PermissionControler;->invokeUTSAndroidPermissionRequest(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.common.adapter.util.PermissionUtil.AnonymousClass1 (io.dcloud.common.adapter.util.PermissionUtil$1)
.class Lio/dcloud/common/adapter/util/PermissionUtil$1;
.super Lio/dcloud/common/adapter/util/PermissionUtil$Request;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$featureName:Ljava/lang/String;

.field final synthetic val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$1;->val$featureName:Ljava/lang/String;

    iput-object p2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$1;->val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    invoke-direct {p0}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .registers 5

    .line 1
    :try_start_0
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->access$100()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$1;->val$featureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_48

    .line 2
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->access$100()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$1;->val$featureName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_20

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    :cond_20
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    .line 10
    :cond_39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :goto_40
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->access$100()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    .line 14
    :cond_48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->access$100()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$1;->val$featureName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5d} :catch_5d

    .line 21
    :catch_5d
    :goto_5d
    iget-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$1;->val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    invoke-virtual {v0, p1}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onDenied(Ljava/lang/String;)V

    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .registers 4

    .line 1
    :try_start_0
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->access$100()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$1;->val$featureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->access$100()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$1;->val$featureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1b

    .line 8
    :catch_1b
    :cond_1b
    iget-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$1;->val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    invoke-virtual {v0, p1}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onGranted(Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.common.adapter.util.PermissionUtil.AnonymousClass2 (io.dcloud.common.adapter.util.PermissionUtil$2)
.class Lio/dcloud/common/adapter/util/PermissionUtil$2;
.super Lio/dcloud/common/adapter/util/PermissionUtil$Request;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$2;->val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    invoke-direct {p0}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$2;->val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    invoke-virtual {v0, p1}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onDenied(Ljava/lang/String;)V

    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$2;->val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    invoke-virtual {v0, p1}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onGranted(Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.common.adapter.util.PermissionUtil.AnonymousClass3 (io.dcloud.common.adapter.util.PermissionUtil$3)
.class Lio/dcloud/common/adapter/util/PermissionUtil$3;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/ISysEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/util/PermissionUtil;->showStreamAppPermissionDialog(Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$_dialog:Landroid/app/AlertDialog;

.field final synthetic val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

.field final synthetic val$sdData:Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;

.field final synthetic val$streamPerName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;Lio/dcloud/common/adapter/util/PermissionUtil$Request;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$3;->val$_dialog:Landroid/app/AlertDialog;

    iput-object p2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$3;->val$sdData:Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;

    iput-object p3, p0, Lio/dcloud/common/adapter/util/PermissionUtil$3;->val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    iput-object p4, p0, Lio/dcloud/common/adapter/util/PermissionUtil$3;->val$streamPerName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 4

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "unregisterSysEventListener registerSysEventListener pEventType="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Permission"

    invoke-static {v0, p2}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object p2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppReStart:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, p2, :cond_33

    .line 3
    iget-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$3;->val$_dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 4
    iget-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$3;->val$sdData:Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;

    iget-object p1, p1, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->mApp:Lio/dcloud/common/DHInterface/IApp;

    invoke-static {p1, p0}, Lio/dcloud/common/adapter/util/PermissionUtil;->access$500(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/ISysEventListener;)V

    .line 6
    :try_start_24
    iget-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$3;->val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    iget-object p2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$3;->val$streamPerName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onDenied(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->access$600()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2e} :catch_2f

    goto :goto_33

    :catch_2f
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_33
    :goto_33
    const/4 p1, 0x0

    return p1
.end method

###### Class io.dcloud.common.adapter.util.PermissionUtil.AnonymousClass4 (io.dcloud.common.adapter.util.PermissionUtil$4)
.class Lio/dcloud/common/adapter/util/PermissionUtil$4;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/util/PermissionUtil;->showStreamAppPermissionDialog(Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$_dialog:Landroid/app/AlertDialog;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appid:Ljava/lang/String;

.field final synthetic val$f_checkbox:Landroid/widget/CheckBox;

.field final synthetic val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

.field final synthetic val$sdData:Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;

.field final synthetic val$streamPerName:Ljava/lang/String;

.field final synthetic val$webappStop:Lio/dcloud/common/DHInterface/ISysEventListener;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;Lio/dcloud/common/DHInterface/ISysEventListener;Landroid/widget/CheckBox;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$_dialog:Landroid/app/AlertDialog;

    iput-object p2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$sdData:Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;

    iput-object p3, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$webappStop:Lio/dcloud/common/DHInterface/ISysEventListener;

    iput-object p4, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$f_checkbox:Landroid/widget/CheckBox;

    iput-object p5, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$activity:Landroid/app/Activity;

    iput-object p6, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$appid:Ljava/lang/String;

    iput-object p7, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$streamPerName:Ljava/lang/String;

    iput-object p8, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 1
    iget-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$_dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$sdData:Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;

    iget-object p1, p1, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->mApp:Lio/dcloud/common/DHInterface/IApp;

    if-eqz p1, :cond_10

    iget-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$webappStop:Lio/dcloud/common/DHInterface/ISysEventListener;

    invoke-static {p1, v0}, Lio/dcloud/common/adapter/util/PermissionUtil;->access$500(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/ISysEventListener;)V

    :cond_10
    const/4 p1, -0x1

    if-ne p2, p1, :cond_30

    .line 4
    iget-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$f_checkbox:Landroid/widget/CheckBox;

    const/4 p2, 0x1

    if-nez p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1a
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    .line 5
    :goto_1e
    iget-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$appid:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$streamPerName:Ljava/lang/String;

    xor-int/2addr p1, p2

    invoke-static {v0, v1, v2, p1}, Lio/dcloud/common/adapter/util/PermissionUtil;->putStreamAppPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 6
    iget-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    iget-object p2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$streamPerName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onGranted(Ljava/lang/String;)V

    goto :goto_4d

    :cond_30
    const/4 v0, -0x2

    if-ne p2, v0, :cond_4d

    .line 8
    iget-object p2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$f_checkbox:Landroid/widget/CheckBox;

    if-eqz p2, :cond_46

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_46

    .line 9
    iget-object p2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$appid:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$streamPerName:Ljava/lang/String;

    invoke-static {p2, v0, v1, p1}, Lio/dcloud/common/adapter/util/PermissionUtil;->putStreamAppPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    :cond_46
    iget-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    iget-object p2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$streamPerName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onDenied(Ljava/lang/String;)V

    .line 13
    :cond_4d
    :goto_4d
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->access$600()V

    return-void
.end method

###### Class io.dcloud.common.adapter.util.PermissionUtil.AnonymousClass5 (io.dcloud.common.adapter.util.PermissionUtil$5)
.class Lio/dcloud/common/adapter/util/PermissionUtil$5;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/util/PermissionUtil;->showStreamAppPermissionDialog(Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$_dialog:Landroid/app/AlertDialog;

.field final synthetic val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

.field final synthetic val$sdData:Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;

.field final synthetic val$streamPerName:Ljava/lang/String;

.field final synthetic val$webappStop:Lio/dcloud/common/DHInterface/ISysEventListener;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/adapter/util/PermissionUtil$Request;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$5;->val$_dialog:Landroid/app/AlertDialog;

    iput-object p2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$5;->val$sdData:Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;

    iput-object p3, p0, Lio/dcloud/common/adapter/util/PermissionUtil$5;->val$webappStop:Lio/dcloud/common/DHInterface/ISysEventListener;

    iput-object p4, p0, Lio/dcloud/common/adapter/util/PermissionUtil$5;->val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    iput-object p5, p0, Lio/dcloud/common/adapter/util/PermissionUtil$5;->val$streamPerName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_25

    const/4 p1, 0x4

    if-ne p2, p1, :cond_25

    .line 3
    iget-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$5;->val$_dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 4
    iget-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$5;->val$sdData:Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;

    iget-object p1, p1, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->mApp:Lio/dcloud/common/DHInterface/IApp;

    if-eqz p1, :cond_1a

    iget-object p2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$5;->val$webappStop:Lio/dcloud/common/DHInterface/ISysEventListener;

    invoke-static {p1, p2}, Lio/dcloud/common/adapter/util/PermissionUtil;->access$500(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/ISysEventListener;)V

    .line 5
    :cond_1a
    iget-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$5;->val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    iget-object p2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$5;->val$streamPerName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onDenied(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->access$600()V

    return p3

    :cond_25
    const/4 p1, 0x0

    return p1
.end method

###### Class io.dcloud.common.adapter.util.PermissionUtil.AnonymousClass6 (io.dcloud.common.adapter.util.PermissionUtil$6)
.class Lio/dcloud/common/adapter/util/PermissionUtil$6;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/util/PermissionUtil;->showStreamAppPermissionDialog(Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$_dialog:Landroid/app/AlertDialog;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/app/AlertDialog;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$6;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$6;->val$_dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$6;->val$activity:Landroid/app/Activity;

    if-eqz p1, :cond_f

    instance-of v0, p1, Lio/dcloud/WebAppActivity;

    if-eqz v0, :cond_f

    .line 2
    check-cast p1, Lio/dcloud/WebAppActivity;

    iget-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$6;->val$_dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v0}, Lio/dcloud/WebAppActivity;->removeFromRecord(Landroid/app/Dialog;)V

    :cond_f
    return-void
.end method

###### Class io.dcloud.common.adapter.util.PermissionUtil.PermissionData (io.dcloud.common.adapter.util.PermissionUtil$PermissionData)
.class Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/util/PermissionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PermissionData"
.end annotation


# static fields
.field static final CB_NOSHOW:I = -0x1

.field static final CB_SELECTED:I = 0x1

.field static final CB_SHOW:I = 0x0

.field static final GT_DENIED:I = -0x1

.field static final GT_GRANTED:I = 0x1

.field static final GT_ONCE:I


# instance fields
.field checkbox:I

.field grantType:I

.field messageId:I

.field name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;III)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;->name:Ljava/lang/String;

    .line 3
    iput p2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;->messageId:I

    .line 4
    iput p3, p0, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;->checkbox:I

    .line 5
    iput p4, p0, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;->grantType:I

    return-void
.end method

###### Class io.dcloud.common.adapter.util.PermissionUtil.Request (io.dcloud.common.adapter.util.PermissionUtil$Request)
.class public abstract Lio/dcloud/common/adapter/util/PermissionUtil$Request;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/util/PermissionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Request"
.end annotation


# static fields
.field public static final PERMISSION_ASK:I = 0x1

.field public static final PERMISSION_DENIED:I = -0x1

.field public static final PERMISSION_GRANTED:I


# instance fields
.field private isTriggerRequestEvent:Z

.field private mRequestCode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->access$700()I

    move-result v0

    iput v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->mRequestCode:I

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->isTriggerRequestEvent:Z

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/common/adapter/util/PermissionUtil$Request;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->isTriggerRequestEvent:Z

    return p0
.end method

.method static synthetic access$002(Lio/dcloud/common/adapter/util/PermissionUtil$Request;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->isTriggerRequestEvent:Z

    return p1
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestCode()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->mRequestCode:I

    return v0
.end method

.method public abstract onDenied(Ljava/lang/String;)V
.end method

.method public abstract onGranted(Ljava/lang/String;)V
.end method

.method public setRequestCode(I)V
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->mRequestCode:I

    return-void
.end method

.method public setTriggerRequestEvent(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->isTriggerRequestEvent:Z

    return-void
.end method

###### Class io.dcloud.common.adapter.util.PermissionUtil.SafeCenter (io.dcloud.common.adapter.util.PermissionUtil$SafeCenter)
.class Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/util/PermissionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SafeCenter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;
    }
.end annotation


# static fields
.field private static datas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Landroid/app/Activity;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->goSafeCenter(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$300(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)Z
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->goSafeCenter(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)Z

    move-result p0

    return p0
.end method

.method private static goSafeCenter(Landroid/app/Activity;)V
    .registers 9

    const-string v0, "Permission"

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->init(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_b
    sget-object v4, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_b9

    .line 4
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 5
    sget-object v5, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;

    .line 7
    :try_start_20
    iget-object v6, v5, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->pname:Ljava/lang/String;

    invoke-virtual {v1, v6, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_26} :catch_b5

    if-nez v6, :cond_2a

    goto/16 :goto_b5

    .line 14
    :cond_2a
    iget-object v6, v5, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->clsName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 15
    iget-object v6, v5, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->pname:Ljava/lang/String;

    iget-object v7, v5, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->clsName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_47

    .line 16
    :cond_3a
    iget-object v6, v5, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->pname:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_47

    .line 17
    iget-object v6, v5, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->pname:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    :cond_47
    :goto_47
    iget-object v6, v5, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->action:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_54

    .line 20
    iget-object v6, v5, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->action:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    :cond_54
    iget-object v6, v5, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->extParamName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_65

    .line 23
    iget-object v5, v5, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->extParamName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_65
    const/high16 v5, 0x10000000

    .line 26
    :try_start_67
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 27
    invoke-virtual {p0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 28
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "successful "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_67 .. :try_end_8c} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_8c} :catch_8d

    goto :goto_b5

    :catch_8d
    move-exception v4

    .line 33
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception ="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b5

    :catch_a0
    move-exception v4

    .line 34
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ActivityNotFoundException ="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :catch_b5
    :goto_b5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_b

    :cond_b9
    return-void
.end method

.method private static goSafeCenter(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)Z
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 36
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->getRequestCode()I

    move-result v4

    .line 37
    const-string v0, "LOCATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v5, "intent="

    const-string v6, "Exception ="

    const-string v7, "ActivityNotFoundException ="

    const/4 v8, 0x1

    const-string v9, "Permission"

    const-string/jumbo v10, "successful "

    if-eqz v0, :cond_80

    .line 38
    const-string v0, "location"

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 39
    const-string v11, "gps"

    invoke-virtual {v0, v11}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v11

    .line 40
    const-string v12, "network"

    invoke-virtual {v0, v12}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v11, :cond_80

    if-eqz v0, :cond_37

    goto :goto_80

    .line 43
    :cond_37
    new-instance v0, Landroid/content/Intent;

    const-string v11, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    :try_start_3e
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 46
    invoke-static {v1, v2, v3, v4}, Lio/dcloud/common/adapter/util/PermissionUtil;->access$400(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;I)V

    .line 47
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3e .. :try_end_5b} :catch_6d
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_5b} :catch_5c

    return v8

    :catch_5c
    move-exception v0

    .line 53
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_80

    :catch_6d
    move-exception v0

    .line 54
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    :cond_80
    :goto_80
    invoke-static {v1}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->init(Landroid/content/Context;)V

    .line 63
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 64
    :goto_89
    sget-object v0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_133

    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 66
    sget-object v14, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;

    .line 68
    :try_start_9e
    iget-object v15, v14, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->pname:Ljava/lang/String;

    invoke-virtual {v11, v15, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15
    :try_end_a4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9e .. :try_end_a4} :catch_a6

    if-nez v15, :cond_aa

    :catch_a6
    const/16 v16, 0x1

    goto/16 :goto_12e

    .line 75
    :cond_aa
    iget-object v15, v14, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->clsName:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_bc

    .line 76
    iget-object v15, v14, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->pname:Ljava/lang/String;

    const/16 v16, 0x1

    iget-object v8, v14, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->clsName:Ljava/lang/String;

    invoke-virtual {v0, v15, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_cb

    :cond_bc
    const/16 v16, 0x1

    .line 77
    iget-object v8, v14, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->pname:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_cb

    .line 78
    iget-object v8, v14, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->pname:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    :cond_cb
    :goto_cb
    iget-object v8, v14, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->action:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d8

    .line 81
    iget-object v8, v14, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->action:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    :cond_d8
    iget-object v8, v14, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->extParamName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e9

    .line 84
    iget-object v8, v14, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->extParamName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v8, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    :cond_e9
    :try_start_e9
    invoke-virtual {v1, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 88
    invoke-static {v1, v2, v3, v4}, Lio/dcloud/common/adapter/util/PermissionUtil;->access$400(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;I)V

    .line 89
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_109
    .catch Landroid/content/ActivityNotFoundException; {:try_start_e9 .. :try_end_109} :catch_11b
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_109} :catch_10a

    return v16

    :catch_10a
    move-exception v0

    .line 95
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12e

    :catch_11b
    move-exception v0

    .line 96
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_12e
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x1

    goto/16 :goto_89

    :cond_133
    const/16 v16, 0x1

    return v16
.end method

.method static init(Landroid/content/Context;)V
    .registers 9

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_10a

    .line 3
    :cond_a
    :try_start_a
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/temp.j"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p0, Ljava/lang/String;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 6
    :goto_3a
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p0, v1, :cond_73

    .line 7
    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 8
    const-string v2, "p"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6c

    .line 10
    sget-object v3, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v4, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;

    const-string v5, "c"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "e"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "a"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v2, v5, v6, v1}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_6c} :catch_6f

    :cond_6c
    add-int/lit8 p0, p0, 0x1

    goto :goto_3a

    :catch_6f
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    :cond_73
    sget-object p0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_10a

    .line 17
    sget-object p0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;

    const-string v1, "com.miui.permcenter.permissions.PermissionsEditorActivity"

    const-string v2, "com.miui.securitycenter"

    const-string v3, "extra_pkgname"

    const/4 v4, 0x0

    invoke-direct {v0, v2, v1, v3, v4}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object p0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;

    const-string v1, "com.miui.permcenter.permissions.AppPermissionsEditorActivity"

    invoke-direct {v0, v2, v1, v3, v4}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object p0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;

    const-string v1, "com.meizu.safe"

    const-string v2, "com.meizu.safe.security.AppSecActivity"

    const-string v3, "packageName"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object p0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;

    const-string v1, "com.aliyun.mobile.permission"

    const-string v2, "com.aliyun.mobile.permission.ExternalAppDetailActivity"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object p0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;

    const-string v1, "com.iqoo.secure"

    const-string v2, "com.iqoo.secure.MainActivity"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object p0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;

    const-string v1, "com.sonymobile.cta"

    const-string v2, "com.sonymobile.cta.SomcCTAMainActivity"

    const-string v3, "package"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object p0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;

    const-string v1, "com.mediatek.security"

    const-string v2, "com.mediatek.security.ui.PermissionControlPageActivity"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object p0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;

    const-string v1, "com.yulong.android.launcher3"

    const-string v2, "com.yulong.android.launcher3.LauncherSettingsActivity"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object p0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$ManageApplicationsActivity"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object p0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;

    const-string v1, "android.settings.MANAGE_APPLICATIONS_SETTINGS"

    invoke-direct {v0, v4, v4, v3, v1}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10a
    :goto_10a
    return-void
.end method

###### Class io.dcloud.common.adapter.util.PermissionUtil.SafeCenter.Item (io.dcloud.common.adapter.util.PermissionUtil$SafeCenter$Item)
.class Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Item"
.end annotation


# instance fields
.field action:Ljava/lang/String;

.field clsName:Ljava/lang/String;

.field extParamName:Ljava/lang/String;

.field pname:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->pname:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->clsName:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->extParamName:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->action:Ljava/lang/String;

    return-void
.end method

###### Class io.dcloud.common.adapter.util.PermissionUtil.ShowDialogData (io.dcloud.common.adapter.util.PermissionUtil$ShowDialogData)
.class Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/util/PermissionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShowDialogData"
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field appName:Ljava/lang/String;

.field appid:Ljava/lang/String;

.field force:Z

.field mApp:Lio/dcloud/common/DHInterface/IApp;

.field request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

.field streamPerName:Ljava/lang/String;

.field tryTimes:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->tryTimes:I

    .line 10
    iput-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->mApp:Lio/dcloud/common/DHInterface/IApp;

    iput-object p3, p0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->streamPerName:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->appid:Ljava/lang/String;

    iput-object p5, p0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->appName:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V
    .registers 7

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;-><init>(Landroid/app/Activity;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, p0

    .line 2
    invoke-virtual {p0, p6}, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->setRequestHandler(Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    return-void
.end method


# virtual methods
.method setRequestHandler(Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    return-void
.end method

###### Class io.dcloud.common.adapter.util.PermissionUtil.StreamPermissionRequest (io.dcloud.common.adapter.util.PermissionUtil$StreamPermissionRequest)
.class public abstract Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;
.super Lio/dcloud/common/adapter/util/PermissionUtil$Request;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/util/PermissionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StreamPermissionRequest"
.end annotation


# instance fields
.field mApp:Lio/dcloud/common/DHInterface/IApp;

.field private mAppName:Ljava/lang/String;

.field public mAppid:Ljava/lang/String;

.field private mOriginalPermisson:[Ljava/lang/String;

.field private mPermission:[Ljava/lang/String;

.field public mTag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/dcloud/common/DHInterface/IApp;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;->mTag:Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;->mAppid:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;->mAppName:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;->mPermission:[Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;->mOriginalPermisson:[Ljava/lang/String;

    .line 9
    invoke-virtual {p0, p1}, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;->setApp(Lio/dcloud/common/DHInterface/IApp;)V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method getStreamRequestPermission()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;->mOriginalPermisson:[Ljava/lang/String;

    return-object v0
.end method

.method protected getSystemRequestPermission()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;->mPermission:[Ljava/lang/String;

    return-object v0
.end method

.method public setApp(Lio/dcloud/common/DHInterface/IApp;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;->mApp:Lio/dcloud/common/DHInterface/IApp;

    .line 2
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;->mAppid:Ljava/lang/String;

    .line 3
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;->mAppName:Ljava/lang/String;

    return-void
.end method

.method public varargs setRequestPermission([Ljava/lang/String;)Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;->mOriginalPermisson:[Ljava/lang/String;

    .line 2
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;->mPermission:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    :goto_8
    iget-object v1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;->mPermission:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_18

    .line 4
    aget-object v2, p1, v0

    invoke-static {v2}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert2SystemPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_18
    return-object p0
.end method
