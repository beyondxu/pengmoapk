###### Class io.dcloud.p.y1 (io.dcloud.p.y1)
.class public abstract Lio/dcloud/p/y1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field private static a:Z = false

.field private static b:[Ljava/lang/String; = null

.field private static c:Z = false

.field private static d:Ljava/lang/String; = null

.field private static e:Z = false

.field private static f:Ljava/lang/String; = null

.field private static g:Z = false

.field private static h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private static a(ILandroid/content/Context;)Ljava/lang/Object;
    .registers 8

    .line 13
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 14
    const-string v0, "getSubscriberId"

    .line 15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v1, v2, :cond_2b

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    invoke-static {v1, v0, p1, v2, v4}, Lio/dcloud/p/y1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2b
    if-ne v1, v2, :cond_48

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    invoke-static {v1, v0, p1, v2, v4}, Lio/dcloud/p/y1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_48

    return-object p0

    :catch_48
    :cond_48
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 19
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_13

    const/4 p1, 0x1

    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 22
    invoke-virtual {p0, p2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->getInstance()Lio/dcloud/sdk/poly/base/utils/PrivacyManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->d()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2
    sget-object p0, Lio/dcloud/p/y1;->f:Ljava/lang/String;

    return-object p0

    .line 4
    :cond_d
    invoke-static {}, Lio/dcloud/p/b0;->a()Lio/dcloud/p/b0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/dcloud/p/b0;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 5
    sget-object p0, Lio/dcloud/p/y1;->f:Ljava/lang/String;

    return-object p0

    .line 6
    :cond_1a
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->getInstance()Lio/dcloud/sdk/poly/base/utils/PrivacyManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->e()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 7
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->getInstance()Lio/dcloud/sdk/poly/base/utils/PrivacyManager;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->c()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/p/y1;->f:Ljava/lang/String;

    return-object p0

    .line 8
    :cond_2f
    sget-boolean v0, Lio/dcloud/p/y1;->e:Z

    if-nez v0, :cond_42

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/p/y1;->f:Ljava/lang/String;

    const/4 p0, 0x1

    .line 10
    sput-boolean p0, Lio/dcloud/p/y1;->e:Z

    .line 12
    :cond_42
    sget-object p0, Lio/dcloud/p/y1;->f:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2

    .line 23
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "Unknown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "00000000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x1

    return p0
.end method

.method private static b(ILandroid/content/Context;)I
    .registers 10

    const-string v0, "_id"

    .line 3
    const-string v1, "content://telephony/siminfo"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 p1, 0x0

    .line 7
    :try_start_d
    const-string v1, "sim_id"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "sim_id = ?"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 9
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_38

    .line 10
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_32} :catch_36
    .catchall {:try_start_d .. :try_end_32} :catchall_3b

    .line 16
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return p0

    :catch_36
    nop

    goto :goto_43

    :cond_38
    if-eqz p1, :cond_48

    goto :goto_45

    :catchall_3b
    move-exception v0

    move-object p0, v0

    if-eqz p1, :cond_42

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 18
    :cond_42
    throw p0

    :goto_43
    if-eqz p1, :cond_48

    .line 16
    :goto_45
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_48
    const/4 p0, -0x1

    return p0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x1

    if-nez p0, :cond_6

    .line 1
    :try_start_3
    const-string p0, ""

    return-object p0

    .line 3
    :cond_6
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_11

    .line 5
    sget-object p0, Lio/dcloud/p/y1;->d:Ljava/lang/String;

    return-object p0

    .line 7
    :cond_11
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->getInstance()Lio/dcloud/sdk/poly/base/utils/PrivacyManager;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->d()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 8
    sget-object p0, Lio/dcloud/p/y1;->d:Ljava/lang/String;

    return-object p0

    .line 10
    :cond_1e
    invoke-static {}, Lio/dcloud/p/b0;->a()Lio/dcloud/p/b0;

    move-result-object v1

    invoke-virtual {v1, p0}, Lio/dcloud/p/b0;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 11
    sget-object p0, Lio/dcloud/p/y1;->d:Ljava/lang/String;

    return-object p0

    .line 12
    :cond_2b
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->getInstance()Lio/dcloud/sdk/poly/base/utils/PrivacyManager;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->e()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 13
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->getInstance()Lio/dcloud/sdk/poly/base/utils/PrivacyManager;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->b()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/p/y1;->d:Ljava/lang/String;

    return-object p0

    .line 15
    :cond_40
    sget-boolean v1, Lio/dcloud/p/y1;->c:Z

    if-eqz v1, :cond_47

    .line 16
    sget-object p0, Lio/dcloud/p/y1;->d:Ljava/lang/String;

    return-object p0

    :cond_47
    const/4 v1, 0x0

    .line 18
    invoke-static {v1, p0}, Lio/dcloud/p/y1;->b(ILandroid/content/Context;)I

    move-result v1

    .line 19
    invoke-static {v0, p0}, Lio/dcloud/p/y1;->b(ILandroid/content/Context;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v1, v3, :cond_5a

    if-ne v2, v3, :cond_5a

    .line 21
    invoke-static {p0}, Lio/dcloud/p/y1;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_99

    .line 23
    :cond_5a
    invoke-static {v1, p0}, Lio/dcloud/p/y1;->a(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 24
    invoke-static {v2, p0}, Lio/dcloud/p/y1;->a(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6a} :catch_9b

    if-nez v3, :cond_8d

    .line 27
    :try_start_6c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_9c

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9c

    .line 28
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_8c} :catch_9c

    goto :goto_99

    .line 30
    :cond_8d
    :try_start_8d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_95

    move-object v1, v2

    goto :goto_9c

    .line 33
    :cond_95
    invoke-static {p0}, Lio/dcloud/p/y1;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_99} :catch_9b

    :goto_99
    move-object v1, p0

    goto :goto_9c

    :catch_9b
    const/4 v1, 0x0

    .line 38
    :catch_9c
    :cond_9c
    :goto_9c
    sput-boolean v0, Lio/dcloud/p/y1;->c:Z

    .line 39
    sput-object v1, Lio/dcloud/p/y1;->d:Ljava/lang/String;

    return-object v1
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_b

    .line 3
    sget-object p0, Lio/dcloud/p/y1;->h:Ljava/lang/String;

    return-object p0

    .line 6
    :cond_b
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->getInstance()Lio/dcloud/sdk/poly/base/utils/PrivacyManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->d()Z

    move-result v0

    if-nez v0, :cond_18

    .line 7
    sget-object p0, Lio/dcloud/p/y1;->h:Ljava/lang/String;

    return-object p0

    .line 9
    :cond_18
    invoke-static {}, Lio/dcloud/p/b0;->a()Lio/dcloud/p/b0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/dcloud/p/b0;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 10
    sget-object p0, Lio/dcloud/p/y1;->h:Ljava/lang/String;

    return-object p0

    .line 13
    :cond_25
    sget-boolean v0, Lio/dcloud/p/y1;->g:Z

    if-eqz v0, :cond_2c

    .line 14
    sget-object p0, Lio/dcloud/p/y1;->h:Ljava/lang/String;

    return-object p0

    .line 15
    :cond_2c
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 16
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-nez p0, :cond_40

    const/4 p0, 0x0

    goto :goto_44

    .line 17
    :cond_40
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    :goto_44
    sput-object p0, Lio/dcloud/p/y1;->h:Ljava/lang/String;

    const/4 v0, 0x1

    .line 18
    sput-boolean v0, Lio/dcloud/p/y1;->g:Z

    return-object p0
.end method

.method public static e(Landroid/content/Context;)[Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1
    :cond_4
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_f

    .line 3
    sget-object p0, Lio/dcloud/p/y1;->b:[Ljava/lang/String;

    return-object p0

    .line 6
    :cond_f
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->getInstance()Lio/dcloud/sdk/poly/base/utils/PrivacyManager;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->d()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 7
    sget-object p0, Lio/dcloud/p/y1;->b:[Ljava/lang/String;

    return-object p0

    .line 9
    :cond_1c
    invoke-static {}, Lio/dcloud/p/b0;->a()Lio/dcloud/p/b0;

    move-result-object v1

    invoke-virtual {v1, p0}, Lio/dcloud/p/b0;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 10
    sget-object p0, Lio/dcloud/p/y1;->b:[Ljava/lang/String;

    return-object p0

    .line 11
    :cond_29
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->getInstance()Lio/dcloud/sdk/poly/base/utils/PrivacyManager;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->e()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 12
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->getInstance()Lio/dcloud/sdk/poly/base/utils/PrivacyManager;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->a()[Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/p/y1;->b:[Ljava/lang/String;

    return-object p0

    .line 15
    :cond_3e
    sget-boolean v1, Lio/dcloud/p/y1;->a:Z

    if-eqz v1, :cond_45

    .line 16
    sget-object p0, Lio/dcloud/p/y1;->b:[Ljava/lang/String;

    return-object p0

    .line 17
    :cond_45
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x1

    .line 21
    :try_start_4e
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-static {p0, v1}, Lio/dcloud/p/g4$$ExternalSyntheticApiModelOutline0;->m(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object p0

    .line 23
    invoke-static {v2}, Lio/dcloud/p/y1;->a(Ljava/lang/String;)Z

    move-result v3
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_5a} :catch_67

    if-nez v3, :cond_5d

    goto :goto_5e

    :cond_5d
    move-object v2, v0

    .line 26
    :goto_5e
    :try_start_5e
    invoke-static {p0}, Lio/dcloud/p/y1;->a(Ljava/lang/String;)Z

    move-result v3
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_62} :catch_65

    if-nez v3, :cond_69

    goto :goto_6a

    :catch_65
    nop

    goto :goto_69

    :catch_67
    nop

    move-object v2, v0

    :cond_69
    :goto_69
    move-object p0, v0

    .line 31
    :goto_6a
    invoke-static {v2}, Lio/dcloud/p/y1;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7d

    invoke-static {p0}, Lio/dcloud/p/y1;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7d

    .line 32
    filled-new-array {v2, p0}, [Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/p/y1;->b:[Ljava/lang/String;

    goto :goto_99

    .line 33
    :cond_7d
    invoke-static {v2}, Lio/dcloud/p/y1;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8a

    .line 34
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/p/y1;->b:[Ljava/lang/String;

    goto :goto_99

    .line 35
    :cond_8a
    invoke-static {p0}, Lio/dcloud/p/y1;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_97

    .line 36
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/p/y1;->b:[Ljava/lang/String;

    goto :goto_99

    .line 38
    :cond_97
    sput-object v0, Lio/dcloud/p/y1;->b:[Ljava/lang/String;

    .line 40
    :goto_99
    sput-boolean v1, Lio/dcloud/p/y1;->a:Z

    .line 41
    sget-object p0, Lio/dcloud/p/y1;->b:[Ljava/lang/String;

    return-object p0
.end method
