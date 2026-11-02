###### Class io.dcloud.p.b2 (io.dcloud.p.b2)
.class public Lio/dcloud/p/b2;
.super Lio/dcloud/p/e2;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Lio/dcloud/p/e2;-><init>(Landroid/net/Uri;)V

    .line 2
    iput-object p1, p0, Lio/dcloud/p/b2;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lio/dcloud/p/e2;->a()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 6
    :cond_8
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    return-object v1

    :cond_13
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 14
    :try_start_18
    iget-object v2, p0, Lio/dcloud/p/b2;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15
    iget-boolean v2, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v2, :cond_2b

    .line 16
    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 18
    :cond_2b
    invoke-static {v0, p1}, Lio/dcloud/p/z;->a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2f} :catch_30

    return-object p1

    :catch_30
    return-object v1
.end method
