###### Class io.dcloud.common.adapter.io.DHFile (io.dcloud.common.adapter.io.DHFile)
.class public Lio/dcloud/common/adapter/io/DHFile;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field public static final BUF_SIZE:I = 0x32000

.field public static final FS_JAR:B = 0x0t

.field public static final FS_NATIVE:B = 0x2t

.field public static final FS_RMS:B = 0x1t

.field public static final READ:I = 0x1

.field public static final READ_WRITE:I = 0x3

.field private static final ROOTPATH:Ljava/lang/String; = "/"

.field public static final WRITE:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)Ljava/io/File;
    .registers 1

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getFile(Ljava/lang/Object;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static addFile(Ljava/lang/String;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->createNewFile(Ljava/lang/Object;)B

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, v0}, Lio/dcloud/common/adapter/io/DHFile;->getOutputStream(Ljava/lang/Object;Z)Ljava/io/OutputStream;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 6
    :try_start_e
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 7
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 8
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1d
    return-void
.end method

.method public static canRead(Ljava/lang/String;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getFile(Ljava/lang/Object;)Ljava/io/File;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result p0

    return p0
.end method

.method private static checkIsNeedReload(Ljava/lang/String;)Z
    .registers 2

    .line 1
    const-string v0, ".png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 2
    const-string v0, ".jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 3
    const-string v0, ".xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 4
    const-string v0, ".bmp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    return p0

    :cond_23
    :goto_23
    const/4 p0, 0x1

    return p0
.end method

.method public static copyAssetsFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const-string v0, " >"

    const-string v1, " > to < "

    const-string v2, "PlatFU copyAssetsFile fail \uff01\uff01\uff01\uff01 Exception< "

    const-string v3, "PlatFU copyAssetsFile "

    const-string v4, "PlatFU copyAssetsFile fail \uff01\uff01\uff01\uff01  is = null < "

    const-string v5, "PlatFU copyAssetsFile < "

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1
    :try_start_e
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PlatformUtil;->getResInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    if-eqz v7, :cond_19

    .line 4
    invoke-static {v7, p1}, Lio/dcloud/common/adapter/io/DHFile;->writeFile(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v6

    goto :goto_37

    .line 6
    :cond_19
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->checkIsNeedReload(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 10
    :cond_37
    :goto_37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_4f} :catch_55
    .catchall {:try_start_e .. :try_end_4f} :catchall_53

    .line 19
    invoke-static {v7}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    return v6

    :catchall_53
    move-exception p0

    goto :goto_9b

    :catch_55
    move-exception v4

    .line 20
    :try_start_56
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " error!!!  is it a dir ?"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 22
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->checkIsNeedReload(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V
    :try_end_97
    .catchall {:try_start_56 .. :try_end_97} :catchall_53

    .line 27
    :cond_97
    invoke-static {v7}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    return v6

    .line 28
    :goto_9b
    invoke-static {v7}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 30
    throw p0
.end method

.method public static copyDir(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    if-eqz p0, :cond_b7

    if-nez p1, :cond_6

    goto/16 :goto_b7

    :cond_6
    const/4 v0, 0x0

    .line 1
    :try_start_7
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    const/4 v3, 0x1

    if-ne v1, v2, :cond_18

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 4
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 7
    :cond_18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2c

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 11
    :cond_2c
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PlatformUtil;->listResFiles(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {p1}, Lio/dcloud/common/adapter/io/DHFile;->createNewFile(Ljava/lang/Object;)B

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_b7

    .line 17
    array-length v3, v1

    :goto_38
    if-ge v0, v3, :cond_b7

    .line 20
    aget-object v4, v1, v0

    .line 21
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 22
    invoke-virtual {v5, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 24
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 27
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 28
    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 35
    invoke-static {v5, v6}, Lio/dcloud/common/adapter/io/DHFile;->copyAssetsFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b0

    .line 36
    invoke-static {v4}, Lio/dcloud/common/adapter/io/DHFile;->checkIsNeedReload(Ljava/lang/String;)Z

    move-result v4
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_67} :catch_b3

    const-string v7, "/"

    if-eqz v4, :cond_9e

    .line 37
    :try_start_6b
    invoke-static {v5, v6}, Lio/dcloud/common/adapter/io/DHFile;->copyAssetsFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b0

    .line 38
    invoke-static {v5, v6}, Lio/dcloud/common/adapter/io/DHFile;->copyAssetsFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b0

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PlatFU copyDir fail 3 times!!!!"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lio/dcloud/common/adapter/io/DHFile;->copyDir(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b0

    .line 44
    :cond_9e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lio/dcloud/common/adapter/io/DHFile;->copyDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_b0} :catch_b3

    :cond_b0
    :goto_b0
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :catch_b3
    move-exception p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b7
    :goto_b7
    return-void
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 364
    invoke-static {p0, p1, v0, v0, v1}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZLio/dcloud/common/DHInterface/ICallBack;)I

    move-result p0

    return p0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)I
    .registers 4

    const/4 v0, 0x0

    .line 365
    invoke-static {p0, p1, v0, v0, p2}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZLio/dcloud/common/DHInterface/ICallBack;)I

    move-result p0

    return p0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)I
    .registers 5

    const/4 v0, 0x0

    .line 366
    invoke-static {p0, p1, p2, p3, v0}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZLio/dcloud/common/DHInterface/ICallBack;)I

    move-result p0

    return p0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;ZZLio/dcloud/common/DHInterface/ICallBack;)I
    .registers 22

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    const-string v3, "not file ="

    .line 1
    invoke-static/range {p0 .. p0}, Lio/dcloud/common/adapter/io/DHFile;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2
    invoke-static/range {p1 .. p1}, Lio/dcloud/common/adapter/io/DHFile;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0xa

    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 7
    :try_start_14
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v10

    invoke-virtual {v10}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 8
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v11

    const/4 v12, -0x3

    const/16 v13, 0x1c

    if-nez v11, :cond_37

    sget v11, Lio/dcloud/common/adapter/util/AndroidResources;->sAppTargetSdkVersion:I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2b} :catch_187
    .catchall {:try_start_14 .. :try_end_2b} :catchall_184

    if-le v11, v13, :cond_37

    .line 75
    :try_start_2d
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_30

    .line 79
    :catch_30
    invoke-static {v9}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 80
    invoke-static {v9}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    return v12

    .line 81
    :cond_37
    :try_start_37
    invoke-static {v5}, Lio/dcloud/common/adapter/io/DHFile;->isExist(Ljava/lang/String;)Z

    move-result v11
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3b} :catch_187
    .catchall {:try_start_37 .. :try_end_3b} :catchall_184

    if-eqz v11, :cond_5a

    if-eqz v1, :cond_4a

    .line 144
    :try_start_3f
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_42

    .line 148
    :catch_42
    invoke-static {v9}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 149
    invoke-static {v9}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    const/4 v0, -0x2

    return v0

    :cond_4a
    if-eqz v0, :cond_5a

    .line 150
    :try_start_4c
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lio/dcloud/common/adapter/io/DHFile;->isDirectory(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5a

    .line 151
    invoke-static {v5}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I

    .line 154
    :cond_5a
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_80

    if-eqz v2, :cond_76

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v8, v0}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_76} :catch_187
    .catchall {:try_start_4c .. :try_end_76} :catchall_184

    .line 209
    :cond_76
    :try_start_76
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_79

    .line 213
    :catch_79
    invoke-static {v9}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 214
    invoke-static {v9}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    return v8

    .line 215
    :cond_80
    :try_start_80
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v3

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v3, :cond_122

    .line 216
    invoke-static {v11}, Lio/dcloud/common/adapter/io/DHFile;->list(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v3

    .line 217
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_9a} :catch_187
    .catchall {:try_start_80 .. :try_end_9a} :catchall_184

    const-string v12, ""

    if-eqz v4, :cond_a0

    move-object v4, v12

    goto :goto_a1

    :cond_a0
    move-object v4, v11

    .line 218
    :goto_a1
    :try_start_a1
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 219
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b7

    move-object v11, v12

    .line 220
    :cond_b7
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v10, -0x1

    .line 221
    :goto_bf
    array-length v11, v3

    if-ge v14, v11, :cond_11f

    .line 222
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v3, v14

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v3, v14

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0, v1}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v10

    if-eq v10, v15, :cond_11c

    if-eqz v2, :cond_112

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "copyFile error src="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v3, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v3, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v10, v0}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_112} :catch_187
    .catchall {:try_start_a1 .. :try_end_112} :catchall_184

    .line 265
    :cond_112
    :try_start_112
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_115} :catch_115

    .line 269
    :catch_115
    invoke-static {v9}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 270
    invoke-static {v9}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    return v10

    :cond_11c
    add-int/lit8 v14, v14, 0x1

    goto :goto_bf

    :cond_11f
    move-object v1, v9

    move v8, v10

    goto :goto_171

    .line 271
    :cond_122
    :try_start_122
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_145

    sget v0, Lio/dcloud/common/adapter/util/AndroidResources;->sAppTargetSdkVersion:I

    if-le v0, v13, :cond_145

    .line 272
    invoke-static {v10, v4}, Lio/dcloud/common/util/FileUtil;->isFilePathForPublic(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13b

    .line 273
    invoke-static {v10, v11}, Lio/dcloud/common/util/FileUtil;->getFileInputStream(Landroid/content/Context;Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_13a} :catch_187
    .catchall {:try_start_122 .. :try_end_13a} :catchall_184

    goto :goto_14a

    .line 305
    :cond_13b
    :try_start_13b
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_13e} :catch_13e

    .line 309
    :catch_13e
    invoke-static {v9}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 310
    invoke-static {v9}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    return v12

    .line 311
    :cond_145
    :try_start_145
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_14a} :catch_187
    .catchall {:try_start_145 .. :try_end_14a} :catchall_184

    :goto_14a
    move-object v1, v0

    .line 313
    :try_start_14b
    invoke-static {v5}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 314
    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->isExist(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_158

    .line 315
    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->createNewFile(Ljava/lang/Object;)B

    .line 317
    :cond_158
    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->getOutputStream(Ljava/lang/Object;)Ljava/io/OutputStream;

    move-result-object v9

    const v0, 0x32000

    .line 320
    new-array v0, v0, [B

    if-eqz v1, :cond_171

    .line 323
    :goto_163
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_170

    .line 324
    invoke-virtual {v9, v0, v14, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 325
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_16f} :catch_17d
    .catchall {:try_start_14b .. :try_end_16f} :catchall_17b

    goto :goto_163

    :cond_170
    const/4 v8, 0x1

    .line 338
    :cond_171
    :goto_171
    :try_start_171
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_171 .. :try_end_174} :catch_174

    .line 342
    :catch_174
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 343
    invoke-static {v9}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    goto :goto_1c0

    :catchall_17b
    move-exception v0

    goto :goto_1c7

    :catch_17d
    move-exception v0

    move-object/from16 v16, v9

    move-object v9, v1

    move-object/from16 v1, v16

    goto :goto_189

    :catchall_184
    move-exception v0

    move-object v1, v9

    goto :goto_1c7

    :catch_187
    move-exception v0

    move-object v1, v9

    .line 344
    :goto_189
    :try_start_189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;)V

    if-eqz v2, :cond_1b7

    .line 347
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFile error Message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v8, v0}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1b7
    .catchall {:try_start_189 .. :try_end_1b7} :catchall_1c1

    .line 351
    :cond_1b7
    :try_start_1b7
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1ba
    .catch Ljava/lang/Exception; {:try_start_1b7 .. :try_end_1ba} :catch_1ba

    .line 355
    :catch_1ba
    invoke-static {v9}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 356
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    :goto_1c0
    return v8

    :catchall_1c1
    move-exception v0

    move-object/from16 v16, v9

    move-object v9, v1

    move-object/from16 v1, v16

    .line 357
    :goto_1c7
    :try_start_1c7
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1ca
    .catch Ljava/lang/Exception; {:try_start_1c7 .. :try_end_1ca} :catch_1ca

    .line 361
    :catch_1ca
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 362
    invoke-static {v9}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    .line 363
    throw v0
