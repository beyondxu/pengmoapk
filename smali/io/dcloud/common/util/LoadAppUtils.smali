###### Class io.dcloud.common.util.LoadAppUtils (io.dcloud.common.util.LoadAppUtils)
.class public Lio/dcloud/common/util/LoadAppUtils;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/util/LoadAppUtils$SafeCenter;
    }
.end annotation


# static fields
.field public static final APK_DOWNGRADE:I = -0x1

.field public static final APK_INSTALLED:I = 0x0

.field public static final APK_UNINSTALLED:I = -0x2

.field public static final APK_UPGRADE:I = 0x1

.field private static final APP_TYPE_ALL:I = 0x0

.field private static final APP_TYPE_NON_SYSTEM:I = 0x1

.field private static final APP_TYPE_SYSTEM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LoadAppUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApkFileLable(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    .line 1
    const-string v0, "DownloadUtils"

    .line 0
    const-string v1, "label="

    const-string v2, "pkg:"

    const-string v3, "pkgParser:"

    .line 1
    const-string v4, "android.content.pm.PackageParser"

    .line 2
    const-string v5, "android.content.res.AssetManager"

    .line 6
    :try_start_c
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 8
    const-class v6, Ljava/lang/String;

    const/4 v6, 0x0

    .line 11
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 20
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 25
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 29
    invoke-virtual {v3}, Landroid/util/DisplayMetrics;->setToDefaults()V

    const/4 v3, 0x2

    .line 35
    new-array v8, v3, [Ljava/lang/Class;

    const-class v9, Ljava/io/File;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x1

    aput-object v9, v8, v11

    .line 43
    const-string v9, "parsePackage"

    invoke-virtual {v4, v9, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 48
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v12, v3, [Ljava/lang/Object;

    aput-object v8, v12, v10

    aput-object v9, v12, v11

    .line 58
    invoke-virtual {v4, v7, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 61
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "applicationInfo"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 65
    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 67
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 72
    invoke-virtual {v2, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 76
    new-array v7, v11, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v10

    .line 77
    const-string v8, "addAssetPath"

    invoke-virtual {v2, v8, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 80
    new-array v7, v11, [Ljava/lang/Object;

    aput-object p1, v7, v10

    .line 81
    invoke-virtual {v2, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 85
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 86
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 87
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Class;

    aput-object p1, v9, v10

    aput-object v2, v9, v11

    aput-object v7, v9, v3

    .line 89
    const-class p1, Landroid/content/res/Resources;

    invoke-virtual {p1, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 93
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 94
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v5, v7, v10

    aput-object v2, v7, v11

    aput-object p0, v7, v3

    .line 96
    invoke-virtual {p1, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/Resources;

    .line 99
    iget p1, v4, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz p1, :cond_eb

    .line 100
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 103
    :cond_eb
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_fe} :catch_ff

    return-object p0

    :catch_ff
    move-exception p0

    .line 107
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    const-string p0, "-1"

    return-object p0
.end method

.method public static getApkFileSignatureAndPackageName(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {p0, p1}, Lio/dcloud/common/util/LoadAppUtils;->getPackageSignatures(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_46

    if-eqz p0, :cond_8

    return-object p0

    :cond_8
    const/16 p0, 0x40

    .line 11
    :try_start_a
    invoke-static {p1, p0}, Lio/dcloud/common/util/LoadAppUtils;->parsePackage(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_e} :catch_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_46

    goto :goto_11

    :catch_f
    nop

    move-object p0, v0

    :goto_11
    if-nez p0, :cond_14

    return-object v0

    .line 18
    :cond_14
    :try_start_14
    invoke-static {p0, p1}, Lio/dcloud/common/util/LoadAppUtils;->getApkSignature(Ljava/lang/Object;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object p1

    if-eqz p1, :cond_45

    .line 19
    array-length v1, p1

    if-lez v1, :cond_45

    const/4 v1, 0x0

    .line 20
    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    .line 21
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/HashUtils;->getHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 23
    const-string v1, "applicationInfo"

    .line 25
    invoke-static {p0, v1}, Lio/dcloud/common/util/ReflectUtils;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "packageName"

    .line 26
    invoke-static {p0, v1}, Lio/dcloud/common/util/ReflectUtils;->getObjectFieldNoDeclared(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 30
    filled-new-array {p1, p0}, [Ljava/lang/String;

    move-result-object p0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_44} :catch_46

    return-object p0

    :cond_45
    return-object v0

    :catch_46
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static getApkFileSignatureAndPackageNameEx(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    const/16 p0, 0x40

    const/4 v0, 0x0

    .line 1
    :try_start_3
    invoke-static {p1, p0}, Lio/dcloud/common/util/LoadAppUtils;->parsePackage(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_39

    .line 3
    const-string p1, "mSignatures"

    invoke-static {p0, p1}, Lio/dcloud/common/util/ReflectUtils;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/pm/Signature;

    if-eqz p1, :cond_39

    .line 5
    array-length v1, p1

    if-nez v1, :cond_17

    goto :goto_39

    :cond_17
    const/4 v1, 0x0

    .line 9
    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    .line 10
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/HashUtils;->getHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 12
    const-string v1, "packageName"

    invoke-static {p0, v1}, Lio/dcloud/common/util/ReflectUtils;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 14
    filled-new-array {p1, p0}, [Ljava/lang/String;

    move-result-object p0
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_38} :catch_3a

    return-object p0

    :cond_39
    :goto_39
    return-object v0

    :catch_3a
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static getApkSignature(Ljava/lang/Object;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .registers 3

    const/4 p1, 0x0

    .line 1
    new-array p1, p1, [Landroid/content/pm/Signature;

    .line 3
    :try_start_3
    const-string v0, "mSignatures"

    invoke-static {p0, v0}, Lio/dcloud/common/util/ReflectUtils;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/pm/Signature;
    :try_end_b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_b} :catch_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_b} :catch_d

    move-object p1, p0

    goto :goto_16

    :catch_d
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_16

    :catch_12
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_16
    const/4 p0, 0x0

    if-nez p1, :cond_1a

    return-object p0

    .line 15
    :cond_1a
    array-length v0, p1

    if-gtz v0, :cond_1e

    return-object p0

    :cond_1e
    return-object p1
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 6
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAppSignatureMd5(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x40

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 4
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/util/Md5Utils;->md5LowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object p0

    :catch_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAppSignatureSHA1(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x40

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 4
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 6
    array-length v1, p0

    const/4 v2, 0x0

    move-object v3, v0

    :goto_14
    if-ge v2, v1, :cond_21

    aget-object v3, p0, v2

    .line 7
    const-string v4, "SHA1"

    invoke-static {v3, v4}, Lio/dcloud/common/util/LoadAppUtils;->getSignatureString(Landroid/content/pm/Signature;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1e} :catch_22

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_21
    return-object v3

    :catch_22
    return-object v0
.end method

.method public static getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 6
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    const-string p0, ""

    return-object p0
.end method

.method public static getDataAndTypeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_3b

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".dc.fileprovider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    const/4 p1, 0x1

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    .line 10
    :cond_3b
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getLoadState(Landroid/content/pm/PackageInfo;I)I
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, -0x2

    return p0

    .line 1
    :cond_4
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ne p0, p1, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    if-ge p0, p1, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, -0x1

    return p0
.end method

.method public static getLoadedApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    .line 3
    :try_start_5
    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLoadedAppNameByPackageInfo(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 3
    :cond_6
    iget-object p0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPackageSignatures(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x40

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_35

    .line 4
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p1, :cond_35

    array-length v0, p1

    if-lez v0, :cond_35

    const/4 v0, 0x0

    .line 6
    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    .line 7
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/HashUtils;->getHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 10
    filled-new-array {p1, p0}, [Ljava/lang/String;

    move-result-object p0
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_31

    return-object p0

    :catchall_31
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_35
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSignatureString(Landroid/content/pm/Signature;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    .line 2
    const-string v0, "error!"

    .line 4
    :try_start_6
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 6
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    array-length v1, p0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_2f

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    or-int/lit16 v3, v3, 0x100

    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 11
    :cond_2f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_33
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_33} :catch_35

    return-object p0

    :cond_34
    return-object v0

    :catch_35
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static isAppLoad(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    return v2

    .line 7
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x100

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_1a} :catch_1e

    if-eqz p0, :cond_1d

    return v2

    :cond_1d
    return v0

    .line 11
    :catch_1e
    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/sdcard/Android/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static isEMUIRom()Z
    .registers 2

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Lio/dcloud/common/adapter/util/MobilePhoneModel;->HUAWEI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 5

    .line 1
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-lez v0, :cond_1d

    .line 2
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    const-string v3, "data/dataapp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 3
    const-string v0, "/data/dataapp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c

    goto :goto_1d

    :cond_1c
    return v1

    :cond_1d
    :goto_1d
    return v2
.end method

.method public static isValidAppPackageName(Ljava/lang/String;)Z
    .registers 2

    .line 1
    const-string v0, "^[a-zA-Z_]\\w*(\\.[a-zA-Z_]\\w*)*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isVivoRom()Z
    .registers 3

    .line 1
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "vivo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v0, 0x0

    return v0

    :cond_20
    :goto_20
    const/4 v0, 0x1

    return v0
.end method

.method public static openApp(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 4
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static parsePackage(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 12

    const-string v0, "---parsePackage is null------;;sourceFile="

    const/4 v1, 0x0

    .line 2
    :try_start_3
    const-string v2, "android.content.pm.PackageParser"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v2, v4}, Lio/dcloud/common/util/ReflectUtils;->getObjectConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 3
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 10
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 11
    invoke-virtual {v4}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 12
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v5, "parsePackage"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/io/File;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {p0, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v4, v5, v3

    aput-object p1, v5, v9

    .line 25
    invoke-virtual {p0, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_59

    .line 37
    const-string p0, "LoadAppUtils"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 46
    :cond_59
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "collectCertificates"

    const-string v5, "android.content.pm.PackageParser$Package"

    .line 50
    invoke-static {v5}, Lio/dcloud/common/util/ReflectUtils;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    aput-object v5, v8, v3

    const-class v5, Ljava/io/File;

    aput-object v5, v8, v9

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v8, v6

    .line 51
    invoke-virtual {p1, v0, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 56
    invoke-virtual {p1, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 57
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p0, v5, v3

    aput-object v4, v5, v9

    aput-object v0, v5, v6

    invoke-virtual {p1, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_88} :catch_89

    return-object p0

    :catch_89
    move-exception p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method private static startAppDetailSettings(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->access$000(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static startSecuritySettingPage(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-static {}, Lio/dcloud/common/util/LoadAppUtils;->isVivoRom()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    invoke-static {p0}, Lio/dcloud/common/util/LoadAppUtils;->startShortcutSettingsVivo(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 4
    :cond_b
    invoke-static {}, Lio/dcloud/common/util/LoadAppUtils;->isEMUIRom()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lio/dcloud/common/util/LoadAppUtils;->startShortcutSettingsEMUI(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 7
    :cond_1a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lio/dcloud/common/util/LoadAppUtils;->startAppDetailSettings(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static startShortcutSettingsEMUI(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_e

    const/high16 v1, 0x10000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5
    :cond_e
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    const-string v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static startShortcutSettingsVivo(Landroid/content/Context;)Z
    .registers 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.bbk.launcher.installshortcutpermission.open"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    const-string v1, "com.bbk.launcher2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_15

    const/high16 v1, 0x10000000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    :cond_15
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1a

    const/4 p0, 0x1

    return p0

    :catch_1a
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static uninstall(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    :try_start_0
    const-string v0, "package"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DELETE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class io.dcloud.common.util.LoadAppUtils.SafeCenter (io.dcloud.common.util.LoadAppUtils$SafeCenter)
.class Lio/dcloud/common/util/LoadAppUtils$SafeCenter;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/LoadAppUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SafeCenter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;
    }
.end annotation


# static fields
.field private static datas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;",
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

    sput-object v0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->datas:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->goSafeCenter(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static goSafeCenter(Landroid/content/Context;)Z
    .registers 9

    const-string v0, "Permission"

    const/4 v1, 0x0

    .line 1
    :try_start_3
    invoke-static {p0}, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->init(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 3
    :goto_b
    sget-object v4, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_91

    .line 4
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 5
    sget-object v6, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_21} :catch_92

    .line 7
    :try_start_21
    iget-object v7, v6, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;->pname:Ljava/lang/String;

    invoke-virtual {v2, v7, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_27} :catch_8d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_27} :catch_92

    if-nez v7, :cond_2a

    goto :goto_8d

    .line 14
    :cond_2a
    :try_start_2a
    iget-object v2, v6, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;->clsName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 15
    iget-object v2, v6, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;->pname:Ljava/lang/String;

    iget-object v3, v6, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;->clsName:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_47

    .line 16
    :cond_3a
    iget-object v2, v6, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;->pname:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 17
    iget-object v2, v6, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;->pname:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    :cond_47
    :goto_47
    iget-object v2, v6, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;->action:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_54

    .line 20
    iget-object v2, v6, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;->action:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    :cond_54
    iget-object v2, v6, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;->extParamName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_65

    .line 23
    iget-object v2, v6, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;->extParamName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_65
    const/high16 v2, 0x10000000

    .line 26
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 27
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 28
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "successful "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "intent="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_8c} :catch_92

    return v5

    :catch_8d
    :goto_8d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_b

    :cond_91
    return v5

    :catch_92
    move-exception p0

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method static init(Landroid/content/Context;)V
    .registers 9

    .line 1
    sget-object v0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->datas:Ljava/util/ArrayList;

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
    sget-object v3, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v4, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;

    const-string v5, "c"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "e"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "a"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v2, v5, v6, v1}, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
    sget-object p0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->datas:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_10a

    .line 17
    sget-object p0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;

    const-string v1, "com.miui.permcenter.permissions.PermissionsEditorActivity"

    const-string v2, "com.miui.securitycenter"

    const-string v3, "extra_pkgname"

    const/4 v4, 0x0

    invoke-direct {v0, v2, v1, v3, v4}, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object p0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;

    const-string v1, "com.miui.permcenter.permissions.AppPermissionsEditorActivity"

    invoke-direct {v0, v2, v1, v3, v4}, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object p0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;

    const-string v1, "com.meizu.safe"

    const-string v2, "com.meizu.safe.security.AppSecActivity"

    const-string v3, "packageName"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object p0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;

    const-string v1, "com.aliyun.mobile.permission"

    const-string v2, "com.aliyun.mobile.permission.ExternalAppDetailActivity"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object p0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;

    const-string v1, "com.iqoo.secure"

    const-string v2, "com.iqoo.secure.MainActivity"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object p0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;

    const-string v1, "com.sonymobile.cta"

    const-string v2, "com.sonymobile.cta.SomcCTAMainActivity"

    const-string v3, "package"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object p0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;

    const-string v1, "com.mediatek.security"

    const-string v2, "com.mediatek.security.ui.PermissionControlPageActivity"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object p0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;

    const-string v1, "com.yulong.android.launcher3"

    const-string v2, "com.yulong.android.launcher3.LauncherSettingsActivity"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object p0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$ManageApplicationsActivity"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object p0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;

    const-string v1, "android.settings.MANAGE_APPLICATIONS_SETTINGS"

    invoke-direct {v0, v4, v4, v3, v1}, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10a
    :goto_10a
    return-void
.end method

###### Class io.dcloud.common.util.LoadAppUtils.SafeCenter.Item (io.dcloud.common.util.LoadAppUtils$SafeCenter$Item)
.class Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/LoadAppUtils$SafeCenter;
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
    iput-object p1, p0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;->pname:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;->clsName:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;->extParamName:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;->action:Ljava/lang/String;

    return-void
.end method
