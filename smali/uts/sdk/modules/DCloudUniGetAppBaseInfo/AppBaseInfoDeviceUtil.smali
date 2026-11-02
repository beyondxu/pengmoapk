###### Class uts.sdk.modules.DCloudUniGetAppBaseInfo.AppBaseInfoDeviceUtil (uts.sdk.modules.DCloudUniGetAppBaseInfo.AppBaseInfoDeviceUtil)
.class public Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil;",
        "",
        "<init>",
        "()V",
        "Companion",
        "uni-getAppBaseInfo_release"
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
.field public static final Companion:Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class uts.sdk.modules.DCloudUniGetAppBaseInfo.AppBaseInfoDeviceUtil.Companion (uts.sdk.modules.DCloudUniGetAppBaseInfo.AppBaseInfoDeviceUtil$Companion)
.class public final Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nindex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 index.kt\nuts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,334:1\n13579#2,2:335\n13586#2,2:337\n*S KotlinDebug\n*F\n+ 1 index.kt\nuts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion\n*L\n84#1:335,2\n113#1:337,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008J\u0006\u0010\n\u001a\u00020\u0005J\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\r\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008J\u0006\u0010\u0014\u001a\u00020\u0005J\u000e\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008J\u0018\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0005H\u0002\u00a8\u0006\u001b"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;",
        "",
        "<init>",
        "()V",
        "getAppID",
        "",
        "getAppName",
        "context",
        "Landroid/content/Context;",
        "getPackageName",
        "getAppVersionName",
        "getAppVersionCode",
        "getHostVersion",
        "getHostCode",
        "isSystemNightMode",
        "",
        "activity",
        "Landroid/app/Activity;",
        "getOsLanguage",
        "getOsLanguageNormal",
        "getAppInnerVersion",
        "getAppSignatureSHA1",
        "getChannel",
        "getSignatureString",
        "sign",
        "Landroid/content/pm/Signature;",
        "type",
        "uni-getAppBaseInfo_release"
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

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;-><init>()V

    return-void
.end method

.method private final getSignatureString(Landroid/content/pm/Signature;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 106
    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    .line 109
    :try_start_4
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    if-eqz p2, :cond_69

    .line 111
    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 112
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 113
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 337
    array-length v0, p1

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v0, :cond_5f

    aget-byte v2, p1, v1

    .line 114
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    const/16 v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-static {v2, v3}, Lio/dcloud/uts/NumberKt;->and(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    const/16 v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-static {v2, v3}, Lio/dcloud/uts/NumberKt;->or(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toHexString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-static {v2, v3, v4}, Lio/dcloud/uts/StringKt;->substring(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 117
    :cond_5f
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_68} :catch_69

    return-object p1

    .line 121
    :catch_69
    :cond_69
    const-string p1, "error!"

    return-object p1
.end method


# virtual methods
.method public final getAppID()Ljava/lang/String;
    .registers 2

    .line 25
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAppInnerVersion()Ljava/lang/String;
    .registers 2

    .line 77
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getInnerVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAppName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {p1, v0}, Lio/dcloud/uts/NumberKt;->toString(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getAppSignatureSHA1(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const-string v0, ""

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x40

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type android.content.pm.PackageInfo"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p1, :cond_34

    .line 335
    array-length v1, p1

    const/4 v2, 0x0

    move-object v3, v0

    :goto_21
    if-ge v2, v1, :cond_33

    aget-object v3, p1, v2

    .line 85
    sget-object v4, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v5, "SHA1"

    invoke-direct {v4, v3, v5}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;->getSignatureString(Landroid/content/pm/Signature;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_30} :catch_34

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_33
    return-object v3

    :catch_34
    :cond_34
    return-object v0
.end method

.method public final getAppVersionCode()Ljava/lang/String;
    .registers 4

    .line 38
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getAppVersion()Lio/dcloud/uts/UTSJSONObject;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lio/dcloud/uts/NumberKt;->toString_number_nullable$default(Ljava/lang/Object;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAppVersionName()Ljava/lang/String;
    .registers 4

    .line 35
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getAppVersion()Lio/dcloud/uts/UTSJSONObject;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lio/dcloud/uts/NumberKt;->toString_number_nullable$default(Ljava/lang/Object;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getChannel(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    const-string v1, "getApplicationInfo(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 99
    const-string v1, "DCLOUD_CHANNEL"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_22} :catch_26

    if-nez p1, :cond_25

    return-object v0

    :cond_25
    return-object p1

    :catch_26
    return-object v0
.end method

.method public final getHostCode(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 48
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    const-string v0, ""

    invoke-static {p1, v0}, Lio/dcloud/uts/NumberKt;->plus(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getHostVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 43
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez p1, :cond_18

    const-string p1, ""

    :cond_18
    return-object p1
.end method

.method public final getOsLanguage(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
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

    .line 60
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

    .line 61
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

    .line 62
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

    .line 65
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

    .line 68
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

    .line 63
    :cond_71
    :goto_71
    const-string p1, "zh-Hans"

    return-object p1

    .line 66
    :cond_74
    :goto_74
    const-string p1, "zh-Hant"

    :cond_76
    return-object p1
.end method

.method public final getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getPackageName(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final isSystemNightMode(Landroid/app/Activity;)Z
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    const-string v0, "uimode"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.UiModeManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/UiModeManager;

    .line 52
    invoke-virtual {p1}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1b

    const/4 p1, 0x1

    return p1

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method
