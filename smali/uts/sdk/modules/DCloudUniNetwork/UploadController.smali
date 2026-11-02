###### Class uts.sdk.modules.DCloudUniNetwork.UploadController (uts.sdk.modules.DCloudUniNetwork.UploadController)
.class public Luts/sdk/modules/DCloudUniNetwork/UploadController;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luts/sdk/modules/DCloudUniNetwork/UploadController$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0016\u0018\u0000 !2\u00020\u0001:\u0001!B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\tH\u0002J\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0014H\u0002J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0014H\u0002J\u0010\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u0014H\u0002J\u0010\u0010\u001f\u001a\u00020\u00142\u0006\u0010 \u001a\u00020\u0014H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/UploadController;",
        "",
        "<init>",
        "()V",
        "uploadExecutorService",
        "Ljava/util/concurrent/ExecutorService;",
        "uploadFile",
        "Luts/sdk/modules/DCloudUniNetwork/UploadTask;",
        "options",
        "Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;",
        "listener",
        "Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;",
        "createUploadClient",
        "Lokhttp3/OkHttpClient;",
        "option",
        "createUploadRequest",
        "Lokhttp3/Request;",
        "getFileInformation",
        "Luts/sdk/modules/DCloudUniNetwork/FileInformation;",
        "reassignedUri",
        "",
        "copyAssetFileToPrivateDir",
        "Ljava/io/File;",
        "context",
        "Landroid/content/Context;",
        "fileName",
        "checkPrivatePath",
        "",
        "reassignedPath",
        "isAssetFile",
        "filePath",
        "getMimeType",
        "filename",
        "Companion",
        "uni-network_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Luts/sdk/modules/DCloudUniNetwork/UploadController$Companion;

.field private static instance:Luts/sdk/modules/DCloudUniNetwork/UploadController;


# instance fields
.field private uploadExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Luts/sdk/modules/DCloudUniNetwork/UploadController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Luts/sdk/modules/DCloudUniNetwork/UploadController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Luts/sdk/modules/DCloudUniNetwork/UploadController;->Companion:Luts/sdk/modules/DCloudUniNetwork/UploadController$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Luts/sdk/modules/DCloudUniNetwork/UploadController;
    .registers 1

    .line 712
    sget-object v0, Luts/sdk/modules/DCloudUniNetwork/UploadController;->instance:Luts/sdk/modules/DCloudUniNetwork/UploadController;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Luts/sdk/modules/DCloudUniNetwork/UploadController;)V
    .registers 1

    .line 712
    sput-object p0, Luts/sdk/modules/DCloudUniNetwork/UploadController;->instance:Luts/sdk/modules/DCloudUniNetwork/UploadController;

    return-void
.end method

