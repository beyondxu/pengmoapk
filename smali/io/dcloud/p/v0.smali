###### Class io.dcloud.p.v0 (io.dcloud.p.v0)
.class public abstract Lio/dcloud/p/v0;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# direct methods
.method public static a(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 8

    .line 111
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 114
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 115
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "cannot create!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/p/c3;->a(Ljava/lang/String;)V

    return-void

    .line 120
    :cond_2a
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v3, 0x2000

    if-eqz p1, :cond_5c

    .line 122
    :try_start_34
    new-instance p1, Ljava/io/RandomAccessFile;

    const-string v4, "rws"

    invoke-direct {p1, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 125
    new-array v0, v3, [B

    .line 126
    :goto_44
    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-eq v4, v1, :cond_4e

    .line 127
    invoke-virtual {p1, v0, v2, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_44

    .line 129
    :cond_4e
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_51
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_51} :catch_57
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_51} :catch_52

    return-void

    :catch_52
    move-exception p0

    .line 133
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_95

    :catch_57
    move-exception p0

    .line 134
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_95

    .line 140
    :cond_5c
    :try_start_5c
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_64

    :catch_60
    move-exception p1

    .line 142
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 146
    :goto_64
    :try_start_64
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_69
    .catch Ljava/io/FileNotFoundException; {:try_start_64 .. :try_end_69} :catch_6a

    goto :goto_6f

    :catch_6a
    move-exception p1

    .line 148
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    :goto_6f
    if-eqz p1, :cond_95

    .line 153
    :try_start_71
    new-array v0, v3, [B

    .line 154
    :goto_73
    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-eq v4, v1, :cond_83

    .line 155
    invoke-virtual {p1, v0, v2, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_7c} :catch_7f
    .catchall {:try_start_71 .. :try_end_7c} :catchall_7d

    goto :goto_73

    :catchall_7d
    move-exception p0

    goto :goto_8c

    :catch_7f
    move-exception p0

    .line 165
    :try_start_80
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_7d

    .line 161
    :cond_83
    :try_start_83
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_95

    :catch_87
    move-exception p0

    .line 164
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_95

    .line 168
    :goto_8c
    :try_start_8c
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_90

    goto :goto_94

    :catch_90
    move-exception p1

    .line 171
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 173
    :goto_94
    throw p0

    :cond_95
    :goto_95
    return-void
.end method

.method public static a(Ljava/io/OutputStream;)V
    .registers 1

    if-eqz p0, :cond_a

    .line 51
    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    return-void
.end method

.method public static a([BILjava/lang/String;)V
    .registers 6

    .line 56
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 59
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 60
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "cannot create!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/p/c3;->a(Ljava/lang/String;)V

    return-void

    .line 64
    :cond_2a
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_52

    .line 66
    :try_start_30
    new-instance p2, Ljava/io/RandomAccessFile;

    const-string v1, "rws"

    invoke-direct {p2, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    array-length v0, p0

    add-int/2addr v0, p1

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    int-to-long v0, p1

    .line 68
    invoke-virtual {p2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 69
    invoke-virtual {p2, p0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 70
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_47} :catch_4d
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_47} :catch_48

    return-void

    :catch_48
    move-exception p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8a

    :catch_4d
    move-exception p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8a

    .line 81
    :cond_52
    :try_start_52
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_5a

    :catch_56
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    :goto_5a
    :try_start_5a
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5f
    .catch Ljava/io/FileNotFoundException; {:try_start_5a .. :try_end_5f} :catch_60

    goto :goto_65

    :catch_60
    move-exception p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    :goto_65
    if-eqz p1, :cond_8a

    if-eqz p0, :cond_82

    .line 94
    :try_start_69
    array-length p2, p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, p2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 95
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

    .line 98
    :try_start_75
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_72

    goto :goto_82

    .line 105
    :goto_79
    :try_start_79
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_81

    :catch_7d
    move-exception p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    :goto_81
    throw p0

    .line 101
    :cond_82
    :goto_82
    :try_start_82
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_8a

    :catch_86
    move-exception p0

    .line 104
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8a
    :goto_8a
    return-void
.end method

.method public static a(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1
    :cond_4
    :try_start_4
    invoke-static {p0}, Lio/dcloud/p/v0;->c(Ljava/lang/Object;)Ljava/io/File;

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

    .line 13
    array-length v3, v2

    if-lez v3, :cond_7d

    const/4 v3, 0x0

    .line 15
    :goto_24
    array-length v4, v2

    if-ge v3, v4, :cond_7d

    .line 16
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

    invoke-static {v4}, Lio/dcloud/p/c3;->a(Ljava/lang/String;)V

    .line 17
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_6c

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
    invoke-static {v4}, Lio/dcloud/p/v0;->a(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_77

    .line 21
    :cond_6c
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    const-wide/16 v5, 0x2

    .line 22
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    :goto_77
    if-nez v4, :cond_7a

    return v0

    :cond_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 30
    :cond_7d
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 31
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

    invoke-static {p0}, Lio/dcloud/p/c3;->a(Ljava/lang/String;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a1} :catch_a2

    return v1

    :catch_a2
    move-exception p0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DHFile.delete"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/p/c3;->d(Ljava/lang/String;)V

    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 1

    .line 54
    invoke-static {p0}, Lio/dcloud/p/v0;->c(Ljava/lang/Object;)Ljava/io/File;

    move-result-object p0

    .line 55
    invoke-static {p0}, Lio/dcloud/p/v0;->b(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .registers 5

    .line 38
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const v1, 0x32000

    .line 39
    new-array v1, v1, [B

    .line 41
    :goto_a
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_19

    .line 48
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 49
    invoke-static {v0}, Lio/dcloud/p/v0;->a(Ljava/io/OutputStream;)V

    return-object p0

    :cond_19
    const/4 v3, 0x0

    .line 50
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_a
.end method

.method public static b(Ljava/lang/Object;)Z
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

.method private static c(Ljava/lang/Object;)Ljava/io/File;
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

.method public static d(Ljava/lang/Object;)Ljava/io/InputStream;
    .registers 4

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
    if-eqz v0, :cond_62

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_62

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
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_37} :catch_4b
    .catch Ljava/lang/SecurityException; {:try_start_32 .. :try_end_37} :catch_38

    return-object p0

    :catch_38
    move-exception p0

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getInputStream2"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/p/c3;->d(Ljava/lang/String;)V

    goto :goto_62

    .line 23
    :catch_4b
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "DHFile getInputStream not found file: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "uniAD"

    invoke-static {v0, p0}, Lio/dcloud/p/c3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    :goto_62
    return-object v1
.end method

.method public static e(Ljava/lang/Object;)[B
    .registers 5

    const-string v0, "readAll 2:"

    const-string v1, "readAll 1:"

    const-string v2, "readAll 0:"

    const/4 v3, 0x0

    .line 1
    :try_start_7
    invoke-static {p0}, Lio/dcloud/p/v0;->d(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_b} :catch_50
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_b} :catch_3c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_b} :catch_28
    .catchall {:try_start_7 .. :try_end_b} :catchall_26

    if-eqz p0, :cond_23

    .line 3
    :try_start_d
    invoke-static {p0}, Lio/dcloud/p/v0;->a(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_11} :catch_21
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_11} :catch_1f
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11} :catch_1d
    .catchall {:try_start_d .. :try_end_11} :catchall_1a

    .line 17
    :try_start_11
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0

    :catchall_1a
    move-exception v0

    move-object v3, p0

    goto :goto_70

    :catch_1d
    move-exception v1

    goto :goto_2a

    :catch_1f
    move-exception v0

    goto :goto_3e

    :catch_21
    move-exception v0

    goto :goto_52

    :cond_23
    if-eqz p0, :cond_6f

    goto :goto_67

    :catchall_26
    move-exception v0

    goto :goto_70

    :catch_28
    move-exception v1

    move-object p0, v3

    .line 23
    :goto_2a
    :try_start_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/p/c3;->d(Ljava/lang/String;)V

    if-eqz p0, :cond_6f

    goto :goto_67

    :catch_3c
    move-exception v0

    move-object p0, v3

    .line 24
    :goto_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/p/c3;->d(Ljava/lang/String;)V

    if-eqz p0, :cond_6f

    goto :goto_67

    :catch_50
    move-exception v0

    move-object p0, v3

    .line 25
    :goto_52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/p/c3;->a(Ljava/lang/String;)V
    :try_end_65
    .catchall {:try_start_2a .. :try_end_65} :catchall_1a

    if-eqz p0, :cond_6f

    .line 20
    :goto_67
    :try_start_67
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_6f

    :catch_6b
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6f
    :goto_6f
    return-object v3

    :goto_70
    if-eqz v3, :cond_7a

    .line 36
    :try_start_72
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    goto :goto_7a

    :catch_76
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    :cond_7a
    :goto_7a
    throw v0
.end method
