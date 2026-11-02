###### Class io.dcloud.p.h0 (io.dcloud.p.h0)
.class public abstract Lio/dcloud/p/h0;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/p/h0$c;,
        Lio/dcloud/p/h0$b;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;FF)F
    .registers 4

    .line 192
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return p2

    .line 195
    :cond_9
    invoke-static {p0, p1, p2}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FF)F

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Landroid/graphics/Bitmap;ZI)J
    .registers 12

    .line 144
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_22

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v1, v4, v6

    if-gez v1, :cond_1b

    .line 148
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2d

    :cond_1b
    if-eqz p2, :cond_21

    .line 150
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2d

    :cond_21
    return-wide v2

    .line 155
    :cond_22
    invoke-static {p0}, Lio/dcloud/p/h0;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2d

    .line 156
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    :cond_2d
    :goto_2d
    :try_start_2d
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 161
    invoke-static {p0}, Lio/dcloud/p/h0;->c(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p0

    invoke-virtual {p1, p0, p3, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 162
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 163
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 164
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_48

    .line 165
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_48} :catch_52
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_48} :catch_4d

    .line 176
    :cond_48
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide p0

    return-wide p0

    :catch_4d
    move-exception p0

    .line 177
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-wide v2

    :catch_52
    move-exception p0

    .line 178
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-wide v2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 4

    .line 133
    invoke-static {p0, p1}, Lio/dcloud/common/util/FileUtil;->checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 134
    invoke-static {p0, p1}, Lio/dcloud/common/util/FileUtil;->getFileInputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_14

    .line 136
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 137
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_14
    return-object p1

    .line 140
    :cond_15
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 143
    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public static a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10

    .line 141
    invoke-static {p3, p2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    sget v3, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public static declared-synchronized a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;)V
    .registers 29

    move-object/from16 v1, p0

    const-string v0, "\u5f00\u59cb\u4fdd\u5b58\u56fe\u7247"

    const-string v2, "\u88c1\u526a\u5b8c\u6bd5"

    const-string v3, "\u65cb\u8f6c\u5b8c\u6bd5"

    const-string v4, "\u83b7\u53d6bitmap \u5185\u5b58\u6ea2\u51fa\u7b2c\u4e00\u6b21 \u7b2c\u4e8c\u6b21\u83b7\u53d6bitmmap  bitmap\u8def\u5f84"

    const-string v5, "\u7f29\u653e\u5b8c\u6bd5"

    const-string v6, "\u83b7\u53d6bitmap \u5185\u5b58\u6ea2\u51fa\u7b2c\u4e00\u6b21  bitmap\u8def\u5f84"

    const-string v7, "\u6587\u4ef6\u83b7\u53d6\u5b8c\u6bd5 \u521d\u59cb\u5316bitmap \u83b7\u53d6\u6587\u4ef6\u5927\u5c0f"

    const-class v8, Lio/dcloud/p/h0;

    monitor-enter v8

    const/4 v9, 0x0

    .line 1
    :try_start_14
    aget-object v10, p1, v9

    const/4 v11, 0x1

    .line 2
    aget-object v12, p1, v11
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_21b

    .line 5
    :try_start_19
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_1e} :catch_20e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_21b

    .line 13
    :try_start_1e
    new-instance v10, Lio/dcloud/p/h0$c;

    invoke-direct {v10}, Lio/dcloud/p/h0$c;-><init>()V

    .line 14
    invoke-virtual {v10, v14, v1, v12}, Lio/dcloud/p/h0$c;->a(Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2b

    goto/16 :goto_20c

    .line 20
    :cond_2b
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 21
    iput-boolean v9, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 23
    iget v15, v10, Lio/dcloud/p/h0$c;->e:I

    if-gez v15, :cond_3a

    const/16 v15, 0x32

    .line 24
    iput v15, v10, Lio/dcloud/p/h0$c;->e:I

    :cond_3a
    move-object/from16 p1, v12

    .line 26
    iget-wide v11, v10, Lio/dcloud/p/h0$c;->m:J

    const-wide/32 v16, 0x16e360

    const/16 v18, 0x0

    const/4 v9, 0x2

    cmp-long v19, v11, v16

    if-lez v19, :cond_4b

    .line 27
    iput v9, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_4e

    :cond_4b
    const/4 v15, 0x1

    .line 29
    iput v15, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 31
    :goto_4e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v12, v14

    iget-wide v13, v10, Lio/dcloud/p/h0$c;->m:J

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v13, "CompressImage"

    invoke-static {v13, v11}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_1e .. :try_end_62} :catchall_21b

    const/4 v11, 0x0

    .line 34
    :try_start_63
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v13

    iget-object v14, v10, Lio/dcloud/p/h0$c;->a:Ljava/lang/String;

    invoke-static {v13, v14, v12}, Lio/dcloud/p/h0;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_6d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_63 .. :try_end_6d} :catch_70
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_6d} :catch_6e
    .catchall {:try_start_63 .. :try_end_6d} :catchall_21b

    goto :goto_a6

    :catch_6e
    nop

    goto :goto_a9

    .line 36
    :catch_70
    :try_start_70
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v10, Lio/dcloud/p/h0$c;->a:Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v13, "CompressImage"

    invoke-static {v13, v6}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget v6, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v6, v6, 0x2

    iput v6, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 38
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v10, Lio/dcloud/p/h0$c;->a:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "CompressImage"

    invoke-static {v6, v4}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9c
    .catchall {:try_start_70 .. :try_end_9c} :catchall_21b

    .line 40
    :try_start_9c
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, v10, Lio/dcloud/p/h0$c;->a:Ljava/lang/String;

    invoke-static {v4, v6, v12}, Lio/dcloud/p/h0;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_a6} :catch_6e
    .catchall {:try_start_9c .. :try_end_a6} :catchall_21b

    :goto_a6
    move-object/from16 v19, v4

    goto :goto_ab

    :goto_a9
    move-object/from16 v19, v11

    :goto_ab
    if-nez v19, :cond_b7

    .line 47
    :try_start_ad
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_PARAMETER_ERROR:Ljava/lang/String;

    move-object/from16 v4, p1

    const/4 v7, -0x1

    invoke-static {v1, v4, v0, v7}, Lio/dcloud/p/h0;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_b5
    .catchall {:try_start_ad .. :try_end_b5} :catchall_21b

    monitor-exit v8

    return-void

    :cond_b7
    move-object/from16 v4, p1

    .line 52
    :try_start_b9
    iget-boolean v6, v10, Lio/dcloud/p/h0$c;->l:Z

    if-eqz v6, :cond_f9

    iget v6, v10, Lio/dcloud/p/h0$c;->f:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_f9

    iget v6, v10, Lio/dcloud/p/h0$c;->g:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_f9

    .line 53
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 54
    iget v7, v10, Lio/dcloud/p/h0$c;->f:F

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v7, v13

    .line 55
    iget v13, v10, Lio/dcloud/p/h0$c;->g:F

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    .line 56
    invoke-virtual {v6, v7, v13}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 57
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    .line 58
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    const/16 v21, 0x0

    const/16 v25, 0x0

    const/16 v20, 0x0

    move-object/from16 v24, v6

    .line 59
    invoke-static/range {v19 .. v25}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v20, v6

    goto :goto_fb

    :cond_f9
    move-object/from16 v20, v19

    .line 64
    :goto_fb
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v10, Lio/dcloud/p/h0$c;->a:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CompressImage"

    invoke-static {v6, v5}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget v5, v10, Lio/dcloud/p/h0$c;->h:I

    if-lez v5, :cond_11d

    .line 68
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 69
    iget v5, v10, Lio/dcloud/p/h0$c;->h:I

    int-to-float v5, v5

    invoke-virtual {v11, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_11d
    move-object/from16 v25, v11

    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v10, Lio/dcloud/p/h0$c;->a:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "CompressImage"

    invoke-static {v5, v3}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v3, v10, Lio/dcloud/p/h0$c;->k:Lio/dcloud/p/h0$b;

    if-eqz v3, :cond_15f

    .line 74
    iget v5, v3, Lio/dcloud/p/h0$b;->a:F

    iget v6, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 75
    iget v7, v3, Lio/dcloud/p/h0$b;->b:F

    div-float/2addr v7, v6

    float-to-int v7, v7

    .line 76
    iget v11, v3, Lio/dcloud/p/h0$b;->c:F

    div-float/2addr v11, v6

    float-to-int v11, v11

    .line 77
    iget v3, v3, Lio/dcloud/p/h0$b;->d:F

    div-float/2addr v3, v6

    float-to-int v3, v3

    const/16 v26, 0x0

    move/from16 v24, v3

    move/from16 v22, v5

    move/from16 v21, v7

    move/from16 v23, v11

    .line 80
    invoke-static/range {v20 .. v26}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v6, v20

    if-eq v3, v6, :cond_17c

    .line 83
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_17c

    :cond_15f
    move-object/from16 v6, v20

    if-eqz v25, :cond_180

    .line 87
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    .line 88
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    const/16 v22, 0x0

    const/16 v26, 0x0

    const/16 v21, 0x0

    move-object/from16 v20, v6

    .line 89
    invoke-static/range {v20 .. v26}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eq v3, v6, :cond_17c

    .line 92
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_17c
    :goto_17c
    move-object/from16 v20, v3

    move-object/from16 v6, v20

    .line 95
    :cond_180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v10, Lio/dcloud/p/h0$c;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CompressImage"

    invoke-static {v3, v2}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 98
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 99
    iget-object v5, v10, Lio/dcloud/p/h0$c;->b:Ljava/lang/String;

    iget-boolean v7, v10, Lio/dcloud/p/h0$c;->d:Z

    iget v11, v10, Lio/dcloud/p/h0$c;->e:I

    invoke-static {v5, v6, v7, v11}, Lio/dcloud/p/h0;->a(Ljava/lang/String;Landroid/graphics/Bitmap;ZI)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v5, v11, v13

    if-lez v5, :cond_1ec

    .line 101
    iget-object v5, v10, Lio/dcloud/p/h0$c;->a:Ljava/lang/String;

    iget-object v6, v10, Lio/dcloud/p/h0$c;->b:Ljava/lang/String;

    invoke-static {v5, v6}, Lio/dcloud/p/h0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v10, Lio/dcloud/p/h0$c;->a:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "CompressImage"

    invoke-static {v5, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v5, v10, Lio/dcloud/p/h0$c;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v18

    const/4 v15, 0x1

    aput-object v2, v7, v15

    aput-object v3, v7, v9

    const/4 v2, 0x3

    aput-object v6, v7, v2

    const-string v2, "{path:\'file://%s\', w:%d, h:%d, size:%d}"

    invoke-static {v0, v2, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v1, v4, v0}, Lio/dcloud/p/h0;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_203

    .line 106
    :cond_1ec
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1f5

    .line 107
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 109
    :cond_1f5
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lio/dcloud/base/R$string;->dcloud_common_zip_image_output_failed:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x5

    invoke-static {v1, v4, v0, v2}, Lio/dcloud/p/h0;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    :goto_203
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_20c

    .line 112
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_20c
    .catchall {:try_start_b9 .. :try_end_20c} :catchall_21b

    :cond_20c
    :goto_20c
    monitor-exit v8

    return-void

    :catch_20e
    move-exception v0

    move-object v4, v12

    .line 113
    :try_start_210
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_PARAMETER_ERROR:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-static {v1, v4, v0, v7}, Lio/dcloud/p/h0;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_219
    .catchall {:try_start_210 .. :try_end_219} :catchall_21b

    monitor-exit v8

    return-void

    :catchall_21b
    move-exception v0

    :try_start_21c
    monitor-exit v8
    :try_end_21d
    .catchall {:try_start_21c .. :try_end_21d} :catchall_21b

    throw v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 115
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 116
    new-instance p0, Landroid/media/ExifInterface;

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 117
    const-class p1, Landroid/media/ExifInterface;

    .line 118
    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 119
    array-length v2, v1

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_3e

    aget-object v4, v1, v3

    .line 120
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 121
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3b

    const-string v6, "TAG"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 122
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3b

    .line 124
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-virtual {v0, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3b

    .line 127
    invoke-virtual {p0, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 132
    :cond_3e
    invoke-virtual {p0}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_41
    .catchall {:try_start_0 .. :try_end_41} :catchall_41

    :catch_41
    :catchall_41
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 4

    .line 179
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 182
    :cond_8
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_28

    if-nez v0, :cond_14

    goto :goto_28

    .line 188
    :cond_14
    :try_start_14
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 189
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_26

    .line 191
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_26} :catch_28

    :cond_26
    const/4 p0, 0x1

    return p0

    :catch_28
    :cond_28
    :goto_28
    return v1
.end method

.method public static b(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/p/h0$a;

    invoke-direct {v1, p0, p1}, Lio/dcloud/p/h0$a;-><init>(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 2
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_19

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_19

    const-wide/16 v3, 0x5

    cmp-long p0, v1, v3

    if-gez p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x1

    return p0

    :catch_19
    :cond_19
    :goto_19
    return v0
.end method

.method public static c(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .registers 2

    .line 1
    const-string v0, ".jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, ".jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_14

    .line 4
    :cond_11
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0

    .line 5
    :cond_14
    :goto_14
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0
.end method

###### Class io.dcloud.p.h0.a (io.dcloud.p.h0$a)
.class Lio/dcloud/p/h0$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/p/h0;->b(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic b:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/p/h0$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p2, p0, Lio/dcloud/p/h0$a;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/p/h0$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/p/h0$a;->b:[Ljava/lang/String;

    invoke-static {v0, v1}, Lio/dcloud/p/h0;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.p.h0.b (io.dcloud.p.h0$b)
.class Lio/dcloud/p/h0$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field e:F

.field f:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p5, p0, Lio/dcloud/p/h0$b;->e:F

    .line 3
    iput p6, p0, Lio/dcloud/p/h0$b;->f:F

    const/4 p5, 0x0

    .line 4
    invoke-static {p1, p6, p5}, Lio/dcloud/p/h0;->a(Ljava/lang/String;FF)F

    move-result p1

    iput p1, p0, Lio/dcloud/p/h0$b;->a:F

    .line 5
    iget p1, p0, Lio/dcloud/p/h0$b;->e:F

    invoke-static {p2, p1, p5}, Lio/dcloud/p/h0;->a(Ljava/lang/String;FF)F

    move-result p1

    iput p1, p0, Lio/dcloud/p/h0$b;->b:F

    .line 6
    iget p2, p0, Lio/dcloud/p/h0$b;->e:F

    sub-float p1, p2, p1

    invoke-static {p3, p2, p1}, Lio/dcloud/p/h0;->a(Ljava/lang/String;FF)F

    move-result p1

    iput p1, p0, Lio/dcloud/p/h0$b;->c:F

    .line 7
    iget p1, p0, Lio/dcloud/p/h0$b;->f:F

    iget p2, p0, Lio/dcloud/p/h0$b;->a:F

    sub-float p2, p1, p2

    invoke-static {p4, p1, p2}, Lio/dcloud/p/h0;->a(Ljava/lang/String;FF)F

    move-result p1

    iput p1, p0, Lio/dcloud/p/h0$b;->d:F

    .line 8
    iget p2, p0, Lio/dcloud/p/h0$b;->c:F

    iget p3, p0, Lio/dcloud/p/h0$b;->b:F

    add-float/2addr p2, p3

    iget p4, p0, Lio/dcloud/p/h0$b;->e:F

    cmpl-float p2, p2, p4

    if-lez p2, :cond_3a

    sub-float/2addr p4, p3

    .line 9
    iput p4, p0, Lio/dcloud/p/h0$b;->c:F

    .line 11
    :cond_3a
    iget p2, p0, Lio/dcloud/p/h0$b;->a:F

    add-float/2addr p1, p2

    iget p3, p0, Lio/dcloud/p/h0$b;->f:F

    cmpl-float p1, p1, p3

    if-lez p1, :cond_46

    sub-float/2addr p3, p2

    .line 12
    iput p3, p0, Lio/dcloud/p/h0$b;->d:F

    :cond_46
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 3

    .line 1
    iget v0, p0, Lio/dcloud/p/h0$b;->a:F

    iget v1, p0, Lio/dcloud/p/h0$b;->f:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_13

    iget v0, p0, Lio/dcloud/p/h0$b;->b:F

    iget v1, p0, Lio/dcloud/p/h0$b;->e:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x1

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x0

    return v0
.end method

###### Class io.dcloud.p.h0.c (io.dcloud.p.h0$c)
.class Lio/dcloud/p/h0$c;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Z

.field e:I

.field f:F

.field g:F

.field h:I

.field i:I

.field j:I

.field k:Lio/dcloud/p/h0$b;

.field l:Z

.field m:J


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lio/dcloud/p/h0$c;->l:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 28
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 30
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 32
    :try_start_8
    iget-object v2, p0, Lio/dcloud/p/h0$c;->a:Ljava/lang/String;

    invoke-static {p1, v2, v0}, Lio/dcloud/p/h0;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    :goto_12
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput p1, p0, Lio/dcloud/p/h0$c;->i:I

    .line 38
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Lio/dcloud/p/h0$c;->j:I

    if-lez v0, :cond_97

    if-gtz p1, :cond_20

    goto/16 :goto_97

    .line 44
    :cond_20
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lio/dcloud/p/h0$c;->a:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lio/dcloud/p/h0$c;->m:J

    .line 47
    const-string p1, "auto"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual {p3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lio/dcloud/p/h0$c;->l:Z

    .line 49
    iget p1, p0, Lio/dcloud/p/h0$c;->i:I

    int-to-float p1, p1

    iput p1, p0, Lio/dcloud/p/h0$c;->f:F

    .line 50
    iget p1, p0, Lio/dcloud/p/h0$c;->j:I

    int-to-float p1, p1

    iput p1, p0, Lio/dcloud/p/h0$c;->g:F

    goto :goto_97

    .line 51
    :cond_49
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 52
    iput-boolean v1, p0, Lio/dcloud/p/h0$c;->l:Z

    .line 53
    iget p1, p0, Lio/dcloud/p/h0$c;->j:I

    int-to-float p1, p1

    invoke-static {p3, p1, p1}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FF)F

    move-result p1

    iput p1, p0, Lio/dcloud/p/h0$c;->g:F

    .line 54
    iget p2, p0, Lio/dcloud/p/h0$c;->i:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    iget p1, p0, Lio/dcloud/p/h0$c;->j:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    iput p2, p0, Lio/dcloud/p/h0$c;->f:F

    goto :goto_97

    .line 55
    :cond_66
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_83

    .line 56
    iput-boolean v1, p0, Lio/dcloud/p/h0$c;->l:Z

    .line 57
    iget p1, p0, Lio/dcloud/p/h0$c;->i:I

    int-to-float p1, p1

    invoke-static {p2, p1, p1}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FF)F

    move-result p1

    iput p1, p0, Lio/dcloud/p/h0$c;->f:F

    .line 58
    iget p2, p0, Lio/dcloud/p/h0$c;->j:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    iget p1, p0, Lio/dcloud/p/h0$c;->i:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    iput p2, p0, Lio/dcloud/p/h0$c;->g:F

    goto :goto_97

    .line 60
    :cond_83
    iput-boolean v1, p0, Lio/dcloud/p/h0$c;->l:Z

    .line 61
    iget p1, p0, Lio/dcloud/p/h0$c;->i:I

    int-to-float p1, p1

    invoke-static {p2, p1, p1}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FF)F

    move-result p1

    iput p1, p0, Lio/dcloud/p/h0$c;->f:F

    .line 62
    iget p1, p0, Lio/dcloud/p/h0$c;->j:I

    int-to-float p1, p1

    invoke-static {p3, p1, p1}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FF)F

    move-result p1

    iput p1, p0, Lio/dcloud/p/h0$c;->g:F

    :cond_97
    :goto_97
    return-void
.end method

.method public a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Z
    .registers 7

    .line 19
    iget-object v0, p0, Lio/dcloud/p/h0$c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_48

    iget-object v0, p0, Lio/dcloud/p/h0$c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 20
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/p/h0$c;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/p/h0$c;->a:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Lio/dcloud/p/h0;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 22
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_FILE_NOT_EXIST:Ljava/lang/String;

    const/4 v2, -0x4

    invoke-static {p1, p2, v0, v2}, Lio/dcloud/p/h0;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;I)V

    return v1

    .line 25
    :cond_32
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p2

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p2

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/p/h0$c;->b:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/p/h0$c;->b:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    .line 27
    :cond_48
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_PARAMETER_ERROR:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {p1, p2, v0, v2}, Lio/dcloud/p/h0;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;I)V

    return v1
.end method

.method public a(Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Z
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    const-string v4, "src"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lio/dcloud/p/h0$c;->a:Ljava/lang/String;

    .line 2
    const-string v4, "dst"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lio/dcloud/p/h0$c;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v2, v3}, Lio/dcloud/p/h0$c;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_20

    return v5

    .line 6
    :cond_20
    const-string v4, "overwrite"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lio/dcloud/p/h0$c;->d:Z

    .line 7
    const-string v4, "format"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lio/dcloud/p/h0$c;->c:Ljava/lang/String;

    .line 8
    const-string v4, "quality"

    const/4 v6, -0x1

    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lio/dcloud/p/h0$c;->e:I

    .line 9
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v7, "width"

    const-string v8, "auto"

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "height"

    invoke-virtual {v1, v10, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v4, v9, v8}, Lio/dcloud/p/h0$c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string v4, "rotate"

    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lio/dcloud/p/h0$c;->h:I

    .line 12
    const-string v4, "clip"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_8d

    .line 14
    new-instance v11, Lio/dcloud/p/h0$b;

    const-string v4, "top"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v4, "left"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 15
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget v1, v0, Lio/dcloud/p/h0$c;->f:F

    iget v4, v0, Lio/dcloud/p/h0$c;->g:F

    move/from16 v16, v1

    move/from16 v17, v4

    invoke-direct/range {v11 .. v17}, Lio/dcloud/p/h0$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    iput-object v11, v0, Lio/dcloud/p/h0$c;->k:Lio/dcloud/p/h0$b;

    .line 17
    invoke-virtual {v11}, Lio/dcloud/p/h0$b;->a()Z

    move-result v1

    if-nez v1, :cond_8d

    .line 18
    sget-object v1, Lio/dcloud/common/constant/DOMException;->MSG_PARAMETER_ERROR:Ljava/lang/String;

    invoke-static {v2, v3, v1, v6}, Lio/dcloud/p/h0;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;I)V

    return v5

    :cond_8d
    const/4 v1, 0x1

    return v1
.end method