.end method

.method public static createFileHandler(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const/16 v0, 0x5c

    const/16 v1, 0x2f

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createNewFile(Ljava/lang/Object;)B
    .registers 8

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p0, Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2e

    .line 2
    check-cast p0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "createNewFile 0:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2c

    const/4 p0, 0x1

    goto :goto_36

    :cond_2c
    :goto_2c
    const/4 p0, 0x0

    goto :goto_36

    .line 8
    :cond_2e
    instance-of v1, p0, Ljava/io/File;

    if-eqz v1, :cond_72

    .line 9
    move-object v1, p0

    check-cast v1, Ljava/io/File;

    goto :goto_2c

    .line 15
    :goto_36
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 16
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_55

    .line 17
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "createNewFile: parentPath mkdirs "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 20
    :cond_55
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5d

    const/4 p0, -0x2

    return p0

    :cond_5d
    if-eqz p0, :cond_64

    .line 26
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    goto :goto_6f

    .line 30
    :cond_64
    :try_start_64
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v3
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_68} :catch_69

    goto :goto_6f

    :catch_69
    move-exception p0

    .line 32
    const-string v1, "createNewFile:"

    invoke-static {v1, p0}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6f
    if-eqz v3, :cond_72

    const/4 v0, 0x1

    :cond_72
    return v0
