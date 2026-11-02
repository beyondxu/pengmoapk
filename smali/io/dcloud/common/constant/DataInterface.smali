###### Class io.dcloud.common.constant.DataInterface (io.dcloud.common.constant.DataInterface)
.class public Lio/dcloud/common/constant/DataInterface;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRomVersion()Ljava/lang/String;
    .registers 4

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Lio/dcloud/common/adapter/util/MobilePhoneModel;->XIAOMI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2
    const-string v0, "ro.miui.ui.version.name"

    invoke-static {v0}, Lio/dcloud/common/adapter/util/DeviceInfo;->getBuildValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string v0, ""

    goto :goto_31

    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_39
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    return-object v0
.end method

.method public static getStartupUrlBaseData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/HashMap;
    .registers 11

    .line 1
    const-string v0, "pdr"

    const-string v1, "_deviceId"

    invoke-static {p0, v0, v1}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_15

    :cond_f
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 5
    invoke-static {p0, v1, v1, v0}, Lio/dcloud/common/util/TelephonyUtil;->getSBBS(Landroid/content/Context;ZZZ)Ljava/lang/String;

    move-result-object v0

    .line 7
    :goto_15
    invoke-static {p0}, Lio/dcloud/common/util/NetworkTypeUtil;->getNetworkType(Landroid/content/Context;)I

    move-result p0

    .line 8
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    sget-object v3, Lio/dcloud/common/adapter/util/DeviceInfo;->sPackageName:Ljava/lang/String;

    if-nez v3, :cond_23

    sget-object v3, Lio/dcloud/common/adapter/util/AndroidResources;->packageName:Ljava/lang/String;

    .line 12
    :cond_23
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 13
    const-string v5, "appid"

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p4, :cond_38

    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "net"

    invoke-virtual {v4, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_38
    const-string p0, "imei"

    invoke-virtual {v4, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string p0, "md"

    invoke-virtual {v4, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "os"

    invoke-virtual {v4, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string/jumbo p0, "vb"

    const-string p1, "1.9.9.82650"

    invoke-virtual {v4, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {p2}, Lio/dcloud/common/constant/StringConst;->getIntSF(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "sf"

    invoke-virtual {v4, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string p0, "p"

    const-string p1, "a"

    invoke-virtual {v4, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "d1"

    invoke-virtual {v4, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string p0, "sfd"

    invoke-virtual {v4, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo p1, "vd"

    invoke-virtual {v4, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string p0, "pn"

    invoke-virtual {v4, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4
.end method

.method public static getStreamappFrom(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_3

    goto :goto_22

    .line 1
    :cond_3
    const-string v0, "plus.runtime.launcher"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    const-string/jumbo v0, "third:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_22

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    :goto_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSystemProperty()Ljava/lang/String;
    .registers 6

    .line 1
    const-string v0, "Exception while closing InputStream"

    const-string v1, "Unable to read sysprop ro.miui.ui.version.name"

    const/4 v2, 0x0

    .line 5
    :try_start_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "getprop ro.miui.ui.version.name"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 6
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x400

    invoke-direct {v4, v5, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1f} :catch_3f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_3d

    .line 7
    :try_start_1f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_26} :catch_3b
    .catchall {:try_start_1f .. :try_end_26} :catchall_67

    .line 15
    :try_start_26
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    return-object v3

    :catch_2a
    move-exception v1

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;)V

    return-object v3

    :catch_3b
    move-exception v3

    goto :goto_41

    :catchall_3d
    move-exception v1

    goto :goto_69

    :catch_3f
    move-exception v3

    move-object v4, v2

    .line 18
    :goto_41
    :try_start_41
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_41 .. :try_end_50} :catchall_67

    if-eqz v4, :cond_66

    .line 23
    :try_start_52
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_66

    :catch_56
    move-exception v1

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;)V

    :cond_66
    :goto_66
    return-object v2

    :catchall_67
    move-exception v1

    move-object v2, v4

    :goto_69
    if-eqz v2, :cond_7f

    .line 26
    :try_start_6b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_7f

    :catch_6f
    move-exception v2

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;)V

    .line 31
    :cond_7f
    :goto_7f
    throw v1
.end method

.method public static getTestParam(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p0}, Lio/dcloud/common/util/BaseInfo;->isTest(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 3
    const-string/jumbo p0, "t"

    goto :goto_12

    .line 8
    :cond_10
    const-string p0, "r"

    :goto_12
    const-string v0, "&__am="

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
