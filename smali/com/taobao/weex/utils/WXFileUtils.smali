###### Class com.taobao.weex.utils.WXFileUtils (com.taobao.weex.utils.WXFileUtils)
.class public Lcom/taobao/weex/utils/WXFileUtils;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base64Md5(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 3
    :cond_5
    :try_start_5
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXFileUtils;->base64Md5([B)Ljava/lang/String;

    move-result-object p0
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    return-object v0
.end method

.method public static base64Md5([B)Ljava/lang/String;
    .registers 2

    .line 6
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 8
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_12} :catch_13

    return-object p0

    .line 10
    :catch_13
    const-string p0, ""

    return-object p0
.end method

.method public static closeIo(Ljava/io/Closeable;)V
    .registers 1

    if-nez p0, :cond_3

    return-void

    .line 1
    :cond_3
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return-void

    :catchall_7
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .registers 8

    const/4 v0, 0x0

    .line 1
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_2b

    const/16 v2, 0x400

    .line 2
    :try_start_8
    new-array v2, v2, [B

    .line 3
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_26

    .line 4
    :goto_f
    :try_start_f
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1a

    .line 5
    invoke-virtual {v3, v2}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_f

    .line 7
    :cond_1a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2d

    :catch_26
    move-exception v2

    move-object v3, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_2d

    :catch_2b
    move-exception v1

    move-object v3, v0

    .line 10
    :goto_2d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "copyFile "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    if-eqz v0, :cond_62

    .line 13
    :try_start_5a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_62

    :catch_5e
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_62
    :goto_62
    if-eqz v3, :cond_6c

    .line 21
    :try_start_64
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_6c

    :catch_68
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6c
    :goto_6c
    return-void
.end method

.method public static copyFileWithException(Ljava/io/File;Ljava/io/File;)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_2e
    .catchall {:try_start_1 .. :try_end_6} :catchall_2b

    const/16 p0, 0x400

    .line 2
    :try_start_8
    new-array p0, p0, [B

    .line 3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_27
    .catchall {:try_start_8 .. :try_end_f} :catchall_25

    .line 4
    :goto_f
    :try_start_f
    invoke-virtual {v1, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1a

    .line 5
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_19} :catch_23
    .catchall {:try_start_f .. :try_end_19} :catchall_21

    goto :goto_f

    .line 10
    :cond_1a
    invoke-static {v1}, Lcom/taobao/weex/utils/WXFileUtils;->closeIo(Ljava/io/Closeable;)V

    .line 11
    invoke-static {v2}, Lcom/taobao/weex/utils/WXFileUtils;->closeIo(Ljava/io/Closeable;)V

    return-void

    :catchall_21
    move-exception p0

    goto :goto_33

    :catch_23
    move-exception p0

    goto :goto_29

    :catchall_25
    move-exception p0

    goto :goto_34

    :catch_27
    move-exception p0

    move-object v2, v0

    :goto_29
    move-object v0, v1

    goto :goto_30

    :catchall_2b
    move-exception p0

    move-object v2, v0

    goto :goto_32

    :catch_2e
    move-exception p0

    move-object v2, v0

    .line 12
    :goto_30
    :try_start_30
    throw p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception p0

    :goto_32
    move-object v1, v0

    :goto_33
    move-object v0, v2

    .line 14
    :goto_34
    invoke-static {v1}, Lcom/taobao/weex/utils/WXFileUtils;->closeIo(Ljava/io/Closeable;)V

    .line 15
    invoke-static {v0}, Lcom/taobao/weex/utils/WXFileUtils;->closeIo(Ljava/io/Closeable;)V

    .line 16
    throw p0
.end method

.method public static extractSo(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/PdrUtil;->isSafeEntryName(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e6

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isSafeEntryName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_e6

    .line 4
    :cond_f
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 7
    new-instance p0, Ljava/util/zip/ZipInputStream;

    invoke-direct {p0, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 8
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 9
    :cond_2c
    :goto_2c
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_e3

    .line 10
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 14
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 15
    const-string v6, "../"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_45

    goto :goto_2c

    .line 18
    :cond_45
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4c

    goto :goto_2c

    .line 21
    :cond_4c
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/taobao/weex/utils/WXFileUtils;->validLibPath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 22
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "weex"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7b

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "libjsc.so"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7b

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "libJavaScriptCore.so"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 24
    :cond_7b
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 25
    array-length v6, v1

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    aget-object v1, v1, v6

    .line 26
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 28
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/taobao/weex/utils/WXFileUtils;->replaceLib(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b2

    goto :goto_e0

    .line 31
    :cond_b2
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 33
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 35
    :cond_c2
    invoke-virtual {v2, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    const/16 v4, 0x400

    .line 36
    new-array v4, v4, [B

    .line 38
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 40
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 41
    :goto_d2
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_dd

    .line 42
    invoke-virtual {v5, v4}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_d2

    .line 44
    :cond_dd
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :goto_e0
    const/4 v1, 0x1

    goto/16 :goto_2c

    .line 48
    :cond_e3
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    :cond_e6
    :goto_e6
    return v1
.end method

.method public static loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_23

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_23

    .line 6
    :cond_9
    :try_start_9
    invoke-static {p0}, Lio/dcloud/weex/DCFileUtils;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {p0, p1}, Lio/dcloud/weex/DCFileUtils;->loadWeexAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 11
    :cond_1b
    invoke-static {v0}, Lcom/taobao/weex/utils/WXFileUtils;->readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1f} :catch_20

    return-object p0

    .line 15
    :catch_20
    const-string p0, ""

    return-object p0

    :cond_23
    :goto_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public static loadFileOrAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 5
    :try_start_11
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6
    invoke-static {p0}, Lcom/taobao/weex/utils/WXFileUtils;->readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_25

    .line 11
    :cond_20
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 14
    :cond_25
    :goto_25
    const-string p0, ""

    return-object p0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 3
    :cond_5
    :try_start_5
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXFileUtils;->md5([B)Ljava/lang/String;

    move-result-object p0
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    return-object v0
.end method

.method public static md5([B)Ljava/lang/String;
    .registers 3

    .line 6
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 8
    new-instance p0, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    .line 9
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_19} :catch_1a

    return-object p0

    .line 11
    :catch_1a
    const-string p0, ""

    return-object p0
.end method

.method public static readBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_27

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_27

    .line 6
    :cond_a
    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    const/16 p1, 0x1000

    .line 7
    new-array p1, p1, [B

    .line 8
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p0

    .line 9
    new-array v1, p0, [B

    const/4 v2, 0x0

    .line 10
    invoke-static {p1, v2, v1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_20} :catch_21

    return-object v1

    :catch_21
    move-exception p0

    .line 14
    const-string p1, ""

    invoke-static {p1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_27
    :goto_27
    return-object v0
.end method

.method private static readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 8

    const-string v0, ""

    const-string v1, "WXFileUtils loadAsset: "

    const/4 v2, 0x0

    .line 1
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v4

    add-int/lit8 v4, v4, 0xa

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1a} :catch_45
    .catchall {:try_start_5 .. :try_end_1a} :catchall_5e

    const/16 v2, 0x1000

    .line 3
    :try_start_1c
    new-array v2, v2, [C

    .line 5
    :goto_1e
    invoke-virtual {v4, v2}, Ljava/io/Reader;->read([C)I

    move-result v5

    if-lez v5, :cond_29

    const/4 v6, 0x0

    .line 6
    invoke-virtual {v3, v2, v6, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 9
    :cond_29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2d} :catch_41
    .catchall {:try_start_1c .. :try_end_2d} :catchall_3e

    .line 16
    :try_start_2d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception v2

    .line 18
    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    :goto_35
    :try_start_35
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_3d

    :catch_39
    move-exception p0

    .line 24
    invoke-static {v1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3d
    return-object v0

    :catchall_3e
    move-exception v0

    move-object v2, v4

    goto :goto_5f

    :catch_41
    move-exception v2

    move-object v3, v2

    move-object v2, v4

    goto :goto_46

    :catch_45
    move-exception v3

    .line 25
    :goto_46
    :try_start_46
    invoke-static {v0, v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_5e

    if-eqz v2, :cond_53

    .line 29
    :try_start_4b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_53

    :catch_4f
    move-exception v2

    .line 31
    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_53
    :goto_53
    if-eqz p0, :cond_5d

    .line 35
    :try_start_55
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_5d

    :catch_59
    move-exception p0

    .line 37
    invoke-static {v1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5d
    :goto_5d
    return-object v0

    :catchall_5e
    move-exception v0

    :goto_5f
    if-eqz v2, :cond_69

    .line 42
    :try_start_61
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_69

    :catch_65
    move-exception v2

    .line 44
    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_69
    :goto_69
    if-eqz p0, :cond_73

    .line 48
    :try_start_6b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_73

    :catch_6f
    move-exception p0

    .line 50
    invoke-static {v1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    :cond_73
    :goto_73
    throw v0
.end method

.method private static replaceLib(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x1

    if-eqz p0, :cond_25

    if-eqz p1, :cond_25

    .line 1
    invoke-static {}, Lcom/taobao/weex/utils/WXFileUtils;->validCPUABIS()[Ljava/lang/String;

    move-result-object v1

    .line 2
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_d
    if-ge v4, v2, :cond_24

    aget-object v6, v1, v4

    .line 3
    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1a

    if-eqz v5, :cond_1a

    return v0

    .line 8
    :cond_1a
    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_21

    const/4 v5, 0x1

    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_24
    return v3

    :cond_25
    return v0
.end method

.method public static saveFile(Ljava/lang/String;[BLandroid/content/Context;)Z
    .registers 6

    const-string v0, "WXFileUtils saveFile: "

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_53

    if-eqz p1, :cond_53

    if-nez p2, :cond_e

    goto :goto_53

    :cond_e
    const/4 p2, 0x0

    .line 6
    :try_start_f
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_28
    .catchall {:try_start_f .. :try_end_14} :catchall_26

    .line 7
    :try_start_14
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_23
    .catchall {:try_start_14 .. :try_end_17} :catchall_21

    const/4 p0, 0x1

    .line 14
    :try_start_18
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1c

    return p0

    :catch_1c
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0

    :catchall_21
    move-exception p0

    goto :goto_48

    :catch_23
    move-exception p0

    move-object p2, v1

    goto :goto_29

    :catchall_26
    move-exception p0

    goto :goto_47

    :catch_28
    move-exception p0

    .line 17
    :goto_29
    :try_start_29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_29 .. :try_end_3c} :catchall_26

    if-eqz p2, :cond_46

    .line 21
    :try_start_3e
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_46
    :goto_46
    return v2

    :goto_47
    move-object v1, p2

    :goto_48
    if-eqz v1, :cond_52

    .line 24
    :try_start_4a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_52

    :catch_4e
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    :cond_52
    :goto_52
    throw p0

    :cond_53
    :goto_53
    return v2
.end method

.method private static validCPUABIS()[Ljava/lang/String;
    .registers 2

    .line 2
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 4
    array-length v1, v0

    if-nez v1, :cond_8

    goto :goto_9

    :cond_8
    return-object v0

    .line 6
    :cond_9
    :goto_9
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static validLibPath(Ljava/lang/String;)Z
    .registers 6

    .line 1
    invoke-static {}, Lcom/taobao/weex/utils/WXFileUtils;->validCPUABIS()[Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v1, :cond_16

    aget-object v4, v0, v3

    .line 3
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_16
    return v2
.end method
