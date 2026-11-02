###### Class io.dcloud.common.util.FileUtil (io.dcloud.common.util.FileUtil)
.class public Lio/dcloud/common/util/FileUtil;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkFilePathLegalization(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lio/dcloud/common/util/FileUtil;->checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 4
    :cond_8
    invoke-static {p0}, Lio/dcloud/common/util/FileUtil;->needMediaStoreOpenFile(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 6
    invoke-static {p1}, Lio/dcloud/common/util/FileUtil;->getPathForPublicType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_19

    return v1

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z
    .registers 7

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/FileUtil;->needMediaStoreOpenFile(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_25

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-le v0, v2, :cond_14

    .line 4
    invoke-static {}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m$2()Z

    move-result v0

    if-eqz v0, :cond_14

    return v1

    .line 8
    :cond_14
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v0, :cond_25

    aget-object v4, p1, v3

    .line 9
    invoke-static {p0, v4}, Lio/dcloud/common/util/FileUtil;->checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_22

    const/4 v1, 0x0

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_25
    return v1
.end method

.method public static checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sPrivateDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    invoke-static {p0}, Lio/dcloud/common/adapter/util/DeviceInfo;->initAppDir(Landroid/content/Context;)V

    .line 5
    :cond_b
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    const/16 v1, 0x1d

    if-le p0, v1, :cond_19

    invoke-static {}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m$2()Z

    move-result v2

    if-eqz v2, :cond_19

    return v0

    .line 8
    :cond_19
    const-string v2, "file://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 9
    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 11
    :cond_27
    sget-object v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sPrivateExternalDir:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    :cond_43
    sget-object v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sPrivateDir:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    sget-object v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sPrivateExternalDir:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 15
    invoke-static {p1}, Lio/dcloud/common/util/FileUtil;->isAssetFile(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5e

    if-ge p0, v1, :cond_5c

    goto :goto_5e

    :cond_5c
    const/4 p0, 0x0

    return p0

    :cond_5e
    :goto_5e
    return v0
.end method

.method private static copyMediaFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lio/dcloud/common/util/FileUtil;->getFileTypeForSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return-object v2

    .line 5
    :cond_c
    invoke-static {p3}, Lio/dcloud/common/util/FileUtil;->getContentUriForSuffix(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicDCIMDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 10
    const-string v3, ""

    invoke-virtual {p2, p3, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 13
    :goto_48
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_89

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicDCIMDir:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 17
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    add-int/2addr v8, v7

    move-object v5, v9

    goto :goto_48

    .line 20
    :cond_89
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 21
    const-string v3, "_display_name"

    invoke-virtual {p3, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v3, "mime_type"

    invoke-virtual {p3, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string/jumbo v0, "title"

    invoke-virtual {p3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "relative_path"

    invoke-virtual {p3, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v6, v1, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_b9

    return-object v2

    .line 29
    :cond_b9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0

    const p3, 0x32000

    .line 31
    new-array p3, p3, [B

    if-eqz p0, :cond_d9

    .line 34
    :goto_c8
    invoke-virtual {p1, p3}, Ljava/io/InputStream;->read([B)I

    move-result p4

    if-lez p4, :cond_d6

    const/4 p5, 0x0

    .line 35
    invoke-virtual {p0, p3, p5, p4}, Ljava/io/OutputStream;->write([BII)V

    .line 36
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    goto :goto_c8

    .line 38
    :cond_d6
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 40
    :cond_d9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object p2
.end method

.method public static copyMediaFileToDCIM(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Landroid/net/Uri;
    .registers 11

    .line 40
    invoke-static {p0}, Lio/dcloud/common/util/FileUtil;->needMediaStoreOpenFile(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    if-nez p1, :cond_a

    return-object v1

    .line 45
    :cond_a
    :try_start_a
    invoke-static {p2}, Lio/dcloud/common/util/FileUtil;->getFileNameWithSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 46
    invoke-static {v5}, Lio/dcloud/common/util/FileUtil;->getFileTypeForSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    return-object v1

    .line 50
    :cond_19
    const-string v6, "DCIM/"

    const-string v7, "Camera/"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/FileUtil;->copyMediaFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_24} :catch_25

    return-object p0

    :catch_25
    move-exception v0

    move-object p0, v0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2a
    return-object v1
.end method

.method public static copyMediaFileToDCIM(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .registers 12

    const-string v0, "/"

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/FileUtil;->needMediaStoreOpenFile(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7d

    .line 4
    :try_start_9
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_15

    return-object v2

    .line 8
    :cond_15
    invoke-static {p0, p1}, Lio/dcloud/common/util/FileUtil;->checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 9
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_25

    .line 11
    :cond_21
    invoke-static {p0, v1}, Lio/dcloud/common/util/FileUtil;->getFileInputStream(Landroid/content/Context;Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v3

    :goto_25
    move-object v5, v3

    if-nez v5, :cond_29

    return-object v2

    .line 16
    :cond_29
    invoke-static {p1}, Lio/dcloud/common/util/FileUtil;->getFileNameForPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 17
    invoke-static {v6}, Lio/dcloud/common/util/FileUtil;->getFileNameWithSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 19
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    .line 20
    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 21
    invoke-static {p0, p1}, Lio/dcloud/common/util/FileUtil;->checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 22
    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_53

    .line 24
    :cond_49
    invoke-static {p0, v1}, Lio/dcloud/common/util/FileUtil;->getFileInputStream(Landroid/content/Context;Ljava/io/File;)Ljava/io/InputStream;

    move-result-object p1

    .line 25
    invoke-static {p1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 26
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 28
    :goto_53
    iget-object p1, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 29
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 31
    array-length v0, p1

    sub-int/2addr v0, v4

    aget-object p1, p1, v0

    goto :goto_6c

    .line 34
    :cond_6a
    const-string p1, "jpg"

    :goto_6c
    move-object v3, p1

    :cond_6d
    move-object v7, v3

    .line 37
    const-string v8, "DCIM/"

    const-string v9, "Camera/"

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lio/dcloud/common/util/FileUtil;->copyMediaFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_77} :catch_78

    return-object p0

    :catch_78
    move-exception v0

    move-object p0, v0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7d
    return-object v2
.end method

.method public static createPublicDocumentsFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 7

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/FileUtil;->needMediaStoreOpenFile(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5c

    .line 2
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicDocumentsDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 7
    invoke-static {p0, v3, v0}, Lio/dcloud/common/util/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 9
    :cond_33
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 10
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 12
    const-string v3, "_display_name"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const-string v3, "mime_type"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-string/jumbo p2, "title"

    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-string p1, "relative_path"

    const-string p2, "Documents/"

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :try_start_53
    invoke-virtual {p0, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_57} :catch_58

    return-object p0

    :catch_58
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5c
    return-object v1
.end method

.method public static deleteFile(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_15

    .line 1
    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_15

    :catch_15
    :cond_15
    return-void
.end method

.method public static getContentUriForSuffix(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_17a

    goto/16 :goto_167

    :sswitch_14
    const-string v0, "MP2TS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto/16 :goto_167

    :cond_1e
    const/16 v1, 0x19

    goto/16 :goto_167

    :sswitch_22
    const-string v0, "3GPP2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    goto/16 :goto_167

    :cond_2c
    const/16 v1, 0x18

    goto/16 :goto_167

    :sswitch_30
    const-string v0, "WEBP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    goto/16 :goto_167

    :cond_3a
    const/16 v1, 0x17

    goto/16 :goto_167

    :sswitch_3e
    const-string v0, "WEBM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_48

    goto/16 :goto_167

    :cond_48
    const/16 v1, 0x16

    goto/16 :goto_167

    :sswitch_4c
    const-string v0, "WBMP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_56

    goto/16 :goto_167

    :cond_56
    const/16 v1, 0x15

    goto/16 :goto_167

    :sswitch_5a
    const-string v0, "JPEG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_64

    goto/16 :goto_167

    :cond_64
    const/16 v1, 0x14

    goto/16 :goto_167

    :sswitch_68
    const-string v0, "FLAC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_72

    goto/16 :goto_167

    :cond_72
    const/16 v1, 0x13

    goto/16 :goto_167

    :sswitch_76
    const-string v0, "3GPP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_80

    goto/16 :goto_167

    :cond_80
    const/16 v1, 0x12

    goto/16 :goto_167

    :sswitch_84
    const-string v0, "WMV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8e

    goto/16 :goto_167

    :cond_8e
    const/16 v1, 0x11

    goto/16 :goto_167

    :sswitch_92
    const-string v0, "WMA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9c

    goto/16 :goto_167

    :cond_9c
    const/16 v1, 0x10

    goto/16 :goto_167

    :sswitch_a0
    const-string v0, "WAV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_aa

    goto/16 :goto_167

    :cond_aa
    const/16 v1, 0xf

    goto/16 :goto_167

    :sswitch_ae
    const-string v0, "PNG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b8

    goto/16 :goto_167

    :cond_b8
    const/16 v1, 0xe

    goto/16 :goto_167

    :sswitch_bc
    const-string v0, "OGG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c6

    goto/16 :goto_167

    :cond_c6
    const/16 v1, 0xd

    goto/16 :goto_167

    :sswitch_ca
    const-string v0, "MP4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d4

    goto/16 :goto_167

    :cond_d4
    const/16 v1, 0xc

    goto/16 :goto_167

    :sswitch_d8
    const-string v0, "MP3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e2

    goto/16 :goto_167

    :cond_e2
    const/16 v1, 0xb

    goto/16 :goto_167

    :sswitch_e6
    const-string v0, "MKV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f0

    goto/16 :goto_167

    :cond_f0
    const/16 v1, 0xa

    goto/16 :goto_167

    :sswitch_f4
    const-string v0, "MKA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fe

    goto/16 :goto_167

    :cond_fe
    const/16 v1, 0x9

    goto/16 :goto_167

    :sswitch_102
    const-string v0, "M4V"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10c

    goto/16 :goto_167

    :cond_10c
    const/16 v1, 0x8

    goto/16 :goto_167

    :sswitch_110
    const-string v0, "M4A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_119

    goto :goto_167

    :cond_119
    const/4 v1, 0x7

    goto :goto_167

    :sswitch_11b
    const-string v0, "JPG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_124

    goto :goto_167

    :cond_124
    const/4 v1, 0x6

    goto :goto_167

    :sswitch_126
    const-string v0, "GIF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12f

    goto :goto_167

    :cond_12f
    const/4 v1, 0x5

    goto :goto_167

    :sswitch_131
    const-string v0, "BMP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13a

    goto :goto_167

    :cond_13a
    const/4 v1, 0x4

    goto :goto_167

    :sswitch_13c
    const-string v0, "AVI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_145

    goto :goto_167

    :cond_145
    const/4 v1, 0x3

    goto :goto_167

    :sswitch_147
    const-string v0, "ASF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_150

    goto :goto_167

    :cond_150
    const/4 v1, 0x2

    goto :goto_167

    :sswitch_152
    const-string v0, "AMR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15b

    goto :goto_167

    :cond_15b
    const/4 v1, 0x1

    goto :goto_167

    :sswitch_15d
    const-string v0, "AAC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_166

    goto :goto_167

    :cond_166
    const/4 v1, 0x0

    :goto_167
    packed-switch v1, :pswitch_data_1e4

    .line 39
    const-string p0, "external"

    invoke-static {p0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 40
    :pswitch_171
    sget-object p0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object p0

    .line 41
    :pswitch_174
    sget-object p0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object p0

    .line 42
    :pswitch_177
    sget-object p0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object p0

    :sswitch_data_17a
    .sparse-switch
        0xfc23 -> :sswitch_15d
        0xfda6 -> :sswitch_152
        0xfe54 -> :sswitch_147
        0xfeb4 -> :sswitch_13c
        0x10165 -> :sswitch_131
        0x113a4 -> :sswitch_126
        0x11fc1 -> :sswitch_11b
        0x1279a -> :sswitch_110
        0x127af -> :sswitch_102
        0x12a63 -> :sswitch_f4
        0x12a78 -> :sswitch_e6
        0x12af0 -> :sswitch_d8
        0x12af1 -> :sswitch_ca
        0x1316f -> :sswitch_bc
        0x13609 -> :sswitch_ae
        0x14ecc -> :sswitch_a0
        0x1502b -> :sswitch_92
        0x15040 -> :sswitch_84
        0x184374 -> :sswitch_76
        0x20f768 -> :sswitch_68
        0x22d868 -> :sswitch_5a
        0x288dae -> :sswitch_4c
        0x289799 -> :sswitch_3e
        0x28979c -> :sswitch_30
        0x2f02b3e -> :sswitch_22
        0x46235ae -> :sswitch_14
    .end sparse-switch

    :pswitch_data_1e4
    .packed-switch 0x0
        :pswitch_177
        :pswitch_177
        :pswitch_174
        :pswitch_174
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_177
        :pswitch_174
        :pswitch_177
        :pswitch_174
        :pswitch_177
        :pswitch_174
        :pswitch_177
        :pswitch_171
        :pswitch_177
        :pswitch_177
        :pswitch_174
        :pswitch_174
        :pswitch_177
        :pswitch_171
        :pswitch_171
        :pswitch_174
        :pswitch_171
        :pswitch_174
        :pswitch_174
    .end packed-switch
.end method

.method public static getFileInputStream(Landroid/content/Context;Ljava/io/File;)Ljava/io/InputStream;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_12d

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto/16 :goto_12d

    .line 10
    :cond_f
    :try_start_f
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {p0, v1}, Lio/dcloud/common/util/FileUtil;->checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 13
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object p0

    .line 15
    :cond_1f
    invoke-static {v1}, Lio/dcloud/common/util/FileUtil;->getFileNameWithSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-static {p0}, Lio/dcloud/common/util/FileUtil;->needMediaStoreOpenFile(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_123

    .line 17
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 19
    invoke-static {v2}, Lio/dcloud/common/util/FileUtil;->getContentUriForSuffix(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lio/dcloud/common/util/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_12d

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 24
    :cond_42
    invoke-static {v1}, Lio/dcloud/common/util/FileUtil;->getPathForPublicType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12d

    .line 26
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2
    :try_end_50
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_50} :catch_129

    const-string v3, "external"

    sparse-switch v2, :sswitch_data_12e

    goto/16 :goto_110

    :sswitch_57
    :try_start_57
    const-string v2, "Download"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_110

    .line 35
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_12d

    .line 36
    invoke-static {}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lio/dcloud/common/util/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_12d

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 39
    :sswitch_78
    const-string v2, "Music"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_110

    .line 64
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v1}, Lio/dcloud/common/util/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_12d

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 67
    :sswitch_91
    const-string v2, "DCIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_110

    .line 69
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v1}, Lio/dcloud/common/util/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_12d

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 72
    :sswitch_aa
    const-string v2, "Pictures"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_110

    .line 104
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v1}, Lio/dcloud/common/util/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_12d

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 107
    :sswitch_c3
    const-string v2, "Documents"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_110

    .line 146
    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lio/dcloud/common/util/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_12d

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 149
    :sswitch_de
    const-string v2, "Ringtones"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_110

    .line 195
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v1}, Lio/dcloud/common/util/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_12d

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 198
    :sswitch_f7
    const-string v2, "Movies"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_110

    .line 216
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v1}, Lio/dcloud/common/util/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_12d

    .line 218
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 251
    :cond_110
    :goto_110
    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lio/dcloud/common/util/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_12d

    .line 253
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 262
    :cond_123
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_128
    .catch Ljava/io/FileNotFoundException; {:try_start_57 .. :try_end_128} :catch_129

    return-object p0

    :catch_129
    move-exception p0

    .line 265
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_12d
    :goto_12d
    return-object v0

    :sswitch_data_12e
    .sparse-switch
        -0x76476c9d -> :sswitch_f7
        -0x7571a70f -> :sswitch_de
        -0x50508d68 -> :sswitch_c3
        -0x27aa58ab -> :sswitch_aa
        0x1fede3 -> :sswitch_91
        0x473fe05 -> :sswitch_78
        0x58f52ca8 -> :sswitch_57
    .end sparse-switch
.end method

.method public static getFileInputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4

    .line 1
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2
    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_e
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {p0, v0}, Lio/dcloud/common/util/FileUtil;->getFileInputStream(Landroid/content/Context;Ljava/io/File;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static getFileNameForPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 4
    :cond_8
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_18

    add-int/lit8 v0, v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_18
    return-object v1
.end method

.method public static getFileNameWithSuffix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    const-string p0, ""

    return-object p0

    .line 4
    :cond_9
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    const/4 p0, 0x0

    return-object p0

    :cond_14
    add-int/lit8 v0, v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileProviderUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 10

    .line 1
    const-class v0, Landroidx/core/content/FileProvider;

    const/4 v1, 0x0

    .line 3
    :try_start_3
    const-string v2, "getPathStrategy"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    aput-object v2, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_66

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Landroidx/core/content/FileProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$PathStrategy"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 9
    const-string v2, "getFileForUri"

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Landroid/net/Uri;

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 11
    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 12
    instance-of p1, p0, Ljava/io/File;

    if-eqz p1, :cond_66

    .line 13
    check-cast p0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_65} :catch_66

    return-object p0

    :catch_66
    :cond_66
    return-object v1
.end method

.method public static getFileTypeForSuffix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_176

    goto/16 :goto_167

    :sswitch_14
    const-string v0, "MP2TS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto/16 :goto_167

    :cond_1e
    const/16 v1, 0x19

    goto/16 :goto_167

    :sswitch_22
    const-string v0, "3GPP2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    goto/16 :goto_167

    :cond_2c
    const/16 v1, 0x18

    goto/16 :goto_167

    :sswitch_30
    const-string v0, "WEBP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    goto/16 :goto_167

    :cond_3a
    const/16 v1, 0x17

    goto/16 :goto_167

    :sswitch_3e
    const-string v0, "WEBM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_48

    goto/16 :goto_167

    :cond_48
    const/16 v1, 0x16

    goto/16 :goto_167

    :sswitch_4c
    const-string v0, "WBMP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_56

    goto/16 :goto_167

    :cond_56
    const/16 v1, 0x15

    goto/16 :goto_167

    :sswitch_5a
    const-string v0, "JPEG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_64

    goto/16 :goto_167

    :cond_64
    const/16 v1, 0x14

    goto/16 :goto_167

    :sswitch_68
    const-string v0, "FLAC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_72

    goto/16 :goto_167

    :cond_72
    const/16 v1, 0x13

    goto/16 :goto_167

    :sswitch_76
    const-string v0, "3GPP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_80

    goto/16 :goto_167

    :cond_80
    const/16 v1, 0x12

    goto/16 :goto_167

    :sswitch_84
    const-string v0, "WMV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8e

    goto/16 :goto_167

    :cond_8e
    const/16 v1, 0x11

    goto/16 :goto_167

    :sswitch_92
    const-string v0, "WMA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9c

    goto/16 :goto_167

    :cond_9c
    const/16 v1, 0x10

    goto/16 :goto_167

    :sswitch_a0
    const-string v0, "WAV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_aa

    goto/16 :goto_167

    :cond_aa
    const/16 v1, 0xf

    goto/16 :goto_167

    :sswitch_ae
    const-string v0, "PNG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b8

    goto/16 :goto_167

    :cond_b8
    const/16 v1, 0xe

    goto/16 :goto_167

    :sswitch_bc
    const-string v0, "OGG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c6

    goto/16 :goto_167

    :cond_c6
    const/16 v1, 0xd

    goto/16 :goto_167

    :sswitch_ca
    const-string v0, "MP4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d4

    goto/16 :goto_167

    :cond_d4
    const/16 v1, 0xc

    goto/16 :goto_167

    :sswitch_d8
    const-string v0, "MP3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e2

    goto/16 :goto_167

    :cond_e2
    const/16 v1, 0xb

    goto/16 :goto_167

    :sswitch_e6
    const-string v0, "MKV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f0

    goto/16 :goto_167

    :cond_f0
    const/16 v1, 0xa

    goto/16 :goto_167

    :sswitch_f4
    const-string v0, "MKA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fe

    goto/16 :goto_167

    :cond_fe
    const/16 v1, 0x9

    goto/16 :goto_167

    :sswitch_102
    const-string v0, "M4V"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10c

    goto/16 :goto_167

    :cond_10c
    const/16 v1, 0x8

    goto/16 :goto_167

    :sswitch_110
    const-string v0, "M4A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_119

    goto :goto_167

    :cond_119
    const/4 v1, 0x7

    goto :goto_167

    :sswitch_11b
    const-string v0, "JPG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_124

    goto :goto_167

    :cond_124
    const/4 v1, 0x6

    goto :goto_167

    :sswitch_126
    const-string v0, "GIF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12f

    goto :goto_167

    :cond_12f
    const/4 v1, 0x5

    goto :goto_167

    :sswitch_131
    const-string v0, "BMP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13a

    goto :goto_167

    :cond_13a
    const/4 v1, 0x4

    goto :goto_167

    :sswitch_13c
    const-string v0, "AVI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_145

    goto :goto_167

    :cond_145
    const/4 v1, 0x3

    goto :goto_167

    :sswitch_147
    const-string v0, "ASF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_150

    goto :goto_167

    :cond_150
    const/4 v1, 0x2

    goto :goto_167

    :sswitch_152
    const-string v0, "AMR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15b

    goto :goto_167

    :cond_15b
    const/4 v1, 0x1

    goto :goto_167

    :sswitch_15d
    const-string v0, "AAC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_166

    goto :goto_167

    :cond_166
    const/4 v1, 0x0

    :goto_167
    packed-switch v1, :pswitch_data_1e0

    const/4 p0, 0x0

    return-object p0

    .line 36
    :pswitch_16c
    const-string p0, "image/*"

    return-object p0

    .line 37
    :pswitch_16f
    const-string/jumbo p0, "video/*"

    return-object p0

    .line 38
    :pswitch_173
    const-string p0, "audio/*"

    return-object p0

    :sswitch_data_176
    .sparse-switch
        0xfc23 -> :sswitch_15d
        0xfda6 -> :sswitch_152
        0xfe54 -> :sswitch_147
        0xfeb4 -> :sswitch_13c
        0x10165 -> :sswitch_131
        0x113a4 -> :sswitch_126
        0x11fc1 -> :sswitch_11b
        0x1279a -> :sswitch_110
        0x127af -> :sswitch_102
        0x12a63 -> :sswitch_f4
        0x12a78 -> :sswitch_e6
        0x12af0 -> :sswitch_d8
        0x12af1 -> :sswitch_ca
        0x1316f -> :sswitch_bc
        0x13609 -> :sswitch_ae
        0x14ecc -> :sswitch_a0
        0x1502b -> :sswitch_92
        0x15040 -> :sswitch_84
        0x184374 -> :sswitch_76
        0x20f768 -> :sswitch_68
        0x22d868 -> :sswitch_5a
        0x288dae -> :sswitch_4c
        0x289799 -> :sswitch_3e
        0x28979c -> :sswitch_30
        0x2f02b3e -> :sswitch_22
        0x46235ae -> :sswitch_14
    .end sparse-switch

    :pswitch_data_1e0
    .packed-switch 0x0
        :pswitch_173
        :pswitch_173
        :pswitch_16f
        :pswitch_16f
        :pswitch_16c
        :pswitch_16c
        :pswitch_16c
        :pswitch_173
        :pswitch_16f
        :pswitch_173
        :pswitch_16f
        :pswitch_173
        :pswitch_16f
        :pswitch_173
        :pswitch_16c
        :pswitch_173
        :pswitch_173
        :pswitch_16f
        :pswitch_16f
        :pswitch_173
        :pswitch_16c
        :pswitch_16c
        :pswitch_16f
        :pswitch_16c
        :pswitch_16f
        :pswitch_16f
    .end packed-switch
.end method

.method public static getFileUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 9

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string p0, "_id"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const-string v3, "_data=? "

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_40

    .line 6
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    .line 7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_40
    if-eqz p1, :cond_45

    .line 11
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_45
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getImageFileStream(Landroid/content/Context;Ljava/io/File;)Ljava/io/InputStream;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/dcloud/common/util/FileUtil;->getImageFileUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 4
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getImageFileUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .registers 3

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lio/dcloud/common/util/FileUtil;->checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 6
    :cond_f
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lio/dcloud/common/util/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getImageFileUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0, v0}, Lio/dcloud/common/util/FileUtil;->getImageFileUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getPathForPublicType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicDCIMDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    sget-object p0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_b
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicDownloadDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4
    sget-object p0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    return-object p0

    .line 5
    :cond_16
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicMoviesDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 6
    sget-object p0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    return-object p0

    .line 7
    :cond_21
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicMusicDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 8
    sget-object p0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    return-object p0

    .line 9
    :cond_2c
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicPicturesDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 10
    sget-object p0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    return-object p0

    .line 11
    :cond_37
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicDocumentsDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 12
    sget-object p0, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    return-object p0

    .line 13
    :cond_42
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicRingtonesDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4d

    .line 14
    sget-object p0, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    return-object p0

    :cond_4d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 2
    :cond_4
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 4
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 6
    const-string v2, "com.android.externalstorage.documents"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, ":"

    const/4 v5, 0x1

    if-eqz v2, :cond_52

    .line 8
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 10
    aget-object p1, p0, v3

    .line 11
    const-string v0, "primary"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "/"

    if-eqz v0, :cond_41

    .line 12
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aget-object p0, p0, v5

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 15
    :cond_41
    const-string v0, "/storage/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aget-object p0, p0, v5

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 18
    :cond_52
    const-string v2, "com.android.providers.downloads.documents"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 20
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 21
    const-string v0, "raw:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 22
    const-string p0, ""

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 25
    :cond_6d
    const-string v0, "content://downloads/public_downloads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 26
    invoke-static {p0, p1}, Lio/dcloud/common/util/FileUtil;->queryAbsolutePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 28
    :cond_80
    const-string v2, "com.android.providers.media.documents"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 30
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 32
    aget-object v1, p1, v3

    .line 34
    const-string v2, "image"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 35
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_b3

    .line 36
    :cond_9d
    const-string/jumbo v2, "video"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 37
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_b3

    .line 38
    :cond_a9
    const-string v2, "audio"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 39
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 43
    :goto_b3
    aget-object p1, p1, v5

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 44
    invoke-static {p0, p1}, Lio/dcloud/common/util/FileUtil;->queryAbsolutePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c2
    return-object v0

    .line 49
    :cond_c3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 51
    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 53
    invoke-static {p0, p1}, Lio/dcloud/common/util/FileUtil;->queryAbsolutePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 54
    :cond_d4
    const-string p0, "file"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e1

    .line 56
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e1
    return-object v0
.end method

.method public static getShareImageUri(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Landroid/content/Intent;)Lio/dcloud/common/util/DCFileUriData;
    .registers 9

    .line 1
    new-instance v0, Lio/dcloud/common/util/DCFileUriData;

    invoke-direct {v0}, Lio/dcloud/common/util/DCFileUriData;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 3
    iput-object v1, v0, Lio/dcloud/common/util/DCFileUriData;->filePath:Ljava/lang/String;

    .line 4
    invoke-static {v1}, Lio/dcloud/common/util/FileUtil;->isExternalPublicDir(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ".dc.fileprovider"

    if-nez v2, :cond_83

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v2, v4, :cond_83

    invoke-static {v1}, Lio/dcloud/common/util/FileUtil;->getPathForPublicType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_83

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lio/dcloud/common/util/FileUtil;->getFileNameWithSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5f

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 12
    :cond_5f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    .line 13
    iput-object p0, v0, Lio/dcloud/common/util/DCFileUriData;->fileUri:Landroid/net/Uri;

    const/4 p0, 0x1

    .line 14
    iput-boolean p0, v0, Lio/dcloud/common/util/DCFileUriData;->isReplace:Z

    .line 15
    iput-object p1, v0, Lio/dcloud/common/util/DCFileUriData;->fileReplacePath:Ljava/lang/String;

    if-eqz p3, :cond_82

    .line 17
    invoke-virtual {p3, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_82
    return-object v0

    .line 19
    :cond_83
    invoke-static {v1}, Lio/dcloud/common/util/FileUtil;->isExternalPublicDir(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b0

    .line 20
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    .line 21
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_96

    .line 22
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 24
    :cond_96
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    .line 25
    iput-object p0, v0, Lio/dcloud/common/util/DCFileUriData;->fileUri:Landroid/net/Uri;

    return-object v0

    .line 27
    :cond_b0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    .line 28
    iput-object p0, v0, Lio/dcloud/common/util/DCFileUriData;->fileUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static getVideoFileUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lio/dcloud/common/util/FileUtil;->checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 5
    :cond_10
    sget-object p1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lio/dcloud/common/util/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static isAssetFile(Ljava/lang/String;)Z
    .registers 3

    .line 1
    const-string v0, "apps/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 3
    :cond_a
    const-string v0, "/android_asset/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "android_asset/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    return p0

    :cond_1d
    :goto_1d
    return v1
.end method

.method private static isExternalPublicDir(Ljava/lang/String;)Z
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sPrivateExternalDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/file/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseFsRootPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_22

    goto :goto_24

    :cond_22
    const/4 p0, 0x0

    return p0

    :cond_24
    :goto_24
    const/4 p0, 0x1

    return p0
.end method

.method public static isFilePathForPublic(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 2
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 3
    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_14
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 7
    invoke-static {p0}, Lio/dcloud/common/util/FileUtil;->needMediaStoreOpenFile(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_27

    return v2

    .line 10
    :cond_27
    invoke-static {p1}, Lio/dcloud/common/util/FileUtil;->getFileNameWithSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 12
    invoke-static {p1}, Lio/dcloud/common/util/FileUtil;->getContentUriForSuffix(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 13
    invoke-static {p0, v0, p1}, Lio/dcloud/common/util/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_3c

    return v2

    :cond_3c
    const/4 p0, 0x0

    return p0
.end method

.method public static needMediaStoreOpenFile(Landroid/content/Context;)Z
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge p0, v1, :cond_12

    :cond_e
    const/16 p0, 0x1e

    if-lt v0, p0, :cond_14

    :cond_12
    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private static queryAbsolutePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 10

    .line 1
    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    .line 4
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_33
    .catchall {:try_start_7 .. :try_end_13} :catchall_30

    if-eqz p0, :cond_2d

    .line 5
    :try_start_15
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 6
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 7
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_26} :catch_2a
    .catchall {:try_start_15 .. :try_end_26} :catchall_3f

    .line 15
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catch_2a
    move-exception v0

    move-object p1, v0

    goto :goto_36

    :cond_2d
    if-eqz p0, :cond_3e

    goto :goto_3b

    :catchall_30
    move-exception v0

    move-object p1, v0

    goto :goto_42

    :catch_33
    move-exception v0

    move-object p1, v0

    move-object p0, v7

    .line 17
    :goto_36
    :try_start_36
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3f

    if-eqz p0, :cond_3e

    .line 16
    :goto_3b
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3e
    return-object v7

    :catchall_3f
    move-exception v0

    move-object p1, v0

    move-object v7, p0

    :goto_42
    if-eqz v7, :cond_47

    .line 20
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 22
    :cond_47
    throw p1
.end method

.method public static readData4Disk(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2e

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 4
    :try_start_9
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_2a
    .catchall {:try_start_9 .. :try_end_17} :catchall_25

    .line 5
    :try_start_17
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    .line 6
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_2b
    .catchall {:try_start_17 .. :try_end_1e} :catchall_22

    .line 11
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    return-object p0

    :catchall_22
    move-exception p0

    move-object v0, v1

    goto :goto_26

    :catchall_25
    move-exception p0

    .line 12
    :goto_26
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 13
    throw p0

    :catch_2a
    move-object v1, v0

    .line 14
    :catch_2b
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    :cond_2e
    return-object v0
.end method

.method public static saveData2Disk(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_3d

    if-eqz p1, :cond_3d

    .line 1
    instance-of v0, p1, Ljava/io/Serializable;

    if-eqz v0, :cond_3d

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    const/4 v0, 0x0

    .line 4
    :try_start_f
    invoke-virtual {p0, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1c

    .line 6
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 8
    :cond_1c
    new-instance p2, Ljava/io/ObjectOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_26} :catch_3a
    .catchall {:try_start_f .. :try_end_26} :catchall_35

    .line 9
    :try_start_26
    invoke-virtual {p2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2c} :catch_33
    .catchall {:try_start_26 .. :try_end_2c} :catchall_30

    .line 14
    invoke-static {p2}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    return-void

    :catchall_30
    move-exception p0

    move-object v0, p2

    goto :goto_36

    :catch_33
    move-object v0, p2

    goto :goto_3a

    :catchall_35
    move-exception p0

    .line 15
    :goto_36
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    .line 16
    throw p0

    .line 17
    :catch_3a
    :goto_3a
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    :cond_3d
    return-void
.end method

.method public static writeStream2File(Ljava/io/InputStream;Ljava/io/File;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3a

    .line 1
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_27
    .catchall {:try_start_3 .. :try_end_8} :catchall_25

    const/16 p1, 0x400

    .line 2
    :try_start_a
    new-array p1, p1, [B

    .line 4
    :goto_c
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_18

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, p1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_c

    .line 7
    :cond_18
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1e} :catch_22
    .catchall {:try_start_a .. :try_end_1e} :catchall_20

    move-object v0, v1

    goto :goto_3a

    :catchall_20
    move-exception p1

    goto :goto_33

    :catch_22
    move-exception p1

    move-object v0, v1

    goto :goto_28

    :catchall_25
    move-exception p1

    goto :goto_32

    :catch_27
    move-exception p1

    .line 11
    :goto_28
    :try_start_28
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_25

    .line 14
    invoke-static {p0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 15
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    return-void

    :goto_32
    move-object v1, v0

    .line 16
    :goto_33
    invoke-static {p0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 17
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    .line 18
    throw p1

    .line 19
    :cond_3a
    :goto_3a
    invoke-static {p0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 20
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    return-void
.end method
