###### Class uts.sdk.modules.DCloudUniNetwork.NetworkManager (uts.sdk.modules.DCloudUniNetwork.NetworkManager)
.class public Luts/sdk/modules/DCloudUniNetwork/NetworkManager;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luts/sdk/modules/DCloudUniNetwork/NetworkManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u0006\u001a\u00020\u0007\"\u0004\u0008\u0000\u0010\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u001c\u0010\r\u001a\u00020\u000e\"\u0004\u0008\u0000\u0010\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\nH\u0016J&\u0010\u000f\u001a\u0004\u0018\u00010\u0010\"\u0004\u0008\u0000\u0010\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u000b\u001a\u00020\u001aH\u0016J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u001d2\u0006\u0010\u000b\u001a\u00020\u001eH\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/NetworkManager;",
        "",
        "<init>",
        "()V",
        "requestExecutorService",
        "Ljava/util/concurrent/ExecutorService;",
        "request",
        "Luts/sdk/modules/DCloudUniNetwork/RequestTask;",
        "T",
        "param",
        "Luts/sdk/modules/DCloudUniNetwork/RequestOptions;",
        "listener",
        "Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;",
        "createRequestClient",
        "Lokhttp3/OkHttpClient;",
        "createRequest",
        "Lokhttp3/Request;",
        "stringifyQuery",
        "",
        "url",
        "data",
        "Lio/dcloud/uts/UTSJSONObject;",
        "uploadFile",
        "Luts/sdk/modules/DCloudUniNetwork/UploadTask;",
        "options",
        "Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;",
        "Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;",
        "downloadFile",
        "Luts/sdk/modules/DCloudUniNetwork/DownloadTask;",
        "Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;",
        "Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;",
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
.field public static final Companion:Luts/sdk/modules/DCloudUniNetwork/NetworkManager$Companion;

.field private static connectPool:Lokhttp3/ConnectionPool;

.field private static instance:Luts/sdk/modules/DCloudUniNetwork/NetworkManager;


