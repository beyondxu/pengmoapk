###### Class uts.sdk.modules.DCloudUniGetDeviceInfo.DeviceUtil (uts.sdk.modules.DCloudUniGetDeviceInfo.DeviceUtil)
.class public Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;",
        "",
        "<init>",
        "()V",
        "Companion",
        "uni-getDeviceInfo_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

.field private static KEY_COLOROS_VERSION_NAME:Ljava/lang/String;

.field private static KEY_EMUI_VERSION_NAME:Ljava/lang/String;

.field private static KEY_FLYME_VERSION_NAME:Ljava/lang/String;

.field private static KEY_HARMONYOS_VERSION_NAME:Ljava/lang/String;

.field private static KEY_MAGICUI_VERSION:Ljava/lang/String;

.field private static KEY_MIUI_VERSION_NAME:Ljava/lang/String;

.field private static KEY_NUBIA_VERSION_CODE:Ljava/lang/String;

.field private static KEY_NUBIA_VERSION_NAME:Ljava/lang/String;

.field private static KEY_ONEPLUS_VERSION_NAME:Ljava/lang/String;

.field private static KEY_VIVO_VERSION:Ljava/lang/String;

.field private static KEY_VIVO_VERSION_NAME:Ljava/lang/String;

.field private static customOS:Ljava/lang/String;

.field private static customOSVersion:Ljava/lang/String;