.end method

.method public static delete(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1
    :cond_4
    :try_start_4
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getFile(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_f

    return v0

    .line 6
    :cond_f
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    .line 10
    :cond_1a
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_7d

    .line 12
    array-length v3, v2

    if-lez v3, :cond_7d

    const/4 v3, 0x0

    .line 14
    :goto_24
    array-length v4, v2

    if-ge v3, v4, :cond_7d

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 16
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-static {v4}, Lio/dcloud/common/adapter/io/DHFile;->delete(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_77

    .line 20
    :cond_6c
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    const-wide/16 v5, 0x2

    .line 21
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    :goto_77
    if-nez v4, :cond_7a

    return v0

    :cond_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 29
    :cond_7d
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a1} :catch_a2

    return v1

    :catch_a2
    move-exception p0

    .line 37
    const-string v1, "DHFile.delete"

    invoke-static {v1, p0}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static deleteAsync(Ljava/lang/Object;Lio/dcloud/common/adapter/io/IAsyncCallback;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    if-nez p0, :cond_a

    .line 1
    invoke-interface {p1, v0}, Lio/dcloud/common/adapter/io/IAsyncCallback;->done(Z)V

    return-void

    .line 5
    :cond_a
    :try_start_a
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v1

    new-instance v2, Lio/dcloud/common/adapter/io/DHFile$1;

    invoke-direct {v2, p0, p1}, Lio/dcloud/common/adapter/io/DHFile$1;-><init>(Ljava/lang/Object;Lio/dcloud/common/adapter/io/IAsyncCallback;)V

    invoke-virtual {v1, v2}, Lio/dcloud/common/util/ThreadPool;->addSingleThreadTask(Ljava/lang/Runnable;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_17

    return-void

    .line 52
    :catch_17
    invoke-interface {p1, v0}, Lio/dcloud/common/adapter/io/IAsyncCallback;->done(Z)V

    return-void
.end method

.method public static deleteFile(Ljava/lang/String;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->delete(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, -0x1

    return p0
.end method

.method public static exists(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 3
    :try_start_5
    check-cast p0, Ljava/lang/String;

    .line 4
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 8
    :cond_19
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_22} :catch_2e

    return p0

    .line 13
    :cond_23
    instance-of v0, p0, Ljava/io/File;

    if-eqz v0, :cond_2e

    .line 15
    :try_start_27
    check-cast p0, Ljava/io/File;

    .line 16
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2d} :catch_2e

    return p0

    :catch_2e
    :cond_2e
    return v1
.end method

.method private static getFile(Ljava/lang/Object;)Ljava/io/File;
    .registers 3

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 2
    check-cast p0, Ljava/lang/String;

    .line 3
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 6
    :cond_19
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 7
    :cond_1f
    instance-of v0, p0, Ljava/io/File;

    if-eqz v0, :cond_26

    .line 8
    check-cast p0, Ljava/io/File;

    return-object p0

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFileName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFilePath(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getPath(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileSize(Ljava/io/File;)J
    .registers 7

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 3
    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v0, :cond_1a

    aget-object v4, p0, v3

    .line 4
    invoke-static {v4}, Lio/dcloud/common/adapter/io/DHFile;->getFileSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_1a
    return-wide v1

    .line 7
    :cond_1b
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFileUrl(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getPath(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 2
    check-cast p0, Ljava/lang/String;

    .line 3
    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x7

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 6
    :cond_14
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_23

    .line 7
    :cond_1a
    instance-of v0, p0, Ljava/io/File;

    if-eqz v0, :cond_22

    .line 8
    move-object v0, p0

    check-cast v0, Ljava/io/File;

    goto :goto_23

    :cond_22
    move-object v0, v1

    :goto_23
    if-eqz v0, :cond_54

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_54

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_32

    return-object v1

    .line 16
    :cond_32
    :try_start_32
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_37} :catch_3f
    .catch Ljava/lang/SecurityException; {:try_start_32 .. :try_end_37} :catch_38

    return-object p0

    :catch_38
    move-exception p0

    .line 22
    const-string v0, "getInputStream2"

    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_54

    .line 23
    :catch_3f
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "DHFile getInputStream not found file: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    :cond_54
    :goto_54
    return-object v1
.end method

.method public static getLastModify(Ljava/lang/String;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_14

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0

    :cond_14
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 2
    check-cast p0, Ljava/lang/String;

    .line 3
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_19
    const/16 v0, 0x2f

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_26
    check-cast p0, Ljava/io/File;

    .line 11
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOutputStream(Ljava/lang/Object;)Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 2
    check-cast p0, Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_16

    .line 4
    :cond_d
    instance-of v0, p0, Ljava/io/File;

    if-eqz v0, :cond_15

    .line 5
    move-object v0, p0

    check-cast v0, Ljava/io/File;

    goto :goto_16

    :cond_15
    move-object v0, v1

    :goto_16
    if-eqz v0, :cond_30

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 10
    :try_start_1e
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_23} :catch_24

    return-object p0

    :catch_24
    move-exception p0

    .line 12
    const-string v0, "getOutputStream:"

    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 17
    :cond_2b
    const-string p0, "getOutputStream:can not write"

    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;)V

    :cond_30
    return-object v1
.end method

.method public static getOutputStream(Ljava/lang/Object;Z)Ljava/io/OutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    instance-of v0, p0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 19
    check-cast p0, Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_16

    .line 21
    :cond_d
    instance-of v0, p0, Ljava/io/File;

    if-eqz v0, :cond_15

    .line 22
    move-object v0, p0

    check-cast v0, Ljava/io/File;

    goto :goto_16

    :cond_15
    move-object v0, v1

    :goto_16
    if-eqz v0, :cond_30

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 28
    :try_start_1e
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_23} :catch_24

    return-object p0

    :catch_24
    move-exception p0

    .line 32
    const-string p1, "getOutputStream:"

    invoke-static {p1, p0}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 37
    :cond_2b
    const-string p0, "getOutputStream:can not write"

    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;)V

    :cond_30
    return-object v1
.end method

.method public static getParent(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getPath(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3
    check-cast p0, Ljava/io/File;

    .line 4
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 7
    :cond_1a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    .line 8
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-virtual {v1, p0, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 9
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getPath(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 2
    check-cast p0, Ljava/lang/String;

    const/16 v0, 0x2f

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_14
    instance-of v0, p0, Ljava/io/File;

    if-eqz v0, :cond_1f

    .line 8
    check-cast p0, Ljava/io/File;

    .line 9
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getRealPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseFsRootPath:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    const-string v2, ""

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    return-object v0

    .line 8
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 9
    :goto_16
    array-length v5, v2

    if-ge v4, v5, :cond_4d

    .line 10
    aget-char v5, v2, v3

    const/16 v6, 0x43

    const/4 v7, 0x3

    if-eq v5, v6, :cond_24

    const/16 v6, 0x63

    if-ne v5, v6, :cond_2a

    :cond_24
    if-nez v4, :cond_2a

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x3

    .line 15
    :cond_2a
    aget-char v5, v2, v3

    const/16 v6, 0x44

    if-eq v5, v6, :cond_34

    const/16 v6, 0x64

    if-ne v5, v6, :cond_3a

    :cond_34
    if-nez v4, :cond_3a

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3b

    :cond_3a
    move v7, v4

    .line 19
    :goto_3b
    aget-char v4, v2, v7

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_47

    const/16 v4, 0x2f

    .line 20
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4a

    .line 23
    :cond_47
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_4a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_10 .. :try_end_4a} :catch_51

    :goto_4a
    add-int/lit8 v4, v7, 0x1

    goto :goto_16

    .line 28
    :cond_4d
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :catch_51
    return-object p0
.end method

.method public static hasFile()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isDirectory(Ljava/lang/Object;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p0, Ljava/io/File;

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    return p0
.end method

.method public static isExist(Ljava/lang/Object;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getFile(Ljava/lang/Object;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 8
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static isExist(Ljava/lang/String;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getFile(Ljava/lang/Object;)Ljava/io/File;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->exists(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isHidden(Ljava/lang/Object;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getFile(Ljava/lang/Object;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 5
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->isHidden()Z

    move-result p0

    return p0
.end method

.method public static isHidden(Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_14

    .line 9
    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->isHidden(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static length(Ljava/lang/Object;)J
    .registers 3

    .line 1
    :try_start_0
    check-cast p0, Ljava/io/File;

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    :catch_7
    move-exception p0

    .line 4
    const-string v0, "length:"

    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static list(Ljava/lang/Object;)[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->listFiles(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_39

    .line 3
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_38

    .line 5
    aget-object v2, p0, v1

    check-cast v2, Ljava/io/File;

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_35

    .line 9
    :cond_2f
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_38
    return-object v0

    :cond_39
    const/4 p0, 0x0

    return-object p0
.end method

.method public static listDir(Ljava/lang/Object;)[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->listFiles(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 4
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 5
    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_31

    .line 6
    aget-object v2, p0, v1

    check-cast v2, Ljava/io/File;

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_31
    return-object v0

    :cond_32
    const/4 p0, 0x0

    return-object p0
.end method

.method public static listFiles(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 2
    check-cast p0, Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_16

    .line 4
    :cond_d
    instance-of v0, p0, Ljava/io/File;

    if-eqz v0, :cond_15

    .line 5
    move-object v0, p0

    check-cast v0, Ljava/io/File;

    goto :goto_16

    :cond_15
    move-object v0, v1

    :goto_16
    if-eqz v0, :cond_26

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 13
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1f} :catch_20

    return-object p0

    :catch_20
    move-exception p0

    .line 15
    const-string v0, "listFiles:"

    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_26
    return-object v1
.end method

.method public static listFilesWithName(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_8

    goto :goto_57

    .line 6
    :cond_8
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1d

    .line 9
    :cond_14
    instance-of v1, p0, Ljava/io/File;

    if-eqz v1, :cond_1c

    .line 10
    move-object v1, p0

    check-cast v1, Ljava/io/File;

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    if-eqz v1, :cond_57

    .line 14
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_57

    .line 17
    :cond_26
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_2d

    goto :goto_57

    .line 21
    :cond_2d
    new-instance p0, Lio/dcloud/common/adapter/io/DHFile$3;

    invoke-direct {p0, p1}, Lio/dcloud/common/adapter/io/DHFile$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_39

    goto :goto_57

    .line 30
    :cond_39
    array-length v1, p0

    const/4 v2, 0x0

    :goto_3b
    if-ge v2, v1, :cond_57

    aget-object v3, p0, v2

    .line 31
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 32
    invoke-static {v3, p1}, Lio/dcloud/common/adapter/io/DHFile;->listFilesWithName(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 33
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_54

    .line 35
    :cond_4d
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_57
    :goto_57
    return-object v0
.end method

.method public static listFilesWithSuffix(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_8

    goto :goto_57

    .line 6
    :cond_8
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1d

    .line 9
    :cond_14
    instance-of v1, p0, Ljava/io/File;

    if-eqz v1, :cond_1c

    .line 10
    move-object v1, p0

    check-cast v1, Ljava/io/File;

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    if-eqz v1, :cond_57

    .line 14
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_57

    .line 17
    :cond_26
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_2d

    goto :goto_57

    .line 21
    :cond_2d
    new-instance p0, Lio/dcloud/common/adapter/io/DHFile$2;

    invoke-direct {p0, p1}, Lio/dcloud/common/adapter/io/DHFile$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_39

    goto :goto_57

    .line 30
    :cond_39
    array-length v1, p0

    const/4 v2, 0x0

    :goto_3b
    if-ge v2, v1, :cond_57

    aget-object v3, p0, v2

    .line 31
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 32
    invoke-static {v3, p1}, Lio/dcloud/common/adapter/io/DHFile;->listFilesWithSuffix(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 33
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_54

    .line 35
    :cond_4d
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_57
    :goto_57
    return-object v0
.end method

.method public static listRoot()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static openFile(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, v0}, Lio/dcloud/common/adapter/io/DHFile;->openFile(Ljava/lang/String;IZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected static openFile(Ljava/lang/String;IZ)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static readAll(Ljava/lang/Object;)[B
    .registers 5

    const-string v0, "readAll 0:"

    const/4 v1, 0x0

    .line 1
    :try_start_3
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_7} :catch_38
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_7} :catch_2e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_7} :catch_24
    .catchall {:try_start_3 .. :try_end_7} :catchall_22

    if-eqz p0, :cond_1f

    .line 3
    :try_start_9
    invoke-static {p0}, Lio/dcloud/common/util/IOUtil;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_d} :catch_1d
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_d} :catch_1b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_19
    .catchall {:try_start_9 .. :try_end_d} :catchall_16

    .line 17
    :try_start_d
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0

    :catchall_16
    move-exception v0

    move-object v1, p0

    goto :goto_58

    :catch_19
    move-exception v0

    goto :goto_26

    :catch_1b
    move-exception v0

    goto :goto_30

    :catch_1d
    move-exception v2

    goto :goto_3a

    :cond_1f
    if-eqz p0, :cond_57

    goto :goto_4f

    :catchall_22
    move-exception v0

    goto :goto_58

    :catch_24
    move-exception v0

    move-object p0, v1

    .line 23
    :goto_26
    :try_start_26
    const-string v2, "readAll 2:"

    invoke-static {v2, v0}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p0, :cond_57

    goto :goto_4f

    :catch_2e
    move-exception v0

    move-object p0, v1

    .line 24
    :goto_30
    const-string v2, "readAll 1:"

    invoke-static {v2, v0}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p0, :cond_57

    goto :goto_4f

    :catch_38
    move-exception v2

    move-object p0, v1

    .line 25
    :goto_3a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_26 .. :try_end_4d} :catchall_16

    if-eqz p0, :cond_57

    .line 20
    :goto_4f
    :try_start_4f
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_57
    :goto_57
    return-object v1

    :goto_58
    if-eqz v1, :cond_62

    .line 36
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_62

    :catch_5e
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    :cond_62
    :goto_62
    throw v0
.end method

.method public static rename(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2d

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    :cond_23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    const/4 v4, -0x1

    if-eqz v1, :cond_71

    .line 10
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4f

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    :cond_4f
    invoke-static {p1}, Lio/dcloud/common/adapter/io/DHFile;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_71

    .line 17
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6a

    return v4

    .line 21
    :cond_6a
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_71

    return v3

    :cond_71
    return v4
.end method

.method public static writeFile(Ljava/io/InputStream;ILjava/lang/String;)V
    .registers 8

    .line 83
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 87
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "cannot create!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;)V

    return-void

    .line 92
    :cond_2a
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/16 v2, 0x2000

    if-eqz p2, :cond_5c

    .line 94
    :try_start_34
    new-instance p2, Ljava/io/RandomAccessFile;

    const-string v3, "rws"

    invoke-direct {p2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 97
    new-array p1, v2, [B

    .line 98
    :goto_44
    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-eq v3, v0, :cond_4e

    .line 99
    invoke-virtual {p2, p1, v1, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_44

    .line 101
    :cond_4e
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_51
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_51} :catch_57
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_51} :catch_52

    return-void

    :catch_52
    move-exception p0

    .line 105
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_95

    :catch_57
    move-exception p0

    .line 106
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_95

    .line 112
    :cond_5c
    :try_start_5c
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_64

    :catch_60
    move-exception p2

    .line 114
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    :goto_64
    :try_start_64
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_69
    .catch Ljava/io/FileNotFoundException; {:try_start_64 .. :try_end_69} :catch_6a

    goto :goto_6f

    :catch_6a
    move-exception p1

    .line 120
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p2, 0x0

    :goto_6f
    if-eqz p2, :cond_95

    .line 125
    :try_start_71
    new-array p1, v2, [B

    .line 126
    :goto_73
    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-eq v3, v0, :cond_83

    .line 127
    invoke-virtual {p2, p1, v1, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_7c} :catch_7f
    .catchall {:try_start_71 .. :try_end_7c} :catchall_7d

    goto :goto_73

    :catchall_7d
    move-exception p0

    goto :goto_8c

    :catch_7f
    move-exception p0

    .line 137
    :try_start_80
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_7d

    .line 133
    :cond_83
    :try_start_83
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_95

    :catch_87
    move-exception p0

    .line 136
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_95

    .line 140
    :goto_8c
    :try_start_8c
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_90

    goto :goto_94

    :catch_90
    move-exception p1

    .line 143
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    :goto_94
    throw p0

    :cond_95
    :goto_95
    return-void
.end method

.method public static writeFile([BILjava/lang/String;)V
    .registers 6

    .line 28
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 31
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 32
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "cannot create!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;)V

    return-void

    .line 36
    :cond_2a
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_52

    .line 38
    :try_start_30
    new-instance p2, Ljava/io/RandomAccessFile;

    const-string v1, "rws"

    invoke-direct {p2, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    array-length v0, p0

    add-int/2addr v0, p1

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    int-to-long v0, p1

    .line 40
    invoke-virtual {p2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 41
    invoke-virtual {p2, p0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 42
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_47} :catch_4d
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_47} :catch_48

    return-void

    :catch_48
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8a

    :catch_4d
    move-exception p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8a

    .line 53
    :cond_52
    :try_start_52
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_5a

    :catch_56
    move-exception p1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    :goto_5a
    :try_start_5a
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5f
    .catch Ljava/io/FileNotFoundException; {:try_start_5a .. :try_end_5f} :catch_60

    goto :goto_65

    :catch_60
    move-exception p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    :goto_65
    if-eqz p1, :cond_8a

    if-eqz p0, :cond_82

    .line 66
    :try_start_69
    array-length p2, p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, p2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 67
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_71} :catch_74
    .catchall {:try_start_69 .. :try_end_71} :catchall_72

    goto :goto_82

    :catchall_72
    move-exception p0

    goto :goto_79

    :catch_74
    move-exception p0

    .line 70
    :try_start_75
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_72

    goto :goto_82

    .line 77
    :goto_79
    :try_start_79
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_81

    :catch_7d
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    :goto_81
    throw p0

    .line 73
    :cond_82
    :goto_82
    :try_start_82
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_8a

    :catch_86
    move-exception p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8a
    :goto_8a
    return-void
.end method

.method public static writeFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_12

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_12
    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 8
    :try_start_14
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_37
    .catchall {:try_start_14 .. :try_end_19} :catchall_35

    if-eqz p0, :cond_31

    const v0, 0x32000

    .line 11
    :try_start_1e
    new-array v0, v0, [B

    .line 13
    :goto_20
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_2a

    .line 14
    invoke-virtual {v2, v0, p1, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_29} :catch_2e
    .catchall {:try_start_1e .. :try_end_29} :catchall_2c

    goto :goto_20

    :cond_2a
    const/4 p1, 0x1

    goto :goto_31

    :catchall_2c
    move-exception p0

    goto :goto_40

    :catch_2e
    move-exception p0

    move-object v1, v2

    goto :goto_38

    .line 22
    :cond_31
    :goto_31
    invoke-static {v2}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    return p1

    :catchall_35
    move-exception p0

    goto :goto_3f

    :catch_37
    move-exception p0

    .line 23
    :goto_38
    :try_start_38
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_35

    .line 25
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    return p1

    :goto_3f
    move-object v2, v1

    .line 26
    :goto_40
    invoke-static {v2}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    .line 27
    throw p0
.end method

###### Class io.dcloud.common.adapter.io.DHFile.AnonymousClass1 (io.dcloud.common.adapter.io.DHFile$1)
.class Lio/dcloud/common/adapter/io/DHFile$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/io/DHFile;->deleteAsync(Ljava/lang/Object;Lio/dcloud/common/adapter/io/IAsyncCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$FileHandler:Ljava/lang/Object;

.field final synthetic val$callback:Lio/dcloud/common/adapter/io/IAsyncCallback;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lio/dcloud/common/adapter/io/IAsyncCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/io/DHFile$1;->val$FileHandler:Ljava/lang/Object;

    iput-object p2, p0, Lio/dcloud/common/adapter/io/DHFile$1;->val$callback:Lio/dcloud/common/adapter/io/IAsyncCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Lio/dcloud/common/adapter/io/DHFile$1;->val$FileHandler:Ljava/lang/Object;

    invoke-static {v1}, Lio/dcloud/common/adapter/io/DHFile;->access$000(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_13

    .line 4
    iget-object v1, p0, Lio/dcloud/common/adapter/io/DHFile$1;->val$callback:Lio/dcloud/common/adapter/io/IAsyncCallback;

    invoke-interface {v1, v0}, Lio/dcloud/common/adapter/io/IAsyncCallback;->done(Z)V

    return-void

    .line 7
    :cond_13
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 9
    iget-object v2, p0, Lio/dcloud/common/adapter/io/DHFile$1;->val$callback:Lio/dcloud/common/adapter/io/IAsyncCallback;

    invoke-interface {v2, v1}, Lio/dcloud/common/adapter/io/IAsyncCallback;->done(Z)V

    return-void

    .line 12
    :cond_23
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_6c

    .line 14
    array-length v3, v2

    if-lez v3, :cond_6c

    const/4 v3, 0x0

    .line 16
    :goto_2d
    array-length v4, v2

    if-ge v3, v4, :cond_6c

    .line 17
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 19
    invoke-static {v4}, Lio/dcloud/common/adapter/io/DHFile;->delete(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_61

    .line 21
    :cond_5b
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    :goto_61
    if-nez v4, :cond_69

    .line 24
    iget-object v1, p0, Lio/dcloud/common/adapter/io/DHFile$1;->val$callback:Lio/dcloud/common/adapter/io/IAsyncCallback;

    invoke-interface {v1, v0}, Lio/dcloud/common/adapter/io/IAsyncCallback;->done(Z)V

    return-void

    :cond_69
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 31
    :cond_6c
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 32
    iget-object v2, p0, Lio/dcloud/common/adapter/io/DHFile$1;->val$callback:Lio/dcloud/common/adapter/io/IAsyncCallback;

    invoke-interface {v2, v1}, Lio/dcloud/common/adapter/io/IAsyncCallback;->done(Z)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_75} :catch_76

    return-void

    :catch_76
    move-exception v1

    .line 37
    const-string v2, "DHFile.delete"

    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    iget-object v1, p0, Lio/dcloud/common/adapter/io/DHFile$1;->val$callback:Lio/dcloud/common/adapter/io/IAsyncCallback;

    invoke-interface {v1, v0}, Lio/dcloud/common/adapter/io/IAsyncCallback;->done(Z)V

    return-void
.end method

###### Class io.dcloud.common.adapter.io.DHFile.AnonymousClass2 (io.dcloud.common.adapter.io.DHFile$2)
.class Lio/dcloud/common/adapter/io/DHFile$2;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/io/DHFile;->listFilesWithSuffix(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$suffix:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/io/DHFile$2;->val$suffix:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1a

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/common/adapter/io/DHFile$2;->val$suffix:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_1a

    :cond_18
    const/4 p1, 0x0

    return p1

    :cond_1a
    :goto_1a
    const/4 p1, 0x1

    return p1
.end method

###### Class io.dcloud.common.adapter.io.DHFile.AnonymousClass3 (io.dcloud.common.adapter.io.DHFile$3)
.class Lio/dcloud/common/adapter/io/DHFile$3;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/io/DHFile;->listFilesWithName(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$pName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/io/DHFile$3;->val$pName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_16

    iget-object p1, p0, Lio/dcloud/common/adapter/io/DHFile$3;->val$pName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_16

    :cond_14
    const/4 p1, 0x0

    return p1

    :cond_16
    :goto_16
    const/4 p1, 0x1

    return p1
.end method
