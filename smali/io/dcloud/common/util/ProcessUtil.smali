###### Class io.dcloud.common.util.ProcessUtil (io.dcloud.common.util.ProcessUtil)
.class public Lio/dcloud/common/util/ProcessUtil;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field private static currentProcessName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/common/util/ProcessUtil;->currentProcessName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    sget-object p0, Lio/dcloud/common/util/ProcessUtil;->currentProcessName:Ljava/lang/String;

    return-object p0

    .line 6
    :cond_b
    invoke-static {}, Lio/dcloud/common/util/ProcessUtil;->getCurrentProcessNameByApplication()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/ProcessUtil;->currentProcessName:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 8
    sget-object p0, Lio/dcloud/common/util/ProcessUtil;->currentProcessName:Ljava/lang/String;

    return-object p0

    .line 12
    :cond_1a
    invoke-static {}, Lio/dcloud/common/util/ProcessUtil;->getCurrentProcessNameByActivityThread()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/ProcessUtil;->currentProcessName:Ljava/lang/String;

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 14
    sget-object p0, Lio/dcloud/common/util/ProcessUtil;->currentProcessName:Ljava/lang/String;

    return-object p0

    .line 18
    :cond_29
    invoke-static {}, Lio/dcloud/common/util/ProcessUtil;->getCurrentProcessNameByCmdline()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/ProcessUtil;->currentProcessName:Ljava/lang/String;

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 20
    sget-object p0, Lio/dcloud/common/util/ProcessUtil;->currentProcessName:Ljava/lang/String;

    return-object p0

    .line 22
    :cond_38
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/common/util/ProcessUtil;->currentProcessName:Ljava/lang/String;

    return-object p0
.end method

.method public static getCurrentProcessNameByActivityThread()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 1
    :try_start_1
    const-string v1, "android.app.ActivityThread"

    const-class v2, Landroid/app/Application;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentProcessName"

    .line 2
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 4
    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_23

    .line 6
    check-cast v1, Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    return-object v1

    :cond_23
    return-object v0

    :catchall_24
    move-exception v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static getCurrentProcessNameByApplication()Ljava/lang/String;
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 2
    invoke-static {}, Lio/dcloud/p/g4$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCurrentProcessNameByCmdline()Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    .line 1
    :try_start_1
    const-string v1, "/proc/self/cmdline"

    .line 2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_35

    const/16 v1, 0x100

    .line 3
    :try_start_a
    new-array v3, v1, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 6
    :goto_e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v6

    if-lez v6, :cond_1d

    if-ge v5, v1, :cond_1d

    add-int/lit8 v7, v5, 0x1

    int-to-byte v6, v6

    .line 7
    aput-byte v6, v3, v5

    move v5, v7

    goto :goto_e

    :cond_1d
    if-lez v5, :cond_2f

    .line 10
    new-instance v1, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v1, v3, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_33

    .line 18
    :try_start_26
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    return-object v1

    :catch_2a
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1

    .line 21
    :cond_2f
    :try_start_2f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_40

    goto :goto_44

    :catchall_33
    move-exception v1

    goto :goto_37

    :catchall_35
    move-exception v1

    move-object v2, v0

    .line 24
    :goto_37
    :try_start_37
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_45

    if-eqz v2, :cond_44

    .line 28
    :try_start_3c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_44
    :goto_44
    return-object v0

    :catchall_45
    move-exception v0

    if-eqz v2, :cond_50

    .line 29
    :try_start_48
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_50

    :catch_4c
    move-exception v1

    .line 31
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    :cond_50
    :goto_50
    throw v0
.end method
