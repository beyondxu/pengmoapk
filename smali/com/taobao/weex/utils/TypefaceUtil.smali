###### Class com.taobao.weex.utils.TypefaceUtil (com.taobao.weex.utils.TypefaceUtil)
.class public Lcom/taobao/weex/utils/TypefaceUtil;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# static fields
.field public static final ACTION_TYPE_FACE_AVAILABLE:Ljava/lang/String; = "type_face_available"

.field public static final FONT_CACHE_DIR_NAME:Ljava/lang/String; = "font-family"

.field private static final TAG:Ljava/lang/String; = "TypefaceUtil"

.field private static final sCacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/utils/FontDO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/weex/utils/TypefaceUtil;->sCacheMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/taobao/weex/utils/TypefaceUtil;->loadLocalFontFile(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .registers 1

    .line 1
    sget-object v0, Lcom/taobao/weex/utils/TypefaceUtil;->sCacheMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(ZLcom/taobao/weex/utils/FontDO;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/TypefaceUtil;->notifyFontAvailable(ZLcom/taobao/weex/utils/FontDO;)V

    return-void
.end method

.method public static applyFontStyle(Landroid/graphics/Paint;IILjava/lang/String;)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v2, 0x0

    goto :goto_d

    .line 5
    :cond_9
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    :goto_d
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq p2, v4, :cond_19

    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_18

    if-ne p2, v3, :cond_18

    goto :goto_19

    :cond_18
    const/4 v4, 0x0

    :cond_19
    :goto_19
    const/4 p2, 0x2

    if-eq p1, p2, :cond_21

    and-int/2addr v2, p2

    if-eqz v2, :cond_23

    if-ne p1, v3, :cond_23

    :cond_21
    or-int/lit8 v4, v4, 0x2

    :cond_23
    if-eqz p3, :cond_29

    .line 20
    invoke-static {p3, v4}, Lcom/taobao/weex/utils/TypefaceUtil;->getOrCreateTypeface(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    :cond_29
    if-eqz v0, :cond_33

    .line 24
    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_3a

    .line 26
    :cond_33
    invoke-static {v4}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_3a
    if-ltz p1, :cond_57

    .line 30
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p3

    if-eqz p3, :cond_4a

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    :cond_4a
    not-int p3, v1

    and-int/2addr p1, p3

    and-int/2addr p1, p2

    if-eqz p1, :cond_53

    const p1, -0x41b33333    # -0.2f

    goto :goto_54

    :cond_53
    const/4 p1, 0x0

    .line 32
    :goto_54
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSkewX(F)V

    :cond_57
    return-void
.end method

.method private static downloadFontByNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getIWXHttpAdapter()Lcom/taobao/weex/adapter/IWXHttpAdapter;

    move-result-object v0

    if-nez v0, :cond_12

    .line 3
    const-string p0, "TypefaceUtil"

    const-string p1, "downloadFontByNetwork() IWXHttpAdapter == null"

    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_12
    new-instance v1, Lcom/taobao/weex/common/WXRequest;

    invoke-direct {v1}, Lcom/taobao/weex/common/WXRequest;-><init>()V

    .line 7
    iput-object p0, v1, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    .line 8
    const-string v2, "GET"

    iput-object v2, v1, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    .line 9
    new-instance v2, Lcom/taobao/weex/utils/TypefaceUtil$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/taobao/weex/utils/TypefaceUtil$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/taobao/weex/adapter/IWXHttpAdapter;->sendRequest(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V

    return-void
.end method

.method private static getFontCacheDir()Ljava/lang/String;
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/font-family"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFontDO(Ljava/lang/String;)Lcom/taobao/weex/utils/FontDO;
    .registers 2

    .line 1
    sget-object v0, Lcom/taobao/weex/utils/TypefaceUtil;->sCacheMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/utils/FontDO;

    return-object p0
.end method

.method public static getOrCreateTypeface(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .registers 4

    .line 1
    sget-object v0, Lcom/taobao/weex/utils/TypefaceUtil;->sCacheMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/utils/FontDO;

    if-eqz v0, :cond_15

    .line 2
    invoke-virtual {v0}, Lcom/taobao/weex/utils/FontDO;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 3
    invoke-virtual {v0}, Lcom/taobao/weex/utils/FontDO;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 6
    :cond_15
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method private static loadFromAsset(Lcom/taobao/weex/utils/FontDO;Ljava/lang/String;)V
    .registers 5

    .line 1
    const-string v0, "TypefaceUtil"

    .line 0
    const-string v1, "Font asset file not found "

    .line 1
    :try_start_4
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 3
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 4
    const-string v1, "load asset file success"

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    const/4 v1, 0x2

    .line 6
    invoke-virtual {p0, v1}, Lcom/taobao/weex/utils/FontDO;->setState(I)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/taobao/weex/utils/FontDO;->setTypeface(Landroid/graphics/Typeface;)V

    return-void

    .line 9
    :cond_25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/taobao/weex/utils/FontDO;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_38} :catch_39

    return-void

    :catch_39
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static loadLocalFontFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 8

    const-string v0, "TypefaceUtil"

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_69

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_69

    .line 5
    :cond_10
    :try_start_10
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    .line 9
    :cond_1c
    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_5b

    .line 11
    sget-object v3, Lcom/taobao/weex/utils/TypefaceUtil;->sCacheMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/utils/FontDO;

    if-eqz p1, :cond_69

    const/4 v3, 0x2

    .line 13
    invoke-virtual {p1, v3}, Lcom/taobao/weex/utils/FontDO;->setState(I)V

    .line 14
    invoke-virtual {p1, v1}, Lcom/taobao/weex/utils/FontDO;->setTypeface(Landroid/graphics/Typeface;)V

    .line 15
    invoke-virtual {p1, p0}, Lcom/taobao/weex/utils/FontDO;->setFilePath(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p0

    if-eqz p0, :cond_41

    .line 17
    const-string p0, "load local font file success"

    invoke-static {v0, p0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    const/4 p0, 0x1

    if-eqz p2, :cond_57

    .line 26
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p2

    new-instance v1, Lcom/taobao/weex/utils/TypefaceUtil$2;

    invoke-direct {v1, p1}, Lcom/taobao/weex/utils/TypefaceUtil$2;-><init>(Lcom/taobao/weex/utils/FontDO;)V

    const-wide/16 v3, 0x64

    invoke-virtual {p2, v1, v3, v4}, Lcom/taobao/weex/ui/WXRenderManager;->postOnUiThread(Ljava/lang/Runnable;J)V

    goto :goto_5a

    .line 33
    :cond_57
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/TypefaceUtil;->notifyFontAvailable(ZLcom/taobao/weex/utils/FontDO;)V

    :goto_5a
    return p0

    .line 38
    :cond_5b
    const-string p0, "load local font file failed, can\'t create font."

    invoke-static {v0, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_60} :catch_61

    goto :goto_69

    :catch_61
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_69
    :goto_69
    return v2
.end method

.method public static loadTypeface(Lcom/taobao/weex/utils/FontDO;Z)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_9a

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/utils/FontDO;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-nez v1, :cond_9a

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/utils/FontDO;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_16

    invoke-virtual {p0}, Lcom/taobao/weex/utils/FontDO;->getState()I

    move-result v1

    if-nez v1, :cond_9a

    :cond_16
    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/taobao/weex/utils/FontDO;->setState(I)V

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/utils/FontDO;->getType()I

    move-result v1

    if-ne v1, v2, :cond_34

    .line 5
    invoke-virtual {p0}, Lcom/taobao/weex/utils/FontDO;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/taobao/weex/utils/TypefaceUtil;->loadFromAsset(Lcom/taobao/weex/utils/FontDO;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_34
    invoke-virtual {p0}, Lcom/taobao/weex/utils/FontDO;->getType()I

    move-result v1

    if-ne v1, p1, :cond_7a

    .line 8
    invoke-virtual {p0}, Lcom/taobao/weex/utils/FontDO;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lcom/taobao/weex/utils/FontDO;->getFontFamilyName()Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-static {p1}, Lcom/taobao/weex/utils/WXFileUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/taobao/weex/utils/TypefaceUtil;->getFontCacheDir()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_58

    .line 14
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 16
    :cond_58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v1, p0, v0}, Lcom/taobao/weex/utils/TypefaceUtil;->loadLocalFontFile(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_9f

    .line 18
    invoke-static {p1, v1, p0}, Lcom/taobao/weex/utils/TypefaceUtil;->downloadFontByNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 20
    :cond_7a
    invoke-virtual {p0}, Lcom/taobao/weex/utils/FontDO;->getType()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_88

    invoke-virtual {p0}, Lcom/taobao/weex/utils/FontDO;->getType()I

    move-result p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_9f

    .line 21
    :cond_88
    invoke-virtual {p0}, Lcom/taobao/weex/utils/FontDO;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/taobao/weex/utils/FontDO;->getFontFamilyName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/taobao/weex/utils/TypefaceUtil;->loadLocalFontFile(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_9f

    .line 23
    invoke-virtual {p0, v2}, Lcom/taobao/weex/utils/FontDO;->setState(I)V

    return-void

    :cond_9a
    if-eqz p1, :cond_9f

    .line 29
    invoke-static {v0, p0}, Lcom/taobao/weex/utils/TypefaceUtil;->notifyFontAvailable(ZLcom/taobao/weex/utils/FontDO;)V

    :cond_9f
    return-void
.end method

.method private static notifyFontAvailable(ZLcom/taobao/weex/utils/FontDO;)V
    .registers 4

    if-eqz p0, :cond_30

    .line 1
    new-instance p0, Landroid/content/Intent;

    const-string/jumbo v0, "type_face_available"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/taobao/weex/utils/FontDO;->getFontFamilyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fontFamily"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p1}, Lcom/taobao/weex/utils/FontDO;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "filePath"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1}, Lcom/taobao/weex/utils/FontDO;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fontUrl"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 7
    :cond_30
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKManager;->getFontAdapter()Lcom/taobao/weex/font/FontAdapter;

    move-result-object p0

    if-eqz p0, :cond_49

    .line 9
    invoke-virtual {p1}, Lcom/taobao/weex/utils/FontDO;->getFontFamilyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taobao/weex/utils/FontDO;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/weex/utils/FontDO;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/taobao/weex/font/FontAdapter;->onFontLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    return-void
.end method

.method public static putFontDO(Lcom/taobao/weex/utils/FontDO;)V
    .registers 3

    if-eqz p0, :cond_15

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/utils/FontDO;->getFontFamilyName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 2
    sget-object v0, Lcom/taobao/weex/utils/TypefaceUtil;->sCacheMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/taobao/weex/utils/FontDO;->getFontFamilyName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-void
.end method

.method public static registerNativeFont(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_50

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_50

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    new-instance v1, Lcom/taobao/weex/utils/FontDO;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    invoke-direct {v1, v2, v3}, Lcom/taobao/weex/utils/FontDO;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 4
    invoke-static {v1}, Lcom/taobao/weex/utils/TypefaceUtil;->putFontDO(Lcom/taobao/weex/utils/FontDO;)V

    .line 5
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "register new typeface: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TypefaceUtil"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_50
    return-void
.end method

.method public static removeFontDO(Ljava/lang/String;)V
    .registers 2

    .line 1
    sget-object v0, Lcom/taobao/weex/utils/TypefaceUtil;->sCacheMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.taobao.weex.utils.TypefaceUtil.AnonymousClass1 (com.taobao.weex.utils.TypefaceUtil$1)
.class Lcom/taobao/weex/utils/TypefaceUtil$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/utils/TypefaceUtil;->downloadFontByNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fontFamily:Ljava/lang/String;

.field final synthetic val$fullPath:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/utils/TypefaceUtil$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/weex/utils/TypefaceUtil$1;->val$fullPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/utils/TypefaceUtil$1;->val$fontFamily:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeadersReceived(ILjava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onHttpFinish(Lcom/taobao/weex/common/WXResponse;)V
    .registers 6

    .line 1
    iget-object v0, p1, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "TypefaceUtil"

    const/4 v2, 0x0

    if-nez v0, :cond_25

    .line 3
    :try_start_b
    iget-object v0, p1, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_11} :catch_12

    goto :goto_26

    .line 6
    :catch_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "IWXHttpAdapter onHttpFinish statusCode:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    const/4 v0, 0x0

    :goto_26
    const/16 v3, 0xc8

    if-lt v0, v3, :cond_53

    const/16 v3, 0x12b

    if-gt v0, v3, :cond_53

    .line 10
    iget-object p1, p1, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    if-eqz p1, :cond_53

    .line 11
    iget-object v0, p0, Lcom/taobao/weex/utils/TypefaceUtil$1;->val$fullPath:Ljava/lang/String;

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lcom/taobao/weex/utils/WXFileUtils;->saveFile(Ljava/lang/String;[BLandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 13
    iget-object p1, p0, Lcom/taobao/weex/utils/TypefaceUtil$1;->val$fullPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/taobao/weex/utils/TypefaceUtil$1;->val$fontFamily:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/taobao/weex/utils/TypefaceUtil;->access$000(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_53

    .line 15
    :cond_48
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_53

    .line 16
    const-string p1, "downloadFontByNetwork() onHttpFinish success, but save file failed."

    invoke-static {v1, p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_53
    :goto_53
    if-nez v2, :cond_67

    .line 24
    invoke-static {}, Lcom/taobao/weex/utils/TypefaceUtil;->access$100()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/weex/utils/TypefaceUtil$1;->val$fontFamily:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/utils/FontDO;

    if-eqz p1, :cond_67

    const/4 v0, 0x3

    .line 26
    invoke-virtual {p1, v0}, Lcom/taobao/weex/utils/FontDO;->setState(I)V

    :cond_67
    return-void
.end method

.method public onHttpResponseProgress(I)V
    .registers 2

    return-void
.end method

.method public onHttpStart()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "downloadFontByNetwork begin url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/weex/utils/TypefaceUtil$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TypefaceUtil"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public onHttpUploadProgress(I)V
    .registers 2

    return-void
.end method

###### Class com.taobao.weex.utils.TypefaceUtil.AnonymousClass2 (com.taobao.weex.utils.TypefaceUtil$2)
.class Lcom/taobao/weex/utils/TypefaceUtil$2;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/utils/TypefaceUtil;->loadLocalFontFile(Ljava/lang/String;Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fontDo:Lcom/taobao/weex/utils/FontDO;


# direct methods
.method constructor <init>(Lcom/taobao/weex/utils/FontDO;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/utils/TypefaceUtil$2;->val$fontDo:Lcom/taobao/weex/utils/FontDO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/utils/TypefaceUtil$2;->val$fontDo:Lcom/taobao/weex/utils/FontDO;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/TypefaceUtil;->access$200(ZLcom/taobao/weex/utils/FontDO;)V

    return-void
.end method