.field private static final rootRelatedDirs:Lio/dcloud/uts/UTSArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 20

    new-instance v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    .line 324
    const-string v18, "/system/bin/conbb"

    .line 325
    const-string v19, "/system/xbin/conbb"

    const-string v2, "/su"

    const-string v3, "/su/bin/su"

    const-string v4, "/sbin/su"

    const-string v5, "/data/local/xbin/su"

    const-string v6, "/data/local/bin/su"

    const-string v7, "/data/local/su"

    const-string v8, "/system/xbin/su"

    const-string v9, "/system/bin/su"

    const-string v10, "/system/sd/xbin/su"

    const-string v11, "/system/bin/failsafe/su"

    const-string v12, "/system/bin/cufsdosck"

    const-string v13, "/system/xbin/cufsdosck"

    const-string v14, "/system/bin/cufsmgr"

    const-string v15, "/system/xbin/cufsmgr"

    const-string v16, "/system/bin/cufaevdd"

    const-string v17, "/system/xbin/cufaevdd"

    filled-new-array/range {v2 .. v19}, [Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {v0}, Lio/dcloud/uts/UTSArrayKt;->_uA([Ljava/lang/Object;)Lio/dcloud/uts/UTSArray;

    move-result-object v0

    sput-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->rootRelatedDirs:Lio/dcloud/uts/UTSArray;

    .line 327
    const-string v0, "hw_sc.build.platform.version"

    sput-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_HARMONYOS_VERSION_NAME:Ljava/lang/String;

    .line 328
    const-string v0, "ro.build.version.emui"

    sput-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_EMUI_VERSION_NAME:Ljava/lang/String;

    .line 329
    const-string v0, "ro.build.version.magic"

    sput-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_MAGICUI_VERSION:Ljava/lang/String;

    .line 330
    const-string v0, "ro.miui.ui.version.name"

    sput-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_MIUI_VERSION_NAME:Ljava/lang/String;

    .line 331
    const-string v0, "ro.build.version.opporom"

    sput-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_COLOROS_VERSION_NAME:Ljava/lang/String;

    .line 332
    const-string v0, "ro.vivo.os.name"

    sput-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_VIVO_VERSION_NAME:Ljava/lang/String;

    .line 333
    const-string v0, "ro.vivo.os.version"

    sput-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_VIVO_VERSION:Ljava/lang/String;

    .line 334
    const-string v0, "ro.rom.version"

    sput-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_ONEPLUS_VERSION_NAME:Ljava/lang/String;

    .line 335
    const-string v0, "ro.build.display.id"

    sput-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_FLYME_VERSION_NAME:Ljava/lang/String;

    .line 336
    const-string v0, "ro.build.nubia.rom.name"

    sput-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_NUBIA_VERSION_NAME:Ljava/lang/String;

    .line 337
    const-string v0, "ro.build.nubia.rom.code"

    sput-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_NUBIA_VERSION_CODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCustomOS$cp()Ljava/lang/String;
    .registers 1

    .line 303
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->customOS:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getCustomOSVersion$cp()Ljava/lang/String;
    .registers 1

    .line 303
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->customOSVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_COLOROS_VERSION_NAME$cp()Ljava/lang/String;
    .registers 1

    .line 303
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_COLOROS_VERSION_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_EMUI_VERSION_NAME$cp()Ljava/lang/String;
    .registers 1

    .line 303
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_EMUI_VERSION_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_FLYME_VERSION_NAME$cp()Ljava/lang/String;
    .registers 1

    .line 303
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_FLYME_VERSION_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_HARMONYOS_VERSION_NAME$cp()Ljava/lang/String;
    .registers 1

    .line 303
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_HARMONYOS_VERSION_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_MAGICUI_VERSION$cp()Ljava/lang/String;
    .registers 1

    .line 303
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_MAGICUI_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_MIUI_VERSION_NAME$cp()Ljava/lang/String;
    .registers 1

    .line 303
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_MIUI_VERSION_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_NUBIA_VERSION_CODE$cp()Ljava/lang/String;
    .registers 1

    .line 303
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_NUBIA_VERSION_CODE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_NUBIA_VERSION_NAME$cp()Ljava/lang/String;
    .registers 1

    .line 303
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_NUBIA_VERSION_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_ONEPLUS_VERSION_NAME$cp()Ljava/lang/String;
    .registers 1

    .line 303
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_ONEPLUS_VERSION_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_VIVO_VERSION$cp()Ljava/lang/String;
    .registers 1

    .line 303
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_VIVO_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getRootRelatedDirs$cp()Lio/dcloud/uts/UTSArray;
    .registers 1

    .line 303
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->rootRelatedDirs:Lio/dcloud/uts/UTSArray;

    return-object v0
.end method

.method public static final synthetic access$setCustomOS$cp(Ljava/lang/String;)V
    .registers 1

    .line 303
    sput-object p0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->customOS:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setCustomOSVersion$cp(Ljava/lang/String;)V
    .registers 1

    .line 303
    sput-object p0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->customOSVersion:Ljava/lang/String;

    return-void
.end method

###### Class uts.sdk.modules.DCloudUniGetDeviceInfo.DeviceUtil.Companion (uts.sdk.modules.DCloudUniGetDeviceInfo.DeviceUtil$Companion)
.class public final Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0004\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0016J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u0016J\u000e\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u001a\u001a\u00020\u001bJ\u0016\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001bJ\u000e\u0010 \u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u001eJ\u000e\u0010!\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u001eJ\u000e\u0010\"\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u001eJ\u0006\u0010#\u001a\u00020\u0005J\u0006\u0010$\u001a\u00020\u0005J\u0006\u0010%\u001a\u00020\u0005J\u0006\u0010&\u001a\u00020\u0005J\u000e\u0010\'\u001a\u00020\u001b2\u0006\u0010\u0015\u001a\u00020\u0016J\u0010\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0005H\u0002J\u0008\u0010+\u001a\u00020\u001bH\u0002J\u0010\u0010,\u001a\u00020\u00052\u0008\u0010-\u001a\u0004\u0018\u00010\u0005J\u0012\u0010.\u001a\u0004\u0018\u00010\u00052\u0006\u0010/\u001a\u00020\u0005H\u0002J\u0006\u00100\u001a\u00020\u001bR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;",
        "",
        "<init>",
        "()V",
        "customOS",
        "",
        "customOSVersion",
        "rootRelatedDirs",
        "Lio/dcloud/uts/UTSArray;",
        "KEY_HARMONYOS_VERSION_NAME",
        "KEY_EMUI_VERSION_NAME",
        "KEY_MAGICUI_VERSION",
        "KEY_MIUI_VERSION_NAME",
        "KEY_COLOROS_VERSION_NAME",
        "KEY_VIVO_VERSION_NAME",
        "KEY_VIVO_VERSION",
        "KEY_ONEPLUS_VERSION_NAME",
        "KEY_FLYME_VERSION_NAME",
        "KEY_NUBIA_VERSION_NAME",
        "KEY_NUBIA_VERSION_CODE",
        "getOrientation",
        "activity",
        "Landroid/app/Activity;",
        "getScaledDensity",
        "",
        "getSystemUIModeType",
        "hasRootPrivilege",
        "",
        "isSimulator",
        "context",
        "Landroid/content/Context;",
        "sampleSensor",
        "getDeviceID",
        "getOsLanguage",
        "getOsLanguageNormal",
        "getAppInnerVersion",
        "getOaid",
        "getRomName",
        "getRomVersion",
        "isTablet",
        "setCustomInfo",
        "",
        "phoneBrand",
        "isHarmonyOS",
        "deleteSpaceAndToUpperCase",
        "str",
        "getSystemPropertyValue",
        "propName",
        "listeningForADB",
        "uni-getDeviceInfo_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;-><init>()V

    return-void
.end method

.method private final getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    .line 529
    :try_start_1
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const-string v3, "java.lang.String"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 530
    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 532
    check-cast p1, Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_26

    return-object p1

    :catch_26
    :cond_26
    return-object v0
.end method

.method private final isHarmonyOS()Z
    .registers 4

    .line 510
    :try_start_0
    const-string v0, "com.huawei.system.BuildEx"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 511
    const-string v1, "getOsBrand"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 512
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    .line 513
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_21

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_21
    const/4 v0, 0x0

    return v0
.end method

.method private final setCustomInfo(Ljava/lang/String;)V
    .registers 5

    .line 445
    :try_start_0
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    invoke-virtual {v0, p1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;->deleteSpaceAndToUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_1ba

    const-string v1, "EMUI"

    const-string v2, "HarmonyOS"

    sparse-switch v0, :sswitch_data_1bc

    goto/16 :goto_1ac

    :sswitch_13
    :try_start_13
    const-string v0, "HUAWEI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto/16 :goto_1ac

    .line 447
    :cond_1d
    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    invoke-direct {p1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;->isHarmonyOS()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 448
    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    invoke-static {}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$getKEY_HARMONYOS_VERSION_NAME$cp()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$setCustomOSVersion$cp(Ljava/lang/String;)V

    .line 449
    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    invoke-static {v2}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$setCustomOS$cp(Ljava/lang/String;)V

    return-void

    .line 451
    :cond_3a
    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    invoke-static {v1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$setCustomOS$cp(Ljava/lang/String;)V

    .line 452
    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    invoke-static {}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$getKEY_EMUI_VERSION_NAME$cp()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$setCustomOSVersion$cp(Ljava/lang/String;)V

    return-void

    .line 445
    :sswitch_4f
    const-string v0, "REDMI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_175

    goto/16 :goto_1ac

    :sswitch_59
    const-string v0, "NUBIA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_63

    goto/16 :goto_1ac

    .line 496
    :cond_63
    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    invoke-static {}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$getKEY_NUBIA_VERSION_NAME$cp()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$setCustomOS$cp(Ljava/lang/String;)V

    .line 497
    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    invoke-static {}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$getKEY_NUBIA_VERSION_CODE$cp()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$setCustomOSVersion$cp(Ljava/lang/String;)V

    return-void

    .line 445
    :sswitch_82
    const-string v0, "MEIZU"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8c

    goto/16 :goto_1ac

    .line 491
    :cond_8c
    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    const-string p1, "Flyme"

    invoke-static {p1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$setCustomOS$cp(Ljava/lang/String;)V

    .line 492
    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    invoke-static {}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$getKEY_FLYME_VERSION_NAME$cp()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$setCustomOSVersion$cp(Ljava/lang/String;)V

    return-void

    .line 445
    :sswitch_a3
    const-string v0, "HONOR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ad

    goto/16 :goto_1ac

    .line 455
    :cond_ad
    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    invoke-direct {p1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;->isHarmonyOS()Z

    move-result p1

    if-eqz p1, :cond_e4

    .line 456
    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    invoke-static {v2}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$setCustomOS$cp(Ljava/lang/String;)V

    .line 457
    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    invoke-static {}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$getKEY_HARMONYOS_VERSION_NAME$cp()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_dc

    .line 458
    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    invoke-static {}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$getKEY_HARMONYOS_VERSION_NAME$cp()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$setCustomOSVersion$cp(Ljava/lang/String;)V

    return-void

    .line 460
    :cond_dc
    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    const-string p1, ""

    invoke-static {p1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$setCustomOSVersion$cp(Ljava/lang/String;)V

    return-void

    .line 462
    :cond_e4
    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    invoke-static {}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$getKEY_MAGICUI_VERSION$cp()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10d

    .line 463
    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    const-string p1, "MagicUI"

    invoke-static {p1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$setCustomOS$cp(Ljava/lang/String;)V

    .line 464
    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    invoke-static {}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$getKEY_MAGICUI_VERSION$cp()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$setCustomOSVersion$cp(Ljava/lang/String;)V

    return-void

    .line 466
    :cond_10d
    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    invoke-static {v1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$setCustomOS$cp(Ljava/lang/String;)V

    .line 467
    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    invoke-static {}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$getKEY_EMUI_VERSION_NAME$cp()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$setCustomOSVersion$cp(Ljava/lang/String;)V

    return-void

    .line 445
    :sswitch_122
    const-string v0, "VIVO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12c

    goto/16 :goto_1ac

    .line 481
    :cond_12c
    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    const-string p1, "Funtouch"

    invoke-static {p1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$setCustomOS$cp(Ljava/lang/String;)V

    .line 482
    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    invoke-static {}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$getKEY_VIVO_VERSION$cp()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$setCustomOSVersion$cp(Ljava/lang/String;)V

    return-void

    .line 445
    :sswitch_143
    const-string v0, "OPPO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_195

    goto :goto_1ac

    :sswitch_14c
    const-string v0, "ONEPLUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_155

    goto :goto_1ac

    .line 486
    :cond_155
    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    const-string p1, "HydrogenOS"

    invoke-static {p1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$setCustomOS$cp(Ljava/lang/String;)V

    .line 487
    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    invoke-static {}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$getKEY_ONEPLUS_VERSION_NAME$cp()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$setCustomOSVersion$cp(Ljava/lang/String;)V

    return-void

    .line 445
    :sswitch_16c
    const-string v0, "XIAOMI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_175

    goto :goto_1ac

    .line 471
    :cond_175
    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    const-string p1, "MIUI"

    invoke-static {p1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$setCustomOS$cp(Ljava/lang/String;)V

    .line 472
    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    invoke-static {}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$getKEY_MIUI_VERSION_NAME$cp()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$setCustomOSVersion$cp(Ljava/lang/String;)V

    return-void

    .line 445
    :sswitch_18c
    const-string v0, "REALME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_195

    goto :goto_1ac

    .line 476
    :cond_195
    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    const-string p1, "ColorOS"

    invoke-static {p1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$setCustomOS$cp(Ljava/lang/String;)V

    .line 477
    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    invoke-static {}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$getKEY_COLOROS_VERSION_NAME$cp()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$setCustomOSVersion$cp(Ljava/lang/String;)V

    return-void

    .line 501
    :goto_1ac
    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    const-string p1, "Android"

    invoke-static {p1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$setCustomOS$cp(Ljava/lang/String;)V

    .line 502
    sget-object p1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {p1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$setCustomOSVersion$cp(Ljava/lang/String;)V
    :try_end_1ba
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1ba} :catch_1ba

    :catch_1ba
    return-void

    nop

    :sswitch_data_1bc
    .sparse-switch
        -0x7027944a -> :sswitch_18c
        -0x65b21745 -> :sswitch_16c
        -0x23e7db20 -> :sswitch_14c
        0x251fa0 -> :sswitch_143
        0x2834ac -> :sswitch_122
        0x41bb44a -> :sswitch_a3
        0x45d8cac -> :sswitch_82
        0x472cdb3 -> :sswitch_59
        0x4a3edcd -> :sswitch_4f
        0x7fa995e7 -> :sswitch_13
    .end sparse-switch
.end method


# virtual methods
.method public final deleteSpaceAndToUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 520
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_c

    return-object v1

    .line 523
    :cond_c
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, " "

    invoke-static {p1, v0, v1}, Lio/dcloud/uts/StringKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/uts/StringKt;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getAppInnerVersion()Ljava/lang/String;
    .registers 2

    .line 427
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getInnerVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0, p1}, Lio/dcloud/uts/UTSAndroid;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getOaid()Ljava/lang/String;
    .registers 2

    .line 430
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getOAID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOrientation(Landroid/app/Activity;)Ljava/lang/String;
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_15

    .line 342
    const-string p1, "landscape"

    return-object p1

    .line 344
    :cond_15
    const-string p1, "portrait"

    return-object p1
.end method

.method public final getOsLanguage(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0, p1}, Lio/dcloud/uts/UTSAndroid;->getLanguageInfo(Landroid/content/Context;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object p1

    const-string v0, "osLanguage"

    invoke-virtual {p1, v0}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lio/dcloud/uts/NumberKt;->toString_number_nullable$default(Ljava/lang/Object;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getOsLanguageNormal(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0, p1}, Lio/dcloud/uts/UTSAndroid;->getLanguageInfo(Landroid/content/Context;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object p1

    const-string v0, "appLanguage"

    invoke-virtual {p1, v0}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lio/dcloud/uts/NumberKt;->toString_number_nullable$default(Ljava/lang/Object;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 411
    const-string v0, "zh"

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lio/dcloud/uts/StringKt;->indexOf$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 412
    const-string v0, "-hans"

    invoke-static {p1, v0, v1, v2, v1}, Lio/dcloud/uts/StringKt;->indexOf$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-static {v0, v4}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    if-lez v0, :cond_3d

    goto :goto_71

    .line 415
    :cond_3d
    const-string v0, "-hant"

    invoke-static {p1, v0, v1, v2, v1}, Lio/dcloud/uts/StringKt;->indexOf$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-static {v0, v3}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    if-lez v0, :cond_50

    goto :goto_74

    .line 418
    :cond_50
    const-string v0, "-tw"

    invoke-static {p1, v0, v1, v2, v1}, Lio/dcloud/uts/StringKt;->includes$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    const-string v0, "-hk"

    invoke-static {p1, v0, v1, v2, v1}, Lio/dcloud/uts/StringKt;->includes$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    const-string v0, "-mo"

    invoke-static {p1, v0, v1, v2, v1}, Lio/dcloud/uts/StringKt;->includes$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    const-string v0, "-cht"

    invoke-static {p1, v0, v1, v2, v1}, Lio/dcloud/uts/StringKt;->includes$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_71

    goto :goto_74

    .line 413
    :cond_71
    :goto_71
    const-string p1, "zh-Hans"

    return-object p1

    .line 416
    :cond_74
    :goto_74
    const-string p1, "zh-Hant"

    :cond_76
    return-object p1
.end method

.method public final getRomName()Ljava/lang/String;
    .registers 4

    .line 433
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "MANUFACTURER"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;->setCustomInfo(Ljava/lang/String;)V

    .line 434
    invoke-static {}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$getCustomOS$cp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    const-string v0, ""

    :cond_14
    return-object v0
.end method

.method public final getRomVersion()Ljava/lang/String;
    .registers 4

    .line 437
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "MANUFACTURER"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;->setCustomInfo(Ljava/lang/String;)V

    .line 438
    invoke-static {}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$getCustomOSVersion$cp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    const-string v0, ""

    :cond_14
    return-object v0
.end method

.method public final getScaledDensity(Landroid/app/Activity;)Ljava/lang/Number;
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/WindowManager;

    .line 348
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 350
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 354
    iget p1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    return-object p1
.end method

.method public final getSystemUIModeType(Landroid/app/Activity;)Ljava/lang/String;
    .registers 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    const-string v0, "uimode"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.UiModeManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/UiModeManager;

    .line 359
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    packed-switch v0, :pswitch_data_40

    .line 381
    const-string p1, "unknown"

    return-object p1

    .line 377
    :pswitch_1c
    const-string p1, "vr"

    return-object p1

    .line 363
    :pswitch_1f
    const-string p1, "watch"

    return-object p1

    .line 379
    :pswitch_22
    const-string p1, "appliance"

    return-object p1

    .line 361
    :pswitch_25
    const-string p1, "tv"

    return-object p1

    .line 375
    :pswitch_28
    const-string p1, "car"

    return-object p1

    .line 371
    :pswitch_2b
    const-string p1, "pc"

    return-object p1

    .line 365
    :pswitch_2e
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    invoke-virtual {v0, p1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;->isTablet(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 366
    const-string p1, "pad"

    return-object p1

    .line 368
    :cond_39
    const-string p1, "phone"

    return-object p1

    .line 373
    :pswitch_3c
    const-string p1, "undefined"

    return-object p1

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public final hasRootPrivilege()Z
    .registers 8

    .line 385
    invoke-static {}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->access$getRootRelatedDirs$cp()Lio/dcloud/uts/UTSArray;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Lio/dcloud/uts/UTSArray;->getLength()Ljava/lang/Number;

    move-result-object v1

    const/4 v2, 0x0

    .line 387
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    .line 388
    :goto_f
    invoke-static {v3, v1}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v4

    const/4 v5, 0x1

    if-gez v4, :cond_2e

    .line 389
    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->get(Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 390
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_29

    const/4 v0, 0x1

    goto :goto_2f

    .line 394
    :cond_29
    invoke-static {v3}, Lio/dcloud/uts/NumberKt;->inc(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v3

    goto :goto_f

    :cond_2e
    const/4 v0, 0x0

    .line 396
    :goto_2f
    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v1, :cond_44

    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v3, "TAGS"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "test-keys"

    const/4 v4, 0x2

    const/4 v6, 0x0

    invoke-static {v1, v3, v6, v4, v6}, Lio/dcloud/uts/StringKt;->includes$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    :cond_44
    if-eqz v0, :cond_47

    :cond_46
    return v5

    :cond_47
    return v2
.end method

.method public final isSimulator(Landroid/content/Context;Z)Z
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/EmulatorCheckUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/EmulatorCheckUtil$Companion;

    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniGetDeviceInfo/EmulatorCheckUtil$Companion;->getSingleInstance()Luts/sdk/modules/DCloudUniGetDeviceInfo/EmulatorCheckUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Luts/sdk/modules/DCloudUniGetDeviceInfo/EmulatorCheckUtil;->emulatorCheck(Landroid/content/Context;Z)Z

    move-result p1

    return p1
.end method

.method public final isTablet(Landroid/app/Activity;)Z
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    const/4 v0, 0x3

    if-lt p1, v0, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method public final listeningForADB()Z
    .registers 9

    const/4 v0, 0x3

    .line 539
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "/bin/sh"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "-c"

    aput-object v4, v1, v2

    const/4 v5, 0x2

    const-string v6, "getprop | grep init.svc.adbd"

    aput-object v6, v1, v5

    .line 541
    :try_start_12
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_1a

    goto :goto_2b

    .line 544
    :catch_1a
    new-array v1, v0, [Ljava/lang/String;

    const-string v0, "/system/bin/sh"

    aput-object v0, v1, v3

    aput-object v4, v1, v2

    aput-object v6, v1, v5

    .line 546
    :try_start_24
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2b} :catch_69

    .line 552
    :goto_2b
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 553
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-string v6, "utf-8"

    invoke-direct {v2, v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    check-cast v2, Ljava/io/Reader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 v2, 0x400

    .line 554
    new-array v2, v2, [C

    const/4 v4, 0x0

    .line 557
    :goto_4a
    invoke-virtual {v1, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5c

    .line 565
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 566
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return v4

    .line 559
    :cond_5c
    new-instance v4, Ljava/lang/String;

    .line 561
    invoke-direct {v4, v2, v3, v6}, Ljava/lang/String;-><init>([CII)V

    .line 562
    const-string v6, "running"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7, v5, v7}, Lio/dcloud/uts/StringKt;->includes$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Z

    move-result v4

    goto :goto_4a

    :catch_69
    return v3
.end method