# instance fields
.field private requestExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$JR9yrBCdjeoCz-8wNYDY0NEh_9Q(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .registers 3

    invoke-static {p0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->stringifyQuery$lambda$3(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Jq33KBxqV6NXGdXQi8zIZ65R_ns(Lio/dcloud/uts/Map;Ljava/lang/String;Ljava/lang/Number;)Lkotlin/Unit;
    .registers 3

    invoke-static {p0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->stringifyQuery$lambda$1(Lio/dcloud/uts/Map;Ljava/lang/String;Ljava/lang/Number;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$X_66bEbRy8YLE9_Su8WI3FTtm_I(Lio/dcloud/uts/UTSArray;Ljava/lang/Object;Ljava/lang/String;)Lkotlin/Unit;
    .registers 3

    invoke-static {p0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->createRequest$lambda$0(Lio/dcloud/uts/UTSArray;Ljava/lang/Object;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xVaFWECYQ3juFS9WAcVg7OExnDA(Lio/dcloud/uts/Map;Ljava/lang/Object;Ljava/lang/String;)Lkotlin/Unit;
    .registers 3

    invoke-static {p0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->stringifyQuery$lambda$2(Lio/dcloud/uts/Map;Ljava/lang/Object;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Luts/sdk/modules/DCloudUniNetwork/NetworkManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->Companion:Luts/sdk/modules/DCloudUniNetwork/NetworkManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1095
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Luts/sdk/modules/DCloudUniNetwork/NetworkManager;
    .registers 1

    .line 1095
    sget-object v0, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->instance:Luts/sdk/modules/DCloudUniNetwork/NetworkManager;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Luts/sdk/modules/DCloudUniNetwork/NetworkManager;)V
    .registers 1

    .line 1095
    sput-object p0, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->instance:Luts/sdk/modules/DCloudUniNetwork/NetworkManager;

    return-void
.end method

.method private static final createRequest$lambda$0(Lio/dcloud/uts/UTSArray;Ljava/lang/Object;Ljava/lang/String;)Lkotlin/Unit;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 1232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3d

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-static {p1, p2}, Lio/dcloud/uts/NumberKt;->toString_number_nullable(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dcloud/uts/UTSArray;->push([Ljava/lang/Object;)I

    .line 1233
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final stringifyQuery(Ljava/lang/String;Lio/dcloud/uts/UTSJSONObject;)Ljava/lang/String;
    .registers 10

    .line 1286
    const-string v0, "#"

    invoke-static {p1, v0}, Lio/dcloud/uts/StringKt;->split(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/uts/UTSArray;

    move-result-object p1

    .line 1288
    invoke-virtual {p1}, Lio/dcloud/uts/UTSArray;->getLength()Ljava/lang/Number;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Number;

    invoke-static {v0, v3}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    const-string v3, "get(...)"

    const-string v4, ""

    if-lez v0, :cond_26

    .line 1289
    invoke-virtual {p1, v1}, Lio/dcloud/uts/UTSArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    goto :goto_27

    :cond_26
    move-object v0, v4

    :goto_27
    const/4 v5, 0x0

    .line 1291
    invoke-virtual {p1, v5}, Lio/dcloud/uts/UTSArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    const-string v6, "?"

    invoke-static {p1, v6}, Lio/dcloud/uts/StringKt;->split(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/uts/UTSArray;

    move-result-object p1

    .line 1293
    invoke-virtual {p1}, Lio/dcloud/uts/UTSArray;->getLength()Ljava/lang/Number;

    move-result-object v6

    check-cast v2, Ljava/lang/Number;

    invoke-static {v6, v2}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v2

    if-lez v2, :cond_4d

    .line 1294
    invoke-virtual {p1, v1}, Lio/dcloud/uts/UTSArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    goto :goto_4e

    :cond_4d
    move-object v1, v4

    .line 1296
    :goto_4e
    invoke-virtual {p1, v5}, Lio/dcloud/uts/UTSArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    .line 1297
    const-string v2, "&"

    invoke-static {v1, v2}, Lio/dcloud/uts/StringKt;->split(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/uts/UTSArray;

    move-result-object v1

    .line 1298
    new-instance v2, Lio/dcloud/uts/Map;

    invoke-direct {v2}, Lio/dcloud/uts/Map;-><init>()V

    .line 1299
    new-instance v3, Luts/sdk/modules/DCloudUniNetwork/NetworkManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager$$ExternalSyntheticLambda1;-><init>(Lio/dcloud/uts/Map;)V

    invoke-virtual {v1, v3}, Lio/dcloud/uts/UTSArray;->forEach(Lkotlin/jvm/functions/Function2;)V

    .line 1306
    invoke-virtual {p2}, Lio/dcloud/uts/UTSJSONObject;->toMap()Lio/dcloud/uts/Map;

    move-result-object p2

    .line 1307
    new-instance v1, Luts/sdk/modules/DCloudUniNetwork/NetworkManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, v2}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager$$ExternalSyntheticLambda2;-><init>(Lio/dcloud/uts/Map;)V

    invoke-virtual {p2, v1}, Lio/dcloud/uts/Map;->forEach(Lkotlin/jvm/functions/Function2;)V

    .line 1320
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v4, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1321
    new-instance v1, Luts/sdk/modules/DCloudUniNetwork/NetworkManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v2, v1}, Lio/dcloud/uts/Map;->forEach(Lkotlin/jvm/functions/Function2;)V

    .line 1325
    iget-object v1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-static {v1, v2, v3}, Lio/dcloud/uts/StringKt;->slice(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1326
    iget-object v1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_be

    .line 1327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3f

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1329
    :cond_be
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_d8

    .line 1330
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x23

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_d8
    return-object p1
.end method

.method private static final stringifyQuery$lambda$1(Lio/dcloud/uts/Map;Ljava/lang/String;Ljava/lang/Number;)Lkotlin/Unit;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 1300
    const-string p2, "="

    invoke-static {p1, p2}, Lio/dcloud/uts/StringKt;->split(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/uts/UTSArray;

    move-result-object p1

    .line 1301
    invoke-virtual {p1}, Lio/dcloud/uts/UTSArray;->getLength()Ljava/lang/Number;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-static {p2, v1}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result p2

    if-lez p2, :cond_25

    .line 1302
    check-cast p0, Ljava/util/Map;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lio/dcloud/uts/UTSArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0}, Lio/dcloud/uts/UTSArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    :cond_25
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final stringifyQuery$lambda$2(Lio/dcloud/uts/Map;Ljava/lang/Object;Ljava/lang/String;)Lkotlin/Unit;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 1309
    const-string v0, ""

    if-nez p1, :cond_5

    move-object p1, v0

    .line 1312
    :cond_5
    invoke-static {p2}, Lio/dcloud/uts/ObjectKt;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1313
    instance-of v1, p1, Lio/dcloud/uts/UTSJSONObject;

    if-nez v1, :cond_3a

    instance-of v1, p1, Lio/dcloud/uts/UTSArray;

    if-eqz v1, :cond_15

    goto :goto_3a

    .line 1316
    :cond_15
    check-cast p0, Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {p1, v0}, Lio/dcloud/uts/NumberKt;->toString_number_nullable(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/uts/ObjectKt;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    .line 1314
    :cond_3a
    :goto_3a
    check-cast p0, Ljava/util/Map;

    invoke-static {p1}, Lio/dcloud/uts/JSON;->stringify(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/uts/ObjectKt;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    :goto_4a
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final stringifyQuery$lambda$3(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 1322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3d

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x26

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1323
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public createRequest(Luts/sdk/modules/DCloudUniNetwork/RequestOptions;Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;)Lokhttp3/Request;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Luts/sdk/modules/DCloudUniNetwork/RequestOptions<",
            "TT;>;",
            "Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;",
            ")",
            "Lokhttp3/Request;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "invalid URL"

    const-string v3, "600009"

    const-string v4, "cause"

    const-string v5, "errorMsg"

    const-string v6, "errorCode"

    const-string v7, "-1"

    const-string v8, "statusCode"

    const-string v9, "param"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "listener"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1157
    new-instance v9, Lokhttp3/Request$Builder;

    invoke-direct {v9}, Lokhttp3/Request$Builder;-><init>()V

    const/4 v10, 0x0

    .line 1159
    :try_start_22
    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_29} :catch_2fd

    .line 1172
    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getHeader()Lio/dcloud/uts/UTSJSONObject;

    move-result-object v12

    if-nez v12, :cond_38

    .line 1173
    new-array v12, v10, [Lkotlin/Pair;

    invoke-static {v12}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v12

    invoke-virtual {v0, v12}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->setHeader(Lio/dcloud/uts/UTSJSONObject;)V

    .line 1178
    :cond_38
    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getHeader()Lio/dcloud/uts/UTSJSONObject;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v12}, Lio/dcloud/uts/UTSJSONObject;->toJSONObject()Lcom/alibaba/fastjson/JSON;

    move-result-object v12

    const-string v13, "null cannot be cast to non-null type com.alibaba.fastjson.JSONObject"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Lcom/alibaba/fastjson/JSONObject;

    .line 1179
    invoke-virtual {v12}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-static {v13}, Lio/dcloud/uts/UTSIteratorKt;->resolveUTSKeyIterator(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const-string v14, "application/x-www-form-urlencoded; charset=UTF-8"

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_5d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    const-string v10, "User-Agent"

    const-string v11, ""

    const/4 v0, 0x1

    if-eqz v17, :cond_114

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v20, v13

    move-object/from16 v13, v17

    check-cast v13, Ljava/lang/String;

    move-object/from16 v17, v14

    .line 1180
    const-string v14, "Accept-Encoding"

    invoke-static {v13, v14, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    const/16 v21, 0xa

    if-eqz v14, :cond_b6

    .line 1181
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move/from16 v23, v15

    move-object/from16 v15, v22

    check-cast v15, Ljava/lang/Number;

    invoke-static {v0, v15}, Lio/dcloud/uts/NumberKt;->toString_number_nullable(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1182
    invoke-static {v0}, Lio/dcloud/uts/StringKt;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v14, "gzip"

    const/4 v1, 0x0

    const/4 v15, 0x2

    invoke-static {v0, v14, v1, v15, v1}, Lio/dcloud/uts/StringKt;->includes$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v14, v17

    move-object/from16 v13, v20

    move/from16 v15, v23

    :goto_b4
    const/4 v10, 0x0

    goto :goto_5d

    :cond_b6
    move/from16 v23, v15

    .line 1186
    :cond_b8
    const-string v0, "Content-Type"

    const/4 v1, 0x1

    invoke-static {v13, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-static {v1, v14}, Lio/dcloud/uts/NumberKt;->toString(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    const/4 v15, 0x1

    goto :goto_e5

    :cond_e1
    move-object/from16 v14, v17

    move/from16 v15, v23

    :goto_e5
    if-nez v16, :cond_f0

    const/4 v1, 0x1

    .line 1190
    invoke-static {v13, v10, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f0

    const/16 v16, 0x1

    .line 1193
    :cond_f0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-static {v1, v10}, Lio/dcloud/uts/NumberKt;->toString_number_nullable(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v13, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v13, v20

    goto :goto_b4

    :cond_114
    move-object/from16 v17, v14

    move/from16 v23, v15

    .line 1195
    const-string v0, "GET"

    if-nez v23, :cond_129

    .line 1196
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_129

    .line 1197
    const-string v14, "application/json"

    goto :goto_12b

    :cond_129
    move-object/from16 v14, v17

    :goto_12b
    if-nez v16, :cond_14b

    .line 1201
    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    sget-object v12, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v12}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v12}, Lio/dcloud/uts/UTSAndroid;->getWebViewInfo(Landroid/content/Context;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v1

    const-string v12, "ua"

    invoke-virtual {v1, v12}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static {v1, v13, v12, v13}, Lio/dcloud/uts/NumberKt;->toString_number_nullable$default(Ljava/lang/Object;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1202
    invoke-virtual {v9, v10, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 1204
    :cond_14b
    const-string v1, "POST"

    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getMethod()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v10, "string"

    if-nez v1, :cond_205

    const-string v1, "PUT"

    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getMethod()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_205

    const-string v1, "PATCH"

    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getMethod()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_205

    const-string v1, "DELETE"

    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getMethod()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17f

    goto/16 :goto_205

    .line 1250
    :cond_17f
    const-string v1, "HEAD"

    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getMethod()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_192

    .line 1251
    invoke-virtual {v9}, Lokhttp3/Request$Builder;->head()Lokhttp3/Request$Builder;

    :cond_18e
    :goto_18e
    move-object/from16 v12, p0

    goto/16 :goto_2f8

    .line 1252
    :cond_192
    const-string v1, "OPTIONS"

    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getMethod()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a7

    .line 1253
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getMethod()Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x0

    invoke-virtual {v9, v0, v13}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_18e

    .line 1254
    :cond_1a7
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getMethod()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b7

    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18e

    .line 1255
    :cond_1b7
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18e

    .line 1258
    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1, v0}, Lio/dcloud/uts/UTSAndroid;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d0

    .line 1259
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/uts/JSON;->parseObject(Ljava/lang/String;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v0

    goto :goto_1d8

    .line 1260
    :cond_1d0
    instance-of v1, v0, Lio/dcloud/uts/UTSJSONObject;

    if-eqz v1, :cond_1d7

    .line 1261
    check-cast v0, Lio/dcloud/uts/UTSJSONObject;

    goto :goto_1d8

    :cond_1d7
    const/4 v0, 0x0

    :goto_1d8
    if-eqz v0, :cond_18e

    .line 1264
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getUrl()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v12, p0

    .line 1266
    :try_start_1e0
    invoke-direct {v12, v1, v0}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->stringifyQuery(Ljava/lang/String;Lio/dcloud/uts/UTSJSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;
    :try_end_1e7
    .catch Ljava/lang/Exception; {:try_start_1e0 .. :try_end_1e7} :catch_1e9

    goto/16 :goto_2f8

    :catch_1e9
    move-exception v0

    const/4 v1, 0x0

    .line 1268
    new-array v1, v1, [Lkotlin/Pair;

    .line 1269
    invoke-static {v1}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v1

    .line 1270
    invoke-virtual {v1, v8, v7}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1271
    invoke-virtual {v1, v6, v3}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1272
    invoke-virtual {v1, v5, v2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1273
    invoke-virtual {v1, v4, v0}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v13, p2

    .line 1275
    invoke-virtual {v13, v1}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    :goto_202
    const/16 v19, 0x0

    return-object v19

    :cond_205
    :goto_205
    move-object/from16 v12, p0

    move-object/from16 v13, p2

    .line 1205
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_21a

    const/16 v18, 0x0

    .line 1206
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v13, v0}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;->onProgress(Ljava/lang/Number;)V

    .line 1209
    :cond_21a
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getData()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    if-eqz v0, :cond_2c3

    .line 1210
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/dcloud/uts/UTSAndroid;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23e

    .line 1211
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    goto/16 :goto_2c3

    .line 1212
    :cond_23e
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/uts/ArrayBuffer;

    if-eqz v0, :cond_27c

    .line 1214
    :try_start_246
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getData()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type io.dcloud.uts.ArrayBuffer"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/dcloud/uts/ArrayBuffer;

    invoke-virtual {v0}, Lio/dcloud/uts/ArrayBuffer;->toByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    const-string v0, "array(...)"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_25e
    .catch Ljava/lang/Exception; {:try_start_246 .. :try_end_25e} :catch_25f

    goto :goto_2c3

    :catch_25f
    move-exception v0

    const/4 v1, 0x0

    .line 1215
    new-array v1, v1, [Lkotlin/Pair;

    .line 1216
    invoke-static {v1}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v1

    .line 1217
    invoke-virtual {v1, v8, v7}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1218
    const-string v2, "602001"

    invoke-virtual {v1, v6, v2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1219
    const-string v2, "request system error"

    invoke-virtual {v1, v5, v2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1220
    invoke-virtual {v1, v4, v0}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1222
    invoke-virtual {v13, v1}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    const/4 v2, 0x0

    return-object v2

    :cond_27c
    const/4 v2, 0x0

    .line 1226
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/uts/UTSJSONObject;

    if-eqz v0, :cond_2c3

    .line 1227
    const-string v0, "application/x-www-form-urlencoded"

    const/4 v15, 0x2

    invoke-static {v14, v0, v2, v15, v2}, Lio/dcloud/uts/StringKt;->indexOf$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2bb

    .line 1228
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getData()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type io.dcloud.uts.UTSJSONObject"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/dcloud/uts/UTSJSONObject;

    .line 1229
    invoke-virtual {v0}, Lio/dcloud/uts/UTSJSONObject;->toMap()Lio/dcloud/uts/Map;

    move-result-object v0

    .line 1230
    new-instance v2, Lio/dcloud/uts/UTSArray;

    invoke-direct {v2}, Lio/dcloud/uts/UTSArray;-><init>()V

    .line 1231
    new-instance v3, Luts/sdk/modules/DCloudUniNetwork/NetworkManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager$$ExternalSyntheticLambda0;-><init>(Lio/dcloud/uts/UTSArray;)V

    invoke-virtual {v0, v3}, Lio/dcloud/uts/Map;->forEach(Lkotlin/jvm/functions/Function2;)V

    .line 1234
    const-string v0, "&"

    invoke-virtual {v2, v0}, Lio/dcloud/uts/UTSArray;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_2c3

    .line 1236
    :cond_2bb
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/uts/JSON;->stringify(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1240
    :cond_2c3
    :goto_2c3
    instance-of v0, v11, [B

    if-eqz v0, :cond_2d9

    .line 1241
    invoke-static {v14}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    check-cast v11, [B

    invoke-static {v0, v11}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    .line 1242
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_2ed

    .line 1244
    :cond_2d9
    invoke-static {v14}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/String;

    invoke-static {v0, v11}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 1245
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    :goto_2ed
    const/16 v0, 0x64

    .line 1248
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v13, v0}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;->onProgress(Ljava/lang/Number;)V

    .line 1282
    :goto_2f8
    invoke-virtual {v9}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    return-object v0

    :catch_2fd
    move-exception v0

    move-object/from16 v12, p0

    move-object v13, v1

    const/4 v1, 0x0

    .line 1161
    new-array v1, v1, [Lkotlin/Pair;

    .line 1162
    invoke-static {v1}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v1

    .line 1163
    invoke-virtual {v1, v8, v7}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1164
    invoke-virtual {v1, v6, v3}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1165
    invoke-virtual {v1, v5, v2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1166
    invoke-virtual {v1, v4, v0}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1168
    invoke-virtual {v13, v1}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    goto/16 :goto_202
.end method

.method public createRequestClient(Luts/sdk/modules/DCloudUniNetwork/RequestOptions;)Lokhttp3/OkHttpClient;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Luts/sdk/modules/DCloudUniNetwork/RequestOptions<",
            "TT;>;)",
            "Lokhttp3/OkHttpClient;"
        }
    .end annotation

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1126
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 1127
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getTimeout()Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 1128
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getTimeout()Ljava/lang/Number;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_1f

    :cond_1c
    const-wide/32 v1, 0xea60

    .line 1132
    :goto_1f
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 1133
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 1134
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 1135
    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    .line 1136
    new-instance v1, Luts/sdk/modules/DCloudUniNetwork/CookieInterceptor;

    invoke-direct {v1}, Luts/sdk/modules/DCloudUniNetwork/CookieInterceptor;-><init>()V

    check-cast v1, Lokhttp3/Interceptor;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 1137
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getFirstIpv4()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 1138
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getFirstIpv4()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1140
    new-instance v1, Luts/sdk/modules/DCloudUniNetwork/OKDns;

    invoke-direct {v1}, Luts/sdk/modules/DCloudUniNetwork/OKDns;-><init>()V

    .line 1141
    check-cast v1, Lokhttp3/Dns;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 1144
    :cond_5e
    sget-object v1, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->connectPool:Lokhttp3/ConnectionPool;

    if-nez v1, :cond_69

    .line 1145
    new-instance v1, Lokhttp3/ConnectionPool;

    invoke-direct {v1}, Lokhttp3/ConnectionPool;-><init>()V

    sput-object v1, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->connectPool:Lokhttp3/ConnectionPool;

    .line 1147
    :cond_69
    sget-object v1, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->connectPool:Lokhttp3/ConnectionPool;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    .line 1148
    iget-object v1, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->requestExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_7a

    const/16 v1, 0xa

    .line 1149
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->requestExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 1151
    :cond_7a
    new-instance v1, Lokhttp3/Dispatcher;

    iget-object v2, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->requestExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lokhttp3/Dispatcher;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    .line 1152
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getEnableQuic()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_8d

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1154
    :cond_8d
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public downloadFile(Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;)Luts/sdk/modules/DCloudUniNetwork/DownloadTask;
    .registers 4

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1338
    sget-object v0, Luts/sdk/modules/DCloudUniNetwork/DownloadController;->Companion:Luts/sdk/modules/DCloudUniNetwork/DownloadController$Companion;

    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniNetwork/DownloadController$Companion;->getInstance()Luts/sdk/modules/DCloudUniNetwork/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/DownloadController;->downloadFile(Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;)Luts/sdk/modules/DCloudUniNetwork/DownloadTask;

    move-result-object p1

    return-object p1
.end method

.method public request(Luts/sdk/modules/DCloudUniNetwork/RequestOptions;Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;)Luts/sdk/modules/DCloudUniNetwork/RequestTask;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Luts/sdk/modules/DCloudUniNetwork/RequestOptions<",
            "TT;>;",
            "Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;",
            ")",
            "Luts/sdk/modules/DCloudUniNetwork/RequestTask;"
        }
    .end annotation

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1098
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getData()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_67

    .line 1099
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/uts/UTSJSONObject;

    if-nez v0, :cond_67

    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getData()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSAndroid;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "string"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/uts/ArrayBuffer;

    if-eqz v0, :cond_35

    goto :goto_67

    .line 1100
    :cond_35
    new-array p1, v1, [Lkotlin/Pair;

    .line 1101
    invoke-static {p1}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object p1

    .line 1102
    const-string v0, "statusCode"

    const-string v1, "-1"

    invoke-virtual {p1, v0, v1}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1103
    const-string v0, "errorCode"

    const-string v1, "600008"

    invoke-virtual {p1, v0, v1}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1104
    const-string v0, "errorMsg"

    const-string v1, "the data parameter type is invalid"

    invoke-virtual {p1, v0, v1}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1105
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "he data parameter type is invalid"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v1, "cause"

    invoke-virtual {p1, v1, v0}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1107
    invoke-virtual {p2, p1}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    .line 1109
    new-instance p1, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;

    invoke-direct {p1, v2}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;-><init>(Lokhttp3/Call;)V

    check-cast p1, Luts/sdk/modules/DCloudUniNetwork/RequestTask;

    return-object p1

    .line 1113
    :cond_67
    :goto_67
    invoke-virtual {p2}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;->onStart()V

    .line 1115
    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->createRequestClient(Luts/sdk/modules/DCloudUniNetwork/RequestOptions;)Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 1116
    invoke-virtual {p0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->createRequest(Luts/sdk/modules/DCloudUniNetwork/RequestOptions;Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;)Lokhttp3/Request;

    move-result-object v3

    if-nez v3, :cond_7c

    .line 1118
    new-instance p1, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;

    invoke-direct {p1, v2}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;-><init>(Lokhttp3/Call;)V

    check-cast p1, Luts/sdk/modules/DCloudUniNetwork/RequestTask;

    return-object p1

    .line 1120
    :cond_7c
    invoke-virtual {v0, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    const-string v2, "newCall(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1121
    new-instance v2, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;

    invoke-direct {v2, v0}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;-><init>(Lokhttp3/Call;)V

    .line 1122
    new-instance v3, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getEnableChunked()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_96

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_96
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v3, p2, v2, v1, p1}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;-><init>(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;ZLandroid/os/Looper;)V

    check-cast v3, Lokhttp3/Callback;

    invoke-interface {v0, v3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 1123
    check-cast v2, Luts/sdk/modules/DCloudUniNetwork/RequestTask;

    return-object v2
.end method

.method public uploadFile(Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;)Luts/sdk/modules/DCloudUniNetwork/UploadTask;
    .registers 4

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1335
    sget-object v0, Luts/sdk/modules/DCloudUniNetwork/UploadController;->Companion:Luts/sdk/modules/DCloudUniNetwork/UploadController$Companion;

    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniNetwork/UploadController$Companion;->getInstance()Luts/sdk/modules/DCloudUniNetwork/UploadController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/UploadController;->uploadFile(Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;)Luts/sdk/modules/DCloudUniNetwork/UploadTask;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniNetwork.NetworkManager.Companion (uts.sdk.modules.DCloudUniNetwork.NetworkManager$Companion)
.class public final Luts/sdk/modules/DCloudUniNetwork/NetworkManager$Companion;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luts/sdk/modules/DCloudUniNetwork/NetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0008\u001a\u00020\u0005R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/NetworkManager$Companion;",
        "",
        "<init>",
        "()V",
        "instance",
        "Luts/sdk/modules/DCloudUniNetwork/NetworkManager;",
        "connectPool",
        "Lokhttp3/ConnectionPool;",
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

    .line 1340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Luts/sdk/modules/DCloudUniNetwork/NetworkManager;
    .registers 2

    .line 1344
    invoke-static {}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->access$getInstance$cp()Luts/sdk/modules/DCloudUniNetwork/NetworkManager;

    move-result-object v0

    if-nez v0, :cond_e

    .line 1345
    new-instance v0, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;-><init>()V

    invoke-static {v0}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->access$setInstance$cp(Luts/sdk/modules/DCloudUniNetwork/NetworkManager;)V

    .line 1347
    :cond_e
    invoke-static {}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->access$getInstance$cp()Luts/sdk/modules/DCloudUniNetwork/NetworkManager;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

###### Class uts.sdk.modules.DCloudUniNetwork.NetworkManager$$ExternalSyntheticLambda0 (uts.sdk.modules.DCloudUniNetwork.NetworkManager$$ExternalSyntheticLambda0)
.class public final synthetic Luts/sdk/modules/DCloudUniNetwork/NetworkManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lio/dcloud/uts/UTSArray;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/uts/UTSArray;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkManager$$ExternalSyntheticLambda0;->f$0:Lio/dcloud/uts/UTSArray;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkManager$$ExternalSyntheticLambda0;->f$0:Lio/dcloud/uts/UTSArray;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->$r8$lambda$X_66bEbRy8YLE9_Su8WI3FTtm_I(Lio/dcloud/uts/UTSArray;Ljava/lang/Object;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniNetwork.NetworkManager$$ExternalSyntheticLambda1 (uts.sdk.modules.DCloudUniNetwork.NetworkManager$$ExternalSyntheticLambda1)
.class public final synthetic Luts/sdk/modules/DCloudUniNetwork/NetworkManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lio/dcloud/uts/Map;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/uts/Map;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkManager$$ExternalSyntheticLambda1;->f$0:Lio/dcloud/uts/Map;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkManager$$ExternalSyntheticLambda1;->f$0:Lio/dcloud/uts/Map;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Number;

    invoke-static {v0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->$r8$lambda$Jq33KBxqV6NXGdXQi8zIZ65R_ns(Lio/dcloud/uts/Map;Ljava/lang/String;Ljava/lang/Number;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniNetwork.NetworkManager$$ExternalSyntheticLambda2 (uts.sdk.modules.DCloudUniNetwork.NetworkManager$$ExternalSyntheticLambda2)
.class public final synthetic Luts/sdk/modules/DCloudUniNetwork/NetworkManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lio/dcloud/uts/Map;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/uts/Map;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkManager$$ExternalSyntheticLambda2;->f$0:Lio/dcloud/uts/Map;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkManager$$ExternalSyntheticLambda2;->f$0:Lio/dcloud/uts/Map;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->$r8$lambda$xVaFWECYQ3juFS9WAcVg7OExnDA(Lio/dcloud/uts/Map;Ljava/lang/Object;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniNetwork.NetworkManager$$ExternalSyntheticLambda3 (uts.sdk.modules.DCloudUniNetwork.NetworkManager$$ExternalSyntheticLambda3)
.class public final synthetic Luts/sdk/modules/DCloudUniNetwork/NetworkManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkManager$$ExternalSyntheticLambda3;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkManager$$ExternalSyntheticLambda3;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->$r8$lambda$JR9yrBCdjeoCz-8wNYDY0NEh_9Q(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