.method private final checkPrivatePath(Ljava/lang/String;)Z
    .registers 11

    .line 936
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1d

    if-le v0, v2, :cond_e

    invoke-static {}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m$2()Z

    move-result v0

    if-eqz v0, :cond_e

    return v1

    .line 939
    :cond_e
    const-string v0, "file://"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p1, v0, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 940
    const-string v6, ""

    invoke-static {p1, v0, v6}, Lio/dcloud/uts/StringKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 942
    :cond_1f
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 943
    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_4f

    .line 946
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/Android/data/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_58

    .line 948
    :cond_4f
    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getParent(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 950
    :goto_58
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 951
    const-string v7, "/"

    invoke-static {v6, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7a

    invoke-static {p1, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7a

    .line 952
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 954
    :cond_7a
    move-object v7, p1

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v7, v0, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9c

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v7, v6, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9c

    invoke-direct {p0, p1}, Luts/sdk/modules/DCloudUniNetwork/UploadController;->isAssetFile(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9c

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v2, :cond_9b

    goto :goto_9c

    :cond_9b
    return v3

    :cond_9c
    :goto_9c
    return v1
.end method

.method private final copyAssetFileToPrivateDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 7

    .line 903
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/uploadFiles/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 904
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 905
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 907
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_30

    .line 908
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 911
    :cond_30
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_39

    .line 912
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 914
    :cond_39
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const-string p2, "open(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 915
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x400

    .line 916
    new-array v0, v0, [B

    .line 918
    :goto_4f
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5d

    .line 925
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 926
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    return-object v1

    :cond_5d
    const/4 v3, 0x0

    .line 922
    invoke-virtual {p2, v0, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_61} :catch_62

    goto :goto_4f

    :catch_62
    move-exception p1

    .line 930
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private final createUploadClient(Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;)Lokhttp3/OkHttpClient;
    .registers 5

    .line 726
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 727
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->getTimeout()Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 728
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->getTimeout()Ljava/lang/Number;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_1a

    :cond_17
    const-wide/32 v1, 0x1d4c0

    .line 732
    :goto_1a
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 733
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 734
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 735
    new-instance p1, Luts/sdk/modules/DCloudUniNetwork/CookieInterceptor;

    invoke-direct {p1}, Luts/sdk/modules/DCloudUniNetwork/CookieInterceptor;-><init>()V

    check-cast p1, Lokhttp3/Interceptor;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 736
    iget-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadController;->uploadExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez p1, :cond_3f

    const/16 p1, 0xa

    .line 737
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadController;->uploadExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 739
    :cond_3f
    new-instance p1, Lokhttp3/Dispatcher;

    iget-object v1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadController;->uploadExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p1, v1}, Lokhttp3/Dispatcher;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    .line 740
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final createUploadRequest(Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;)Lokhttp3/Request;
    .registers 31

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 743
    const-string v3, "cause"

    const-string v4, "errorMsg"

    const-string v5, "errorCode"

    const-string v6, "statusCode"

    const-string v7, "-1"

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 745
    :try_start_13
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a} :catch_292

    .line 759
    new-instance v11, Lokhttp3/MultipartBody$Builder;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "----"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;)V

    sget-object v12, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v11, v12}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v11

    .line 760
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->getFormData()Lio/dcloud/uts/UTSJSONObject;

    move-result-object v12

    if-eqz v12, :cond_42

    invoke-virtual {v12}, Lio/dcloud/uts/UTSJSONObject;->toMap()Lio/dcloud/uts/Map;

    move-result-object v12

    goto :goto_43

    :cond_42
    const/4 v12, 0x0

    .line 761
    :goto_43
    const-string v14, ""

    if-eqz v12, :cond_8f

    .line 762
    invoke-static {v12}, Lio/dcloud/uts/UTSIteratorKt;->resolveUTSKeyIterator(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_55
    :goto_55
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 763
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    const/16 v18, 0xa

    move-object/from16 v13, v17

    check-cast v13, Ljava/lang/String;

    .line 764
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_55

    .line 766
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v9, v19

    check-cast v9, Ljava/lang/Number;

    invoke-static {v8, v9}, Lio/dcloud/uts/NumberKt;->toString_number_nullable(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v13, v8}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    goto :goto_55

    :cond_8f
    const/16 v18, 0xa

    const/16 v20, 0x0

    .line 772
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->getFiles()Lio/dcloud/uts/UTSArray;

    move-result-object v8

    .line 773
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->getFilePath()Ljava/lang/String;

    move-result-object v9

    .line 774
    const-string v10, "*/*"

    const-string v13, "Illegal file"

    const-string v15, "file"

    move-object/from16 v19, v10

    if-eqz v8, :cond_14b

    invoke-virtual {v8}, Lio/dcloud/uts/UTSArray;->getLength()Ljava/lang/Number;

    move-result-object v10

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v22, v12

    move-object/from16 v12, v21

    check-cast v12, Ljava/lang/Number;

    invoke-static {v10, v12}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v10

    if-lez v10, :cond_14d

    .line 776
    move-object v10, v1

    check-cast v10, Luts/sdk/modules/DCloudUniNetwork/UploadController;

    .line 777
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    .line 778
    :goto_c2
    invoke-virtual {v8}, Lio/dcloud/uts/UTSArray;->getLength()Ljava/lang/Number;

    move-result-object v12

    invoke-static {v10, v12}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v12

    if-gez v12, :cond_145

    .line 779
    invoke-virtual {v8, v10}, Lio/dcloud/uts/UTSArray;->get(Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionFiles;

    move-object/from16 v21, v8

    .line 780
    invoke-virtual {v12}, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionFiles;->getUri()Ljava/lang/String;

    move-result-object v8

    .line 781
    invoke-direct {v1, v8}, Luts/sdk/modules/DCloudUniNetwork/UploadController;->getFileInformation(Ljava/lang/String;)Luts/sdk/modules/DCloudUniNetwork/FileInformation;

    move-result-object v8

    .line 782
    invoke-virtual {v12}, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionFiles;->getName()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_e3

    move-object v12, v15

    :cond_e3
    if-eqz v8, :cond_f0

    .line 783
    invoke-virtual {v8}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->getInputStream()Ljava/io/InputStream;

    move-result-object v23

    move-object/from16 v27, v23

    move-object/from16 v23, v8

    move-object/from16 v8, v27

    goto :goto_f3

    :cond_f0
    move-object/from16 v23, v8

    const/4 v8, 0x0

    :goto_f3
    if-eqz v23, :cond_12b

    if-eqz v8, :cond_12b

    move-object/from16 v24, v10

    .line 785
    new-instance v10, Luts/sdk/modules/DCloudUniNetwork/InputStreamRequestBody;

    invoke-virtual/range {v23 .. v23}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->getMime()Ljava/lang/String;

    move-result-object v25

    if-nez v25, :cond_103

    move-object/from16 v25, v19

    :cond_103
    move-object/from16 v26, v15

    invoke-static/range {v25 .. v25}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v15

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v23}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->getSize()J

    move-result-wide v0

    invoke-direct {v10, v15, v0, v1, v8}, Luts/sdk/modules/DCloudUniNetwork/InputStreamRequestBody;-><init>(Lokhttp3/MediaType;JLjava/io/InputStream;)V

    .line 786
    invoke-virtual/range {v23 .. v23}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast v10, Lokhttp3/RequestBody;

    invoke-virtual {v11, v12, v0, v10}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 798
    invoke-static/range {v24 .. v24}, Lio/dcloud/uts/NumberKt;->inc(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v10

    move-object/from16 v1, p0

    move-object/from16 v8, v21

    move-object/from16 v0, v25

    move-object/from16 v15, v26

    goto :goto_c2

    :cond_12b
    const/4 v1, 0x0

    .line 786
    new-array v0, v1, [Lkotlin/Pair;

    .line 788
    invoke-static {v0}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v0

    .line 789
    invoke-virtual {v0, v6, v7}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 790
    invoke-virtual {v0, v5, v7}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 791
    invoke-virtual {v0, v4, v13}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 792
    invoke-virtual {v0, v3, v1}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v2, :cond_144

    .line 794
    invoke-interface {v2, v0}, Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    :cond_144
    return-object v1

    :cond_145
    move-object/from16 v25, v0

    move-object/from16 v21, v8

    goto/16 :goto_1b0

    :cond_14b
    move-object/from16 v22, v12

    :cond_14d
    move-object/from16 v25, v0

    move-object/from16 v21, v8

    move-object/from16 v26, v15

    if-eqz v9, :cond_1b0

    move-object/from16 v1, p0

    .line 802
    invoke-direct {v1, v9}, Luts/sdk/modules/DCloudUniNetwork/UploadController;->getFileInformation(Ljava/lang/String;)Luts/sdk/modules/DCloudUniNetwork/FileInformation;

    move-result-object v0

    .line 803
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->getName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_164

    move-object/from16 v15, v26

    goto :goto_165

    :cond_164
    move-object v15, v8

    :goto_165
    if-eqz v0, :cond_16c

    .line 804
    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    goto :goto_16d

    :cond_16c
    const/4 v8, 0x0

    :goto_16d
    if-eqz v0, :cond_196

    if-eqz v8, :cond_196

    .line 806
    new-instance v10, Luts/sdk/modules/DCloudUniNetwork/InputStreamRequestBody;

    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->getMime()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_17a

    goto :goto_17c

    :cond_17a
    move-object/from16 v19, v12

    :goto_17c
    invoke-static/range {v19 .. v19}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->getSize()J

    move-result-wide v0

    invoke-direct {v10, v12, v0, v1, v8}, Luts/sdk/modules/DCloudUniNetwork/InputStreamRequestBody;-><init>(Lokhttp3/MediaType;JLjava/io/InputStream;)V

    .line 807
    invoke-virtual/range {v19 .. v19}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast v10, Lokhttp3/RequestBody;

    invoke-virtual {v11, v15, v0, v10}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    goto :goto_1b0

    :cond_196
    const/4 v1, 0x0

    new-array v0, v1, [Lkotlin/Pair;

    .line 809
    invoke-static {v0}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v0

    .line 810
    invoke-virtual {v0, v6, v7}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 811
    invoke-virtual {v0, v5, v7}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 812
    invoke-virtual {v0, v4, v13}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 813
    invoke-virtual {v0, v3, v1}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v2, :cond_1af

    .line 815
    invoke-interface {v2, v0}, Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    :cond_1af
    return-object v1

    :cond_1b0
    :goto_1b0
    if-nez v22, :cond_1ec

    if-nez v9, :cond_1ec

    if-eqz v21, :cond_1c6

    .line 820
    invoke-virtual/range {v21 .. v21}, Lio/dcloud/uts/UTSArray;->getLength()Ljava/lang/Number;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0, v8}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ec

    goto :goto_1c7

    :cond_1c6
    const/4 v1, 0x0

    :goto_1c7
    new-array v0, v1, [Lkotlin/Pair;

    .line 821
    invoke-static {v0}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v0

    .line 822
    invoke-virtual {v0, v6, v7}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 823
    const-string v1, "602001"

    invoke-virtual {v0, v5, v1}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 824
    const-string v1, "request system error"

    invoke-virtual {v0, v4, v1}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 825
    new-instance v1, Lio/dcloud/uniapp/SourceError;

    const-string v4, "At least one of the parameters filePath, files, or formData"

    invoke-direct {v1, v4}, Lio/dcloud/uniapp/SourceError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v2, :cond_1e9

    .line 827
    invoke-interface {v2, v0}, Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    :cond_1e9
    const/16 v16, 0x0

    return-object v16

    .line 831
    :cond_1ec
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->getHeader()Lio/dcloud/uts/UTSJSONObject;

    move-result-object v0

    if-eqz v0, :cond_1f7

    invoke-virtual {v0}, Lio/dcloud/uts/UTSJSONObject;->toMap()Lio/dcloud/uts/Map;

    move-result-object v0

    goto :goto_1f8

    :cond_1f7
    const/4 v0, 0x0

    .line 833
    :goto_1f8
    const-string v1, "User-Agent"

    if-eqz v0, :cond_24e

    .line 834
    invoke-static {v0}, Lio/dcloud/uts/UTSIteratorKt;->resolveUTSKeyIterator(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v9, 0x0

    :goto_20b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 835
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 836
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v9, :cond_22b

    const/4 v5, 0x1

    .line 837
    invoke-static {v4, v1, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_22b

    const/4 v9, 0x1

    :cond_22b
    if-eqz v3, :cond_249

    .line 841
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-static {v3, v6}, Lio/dcloud/uts/NumberKt;->toString_number_nullable(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, v25

    invoke-virtual {v5, v4, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_24b

    :cond_249
    move-object/from16 v5, v25

    :goto_24b
    move-object/from16 v25, v5

    goto :goto_20b

    :cond_24e
    const/4 v9, 0x0

    :cond_24f
    move-object/from16 v5, v25

    if-nez v9, :cond_271

    .line 848
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    sget-object v3, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v3}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSAndroid;->getWebViewInfo(Landroid/content/Context;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v0

    const-string v3, "ua"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4}, Lio/dcloud/uts/NumberKt;->toString_number_nullable$default(Ljava/lang/Object;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 849
    invoke-virtual {v5, v1, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 851
    :cond_271
    new-instance v0, Luts/sdk/modules/DCloudUniNetwork/ProgressRequestBody;

    invoke-virtual {v11}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v1

    const-string v3, "build(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lokhttp3/RequestBody;

    new-instance v3, Luts/sdk/modules/DCloudUniNetwork/NetworkUploadProgressListener;

    invoke-direct {v3, v2}, Luts/sdk/modules/DCloudUniNetwork/NetworkUploadProgressListener;-><init>(Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;)V

    check-cast v3, Luts/sdk/modules/DCloudUniNetwork/UploadProgressListener;

    invoke-direct {v0, v1, v3}, Luts/sdk/modules/DCloudUniNetwork/ProgressRequestBody;-><init>(Lokhttp3/RequestBody;Luts/sdk/modules/DCloudUniNetwork/UploadProgressListener;)V

    check-cast v0, Lokhttp3/RequestBody;

    invoke-virtual {v5, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 852
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    return-object v0

    :catch_292
    move-exception v0

    const/4 v1, 0x0

    .line 747
    new-array v1, v1, [Lkotlin/Pair;

    .line 748
    invoke-static {v1}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v1

    .line 749
    invoke-virtual {v1, v6, v7}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 750
    const-string v6, "600009"

    invoke-virtual {v1, v5, v6}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 751
    const-string v5, "invalid URL"

    invoke-virtual {v1, v4, v5}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 752
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v0, v4, v5, v4}, Lio/dcloud/uts/NumberKt;->toString_number_nullable$default(Ljava/lang/Object;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 753
    new-instance v5, Lio/dcloud/uniapp/SourceError;

    invoke-direct {v5, v0}, Lio/dcloud/uniapp/SourceError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v5}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v2, :cond_2be

    .line 755
    invoke-interface {v2, v1}, Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    :cond_2be
    return-object v4
.end method

.method private final getFileInformation(Ljava/lang/String;)Luts/sdk/modules/DCloudUniNetwork/FileInformation;
    .registers 12

    .line 857
    const-string v0, "content://"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 858
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 859
    sget-object p1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {p1}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object p1

    .line 860
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_65

    .line 862
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 863
    new-instance v1, Luts/sdk/modules/DCloudUniNetwork/FileInformation;

    invoke-direct {v1}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;-><init>()V

    .line 864
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v1, p1}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->setInputStream(Ljava/io/InputStream;)V

    .line 865
    const-string p1, "_size"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->setSize(J)V

    .line 866
    const-string p1, "_display_name"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->setName(Ljava/lang/String;)V

    .line 867
    const-string p1, "mime_type"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->setMime(Ljava/lang/String;)V

    .line 869
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_65
    return-object v3

    .line 872
    :cond_66
    const-string v0, "file://"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    const/4 v0, 0x7

    .line 873
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {p1, v0, v3, v2, v3}, Lio/dcloud/uts/StringKt;->substring$default(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_b8

    .line 874
    :cond_7a
    const-string v0, "unifile://"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 875
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0, p1}, Lio/dcloud/uts/UTSAndroid;->convert2AbsFullPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_b8

    .line 877
    :cond_89
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0, p1}, Lio/dcloud/uts/UTSAndroid;->convert2AbsFullPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 878
    const-string v0, "/android_asset/"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 879
    const-string v1, ""

    invoke-static {p1, v0, v1}, Lio/dcloud/uts/StringKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 880
    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 881
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v1, v0}, Luts/sdk/modules/DCloudUniNetwork/UploadController;->copyAssetFileToPrivateDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_b8

    .line 883
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getPath(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 887
    :cond_b8
    :goto_b8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 888
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 889
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 890
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 891
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Luts/sdk/modules/DCloudUniNetwork/UploadController;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 892
    new-instance v4, Luts/sdk/modules/DCloudUniNetwork/FileInformation;

    invoke-direct {v4}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;-><init>()V

    .line 893
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {v4, p1}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->setInputStream(Ljava/io/InputStream;)V

    .line 894
    invoke-virtual {v4, v1, v2}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->setSize(J)V

    .line 895
    invoke-virtual {v4, v0}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->setName(Ljava/lang/String;)V

    .line 896
    invoke-virtual {v4, v3}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->setMime(Ljava/lang/String;)V

    return-object v4
.end method

.method private final getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 969
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 970
    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 971
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    const-string v2, "."

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {p1, v2, v3, v4, v3}, Lio/dcloud/uts/StringKt;->lastIndexOf$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-static {v5, v6}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v5

    if-ltz v5, :cond_39

    .line 972
    invoke-static {p1, v2, v3, v4, v3}, Lio/dcloud/uts/StringKt;->lastIndexOf$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-static {v1, v2}, Lio/dcloud/uts/NumberKt;->plus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v1

    invoke-static {p1, v1, v3, v4, v3}, Lio/dcloud/uts/StringKt;->substring$default(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_39
    if-eqz v1, :cond_3f

    .line 975
    invoke-static {v1}, Lio/dcloud/uts/StringKt;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 977
    :cond_3f
    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 978
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 979
    move-object p1, v1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_58

    .line 980
    const-string p1, "application/octet-stream"

    goto :goto_66

    .line 982
    :cond_58
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "application/"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 985
    :cond_66
    :goto_66
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method private final isAssetFile(Ljava/lang/String;)Z
    .registers 7

    .line 961
    const-string v0, "apps/"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_d

    return v4

    .line 963
    :cond_d
    const-string v0, "/android_asset/"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "android_asset/"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    goto :goto_1f

    :cond_1e
    return v1

    :cond_1f
    :goto_1f
    return v4
.end method


# virtual methods
.method public uploadFile(Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;)Luts/sdk/modules/DCloudUniNetwork/UploadTask;
    .registers 4

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 715
    invoke-direct {p0, p1}, Luts/sdk/modules/DCloudUniNetwork/UploadController;->createUploadClient(Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;)Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 716
    invoke-direct {p0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/UploadController;->createUploadRequest(Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;)Lokhttp3/Request;

    move-result-object p1

    if-nez p1, :cond_1d

    .line 718
    new-instance p1, Luts/sdk/modules/DCloudUniNetwork/NetworkUploadTaskImpl;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2}, Luts/sdk/modules/DCloudUniNetwork/NetworkUploadTaskImpl;-><init>(Lokhttp3/Call;Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;)V

    check-cast p1, Luts/sdk/modules/DCloudUniNetwork/UploadTask;

    return-object p1

    .line 720
    :cond_1d
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    const-string v0, "newCall(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 721
    new-instance v0, Luts/sdk/modules/DCloudUniNetwork/SimpleUploadCallback;

    invoke-direct {v0, p2}, Luts/sdk/modules/DCloudUniNetwork/SimpleUploadCallback;-><init>(Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;)V

    check-cast v0, Lokhttp3/Callback;

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 722
    new-instance v0, Luts/sdk/modules/DCloudUniNetwork/NetworkUploadTaskImpl;

    invoke-direct {v0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/NetworkUploadTaskImpl;-><init>(Lokhttp3/Call;Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;)V

    .line 723
    check-cast v0, Luts/sdk/modules/DCloudUniNetwork/UploadTask;

    return-object v0
.end method

###### Class uts.sdk.modules.DCloudUniNetwork.UploadController.Companion (uts.sdk.modules.DCloudUniNetwork.UploadController$Companion)
.class public final Luts/sdk/modules/DCloudUniNetwork/UploadController$Companion;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luts/sdk/modules/DCloudUniNetwork/UploadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0006\u001a\u00020\u0005R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/UploadController$Companion;",
        "",
        "<init>",
        "()V",
        "instance",
        "Luts/sdk/modules/DCloudUniNetwork/UploadController;",
        "getInstance",
        "uni-network_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Luts/sdk/modules/DCloudUniNetwork/UploadController$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Luts/sdk/modules/DCloudUniNetwork/UploadController;
    .registers 2

    .line 990
    invoke-static {}, Luts/sdk/modules/DCloudUniNetwork/UploadController;->access$getInstance$cp()Luts/sdk/modules/DCloudUniNetwork/UploadController;

    move-result-object v0

    if-nez v0, :cond_e

    .line 991
    new-instance v0, Luts/sdk/modules/DCloudUniNetwork/UploadController;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniNetwork/UploadController;-><init>()V

    invoke-static {v0}, Luts/sdk/modules/DCloudUniNetwork/UploadController;->access$setInstance$cp(Luts/sdk/modules/DCloudUniNetwork/UploadController;)V

    .line 993
    :cond_e
    invoke-static {}, Luts/sdk/modules/DCloudUniNetwork/UploadController;->access$getInstance$cp()Luts/sdk/modules/DCloudUniNetwork/UploadController;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
