###### Class io.dcloud.feature.utsplugin.ProxyModule (io.dcloud.feature.utsplugin.ProxyModule)
.class public final Lio/dcloud/feature/utsplugin/ProxyModule;
.super Lio/dcloud/feature/uniapp/common/UniModule;
.source "UTSProxyModule.kt"

# interfaces
.implements Lio/dcloud/common/DHInterface/message/IObserveAble;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/utsplugin/ProxyModule$Companion;,
        Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;,
        Lio/dcloud/feature/utsplugin/ProxyModule$ModuleChecker;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUTSProxyModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UTSProxyModule.kt\nio/dcloud/feature/utsplugin/ProxyModule\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,1341:1\n1563#2:1342\n1634#2,3:1343\n37#3:1346\n36#3,3:1347\n37#3:1350\n36#3,3:1351\n37#3:1354\n36#3,3:1355\n37#3:1358\n36#3,3:1359\n44#4,4:1362\n*S KotlinDebug\n*F\n+ 1 UTSProxyModule.kt\nio/dcloud/feature/utsplugin/ProxyModule\n*L\n206#1:1342\n206#1:1343,3\n942#1:1346\n942#1:1347,3\n945#1:1350\n945#1:1351,3\n1015#1:1354\n1015#1:1355,3\n1058#1:1358\n1058#1:1359,3\n1261#1:1362,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 ;2\u00020\u00012\u00020\u0002:\u0003;<=B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\"\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u0006H\u0016J\u0008\u0010\u000e\u001a\u00020\u0006H\u0016J\u0008\u0010\u000f\u001a\u00020\u0006H\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J+\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u0016\u001a\u00020\u0017H\u0016\u00a2\u0006\u0002\u0010\u0018J&\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\n\u0010\u001b\u001a\u0006\u0012\u0002\u0008\u00030\u001c2\u0006\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J2\u0010 \u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010!2\n\u0010\u001b\u001a\u0006\u0012\u0002\u0008\u00030\u001c2\u0006\u0010\"\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J,\u0010#\u001a\u0004\u0018\u00010$2\n\u0010%\u001a\u0006\u0012\u0002\u0008\u00030!2\u000e\u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010$0\u0014H\u0086@\u00a2\u0006\u0002\u0010\'J:\u0010(\u001a\u0004\u0018\u00010)2\u0006\u0010*\u001a\u00020\u001f2\n\u0010\u001b\u001a\u0006\u0012\u0002\u0008\u00030\u001c2\u0008\u0010+\u001a\u0004\u0018\u00010$2\u0008\u0010,\u001a\u0004\u0018\u00010-2\u0006\u0010.\u001a\u00020/H\u0002J\"\u00100\u001a\u0004\u0018\u00010$2\u0006\u00101\u001a\u00020)2\u0008\u0010,\u001a\u0004\u0018\u00010-H\u0087@\u00a2\u0006\u0002\u00102J6\u00103\u001a\u0002H4\"\u0004\u0008\u0000\u00104*\u0008\u0012\u0004\u0012\u0002H4052\u0016\u00106\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010$0\u0014\"\u0004\u0018\u00010$H\u0087@\u00a2\u0006\u0002\u00107J \u00108\u001a\u00020\u00062\u0006\u00101\u001a\u00020)2\u0008\u0010,\u001a\u0004\u0018\u00010-H\u0097@\u00a2\u0006\u0002\u00102J\u0008\u00109\u001a\u00020:H\u0016\u00a8\u0006>"
    }
    d2 = {
        "Lio/dcloud/feature/utsplugin/ProxyModule;",
        "Lio/dcloud/feature/uniapp/common/UniModule;",
        "Lio/dcloud/common/DHInterface/message/IObserveAble;",
        "<init>",
        "()V",
        "onActivityPause",
        "",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onActivityResume",
        "onActivityStop",
        "onActivityDestroy",
        "onActivityBack",
        "",
        "onRequestPermissionsResult",
        "permissions",
        "",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "findTargetMethod",
        "Ljava/lang/reflect/Method;",
        "javaClazz",
        "Ljava/lang/Class;",
        "methodName",
        "option",
        "Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;",
        "findTargetFunc",
        "Lkotlin/reflect/KFunction;",
        "isCompanion",
        "getFunctionExecuteRet",
        "",
        "targetFunction",
        "paramArray",
        "(Lkotlin/reflect/KFunction;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "wrapDoTypeAction",
        "Lcom/alibaba/fastjson/JSONObject;",
        "inputOption",
        "targetInstance",
        "callback",
        "Lcom/taobao/weex/bridge/JSCallback;",
        "errRet",
        "Lio/dcloud/feature/utsplugin/ReturnResult;",
        "invokeSync",
        "options",
        "(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "callSuspend",
        "R",
        "Lkotlin/reflect/KCallable;",
        "args",
        "(Lkotlin/reflect/KCallable;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "invokeAsync",
        "getActionObserverID",
        "Lio/dcloud/common/DHInterface/message/EnumUniqueID;",
        "Companion",
        "InputOption",
        "ModuleChecker",
        "utsplugin_release"
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
.field public static final Companion:Lio/dcloud/feature/utsplugin/ProxyModule$Companion;

.field private static instanceDynamicId:I

.field private static utsInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/dcloud/feature/utsplugin/ProxyModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/dcloud/feature/utsplugin/ProxyModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/dcloud/feature/utsplugin/ProxyModule;->Companion:Lio/dcloud/feature/utsplugin/ProxyModule$Companion;

    .line 268
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lio/dcloud/feature/utsplugin/ProxyModule;->utsInstances:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lio/dcloud/feature/uniapp/common/UniModule;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstanceDynamicId$cp()I
    .registers 1

    .line 38
    sget v0, Lio/dcloud/feature/utsplugin/ProxyModule;->instanceDynamicId:I

    return v0
.end method

.method public static final synthetic access$getUtsInstances$cp()Ljava/util/Map;
    .registers 1

    .line 38
    sget-object v0, Lio/dcloud/feature/utsplugin/ProxyModule;->utsInstances:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$setInstanceDynamicId$cp(I)V
    .registers 1

    .line 38
    sput p0, Lio/dcloud/feature/utsplugin/ProxyModule;->instanceDynamicId:I

    return-void
.end method

.method public static final synthetic access$setUtsInstances$cp(Ljava/util/Map;)V
    .registers 1

    .line 38
    sput-object p0, Lio/dcloud/feature/utsplugin/ProxyModule;->utsInstances:Ljava/util/Map;

    return-void
.end method

.method private final findTargetFunc(Ljava/lang/Class;ZLjava/lang/String;Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;)Lkotlin/reflect/KFunction;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z",
            "Ljava/lang/String;",
            "Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;",
            ")",
            "Lkotlin/reflect/KFunction<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2d

    .line 176
    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/full/KClasses;->getCompanionObject(Lkotlin/reflect/KClass;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/reflect/full/KClasses;->getMemberFunctions(Lkotlin/reflect/KClass;)Ljava/util/Collection;

    move-result-object p1

    .line 177
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_ed

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/reflect/KFunction;

    .line 178
    invoke-interface {p2}, Lkotlin/reflect/KFunction;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_16

    return-object p2

    .line 185
    :cond_2d
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    .line 188
    invoke-static {p1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    move-object p2, v0

    :goto_36
    move-object v1, p2

    :cond_37
    :goto_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_df

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 190
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 199
    invoke-virtual {p4}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getParamArray()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_a6

    .line 206
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getKotlinFunction(Ljava/lang/reflect/Method;)Lkotlin/reflect/KFunction;

    move-result-object v1

    if-eqz v1, :cond_a2

    invoke-interface {v1}, Lkotlin/reflect/KFunction;->getParameters()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a2

    check-cast v1, Ljava/lang/Iterable;

    .line 1342
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 1343
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x0

    :goto_7b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1344
    check-cast v6, Lkotlin/reflect/KParameter;

    .line 207
    invoke-interface {v6}, Lkotlin/reflect/KParameter;->getType()Lkotlin/reflect/KType;

    move-result-object v7

    invoke-interface {v7}, Lkotlin/reflect/KType;->isMarkedNullable()Z

    move-result v7

    if-nez v7, :cond_99

    invoke-interface {v6}, Lkotlin/reflect/KParameter;->isOptional()Z

    move-result v6

    if-nez v6, :cond_99

    add-int/lit8 v5, v5, 0x1

    .line 210
    :cond_99
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1344
    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7b

    .line 1345
    :cond_9f
    check-cast v4, Ljava/util/List;

    goto :goto_a3

    :cond_a2
    const/4 v5, 0x0

    :goto_a3
    if-nez v5, :cond_a6

    goto :goto_d9

    .line 221
    :cond_a6
    invoke-virtual {p4}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getParamArray()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    invoke-static {v2}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v4

    if-ne v1, v4, :cond_dc

    .line 228
    invoke-static {v2}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result p2

    const/4 v1, 0x1

    const/4 v4, 0x0

    :goto_ba
    if-ge v4, p2, :cond_d4

    .line 230
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {p4}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getParamArray()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d1

    const/4 v1, 0x0

    :cond_d1
    add-int/lit8 v4, v4, 0x1

    goto :goto_ba

    :cond_d4
    if-eqz v1, :cond_d9

    move-object p2, v2

    move-object v1, p2

    goto :goto_df

    :cond_d9
    :goto_d9
    move-object p2, v2

    goto/16 :goto_36

    :cond_dc
    move-object v1, v2

    goto/16 :goto_37

    :cond_df
    :goto_df
    if-eqz p2, :cond_e6

    .line 252
    invoke-static {p2}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getKotlinFunction(Ljava/lang/reflect/Method;)Lkotlin/reflect/KFunction;

    move-result-object p1

    return-object p1

    :cond_e6
    if-eqz v1, :cond_ed

    .line 255
    invoke-static {v1}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getKotlinFunction(Ljava/lang/reflect/Method;)Lkotlin/reflect/KFunction;

    move-result-object p1

    return-object p1

    :cond_ed
    return-object v0
.end method

.method private final findTargetMethod(Ljava/lang/Class;Ljava/lang/String;Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;)Ljava/lang/reflect/Method;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 125
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    .line 127
    invoke-static {p1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 129
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 131
    invoke-virtual {p3}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getParamArray()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v3

    if-ne v2, v3, :cond_9

    .line 140
    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_34
    if-ge v4, v0, :cond_4e

    .line 142
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {p3}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getParamArray()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4b

    const/4 v3, 0x0

    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    :cond_4e
    if-eqz v3, :cond_51

    return-object v1

    :cond_51
    move-object v0, v1

    goto :goto_9

    :cond_53
    return-object v0
.end method

.method private final wrapDoTypeAction(Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;Ljava/lang/Class;Ljava/lang/Object;Lcom/taobao/weex/bridge/JSCallback;Lio/dcloud/feature/utsplugin/ReturnResult;)Lcom/alibaba/fastjson/JSONObject;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Lcom/taobao/weex/bridge/JSCallback;",
            "Lio/dcloud/feature/utsplugin/ReturnResult;",
            ")",
            "Lcom/alibaba/fastjson/JSONObject;"
        }
    .end annotation

    move-object/from16 v2, p5

    .line 665
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 666
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "setter"

    const/4 v7, 0x1

    invoke-static {v3, v1, v7}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_f7

    .line 668
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "set"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_5b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 669
    invoke-static {v4}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 670
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "getDefault(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lkotlin/text/CharsKt;->titlecase(CLjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    goto :goto_46

    .line 673
    :cond_42
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    :goto_46
    check-cast v4, Ljava/lang/CharSequence;

    .line 668
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "substring(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v1, p2

    .line 677
    invoke-direct {v9, v1, v0, v10}, Lio/dcloud/feature/utsplugin/ProxyModule;->findTargetMethod(Ljava/lang/Class;Ljava/lang/String;Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;)Ljava/lang/reflect/Method;

    move-result-object v11

    if-nez v11, :cond_88

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "method not found:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getInputFlag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/dcloud/feature/utsplugin/ReturnResult;->updateError(Ljava/lang/String;)V

    .line 681
    invoke-virtual {v2}, Lio/dcloud/feature/utsplugin/ReturnResult;->toJSON()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0

    :cond_88
    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    move-object/from16 v12, p4

    .line 684
    invoke-static/range {v10 .. v15}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->obtainParamsWithDefault$default(Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;Ljava/lang/reflect/Method;Lcom/taobao/weex/bridge/JSCallback;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 686
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 691
    :try_start_96
    new-instance v0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2;

    const/4 v6, 0x0

    move-object/from16 v4, p3

    move-object v3, v11

    invoke-direct/range {v0 .. v6}, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/dcloud/feature/utsplugin/ReturnResult;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v0, v7, v8}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_a4} :catch_a5

    goto :goto_d3

    :catch_a5
    move-exception v0

    .line 708
    iput-object v8, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 709
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    const-string v4, "targetMethod error::"

    if-eqz v3, :cond_c4

    .line 710
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/dcloud/feature/utsplugin/ReturnResult;->updateError(Ljava/lang/String;)V

    goto :goto_d3

    .line 712
    :cond_c4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/dcloud/feature/utsplugin/ReturnResult;->updateError(Ljava/lang/String;)V

    .line 717
    :goto_d3
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_f9

    .line 719
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    instance-of v0, v0, Lio/dcloud/uts/UTSJSONObject;

    if-eqz v0, :cond_ee

    .line 720
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type io.dcloud.uts.UTSJSONObject"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/dcloud/uts/UTSJSONObject;

    .line 721
    invoke-virtual {v0}, Lio/dcloud/uts/UTSJSONObject;->toJSONObject()Lcom/alibaba/fastjson/JSON;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/dcloud/feature/utsplugin/ReturnResult;->updateJSON(Ljava/lang/Object;)V

    goto :goto_f3

    .line 723
    :cond_ee
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lio/dcloud/feature/utsplugin/ReturnResult;->updateJSON(Ljava/lang/Object;)V

    .line 725
    :goto_f3
    invoke-virtual {v2}, Lio/dcloud/feature/utsplugin/ReturnResult;->toJSON()Lcom/alibaba/fastjson/JSONObject;

    goto :goto_f9

    :cond_f7
    move-object/from16 v9, p0

    :cond_f9
    :goto_f9
    return-object v8
.end method


# virtual methods
.method public final callSuspend(Lkotlin/reflect/KCallable;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KCallable<",
            "+TR;>;[",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/dcloud/feature/utsplugin/ProxyModule$callSuspend$1;

    if-eqz v0, :cond_14

    move-object v0, p3

    check-cast v0, Lio/dcloud/feature/utsplugin/ProxyModule$callSuspend$1;

    iget v1, v0, Lio/dcloud/feature/utsplugin/ProxyModule$callSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p3, v0, Lio/dcloud/feature/utsplugin/ProxyModule$callSuspend$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/dcloud/feature/utsplugin/ProxyModule$callSuspend$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lio/dcloud/feature/utsplugin/ProxyModule$callSuspend$1;

    invoke-direct {v0, p0, p3}, Lio/dcloud/feature/utsplugin/ProxyModule$callSuspend$1;-><init>(Lio/dcloud/feature/utsplugin/ProxyModule;Lkotlin/coroutines/Continuation;)V

    :goto_19
    iget-object p3, v0, Lio/dcloud/feature/utsplugin/ProxyModule$callSuspend$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1048
    iget v2, v0, Lio/dcloud/feature/utsplugin/ProxyModule$callSuspend$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3a

    if-ne v2, v3, :cond_32

    iget-object p1, v0, Lio/dcloud/feature/utsplugin/ProxyModule$callSuspend$1;->L$1:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iget-object p1, v0, Lio/dcloud/feature/utsplugin/ProxyModule$callSuspend$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/reflect/KCallable;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_7e

    :cond_32
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1051
    invoke-interface {p1}, Lkotlin/reflect/KCallable;->isSuspend()Z

    move-result p3

    if-nez p3, :cond_4d

    array-length p3, p2

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/reflect/KCallable;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1052
    :cond_4d
    instance-of p3, p1, Lkotlin/reflect/KFunction;

    if-eqz p3, :cond_a4

    .line 1054
    iput-object p1, v0, Lio/dcloud/feature/utsplugin/ProxyModule$callSuspend$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/dcloud/feature/utsplugin/ProxyModule$callSuspend$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lio/dcloud/feature/utsplugin/ProxyModule$callSuspend$1;->label:I

    check-cast v0, Lkotlin/coroutines/Continuation;

    .line 1056
    invoke-static {p2}, Lkotlin/collections/ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 1057
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1058
    check-cast p2, Ljava/util/Collection;

    const/4 p3, 0x0

    .line 1361
    new-array p3, p3, [Ljava/lang/Object;

    invoke-interface {p2, p3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 1060
    array-length p3, p2

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/reflect/KCallable;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 1054
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p3, p2, :cond_7b

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_7b
    if-ne p3, v1, :cond_7e

    return-object v1

    .line 1064
    :cond_7e
    :goto_7e
    check-cast p1, Lkotlin/reflect/KFunction;

    invoke-interface {p1}, Lkotlin/reflect/KFunction;->getReturnType()Lkotlin/reflect/KType;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object p2

    const-class v0, Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a3

    invoke-interface {p1}, Lkotlin/reflect/KFunction;->getReturnType()Lkotlin/reflect/KType;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/KType;->isMarkedNullable()Z

    move-result p1

    if-nez p1, :cond_a3

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast p1, Ljava/lang/Object;

    return-object p1

    :cond_a3
    return-object p3

    .line 1052
    :cond_a4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Cannot callSuspend on a property "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": suspend properties are not supported yet"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getActionObserverID()Lio/dcloud/common/DHInterface/message/EnumUniqueID;
    .registers 2

    .line 1336
    sget-object v0, Lio/dcloud/common/DHInterface/message/EnumUniqueID;->FEATURE_UTS:Lio/dcloud/common/DHInterface/message/EnumUniqueID;

    return-object v0
.end method

.method public final getFunctionExecuteRet(Lkotlin/reflect/KFunction;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KFunction<",
            "*>;[",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/dcloud/feature/utsplugin/ProxyModule$getFunctionExecuteRet$1;

    if-eqz v0, :cond_14

    move-object v0, p3

    check-cast v0, Lio/dcloud/feature/utsplugin/ProxyModule$getFunctionExecuteRet$1;

    iget v1, v0, Lio/dcloud/feature/utsplugin/ProxyModule$getFunctionExecuteRet$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p3, v0, Lio/dcloud/feature/utsplugin/ProxyModule$getFunctionExecuteRet$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/dcloud/feature/utsplugin/ProxyModule$getFunctionExecuteRet$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lio/dcloud/feature/utsplugin/ProxyModule$getFunctionExecuteRet$1;

    invoke-direct {v0, p0, p3}, Lio/dcloud/feature/utsplugin/ProxyModule$getFunctionExecuteRet$1;-><init>(Lio/dcloud/feature/utsplugin/ProxyModule;Lkotlin/coroutines/Continuation;)V

    :goto_19
    iget-object p3, v0, Lio/dcloud/feature/utsplugin/ProxyModule$getFunctionExecuteRet$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 640
    iget v2, v0, Lio/dcloud/feature/utsplugin/ProxyModule$getFunctionExecuteRet$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_52

    if-eq v2, v5, :cond_45

    if-eq v2, v4, :cond_40

    if-ne v2, v3, :cond_38

    :goto_2c
    iget-object p1, v0, Lio/dcloud/feature/utsplugin/ProxyModule$getFunctionExecuteRet$1;->L$1:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iget-object p1, v0, Lio/dcloud/feature/utsplugin/ProxyModule$getFunctionExecuteRet$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/reflect/KFunction;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p3

    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_40
    iget-object p1, v0, Lio/dcloud/feature/utsplugin/ProxyModule$getFunctionExecuteRet$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/Deferred;

    goto :goto_2c

    :cond_45
    iget-object p1, v0, Lio/dcloud/feature/utsplugin/ProxyModule$getFunctionExecuteRet$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, [Ljava/lang/Object;

    iget-object p1, v0, Lio/dcloud/feature/utsplugin/ProxyModule$getFunctionExecuteRet$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/reflect/KFunction;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_78

    :cond_52
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 644
    invoke-interface {p1}, Lkotlin/reflect/KFunction;->isSuspend()Z

    move-result p3

    if-eqz p3, :cond_9b

    .line 646
    move-object p3, p1

    check-cast p3, Lkotlin/reflect/KCallable;

    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lio/dcloud/feature/utsplugin/ProxyModule$getFunctionExecuteRet$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lio/dcloud/feature/utsplugin/ProxyModule$getFunctionExecuteRet$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lio/dcloud/feature/utsplugin/ProxyModule$getFunctionExecuteRet$1;->label:I

    invoke-virtual {p0, p3, v2, v0}, Lio/dcloud/feature/utsplugin/ProxyModule;->callSuspend(Lkotlin/reflect/KCallable;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_78

    goto :goto_b7

    :cond_78
    :goto_78
    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.Deferred<kotlin.Any?>"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lkotlinx/coroutines/Deferred;

    .line 647
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lio/dcloud/feature/utsplugin/ProxyModule$getFunctionExecuteRet$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lio/dcloud/feature/utsplugin/ProxyModule$getFunctionExecuteRet$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lio/dcloud/feature/utsplugin/ProxyModule$getFunctionExecuteRet$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lio/dcloud/feature/utsplugin/ProxyModule$getFunctionExecuteRet$1;->label:I

    invoke-interface {p3, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9a

    goto :goto_b7

    :cond_9a
    return-object p1

    .line 649
    :cond_9b
    move-object p3, p1

    check-cast p3, Lkotlin/reflect/KCallable;

    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lio/dcloud/feature/utsplugin/ProxyModule$getFunctionExecuteRet$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lio/dcloud/feature/utsplugin/ProxyModule$getFunctionExecuteRet$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lio/dcloud/feature/utsplugin/ProxyModule$getFunctionExecuteRet$1;->label:I

    invoke-virtual {p0, p3, v2, v0}, Lio/dcloud/feature/utsplugin/ProxyModule;->callSuspend(Lkotlin/reflect/KCallable;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b8

    :goto_b7
    return-object v1

    :cond_b8
    return-object p1
.end method

.method public invokeAsync(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            "Lcom/taobao/weex/bridge/JSCallback;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lio/dcloud/feature/uniapp/annotation/UniJSMethod;
        uiThread = false
    .end annotation

    move-object/from16 v3, p0

    .line 1118
    const-string v9, "ERROR"

    .line 0
    const-string v10, "UTS: targetFunction invoke error - "

    const-string v0, "error: "

    const-string v1, "UTS: "

    .line 1118
    sget-object v2, Lio/dcloud/uts/android/AndroidUTSContext;->INSTANCE:Lio/dcloud/uts/android/AndroidUTSContext;

    iget-object v4, v3, Lio/dcloud/feature/utsplugin/ProxyModule;->mUniSDKInstance:Lio/dcloud/feature/uniapp/AbsSDKInstance;

    const-string v5, "mUniSDKInstance"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lio/dcloud/uts/android/AndroidUTSContext;->initContext(Lio/dcloud/feature/uniapp/AbsSDKInstance;)V

    .line 1120
    new-instance v11, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;

    move-object/from16 v2, p1

    invoke-direct {v11, v2}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;-><init>(Lcom/alibaba/fastjson/JSONObject;)V

    .line 1124
    :try_start_1d
    invoke-virtual {v11}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->isValid()Z

    move-result v2

    if-nez v2, :cond_39

    .line 1126
    invoke-virtual {v11}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 1127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lio/dcloud/common/util/AppConsoleLogUtil;->DCLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 1133
    :cond_39
    invoke-virtual {v11}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->isInstanceAction()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_112

    .line 1136
    sget-object v0, Lio/dcloud/feature/utsplugin/ProxyModule;->utsInstances:Ljava/util/Map;

    invoke-virtual {v11}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getInstanceId()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_58

    .line 1138
    const-string v0, "UTS: instance does not exists"

    invoke-static {v0, v9}, Lio/dcloud/common/util/AppConsoleLogUtil;->DCLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 1142
    :cond_58
    sget-object v0, Lio/dcloud/feature/utsplugin/ProxyModule;->utsInstances:Ljava/util/Map;

    invoke-virtual {v11}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getInstanceId()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1144
    sget-object v1, Lio/dcloud/feature/utsplugin/ProxyModule;->utsInstances:Ljava/util/Map;

    invoke-virtual {v11}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getInstanceId()I

    move-result v4

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1148
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 1149
    invoke-virtual {v11}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v0, v2, v5, v11}, Lio/dcloud/feature/utsplugin/ProxyModule;->findTargetFunc(Ljava/lang/Class;ZLjava/lang/String;Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;)Lkotlin/reflect/KFunction;

    move-result-object v0

    .line 1148
    iput-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1150
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_96

    .line 1152
    const-string v0, "UTS: targetFunction does not exists"

    invoke-static {v0, v9}, Lio/dcloud/common/util/AppConsoleLogUtil;->DCLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 1156
    :cond_96
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iget-object v5, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lkotlin/reflect/KFunction;

    invoke-interface {v5}, Lkotlin/reflect/KFunction;->getReturnType()Lkotlin/reflect/KType;

    move-result-object v5

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    iput-boolean v5, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 1159
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v6, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v12, v6

    check-cast v12, Lkotlin/reflect/KFunction;

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v14, 0x0

    move-object/from16 v13, p2

    invoke-static/range {v11 .. v16}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->obtainParamsWithDefault$default(Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;Lkotlin/reflect/KFunction;Lcom/taobao/weex/bridge/JSCallback;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1160
    iget-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_ca} :catch_214

    .line 1164
    :try_start_ca
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v11

    move-object v2, v0

    new-instance v0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;

    const/4 v6, 0x0

    move-object v1, v5

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/dcloud/feature/utsplugin/ProxyModule;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/taobao/weex/bridge/JSCallback;Lkotlin/coroutines/Continuation;)V

    move-object v14, v0

    check-cast v14, Lkotlin/jvm/functions/Function2;

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_e9} :catch_eb

    goto/16 :goto_237

    :catch_eb
    move-exception v0

    .line 1196
    :try_start_ec
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_fb

    .line 1197
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_ff

    .line 1199
    :cond_fb
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1201
    :goto_ff
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lio/dcloud/common/util/AppConsoleLogUtil;->DCLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_110} :catch_214

    goto/16 :goto_237

    .line 1210
    :cond_112
    :try_start_112
    invoke-virtual {v11}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_11a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_112 .. :try_end_11a} :catch_11b
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_11a} :catch_214

    goto :goto_11c

    :catch_11b
    const/4 v1, 0x0

    :goto_11c
    if-nez v1, :cond_147

    .line 1218
    :try_start_11e
    new-instance v1, Lio/dcloud/feature/utsplugin/ProxyModule$ModuleChecker;

    invoke-direct {v1, v11}, Lio/dcloud/feature/utsplugin/ProxyModule$ModuleChecker;-><init>(Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;)V

    .line 1219
    invoke-virtual {v1}, Lio/dcloud/feature/utsplugin/ProxyModule$ModuleChecker;->shallShowErrorDialog()Z

    move-result v2

    if-eqz v2, :cond_12c

    .line 1220
    invoke-virtual {v1}, Lio/dcloud/feature/utsplugin/ProxyModule$ModuleChecker;->showErrorDialog()V

    .line 1222
    :cond_12c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getInputModuleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lio/dcloud/common/util/AppConsoleLogUtil;->DCLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 1227
    :cond_147
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 1228
    invoke-virtual {v11}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->isCompanion()Z

    move-result v0

    invoke-virtual {v11}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v0, v4, v11}, Lio/dcloud/feature/utsplugin/ProxyModule;->findTargetFunc(Ljava/lang/Class;ZLjava/lang/String;Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;)Lkotlin/reflect/KFunction;

    move-result-object v0

    .line 1227
    iput-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1231
    new-instance v6, Lio/dcloud/feature/utsplugin/FieldMethodDetector;

    invoke-direct {v6, v1, v11}, Lio/dcloud/feature/utsplugin/FieldMethodDetector;-><init>(Ljava/lang/Class;Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;)V

    .line 1232
    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 1234
    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_177

    .line 1236
    invoke-virtual {v6}, Lio/dcloud/feature/utsplugin/FieldMethodDetector;->init()V

    .line 1237
    invoke-virtual {v6}, Lio/dcloud/feature/utsplugin/FieldMethodDetector;->isFieldMethod()Z

    move-result v0

    iput-boolean v0, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 1238
    invoke-virtual {v6}, Lio/dcloud/feature/utsplugin/FieldMethodDetector;->getTargetFunction()Lkotlin/reflect/KFunction;

    move-result-object v0

    iput-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1241
    :cond_177
    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_183

    .line 1243
    const-string v0, "UTS: targetFunction not exists"

    invoke-static {v0, v9}, Lio/dcloud/common/util/AppConsoleLogUtil;->DCLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 1247
    :cond_183
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iget-object v4, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lkotlin/reflect/KFunction;

    invoke-interface {v4}, Lkotlin/reflect/KFunction;->getReturnType()Lkotlin/reflect/KType;

    move-result-object v4

    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    move-object v4, v1

    .line 1250
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v7, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Lkotlin/reflect/KFunction;

    iget-boolean v8, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    move-object/from16 v13, p2

    invoke-virtual {v11, v7, v13, v8}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->obtainParamsWithDefault(Lkotlin/reflect/KFunction;Lcom/taobao/weex/bridge/JSCallback;Z)Ljava/util/List;

    move-result-object v7

    iput-object v7, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1251
    invoke-virtual {v11}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->isCompanion()Z

    move-result v7

    if-eqz v7, :cond_1c3

    .line 1253
    iget-object v7, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    invoke-static {v4}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-static {v4}, Lkotlin/reflect/full/KClasses;->getCompanionObjectInstance(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v7, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1c3
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_1c3} :catch_214

    .line 1260
    :cond_1c3
    :try_start_1c3
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v11

    .line 1362
    sget-object v2, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    new-instance v4, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v4, v2}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;)V

    check-cast v4, Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 1365
    move-object v12, v4

    check-cast v12, Lkotlin/coroutines/CoroutineContext;

    move-object v2, v0

    .line 1261
    new-instance v0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object v7, v13

    invoke-direct/range {v0 .. v8}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/dcloud/feature/utsplugin/ProxyModule;Lkotlin/jvm/internal/Ref$ObjectRef;Lio/dcloud/feature/utsplugin/FieldMethodDetector;Lcom/taobao/weex/bridge/JSCallback;Lkotlin/coroutines/Continuation;)V

    move-object v14, v0

    check-cast v14, Lkotlin/jvm/functions/Function2;

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/4 v13, 0x0

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_1ed
    .catch Ljava/lang/Exception; {:try_start_1c3 .. :try_end_1ed} :catch_1ee

    goto :goto_237

    :catch_1ee
    move-exception v0

    .line 1312
    :try_start_1ef
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1fe

    .line 1313
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_202

    .line 1315
    :cond_1fe
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1317
    :goto_202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lio/dcloud/common/util/AppConsoleLogUtil;->DCLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_213
    .catch Ljava/lang/Exception; {:try_start_1ef .. :try_end_213} :catch_214

    goto :goto_237

    :catch_214
    move-exception v0

    .line 1324
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_224

    .line 1325
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_228

    .line 1327
    :cond_224
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1329
    :goto_228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lio/dcloud/common/util/AppConsoleLogUtil;->DCLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    :goto_237
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invokeSync(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            "Lcom/taobao/weex/bridge/JSCallback;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lio/dcloud/feature/uniapp/annotation/UniJSMethod;
        uiThread = false
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "\u521d\u59cb\u5316 "

    const-string v3, "error: "

    .line 741
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v0, Lio/dcloud/feature/utsplugin/ReturnResult;

    invoke-direct {v0}, Lio/dcloud/feature/utsplugin/ReturnResult;-><init>()V

    iput-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 752
    sget-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->INSTANCE:Lio/dcloud/uts/android/AndroidUTSContext;

    iget-object v4, v1, Lio/dcloud/feature/utsplugin/ProxyModule;->mUniSDKInstance:Lio/dcloud/feature/uniapp/AbsSDKInstance;

    const-string v5, "mUniSDKInstance"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lio/dcloud/uts/android/AndroidUTSContext;->initContext(Lio/dcloud/feature/uniapp/AbsSDKInstance;)V

    .line 754
    new-instance v8, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;-><init>(Lcom/alibaba/fastjson/JSONObject;)V

    .line 758
    :try_start_25
    invoke-virtual {v8}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->isValid()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 760
    invoke-virtual {v8}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 761
    iget-object v2, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lio/dcloud/feature/utsplugin/ReturnResult;

    invoke-virtual {v2, v0}, Lio/dcloud/feature/utsplugin/ReturnResult;->updateError(Ljava/lang/String;)V

    .line 762
    iget-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/dcloud/feature/utsplugin/ReturnResult;

    invoke-virtual {v0}, Lio/dcloud/feature/utsplugin/ReturnResult;->toJSON()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0

    .line 768
    :cond_3f
    invoke-virtual {v8}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->isInstanceAction()Z

    move-result v0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_43} :catch_44b

    const-string v14, "null cannot be cast to non-null type io.dcloud.uts.UTSJSONObject"

    const/4 v15, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "targetMethod error::"

    const-string v9, "method not found:"

    const-string v10, "field not found:"

    if-eqz v0, :cond_1ed

    .line 771
    :try_start_50
    sget-object v0, Lio/dcloud/feature/utsplugin/ProxyModule;->utsInstances:Ljava/util/Map;

    invoke-virtual {v8}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getInstanceId()I

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1df

    .line 776
    sget-object v0, Lio/dcloud/feature/utsplugin/ProxyModule;->utsInstances:Ljava/util/Map;

    invoke-virtual {v8}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getInstanceId()I

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 778
    sget-object v0, Lio/dcloud/feature/utsplugin/ProxyModule;->utsInstances:Ljava/util/Map;

    invoke-virtual {v8}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getInstanceId()I

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 781
    invoke-virtual {v8}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->isField()Z

    move-result v2
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_87} :catch_1e8

    if-eqz v2, :cond_d4

    .line 786
    :try_start_89
    sget-object v2, Lio/dcloud/feature/utsplugin/ProxyModule;->Companion:Lio/dcloud/feature/utsplugin/ProxyModule$Companion;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v8}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v5, v4}, Lio/dcloud/feature/utsplugin/ProxyModule$Companion;->findTargetField(Ljava/lang/Class;ZLjava/lang/String;)Lkotlin/reflect/KCallable;

    move-result-object v2

    if-nez v2, :cond_bc

    .line 790
    iget-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/dcloud/feature/utsplugin/ReturnResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getInputFlag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/dcloud/feature/utsplugin/ReturnResult;->updateError(Ljava/lang/String;)V

    .line 791
    iget-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/dcloud/feature/utsplugin/ReturnResult;

    invoke-virtual {v0}, Lio/dcloud/feature/utsplugin/ReturnResult;->toJSON()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0

    .line 794
    :cond_bc
    new-array v3, v15, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-interface {v2, v3}, Lkotlin/reflect/KCallable;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 795
    iget-object v2, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lio/dcloud/feature/utsplugin/ReturnResult;

    invoke-virtual {v2, v0}, Lio/dcloud/feature/utsplugin/ReturnResult;->updateJSON(Ljava/lang/Object;)V

    .line 796
    iget-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/dcloud/feature/utsplugin/ReturnResult;

    invoke-virtual {v0}, Lio/dcloud/feature/utsplugin/ReturnResult;->toJSON()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_d3} :catch_44b

    return-object v0

    .line 799
    :cond_d4
    :try_start_d4
    invoke-virtual {v8}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getType()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_de} :catch_1e8

    if-lez v2, :cond_105

    :try_start_e0
    invoke-virtual {v8}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v10, "setter"

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    .line 801
    iget-object v2, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lio/dcloud/feature/utsplugin/ReturnResult;

    move-object/from16 v5, p2

    move-object v4, v0

    move-object v2, v8

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/utsplugin/ProxyModule;->wrapDoTypeAction(Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;Ljava/lang/Class;Ljava/lang/Object;Lcom/taobao/weex/bridge/JSCallback;Lio/dcloud/feature/utsplugin/ReturnResult;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_fc

    return-object v0

    .line 805
    :cond_fc
    iget-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/dcloud/feature/utsplugin/ReturnResult;

    invoke-virtual {v0}, Lio/dcloud/feature/utsplugin/ReturnResult;->toJSON()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_104} :catch_44b

    return-object v0

    .line 810
    :cond_105
    :try_start_105
    invoke-virtual {v8}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v5, v2, v8}, Lio/dcloud/feature/utsplugin/ProxyModule;->findTargetFunc(Ljava/lang/Class;ZLjava/lang/String;Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;)Lkotlin/reflect/KFunction;

    move-result-object v2
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_10d} :catch_1e8

    if-nez v2, :cond_12f

    .line 814
    :try_start_10f
    iget-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/dcloud/feature/utsplugin/ReturnResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getInputFlag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/dcloud/feature/utsplugin/ReturnResult;->updateError(Ljava/lang/String;)V

    .line 815
    iget-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/dcloud/feature/utsplugin/ReturnResult;

    invoke-virtual {v0}, Lio/dcloud/feature/utsplugin/ReturnResult;->toJSON()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_12e} :catch_44b

    return-object v0

    :cond_12f
    move-object/from16 v16, v4

    .line 821
    :try_start_131
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object/from16 v10, p2

    move-object v9, v2

    invoke-static/range {v8 .. v13}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->obtainParamsWithDefault$default(Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;Lkotlin/reflect/KFunction;Lcom/taobao/weex/bridge/JSCallback;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 822
    iget-object v2, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_149} :catch_1e8

    .line 824
    :try_start_149
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_14e} :catch_1db

    .line 829
    :try_start_14e
    new-instance v0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_150} :catch_16e

    move-object v2, v8

    const/4 v8, 0x0

    move-object v5, v3

    move-object v12, v6

    move-object/from16 v11, v16

    move-object/from16 v6, p0

    move-object v3, v2

    move-object v2, v7

    move-object v7, v9

    :try_start_15b
    invoke-direct/range {v0 .. v8}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/Class;Lio/dcloud/feature/utsplugin/ProxyModule;Lkotlin/reflect/KFunction;Lkotlin/coroutines/Continuation;)V
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_15e} :catch_169

    move-object v4, v2

    move-object v2, v1

    move-object v1, v6

    :try_start_161
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v0, v15, v11}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_166} :catch_167

    goto :goto_1a9

    :catch_167
    move-exception v0

    goto :goto_176

    :catch_169
    move-exception v0

    move-object v4, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_176

    :catch_16e
    move-exception v0

    move-object v2, v1

    move-object v12, v6

    move-object v4, v7

    move-object/from16 v11, v16

    move-object/from16 v1, p0

    .line 852
    :goto_176
    :try_start_176
    iput-object v11, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 853
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_196

    .line 854
    iget-object v3, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lio/dcloud/feature/utsplugin/ReturnResult;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/dcloud/feature/utsplugin/ReturnResult;->updateError(Ljava/lang/String;)V

    goto :goto_1a9

    .line 856
    :cond_196
    iget-object v3, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lio/dcloud/feature/utsplugin/ReturnResult;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/dcloud/feature/utsplugin/ReturnResult;->updateError(Ljava/lang/String;)V

    .line 861
    :goto_1a9
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_1d2

    .line 862
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    instance-of v0, v0, Lio/dcloud/uts/UTSJSONObject;

    if-eqz v0, :cond_1c6

    .line 863
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/dcloud/uts/UTSJSONObject;

    .line 864
    iget-object v2, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lio/dcloud/feature/utsplugin/ReturnResult;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSJSONObject;->toJSONObject()Lcom/alibaba/fastjson/JSON;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/dcloud/feature/utsplugin/ReturnResult;->updateJSON(Ljava/lang/Object;)V

    goto :goto_1cf

    .line 866
    :cond_1c6
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/dcloud/feature/utsplugin/ReturnResult;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lio/dcloud/feature/utsplugin/ReturnResult;->updateJSON(Ljava/lang/Object;)V

    :goto_1cf
    move-object v2, v4

    goto/16 :goto_458

    .line 869
    :cond_1d2
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/dcloud/feature/utsplugin/ReturnResult;

    invoke-virtual {v0}, Lio/dcloud/feature/utsplugin/ReturnResult;->toJSON()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0

    :catch_1db
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_1e9

    :cond_1df
    move-object v4, v7

    .line 773
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "instance does not exists"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e8
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_1e8} :catch_448

    :catch_1e8
    move-exception v0

    :goto_1e9
    move-object v4, v7

    :goto_1ea
    move-object v2, v4

    goto/16 :goto_44d

    :cond_1ed
    move-object v11, v4

    move-object v12, v6

    move-object v4, v7

    .line 880
    :try_start_1f0
    invoke-virtual {v8}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getModuleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1f8
    .catchall {:try_start_1f0 .. :try_end_1f8} :catchall_1fa

    move-object v6, v11

    goto :goto_205

    :catchall_1fa
    move-exception v0

    .line 882
    :try_start_1fb
    instance-of v6, v0, Ljava/lang/ExceptionInInitializerError;

    if-eqz v6, :cond_202

    .line 883
    check-cast v0, Ljava/lang/ExceptionInInitializerError;

    goto :goto_203

    :cond_202
    move-object v0, v11

    :goto_203
    move-object v6, v0

    move-object v0, v11

    :goto_205
    if-nez v0, :cond_264

    .line 891
    new-instance v0, Lio/dcloud/feature/utsplugin/ProxyModule$ModuleChecker;

    invoke-direct {v0, v8}, Lio/dcloud/feature/utsplugin/ProxyModule$ModuleChecker;-><init>(Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;)V

    .line 892
    invoke-virtual {v0}, Lio/dcloud/feature/utsplugin/ProxyModule$ModuleChecker;->shallShowErrorDialog()Z

    move-result v5

    if-eqz v5, :cond_215

    .line 893
    invoke-virtual {v0}, Lio/dcloud/feature/utsplugin/ProxyModule$ModuleChecker;->showErrorDialog()V

    :cond_215
    if-eqz v6, :cond_23f

    .line 901
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/dcloud/feature/utsplugin/ReturnResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getInputModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u5931\u8d25 - "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/ExceptionInInitializerError;->getException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/dcloud/feature/utsplugin/ReturnResult;->updateError(Ljava/lang/String;)V

    goto :goto_25b

    .line 903
    :cond_23f
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/dcloud/feature/utsplugin/ReturnResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getInputModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/dcloud/feature/utsplugin/ReturnResult;->updateError(Ljava/lang/String;)V

    .line 905
    :goto_25b
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/dcloud/feature/utsplugin/ReturnResult;

    invoke-virtual {v0}, Lio/dcloud/feature/utsplugin/ReturnResult;->toJSON()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0

    .line 909
    :cond_264
    invoke-virtual {v8}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->isField()Z

    move-result v2

    if-eqz v2, :cond_2c9

    .line 913
    sget-object v2, Lio/dcloud/feature/utsplugin/ProxyModule;->Companion:Lio/dcloud/feature/utsplugin/ProxyModule$Companion;

    invoke-virtual {v8}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->isCompanion()Z

    move-result v3

    invoke-virtual {v8}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v0, v3, v6}, Lio/dcloud/feature/utsplugin/ProxyModule$Companion;->findTargetField(Ljava/lang/Class;ZLjava/lang/String;)Lkotlin/reflect/KCallable;

    move-result-object v2

    if-nez v2, :cond_29a

    .line 917
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/dcloud/feature/utsplugin/ReturnResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getInputFlag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/dcloud/feature/utsplugin/ReturnResult;->updateError(Ljava/lang/String;)V

    .line 918
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/dcloud/feature/utsplugin/ReturnResult;

    invoke-virtual {v0}, Lio/dcloud/feature/utsplugin/ReturnResult;->toJSON()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0

    .line 921
    :cond_29a
    invoke-virtual {v8}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->isCompanion()Z

    move-result v3

    if-eqz v3, :cond_2b1

    .line 922
    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/full/KClasses;->getCompanionObjectInstance(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v0

    new-array v3, v15, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-interface {v2, v3}, Lkotlin/reflect/KCallable;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2b9

    .line 924
    :cond_2b1
    new-array v3, v15, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-interface {v2, v3}, Lkotlin/reflect/KCallable;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 928
    :goto_2b9
    iget-object v2, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lio/dcloud/feature/utsplugin/ReturnResult;

    invoke-virtual {v2, v0}, Lio/dcloud/feature/utsplugin/ReturnResult;->updateJSON(Ljava/lang/Object;)V

    .line 929
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/dcloud/feature/utsplugin/ReturnResult;

    invoke-virtual {v0}, Lio/dcloud/feature/utsplugin/ReturnResult;->toJSON()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0

    .line 932
    :cond_2c9
    invoke-virtual {v8}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->isConstructor()Z

    move-result v2

    if-eqz v2, :cond_32e

    .line 934
    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/KClass;->getConstructors()Ljava/util/Collection;

    move-result-object v2

    .line 937
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2e7

    .line 939
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "newInstance(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_310

    .line 1349
    :cond_2e7
    new-array v0, v5, [Lkotlin/reflect/KFunction;

    invoke-interface {v2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/KFunction;

    .line 942
    aget-object v9, v0, v5

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object/from16 v10, p2

    .line 944
    invoke-static/range {v8 .. v13}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->obtainParamsWithDefault$default(Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;Lkotlin/reflect/KFunction;Lcom/taobao/weex/bridge/JSCallback;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 945
    check-cast v0, Ljava/util/Collection;

    .line 1353
    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 946
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v9, v0}, Lkotlin/reflect/KFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "call(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 950
    :goto_310
    sget v2, Lio/dcloud/feature/utsplugin/ProxyModule;->instanceDynamicId:I

    add-int/2addr v2, v15

    sput v2, Lio/dcloud/feature/utsplugin/ProxyModule;->instanceDynamicId:I

    .line 951
    sget-object v3, Lio/dcloud/feature/utsplugin/ProxyModule;->utsInstances:Ljava/util/Map;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/dcloud/feature/utsplugin/ReturnResult;

    sget v2, Lio/dcloud/feature/utsplugin/ProxyModule;->instanceDynamicId:I

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/dcloud/feature/utsplugin/ReturnResult;->updateJSON(Ljava/lang/Object;)V

    .line 954
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v0

    .line 959
    :cond_32e
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 960
    invoke-virtual {v8}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->isCompanion()Z

    move-result v3

    invoke-virtual {v8}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v0, v3, v6, v8}, Lio/dcloud/feature/utsplugin/ProxyModule;->findTargetFunc(Ljava/lang/Class;ZLjava/lang/String;Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;)Lkotlin/reflect/KFunction;

    move-result-object v3

    .line 959
    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 962
    new-instance v3, Lio/dcloud/feature/utsplugin/FieldMethodDetector;

    invoke-direct {v3, v0, v8}, Lio/dcloud/feature/utsplugin/FieldMethodDetector;-><init>(Ljava/lang/Class;Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;)V

    .line 965
    iget-object v6, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v6, :cond_358

    .line 967
    invoke-virtual {v3}, Lio/dcloud/feature/utsplugin/FieldMethodDetector;->init()V

    .line 968
    invoke-virtual {v3}, Lio/dcloud/feature/utsplugin/FieldMethodDetector;->isFieldMethod()Z

    move-result v6

    .line 969
    invoke-virtual {v3}, Lio/dcloud/feature/utsplugin/FieldMethodDetector;->getTargetFunction()Lkotlin/reflect/KFunction;

    move-result-object v7

    iput-object v7, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_359

    :cond_358
    const/4 v6, 0x0

    .line 972
    :goto_359
    iget-object v7, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v7, :cond_37d

    .line 974
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/dcloud/feature/utsplugin/ReturnResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getInputFlag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/dcloud/feature/utsplugin/ReturnResult;->updateError(Ljava/lang/String;)V

    .line 975
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/dcloud/feature/utsplugin/ReturnResult;

    invoke-virtual {v0}, Lio/dcloud/feature/utsplugin/ReturnResult;->toJSON()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0

    :cond_37d
    move-object v7, v3

    .line 979
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v9, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v9, Lkotlin/reflect/KFunction;

    move-object/from16 v10, p2

    invoke-virtual {v8, v9, v10, v6}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->obtainParamsWithDefault(Lkotlin/reflect/KFunction;Lcom/taobao/weex/bridge/JSCallback;Z)Ljava/util/List;

    move-result-object v9

    iput-object v9, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 980
    invoke-virtual {v8}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->isCompanion()Z

    move-result v8

    if-eqz v8, :cond_3a4

    .line 982
    iget-object v8, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/full/KClasses;->getCompanionObjectInstance(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v8, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 985
    :cond_3a4
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V
    :try_end_3a9
    .catch Ljava/lang/Exception; {:try_start_1fb .. :try_end_3a9} :catch_448

    if-nez v6, :cond_3f5

    .line 990
    :try_start_3ab
    new-instance v0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3;
    :try_end_3ad
    .catch Ljava/lang/Exception; {:try_start_3ab .. :try_end_3ad} :catch_3bd

    const/4 v6, 0x0

    move-object v5, v2

    move-object v2, v4

    move-object/from16 v4, p0

    :try_start_3b2
    invoke-direct/range {v0 .. v6}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lio/dcloud/feature/utsplugin/ProxyModule;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v0, v15, v11}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_3ba
    .catch Ljava/lang/Exception; {:try_start_3b2 .. :try_end_3ba} :catch_3bb

    goto :goto_416

    :catch_3bb
    move-exception v0

    goto :goto_3bf

    :catch_3bd
    move-exception v0

    move-object v2, v4

    .line 1007
    :goto_3bf
    :try_start_3bf
    iput-object v11, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1008
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_3df

    .line 1009
    iget-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lio/dcloud/feature/utsplugin/ReturnResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/dcloud/feature/utsplugin/ReturnResult;->updateError(Ljava/lang/String;)V

    goto :goto_3f2

    .line 1011
    :cond_3df
    iget-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lio/dcloud/feature/utsplugin/ReturnResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/dcloud/feature/utsplugin/ReturnResult;->updateError(Ljava/lang/String;)V

    :goto_3f2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_416

    :cond_3f5
    move-object v2, v4

    .line 1015
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    .line 1357
    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 1016
    invoke-virtual {v7}, Lio/dcloud/feature/utsplugin/FieldMethodDetector;->getFieldFunMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lio/dcloud/feature/utsplugin/FieldMethodDetector;->getHostFunction()Lkotlin/Function;

    move-result-object v4

    array-length v5, v0

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1020
    :goto_416
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_43d

    .line 1021
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    instance-of v0, v0, Lio/dcloud/uts/UTSJSONObject;

    if-eqz v0, :cond_433

    .line 1022
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/dcloud/uts/UTSJSONObject;

    .line 1023
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lio/dcloud/feature/utsplugin/ReturnResult;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSJSONObject;->toJSONObject()Lcom/alibaba/fastjson/JSON;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/dcloud/feature/utsplugin/ReturnResult;->updateJSON(Ljava/lang/Object;)V

    goto :goto_458

    .line 1025
    :cond_433
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/dcloud/feature/utsplugin/ReturnResult;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lio/dcloud/feature/utsplugin/ReturnResult;->updateJSON(Ljava/lang/Object;)V

    goto :goto_458

    .line 1028
    :cond_43d
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/dcloud/feature/utsplugin/ReturnResult;

    invoke-virtual {v0}, Lio/dcloud/feature/utsplugin/ReturnResult;->toJSON()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0
    :try_end_445
    .catch Ljava/lang/Exception; {:try_start_3bf .. :try_end_445} :catch_446

    return-object v0

    :catch_446
    move-exception v0

    goto :goto_44d

    :catch_448
    move-exception v0

    goto/16 :goto_1ea

    :catch_44b
    move-exception v0

    move-object v2, v7

    .line 1037
    :goto_44d
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lio/dcloud/feature/utsplugin/ReturnResult;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/dcloud/feature/utsplugin/ReturnResult;->updateError(Ljava/lang/String;)V

    .line 1043
    :goto_458
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/dcloud/feature/utsplugin/ReturnResult;

    invoke-virtual {v0}, Lio/dcloud/feature/utsplugin/ReturnResult;->toJSON()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public onActivityBack()Z
    .registers 3

    .line 84
    sget-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->INSTANCE:Lio/dcloud/uts/android/AndroidUTSContext;

    invoke-virtual {v0}, Lio/dcloud/uts/android/AndroidUTSContext;->getBackListenFunc()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 85
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_f

    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityDestroy()V
    .registers 1

    return-void
.end method

.method public onActivityPause()V
    .registers 3

    .line 47
    sget-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->INSTANCE:Lio/dcloud/uts/android/AndroidUTSContext;

    invoke-virtual {v0}, Lio/dcloud/uts/android/AndroidUTSContext;->getPauseListenFunc()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 48
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    .line 54
    sget-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->INSTANCE:Lio/dcloud/uts/android/AndroidUTSContext;

    invoke-virtual {v0}, Lio/dcloud/uts/android/AndroidUTSContext;->getOnActivityResultListenFunc()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function3;

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_27
    return-void
.end method

.method public onActivityResume()V
    .registers 3

    .line 61
    sget-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->INSTANCE:Lio/dcloud/uts/android/AndroidUTSContext;

    invoke-virtual {v0}, Lio/dcloud/uts/android/AndroidUTSContext;->getResumeListenFunc()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 62
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public onActivityStop()V
    .registers 3

    .line 68
    invoke-super {p0}, Lio/dcloud/feature/uniapp/common/UniModule;->onActivityStop()V

    .line 69
    sget-object v0, Lio/dcloud/uts/android/AndroidUTSContext;->INSTANCE:Lio/dcloud/uts/android/AndroidUTSContext;

    invoke-virtual {v0}, Lio/dcloud/uts/android/AndroidUTSContext;->getStopListenFunc()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 70
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_12

    :cond_22
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 9

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 100
    array-length v1, p3

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_2a

    aget v3, p3, v2

    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 104
    :cond_2a
    sget-object p3, Lio/dcloud/uts/android/AndroidUTSContext;->INSTANCE:Lio/dcloud/uts/android/AndroidUTSContext;

    invoke-virtual {p3}, Lio/dcloud/uts/android/AndroidUTSContext;->getPermissionsResultListenFunc()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const-string v1, "iterator(...)"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_39
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function3;

    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lio/dcloud/uts/UTSArray;->Companion:Lio/dcloud/uts/UTSArray$Companion;

    invoke-virtual {v3, p2}, Lio/dcloud/uts/UTSArray$Companion;->fromNative(Ljava/util/List;)Lio/dcloud/uts/UTSArray;

    move-result-object v3

    sget-object v4, Lio/dcloud/uts/UTSArray;->Companion:Lio/dcloud/uts/UTSArray$Companion;

    invoke-virtual {v4, v0}, Lio/dcloud/uts/UTSArray$Companion;->fromNative(Ljava/util/List;)Lio/dcloud/uts/UTSArray;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    :cond_59
    return-void
.end method

###### Class io.dcloud.feature.utsplugin.ProxyModule.Companion (io.dcloud.feature.utsplugin.ProxyModule$Companion)
.class public final Lio/dcloud/feature/utsplugin/ProxyModule$Companion;
.super Ljava/lang/Object;
.source "UTSProxyModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/utsplugin/ProxyModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J(\u0010\u0010\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00112\n\u0010\u0012\u001a\u0006\u0012\u0002\u0008\u00030\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR&\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0018"
    }
    d2 = {
        "Lio/dcloud/feature/utsplugin/ProxyModule$Companion;",
        "",
        "<init>",
        "()V",
        "instanceDynamicId",
        "",
        "getInstanceDynamicId",
        "()I",
        "setInstanceDynamicId",
        "(I)V",
        "utsInstances",
        "",
        "getUtsInstances",
        "()Ljava/util/Map;",
        "setUtsInstances",
        "(Ljava/util/Map;)V",
        "findTargetField",
        "Lkotlin/reflect/KCallable;",
        "javaClazz",
        "Ljava/lang/Class;",
        "isCompanion",
        "",
        "methodName",
        "",
        "utsplugin_release"
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

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lio/dcloud/feature/utsplugin/ProxyModule$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final findTargetField(Ljava/lang/Class;ZLjava/lang/String;)Lkotlin/reflect/KCallable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/reflect/KCallable<",
            "*>;"
        }
    .end annotation

    const-string v0, "javaClazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "methodName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_37

    .line 279
    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/full/KClasses;->getCompanionObject(Lkotlin/reflect/KClass;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lkotlin/reflect/KClass;->getMembers()Ljava/util/Collection;

    move-result-object p1

    .line 282
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/reflect/KCallable;

    .line 283
    invoke-interface {p2}, Lkotlin/reflect/KCallable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    return-object p2

    .line 294
    :cond_37
    :try_start_37
    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-static {p2}, Lkotlin/reflect/full/KClasses;->getMemberProperties(Lkotlin/reflect/KClass;)Ljava/util/Collection;

    move-result-object p1
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3f} :catch_41

    move-object p2, v0

    goto :goto_47

    .line 296
    :catch_41
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    move-object p2, p1

    move-object p1, v0

    :goto_47
    if-eqz p1, :cond_67

    .line 303
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/reflect/KProperty1;

    .line 305
    invoke-interface {p2}, Lkotlin/reflect/KProperty1;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 306
    move-object v0, p2

    check-cast v0, Lkotlin/reflect/KCallable;

    goto :goto_8e

    :cond_67
    if-eqz p2, :cond_8e

    .line 310
    array-length p1, p2

    if-nez p1, :cond_6d

    goto :goto_8e

    .line 312
    :cond_6d
    invoke-static {p2}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    :cond_71
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/reflect/Field;

    .line 313
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 314
    invoke-static {p2}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getKotlinProperty(Ljava/lang/reflect/Field;)Lkotlin/reflect/KProperty;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlin/reflect/KCallable;

    :cond_8e
    :goto_8e
    return-object v0
.end method

.method public final getInstanceDynamicId()I
    .registers 2

    .line 267
    invoke-static {}, Lio/dcloud/feature/utsplugin/ProxyModule;->access$getInstanceDynamicId$cp()I

    move-result v0

    return v0
.end method

.method public final getUtsInstances()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 268
    invoke-static {}, Lio/dcloud/feature/utsplugin/ProxyModule;->access$getUtsInstances$cp()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final setInstanceDynamicId(I)V
    .registers 2

    .line 267
    invoke-static {p1}, Lio/dcloud/feature/utsplugin/ProxyModule;->access$setInstanceDynamicId$cp(I)V

    return-void
.end method

.method public final setUtsInstances(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    invoke-static {p1}, Lio/dcloud/feature/utsplugin/ProxyModule;->access$setUtsInstances$cp(Ljava/util/Map;)V

    return-void
.end method

###### Class io.dcloud.feature.utsplugin.ProxyModule.InputOption (io.dcloud.feature.utsplugin.ProxyModule$InputOption)
.class public final Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;
.super Ljava/lang/Object;
.source "UTSProxyModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/utsplugin/ProxyModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputOption"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J*\u0010;\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010<2\u0006\u0010=\u001a\u00020>2\u0008\u0010?\u001a\u0004\u0018\u00010@2\u0008\u0008\u0002\u0010\"\u001a\u00020\u001cJ0\u0010;\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010<2\n\u0010=\u001a\u0006\u0012\u0002\u0008\u00030A2\u0008\u0010?\u001a\u0004\u0018\u00010@2\u0008\u0008\u0002\u0010\"\u001a\u00020\u001cH\u0016J\u0006\u0010B\u001a\u00020\u0007J\u0006\u0010D\u001a\u00020\u001cJ\u0006\u0010E\u001a\u00020\u0007R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\t\"\u0004\u0008\u000e\u0010\u000bR\u001a\u0010\u000f\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\t\"\u0004\u0008\u0011\u0010\u000bR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0015\"\u0004\u0008\u001a\u0010\u0017R\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001a\u0010 \u001a\u00020\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u001d\"\u0004\u0008!\u0010\u001fR\u001a\u0010\"\u001a\u00020\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001d\"\u0004\u0008#\u0010\u001fR\u001a\u0010$\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\t\"\u0004\u0008&\u0010\u000bR\u001a\u0010\'\u001a\u00020\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u001d\"\u0004\u0008(\u0010\u001fR\u001a\u0010)\u001a\u00020*X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u001a\u0010/\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010\t\"\u0004\u00081\u0010\u000bR\u001a\u00102\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010\t\"\u0004\u00084\u0010\u000bR\u001a\u00105\u001a\u00020\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u0010\u001d\"\u0004\u00087\u0010\u001fR\u001a\u00108\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010\t\"\u0004\u0008:\u0010\u000bR\u000e\u0010C\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006F"
    }
    d2 = {
        "Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;",
        "",
        "options",
        "Lcom/alibaba/fastjson/JSONObject;",
        "<init>",
        "(Lcom/alibaba/fastjson/JSONObject;)V",
        "packageName",
        "",
        "getPackageName",
        "()Ljava/lang/String;",
        "setPackageName",
        "(Ljava/lang/String;)V",
        "className",
        "getClassName",
        "setClassName",
        "methodName",
        "getMethodName",
        "setMethodName",
        "paramArray",
        "Lcom/alibaba/fastjson/JSONArray;",
        "getParamArray",
        "()Lcom/alibaba/fastjson/JSONArray;",
        "setParamArray",
        "(Lcom/alibaba/fastjson/JSONArray;)V",
        "methodArray",
        "getMethodArray",
        "setMethodArray",
        "isConstructor",
        "",
        "()Z",
        "setConstructor",
        "(Z)V",
        "isCompanion",
        "setCompanion",
        "isField",
        "setField",
        "moduleName",
        "getModuleName",
        "setModuleName",
        "isInstanceAction",
        "setInstanceAction",
        "instanceId",
        "",
        "getInstanceId",
        "()I",
        "setInstanceId",
        "(I)V",
        "inputModuleName",
        "getInputModuleName",
        "setInputModuleName",
        "inputModuleType",
        "getInputModuleType",
        "setInputModuleType",
        "keepAlive",
        "getKeepAlive",
        "setKeepAlive",
        "type",
        "getType",
        "setType",
        "obtainParamsWithDefault",
        "",
        "targetFunction",
        "Ljava/lang/reflect/Method;",
        "callback",
        "Lcom/taobao/weex/bridge/JSCallback;",
        "Lkotlin/reflect/KFunction;",
        "getInputFlag",
        "checkErrorMsg",
        "isValid",
        "getErrorMsg",
        "utsplugin_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private checkErrorMsg:Ljava/lang/String;

.field private className:Ljava/lang/String;

.field private inputModuleName:Ljava/lang/String;

.field private inputModuleType:Ljava/lang/String;

.field private instanceId:I

.field private isCompanion:Z

.field private isConstructor:Z

.field private isField:Z

.field private isInstanceAction:Z

.field private keepAlive:Z

.field private methodArray:Lcom/alibaba/fastjson/JSONArray;

.field private methodName:Ljava/lang/String;

.field private moduleName:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private paramArray:Lcom/alibaba/fastjson/JSONArray;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 8

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    const-string v0, ""

    iput-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->packageName:Ljava/lang/String;

    .line 336
    iput-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->className:Ljava/lang/String;

    .line 337
    iput-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->methodName:Ljava/lang/String;

    .line 338
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->paramArray:Lcom/alibaba/fastjson/JSONArray;

    .line 341
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->methodArray:Lcom/alibaba/fastjson/JSONArray;

    .line 349
    iput-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->moduleName:Ljava/lang/String;

    .line 355
    iput-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->inputModuleName:Ljava/lang/String;

    .line 356
    iput-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->inputModuleType:Ljava/lang/String;

    .line 363
    iput-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->type:Ljava/lang/String;

    .line 595
    iput-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->checkErrorMsg:Ljava/lang/String;

    .line 368
    const-string v0, "moduleName"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "null cannot be cast to non-null type kotlin.String"

    if-eqz v1, :cond_3d

    .line 369
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->inputModuleName:Ljava/lang/String;

    .line 371
    :cond_3d
    const-string v0, "moduleType"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 372
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->inputModuleType:Ljava/lang/String;

    .line 375
    :cond_50
    const-string v0, "keepAlive"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "null cannot be cast to non-null type kotlin.Boolean"

    if-eqz v1, :cond_69

    .line 376
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->keepAlive:Z

    .line 379
    :cond_69
    const-string v0, "package"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 380
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->packageName:Ljava/lang/String;

    .line 382
    :cond_7c
    const-string v0, "class"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 383
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->className:Ljava/lang/String;

    .line 386
    :cond_8f
    const-string v0, "params"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_a9

    .line 387
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.alibaba.fastjson.JSONArray"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    iput-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->paramArray:Lcom/alibaba/fastjson/JSONArray;

    .line 388
    iput-boolean v4, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->isField:Z

    goto :goto_ab

    .line 390
    :cond_a9
    iput-boolean v5, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->isField:Z

    .line 393
    :goto_ab
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_be

    .line 394
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->methodName:Ljava/lang/String;

    .line 397
    :cond_be
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_de

    .line 398
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->instanceId:I

    .line 399
    iput-boolean v5, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->isInstanceAction:Z

    .line 401
    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->methodName:Ljava/lang/String;

    iput-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->moduleName:Ljava/lang/String;

    goto :goto_136

    .line 404
    :cond_de
    iput-boolean v4, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->isInstanceAction:Z

    .line 406
    const-string v0, "companion"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f8

    .line 407
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->isCompanion:Z

    goto :goto_fa

    .line 409
    :cond_f8
    iput-boolean v4, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->isCompanion:Z

    .line 412
    :goto_fa
    iget-boolean v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->isField:Z

    if-nez v0, :cond_10a

    .line 413
    const-string v0, "constructor"

    iget-object v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->methodName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 414
    iput-boolean v5, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->isConstructor:Z

    .line 418
    :cond_10a
    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->moduleName:Ljava/lang/String;

    .line 419
    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->className:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_136

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->moduleName:Ljava/lang/String;

    .line 428
    :cond_136
    :goto_136
    const-string v0, "method"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_149

    .line 429
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const-string v1, "getJSONArray(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->methodArray:Lcom/alibaba/fastjson/JSONArray;

    .line 435
    :cond_149
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15c

    .line 436
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->type:Ljava/lang/String;

    :cond_15c
    return-void
.end method

.method public static synthetic obtainParamsWithDefault$default(Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;Ljava/lang/reflect/Method;Lcom/taobao/weex/bridge/JSCallback;ZILjava/lang/Object;)Ljava/util/List;
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 445
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->obtainParamsWithDefault(Ljava/lang/reflect/Method;Lcom/taobao/weex/bridge/JSCallback;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic obtainParamsWithDefault$default(Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;Lkotlin/reflect/KFunction;Lcom/taobao/weex/bridge/JSCallback;ZILjava/lang/Object;)Ljava/util/List;
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 510
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->obtainParamsWithDefault(Lkotlin/reflect/KFunction;Lcom/taobao/weex/bridge/JSCallback;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getClassName()Ljava/lang/String;
    .registers 2

    .line 336
    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->className:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrorMsg()Ljava/lang/String;
    .registers 2

    .line 630
    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->checkErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public final getInputFlag()Ljava/lang/String;
    .registers 3

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->moduleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getInputModuleName()Ljava/lang/String;
    .registers 2

    .line 355
    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->inputModuleName:Ljava/lang/String;

    return-object v0
.end method

.method public final getInputModuleType()Ljava/lang/String;
    .registers 2

    .line 356
    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->inputModuleType:Ljava/lang/String;

    return-object v0
.end method

.method public final getInstanceId()I
    .registers 2

    .line 352
    iget v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->instanceId:I

    return v0
.end method

.method public final getKeepAlive()Z
    .registers 2

    .line 357
    iget-boolean v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->keepAlive:Z

    return v0
.end method

.method public final getMethodArray()Lcom/alibaba/fastjson/JSONArray;
    .registers 2

    .line 341
    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->methodArray:Lcom/alibaba/fastjson/JSONArray;

    return-object v0
.end method

.method public final getMethodName()Ljava/lang/String;
    .registers 2

    .line 337
    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method public final getModuleName()Ljava/lang/String;
    .registers 2

    .line 349
    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->moduleName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 2

    .line 335
    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getParamArray()Lcom/alibaba/fastjson/JSONArray;
    .registers 2

    .line 338
    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->paramArray:Lcom/alibaba/fastjson/JSONArray;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .line 363
    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final isCompanion()Z
    .registers 2

    .line 346
    iget-boolean v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->isCompanion:Z

    return v0
.end method

.method public final isConstructor()Z
    .registers 2

    .line 345
    iget-boolean v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->isConstructor:Z

    return v0
.end method

.method public final isField()Z
    .registers 2

    .line 347
    iget-boolean v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->isField:Z

    return v0
.end method

.method public final isInstanceAction()Z
    .registers 2

    .line 351
    iget-boolean v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->isInstanceAction:Z

    return v0
.end method

.method public final isValid()Z
    .registers 6

    .line 603
    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->packageName:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2c

    .line 611
    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->packageName:Ljava/lang/String;

    const-string v2, "uts.sdk.modules"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->packageName:Ljava/lang/String;

    const-string v2, "uts.sdk"

    invoke-static {v0, v2, v1, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->packageName:Ljava/lang/String;

    const-string v2, "uts.modules"

    invoke-static {v0, v2, v1, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    return v1

    .line 617
    :cond_2c
    iget-boolean v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->isInstanceAction:Z

    if-nez v0, :cond_61

    .line 619
    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->moduleName:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->methodName:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 621
    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "param is null "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->moduleName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->checkErrorMsg:Ljava/lang/String;

    return v1

    :cond_61
    const/4 v0, 0x1

    return v0
.end method

.method public final obtainParamsWithDefault(Ljava/lang/reflect/Method;Lcom/taobao/weex/bridge/JSCallback;Z)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Lcom/taobao/weex/bridge/JSCallback;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "targetFunction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 447
    invoke-static {p1}, Lio/dcloud/p/g4$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/reflect/Method;)[Ljava/lang/reflect/Parameter;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_c3

    .line 455
    invoke-static {p1}, Lio/dcloud/p/g4$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/reflect/Method;)[Ljava/lang/reflect/Parameter;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/p/g4$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/lang/reflect/Parameter;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz p3, :cond_3d

    .line 462
    invoke-static {v3}, Lio/dcloud/p/g4$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/reflect/Parameter;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "toString(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3b
    move-object v5, v4

    goto :goto_79

    .line 464
    :cond_3d
    invoke-static {v3}, Lio/dcloud/p/g4$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/reflect/Parameter;)Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_56

    .line 466
    invoke-static {v3}, Lio/dcloud/p/g4$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/reflect/Parameter;)Ljava/lang/Class;

    move-result-object v3

    const-string v5, "null cannot be cast to non-null type java.lang.Class<*>"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "getName(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3b

    .line 469
    :cond_56
    sget-object v5, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->Companion:Lio/dcloud/feature/utsplugin/ParamConvertHelper$Companion;

    invoke-static {v3}, Lio/dcloud/p/g4$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/reflect/Parameter;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getType(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/reflect/Type;

    invoke-virtual {v5, v6}, Lio/dcloud/feature/utsplugin/ParamConvertHelper$Companion;->typeNameCompat(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v5

    .line 470
    invoke-static {v3}, Lio/dcloud/p/g4$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/reflect/Parameter;)Ljava/lang/Class;

    move-result-object v3

    const-string v6, "null cannot be cast to non-null type java.lang.reflect.ParameterizedType"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    move-object v8, v5

    move-object v5, v3

    move-object v3, v8

    .line 474
    :goto_79
    new-instance v6, Lio/dcloud/feature/utsplugin/ParamConvertHelper;

    iget-boolean v7, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->keepAlive:Z

    invoke-direct {v6, v3, v5, p2, v7}, Lio/dcloud/feature/utsplugin/ParamConvertHelper;-><init>(Ljava/lang/String;[Ljava/lang/reflect/Type;Lcom/taobao/weex/bridge/JSCallback;Z)V

    .line 477
    iget-object v3, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->paramArray:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-lt v1, v3, :cond_b0

    .line 479
    iget-object v3, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->methodArray:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "null cannot be cast to non-null type com.alibaba.fastjson.JSONObject"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/alibaba/fastjson/JSONObject;

    .line 480
    const-string v5, "default"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_a1

    .line 482
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bf

    .line 484
    :cond_a1
    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 485
    invoke-virtual {v6, v3}, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->getInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 486
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bf

    .line 492
    :cond_b0
    iget-object v3, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->paramArray:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 493
    invoke-virtual {v6, v3}, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->getInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 494
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    :goto_bf
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1d

    :cond_c3
    return-object v0
.end method

.method public obtainParamsWithDefault(Lkotlin/reflect/KFunction;Lcom/taobao/weex/bridge/JSCallback;Z)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KFunction<",
            "*>;",
            "Lcom/taobao/weex/bridge/JSCallback;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "targetFunction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 513
    invoke-interface {p1}, Lkotlin/reflect/KFunction;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e2

    .line 521
    invoke-interface {p1}, Lkotlin/reflect/KFunction;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_20
    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KParameter;

    .line 524
    invoke-interface {v3}, Lkotlin/reflect/KParameter;->getKind()Lkotlin/reflect/KParameter$Kind;

    move-result-object v4

    sget-object v5, Lkotlin/reflect/KParameter$Kind;->INSTANCE:Lkotlin/reflect/KParameter$Kind;

    if-ne v4, v5, :cond_42

    .line 525
    invoke-interface {v3}, Lkotlin/reflect/KParameter;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_de

    invoke-interface {v3}, Lkotlin/reflect/KParameter;->isOptional()Z

    move-result v3

    if-eqz v3, :cond_20

    goto/16 :goto_de

    :cond_42
    const/4 v4, 0x0

    if-eqz p3, :cond_4f

    .line 543
    invoke-interface {v3}, Lkotlin/reflect/KParameter;->getType()Lkotlin/reflect/KType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4d
    move-object v5, v4

    goto :goto_98

    .line 545
    :cond_4f
    invoke-interface {v3}, Lkotlin/reflect/KParameter;->getType()Lkotlin/reflect/KType;

    move-result-object v5

    invoke-static {v5}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Class;

    if-eqz v5, :cond_74

    .line 547
    invoke-interface {v3}, Lkotlin/reflect/KParameter;->getType()Lkotlin/reflect/KType;

    move-result-object v3

    invoke-static {v3}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v3

    const-string v5, "null cannot be cast to non-null type java.lang.Class<*>"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "getName(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4d

    .line 550
    :cond_74
    sget-object v5, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->Companion:Lio/dcloud/feature/utsplugin/ParamConvertHelper$Companion;

    invoke-interface {v3}, Lkotlin/reflect/KParameter;->getType()Lkotlin/reflect/KType;

    move-result-object v6

    invoke-static {v6}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/dcloud/feature/utsplugin/ParamConvertHelper$Companion;->typeNameCompat(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v5

    .line 551
    invoke-interface {v3}, Lkotlin/reflect/KParameter;->getType()Lkotlin/reflect/KType;

    move-result-object v3

    invoke-static {v3}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v3

    const-string v6, "null cannot be cast to non-null type java.lang.reflect.ParameterizedType"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    move-object v8, v5

    move-object v5, v3

    move-object v3, v8

    .line 556
    :goto_98
    new-instance v6, Lio/dcloud/feature/utsplugin/ParamConvertHelper;

    iget-boolean v7, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->keepAlive:Z

    invoke-direct {v6, v3, v5, p2, v7}, Lio/dcloud/feature/utsplugin/ParamConvertHelper;-><init>(Ljava/lang/String;[Ljava/lang/reflect/Type;Lcom/taobao/weex/bridge/JSCallback;Z)V

    .line 560
    iget-object v3, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->paramArray:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-lt v1, v3, :cond_cf

    .line 562
    iget-object v3, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->methodArray:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "null cannot be cast to non-null type com.alibaba.fastjson.JSONObject"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/alibaba/fastjson/JSONObject;

    .line 563
    const-string v5, "default"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_c0

    .line 565
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_de

    .line 567
    :cond_c0
    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 568
    invoke-virtual {v6, v3}, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->getInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 569
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_de

    .line 575
    :cond_cf
    iget-object v3, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->paramArray:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 576
    invoke-virtual {v6, v3}, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->getInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 577
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    :cond_de
    :goto_de
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_20

    :cond_e2
    return-object v0
.end method

.method public final setClassName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    iput-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->className:Ljava/lang/String;

    return-void
.end method

.method public final setCompanion(Z)V
    .registers 2

    .line 346
    iput-boolean p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->isCompanion:Z

    return-void
.end method

.method public final setConstructor(Z)V
    .registers 2

    .line 345
    iput-boolean p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->isConstructor:Z

    return-void
.end method

.method public final setField(Z)V
    .registers 2

    .line 347
    iput-boolean p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->isField:Z

    return-void
.end method

.method public final setInputModuleName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    iput-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->inputModuleName:Ljava/lang/String;

    return-void
.end method

.method public final setInputModuleType(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    iput-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->inputModuleType:Ljava/lang/String;

    return-void
.end method

.method public final setInstanceAction(Z)V
    .registers 2

    .line 351
    iput-boolean p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->isInstanceAction:Z

    return-void
.end method

.method public final setInstanceId(I)V
    .registers 2

    .line 352
    iput p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->instanceId:I

    return-void
.end method

.method public final setKeepAlive(Z)V
    .registers 2

    .line 357
    iput-boolean p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->keepAlive:Z

    return-void
.end method

.method public final setMethodArray(Lcom/alibaba/fastjson/JSONArray;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    iput-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->methodArray:Lcom/alibaba/fastjson/JSONArray;

    return-void
.end method

.method public final setMethodName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    iput-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->methodName:Ljava/lang/String;

    return-void
.end method

.method public final setModuleName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    iput-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->moduleName:Ljava/lang/String;

    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    iput-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->packageName:Ljava/lang/String;

    return-void
.end method

.method public final setParamArray(Lcom/alibaba/fastjson/JSONArray;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    iput-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->paramArray:Lcom/alibaba/fastjson/JSONArray;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    iput-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->type:Ljava/lang/String;

    return-void
.end method

###### Class io.dcloud.feature.utsplugin.ProxyModule.ModuleChecker (io.dcloud.feature.utsplugin.ProxyModule$ModuleChecker)
.class public final Lio/dcloud/feature/utsplugin/ProxyModule$ModuleChecker;
.super Ljava/lang/Object;
.source "UTSProxyModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/utsplugin/ProxyModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModuleChecker"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lio/dcloud/feature/utsplugin/ProxyModule$ModuleChecker;",
        "",
        "inputOption",
        "Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;",
        "<init>",
        "(Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;)V",
        "shallShowErrorDialog",
        "",
        "showErrorDialog",
        "",
        "utsplugin_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final inputOption:Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;


# direct methods
.method public constructor <init>(Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;)V
    .registers 3

    const-string v0, "inputOption"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1072
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$ModuleChecker;->inputOption:Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;

    return-void
.end method


# virtual methods
.method public final shallShowErrorDialog()Z
    .registers 4

    .line 1076
    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$ModuleChecker;->inputOption:Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;

    invoke-virtual {v0}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getInputModuleType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "built-in"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1081
    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$ModuleChecker;->inputOption:Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;

    invoke-virtual {v0}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getInputModuleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uni-getLocation-tencent-uni1"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public final showErrorDialog()V
    .registers 6

    .line 1089
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getUniActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 1092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getUniActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v2, Lio/dcloud/base/R$string;->dcloud_feature_error_tips2:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "https://ask.dcloud.net.cn/article/283"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1093
    iget-object v2, p0, Lio/dcloud/feature/utsplugin/ProxyModule$ModuleChecker;->inputOption:Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;

    invoke-virtual {v2}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getInputModuleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 1091
    invoke-static {v0, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1096
    sget-object v2, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v2}, Lio/dcloud/uts/UTSAndroid;->getUniActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1099
    iget-object v3, p0, Lio/dcloud/feature/utsplugin/ProxyModule$ModuleChecker;->inputOption:Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;

    invoke-virtual {v3}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->getInputModuleName()Ljava/lang/String;

    move-result-object v3

    .line 1095
    invoke-static {v2, v0, v1, v3}, Lio/dcloud/common/util/ErrorDialogUtil;->getLossDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 1101
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_4b
    return-void
.end method

###### Class io.dcloud.feature.utsplugin.ProxyModule.AnonymousClass1 (io.dcloud.feature.utsplugin.ProxyModule$callSuspend$1)
.class final Lio/dcloud/feature/utsplugin/ProxyModule$callSuspend$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "UTSProxyModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/utsplugin/ProxyModule;->callSuspend(Lkotlin/reflect/KCallable;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.dcloud.feature.utsplugin.ProxyModule"
    f = "UTSProxyModule.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x41e
    }
    m = "callSuspend"
    n = {
        "$this$callSuspend",
        "args"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lio/dcloud/feature/utsplugin/ProxyModule;


# direct methods
.method constructor <init>(Lio/dcloud/feature/utsplugin/ProxyModule;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/feature/utsplugin/ProxyModule;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/dcloud/feature/utsplugin/ProxyModule$callSuspend$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$callSuspend$1;->this$0:Lio/dcloud/feature/utsplugin/ProxyModule;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iput-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$callSuspend$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$callSuspend$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$callSuspend$1;->label:I

    iget-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$callSuspend$1;->this$0:Lio/dcloud/feature/utsplugin/ProxyModule;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0, v0, v1}, Lio/dcloud/feature/utsplugin/ProxyModule;->callSuspend(Lkotlin/reflect/KCallable;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.dcloud.feature.utsplugin.ProxyModule.C01051 (io.dcloud.feature.utsplugin.ProxyModule$getFunctionExecuteRet$1)
.class final Lio/dcloud/feature/utsplugin/ProxyModule$getFunctionExecuteRet$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "UTSProxyModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/utsplugin/ProxyModule;->getFunctionExecuteRet(Lkotlin/reflect/KFunction;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.dcloud.feature.utsplugin.ProxyModule"
    f = "UTSProxyModule.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2
    }
    l = {
        0x286,
        0x287,
        0x289
    }
    m = "getFunctionExecuteRet"
    n = {
        "targetFunction",
        "paramArray",
        "targetFunction",
        "paramArray",
        "suspendRet",
        "targetFunction",
        "paramArray"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lio/dcloud/feature/utsplugin/ProxyModule;


# direct methods
.method constructor <init>(Lio/dcloud/feature/utsplugin/ProxyModule;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/feature/utsplugin/ProxyModule;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/dcloud/feature/utsplugin/ProxyModule$getFunctionExecuteRet$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$getFunctionExecuteRet$1;->this$0:Lio/dcloud/feature/utsplugin/ProxyModule;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iput-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$getFunctionExecuteRet$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$getFunctionExecuteRet$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$getFunctionExecuteRet$1;->label:I

    iget-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$getFunctionExecuteRet$1;->this$0:Lio/dcloud/feature/utsplugin/ProxyModule;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0, v0, v1}, Lio/dcloud/feature/utsplugin/ProxyModule;->getFunctionExecuteRet(Lkotlin/reflect/KFunction;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.dcloud.feature.utsplugin.ProxyModule.AnonymousClass2 (io.dcloud.feature.utsplugin.ProxyModule$invokeAsync$2)
.class final Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UTSProxyModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/utsplugin/ProxyModule;->invokeAsync(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUTSProxyModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UTSProxyModule.kt\nio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1341:1\n37#2:1342\n36#2,3:1343\n*S KotlinDebug\n*F\n+ 1 UTSProxyModule.kt\nio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2\n*L\n1166#1:1342\n1166#1:1343,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.dcloud.feature.utsplugin.ProxyModule$invokeAsync$2"
    f = "UTSProxyModule.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x1,
        0x2
    }
    l = {
        0x493,
        0x497,
        0x4a3
    }
    m = "invokeSuspend"
    n = {
        "paramArray",
        "paramArray",
        "deferredRet",
        "ret",
        "paramArray"
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "L$2",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/taobao/weex/bridge/JSCallback;

.field final synthetic $needReturn:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $paramList:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $targetFunction:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlin/reflect/KFunction<",
            "*>;>;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/dcloud/feature/utsplugin/ProxyModule;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/dcloud/feature/utsplugin/ProxyModule;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/taobao/weex/bridge/JSCallback;Lkotlin/coroutines/Continuation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lio/dcloud/feature/utsplugin/ProxyModule;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlin/reflect/KFunction<",
            "*>;>;",
            "Lcom/taobao/weex/bridge/JSCallback;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->$paramList:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->$needReturn:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->this$0:Lio/dcloud/feature/utsplugin/ProxyModule;

    iput-object p4, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->$targetFunction:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p5, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->$callback:Lcom/taobao/weex/bridge/JSCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;

    iget-object v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->$paramList:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->$needReturn:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v3, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->this$0:Lio/dcloud/feature/utsplugin/ProxyModule;

    iget-object v4, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->$targetFunction:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->$callback:Lcom/taobao/weex/bridge/JSCallback;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/dcloud/feature/utsplugin/ProxyModule;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/taobao/weex/bridge/JSCallback;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1164
    iget v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3a

    if-eq v1, v4, :cond_32

    if-eq v1, v3, :cond_22

    if-ne v1, v2, :cond_1a

    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->L$0:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_d5

    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->L$2:Ljava/lang/Object;

    check-cast v0, Lio/dcloud/feature/utsplugin/ReturnResult;

    iget-object v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/Deferred;

    iget-object v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->L$0:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_99

    :cond_32
    iget-object v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->L$0:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_72

    :cond_3a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1166
    iget-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->$paramList:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    const/4 v1, 0x0

    .line 1345
    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 1168
    iget-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->$needReturn:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_b3

    .line 1171
    iget-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->this$0:Lio/dcloud/feature/utsplugin/ProxyModule;

    iget-object v2, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->$targetFunction:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/reflect/KCallable;

    array-length v5, v1

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->L$0:Ljava/lang/Object;

    iput v4, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->label:I

    invoke-virtual {p1, v2, v5, v6}, Lio/dcloud/feature/utsplugin/ProxyModule;->callSuspend(Lkotlin/reflect/KCallable;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_72

    goto :goto_d4

    :cond_72
    :goto_72
    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.Deferred<kotlin.Any?>"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlinx/coroutines/Deferred;

    .line 1173
    new-instance v2, Lio/dcloud/feature/utsplugin/ReturnResult;

    invoke-direct {v2}, Lio/dcloud/feature/utsplugin/ReturnResult;-><init>()V

    .line 1175
    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->L$1:Ljava/lang/Object;

    iput-object v2, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->L$2:Ljava/lang/Object;

    iput v3, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->label:I

    invoke-interface {p1, v4}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_98

    goto :goto_d4

    :cond_98
    move-object v0, v2

    .line 1177
    :goto_99
    instance-of v1, p1, Lio/dcloud/uts/UTSJSONObject;

    if-eqz v1, :cond_a7

    .line 1178
    check-cast p1, Lio/dcloud/uts/UTSJSONObject;

    invoke-virtual {p1}, Lio/dcloud/uts/UTSJSONObject;->toJSONObject()Lcom/alibaba/fastjson/JSON;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/dcloud/feature/utsplugin/ReturnResult;->updateJSON(Ljava/lang/Object;)V

    goto :goto_aa

    .line 1180
    :cond_a7
    invoke-virtual {v0, p1}, Lio/dcloud/feature/utsplugin/ReturnResult;->updateJSON(Ljava/lang/Object;)V

    .line 1183
    :goto_aa
    iget-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_ef

    .line 1187
    :cond_b3
    iget-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->this$0:Lio/dcloud/feature/utsplugin/ProxyModule;

    iget-object v3, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->$targetFunction:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lkotlin/reflect/KCallable;

    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->label:I

    invoke-virtual {p1, v3, v4, v5}, Lio/dcloud/feature/utsplugin/ProxyModule;->callSuspend(Lkotlin/reflect/KCallable;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_d5

    :goto_d4
    return-object v0

    .line 1189
    :cond_d5
    :goto_d5
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1190
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    const-string v2, "params"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$2;->$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 1193
    :goto_ef
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.dcloud.feature.utsplugin.ProxyModule.AnonymousClass4 (io.dcloud.feature.utsplugin.ProxyModule$invokeAsync$4)
.class final Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UTSProxyModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/utsplugin/ProxyModule;->invokeAsync(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUTSProxyModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UTSProxyModule.kt\nio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1341:1\n37#2:1342\n36#2,3:1343\n*S KotlinDebug\n*F\n+ 1 UTSProxyModule.kt\nio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4\n*L\n1270#1:1342\n1270#1:1343,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.dcloud.feature.utsplugin.ProxyModule$invokeAsync$4"
    f = "UTSProxyModule.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x2
    }
    l = {
        0x4fd,
        0x502,
        0x514
    }
    m = "invokeSuspend"
    n = {
        "paramArray",
        "paramArray",
        "deferredRet",
        "paramArray"
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/taobao/weex/bridge/JSCallback;

.field final synthetic $fieldMethodDetector:Lio/dcloud/feature/utsplugin/FieldMethodDetector;

.field final synthetic $isFieldMethod:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $needReturn:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $paramList:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $targetFunction:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlin/reflect/KFunction<",
            "*>;>;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/dcloud/feature/utsplugin/ProxyModule;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/dcloud/feature/utsplugin/ProxyModule;Lkotlin/jvm/internal/Ref$ObjectRef;Lio/dcloud/feature/utsplugin/FieldMethodDetector;Lcom/taobao/weex/bridge/JSCallback;Lkotlin/coroutines/Continuation;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lio/dcloud/feature/utsplugin/ProxyModule;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlin/reflect/KFunction<",
            "*>;>;",
            "Lio/dcloud/feature/utsplugin/FieldMethodDetector;",
            "Lcom/taobao/weex/bridge/JSCallback;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->$paramList:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->$needReturn:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->$isFieldMethod:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p4, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->this$0:Lio/dcloud/feature/utsplugin/ProxyModule;

    iput-object p5, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->$targetFunction:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p6, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->$fieldMethodDetector:Lio/dcloud/feature/utsplugin/FieldMethodDetector;

    iput-object p7, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->$callback:Lcom/taobao/weex/bridge/JSCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;

    iget-object v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->$paramList:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->$needReturn:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v3, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->$isFieldMethod:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v4, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->this$0:Lio/dcloud/feature/utsplugin/ProxyModule;

    iget-object v5, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->$targetFunction:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->$fieldMethodDetector:Lio/dcloud/feature/utsplugin/FieldMethodDetector;

    iget-object v7, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->$callback:Lcom/taobao/weex/bridge/JSCallback;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/dcloud/feature/utsplugin/ProxyModule;Lkotlin/jvm/internal/Ref$ObjectRef;Lio/dcloud/feature/utsplugin/FieldMethodDetector;Lcom/taobao/weex/bridge/JSCallback;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1269
    iget v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->label:I

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.Deferred<kotlin.Any?>"

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_39

    if-eq v1, v5, :cond_31

    if-eq v1, v4, :cond_24

    if-ne v1, v3, :cond_1c

    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->L$0:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_107

    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/Deferred;

    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->L$0:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b0

    :cond_31
    iget-object v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->L$0:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_75

    :cond_39
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1270
    iget-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->$paramList:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    const/4 v1, 0x0

    .line 1345
    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 1272
    iget-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->$needReturn:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_cb

    .line 1275
    iget-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->$isFieldMethod:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p1, :cond_7b

    .line 1277
    iget-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->this$0:Lio/dcloud/feature/utsplugin/ProxyModule;

    iget-object v3, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->$targetFunction:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lkotlin/reflect/KCallable;

    array-length v6, v1

    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->L$0:Ljava/lang/Object;

    iput v5, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->label:I

    invoke-virtual {p1, v3, v6, v7}, Lio/dcloud/feature/utsplugin/ProxyModule;->callSuspend(Lkotlin/reflect/KCallable;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_75

    goto/16 :goto_ef

    :cond_75
    :goto_75
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlinx/coroutines/Deferred;

    goto :goto_98

    .line 1279
    :cond_7b
    iget-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->$fieldMethodDetector:Lio/dcloud/feature/utsplugin/FieldMethodDetector;

    invoke-virtual {p1}, Lio/dcloud/feature/utsplugin/FieldMethodDetector;->getFieldFunMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->$fieldMethodDetector:Lio/dcloud/feature/utsplugin/FieldMethodDetector;

    invoke-virtual {v3}, Lio/dcloud/feature/utsplugin/FieldMethodDetector;->getHostFunction()Lkotlin/Function;

    move-result-object v3

    array-length v5, v1

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlinx/coroutines/Deferred;

    .line 1282
    :goto_98
    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->L$1:Ljava/lang/Object;

    iput v4, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->label:I

    invoke-interface {p1, v2}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b0

    goto :goto_ef

    .line 1285
    :cond_b0
    :goto_b0
    instance-of v0, p1, Lio/dcloud/uts/UTSJSONObject;

    if-eqz v0, :cond_ba

    .line 1286
    check-cast p1, Lio/dcloud/uts/UTSJSONObject;

    invoke-virtual {p1}, Lio/dcloud/uts/UTSJSONObject;->toJSONObject()Lcom/alibaba/fastjson/JSON;

    move-result-object p1

    .line 1292
    :cond_ba
    new-instance v0, Lio/dcloud/feature/utsplugin/ReturnResult;

    invoke-direct {v0}, Lio/dcloud/feature/utsplugin/ReturnResult;-><init>()V

    .line 1293
    invoke-virtual {v0, p1}, Lio/dcloud/feature/utsplugin/ReturnResult;->updateJSON(Ljava/lang/Object;)V

    .line 1295
    iget-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_121

    .line 1299
    :cond_cb
    iget-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->$isFieldMethod:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p1, :cond_f0

    .line 1300
    iget-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->this$0:Lio/dcloud/feature/utsplugin/ProxyModule;

    iget-object v2, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->$targetFunction:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lkotlin/reflect/KCallable;

    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->L$0:Ljava/lang/Object;

    iput v3, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->label:I

    invoke-virtual {p1, v2, v4, v5}, Lio/dcloud/feature/utsplugin/ProxyModule;->callSuspend(Lkotlin/reflect/KCallable;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_107

    :goto_ef
    return-object v0

    .line 1302
    :cond_f0
    iget-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->$fieldMethodDetector:Lio/dcloud/feature/utsplugin/FieldMethodDetector;

    invoke-virtual {p1}, Lio/dcloud/feature/utsplugin/FieldMethodDetector;->getFieldFunMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->$fieldMethodDetector:Lio/dcloud/feature/utsplugin/FieldMethodDetector;

    invoke-virtual {v0}, Lio/dcloud/feature/utsplugin/FieldMethodDetector;->getHostFunction()Lkotlin/Function;

    move-result-object v0

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    :cond_107
    :goto_107
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1306
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    const-string v2, "params"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeAsync$4;->$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 1309
    :goto_121
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.dcloud.feature.utsplugin.ProxyModule.C01062 (io.dcloud.feature.utsplugin.ProxyModule$invokeSync$2)
.class final Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UTSProxyModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/utsplugin/ProxyModule;->invokeSync(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlinx/coroutines/Job;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUTSProxyModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UTSProxyModule.kt\nio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,1341:1\n44#2,4:1342\n*S KotlinDebug\n*F\n+ 1 UTSProxyModule.kt\nio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2\n*L\n831#1:1342,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlinx/coroutines/Job;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.dcloud.feature.utsplugin.ProxyModule$invokeSync$2"
    f = "UTSProxyModule.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $errRet:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lio/dcloud/feature/utsplugin/ReturnResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $executeRet:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $inputOption:Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;

.field final synthetic $javaClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $paramList:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $targetFunction:Lkotlin/reflect/KFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KFunction<",
            "*>;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/dcloud/feature/utsplugin/ProxyModule;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/Class;Lio/dcloud/feature/utsplugin/ProxyModule;Lkotlin/reflect/KFunction;Lkotlin/coroutines/Continuation;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lio/dcloud/feature/utsplugin/ReturnResult;",
            ">;",
            "Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;",
            "Lio/dcloud/feature/utsplugin/ProxyModule;",
            "Lkotlin/reflect/KFunction<",
            "*>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;->$executeRet:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;->$errRet:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;->$inputOption:Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;

    iput-object p4, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;->$paramList:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p5, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;->$javaClazz:Ljava/lang/Class;

    iput-object p6, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;->this$0:Lio/dcloud/feature/utsplugin/ProxyModule;

    iput-object p7, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;->$targetFunction:Lkotlin/reflect/KFunction;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;

    iget-object v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;->$executeRet:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;->$errRet:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;->$inputOption:Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;

    iget-object v4, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;->$paramList:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;->$javaClazz:Ljava/lang/Class;

    iget-object v6, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;->this$0:Lio/dcloud/feature/utsplugin/ProxyModule;

    iget-object v7, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;->$targetFunction:Lkotlin/reflect/KFunction;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/Class;Lio/dcloud/feature/utsplugin/ProxyModule;Lkotlin/reflect/KFunction;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/Job;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;->L$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 829
    iget v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;->label:I

    if-nez v0, :cond_3c

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 831
    iget-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;->$executeRet:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;->$errRet:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 1342
    sget-object v2, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    new-instance v3, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$invokeSuspend$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v3, v2, p1, v0}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$invokeSuspend$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v3, Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 1345
    move-object v2, v3

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    .line 831
    new-instance v3, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;

    iget-object v4, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;->$inputOption:Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;

    iget-object v5, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;->$paramList:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;->$javaClazz:Ljava/lang/Class;

    iget-object v7, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;->$executeRet:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v8, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;->this$0:Lio/dcloud/feature/utsplugin/ProxyModule;

    iget-object v9, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;->$targetFunction:Lkotlin/reflect/KFunction;

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;-><init>(Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/Class;Lkotlin/jvm/internal/Ref$ObjectRef;Lio/dcloud/feature/utsplugin/ProxyModule;Lkotlin/reflect/KFunction;Lkotlin/coroutines/Continuation;)V

    move-object v4, v3

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1

    .line 829
    :cond_3c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.dcloud.feature.utsplugin.ProxyModule.C01062.C00502 (io.dcloud.feature.utsplugin.ProxyModule$invokeSync$2$2)
.class final Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UTSProxyModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUTSProxyModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UTSProxyModule.kt\nio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1341:1\n37#2:1342\n36#2,3:1343\n*S KotlinDebug\n*F\n+ 1 UTSProxyModule.kt\nio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2\n*L\n845#1:1342\n845#1:1343,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.dcloud.feature.utsplugin.ProxyModule$invokeSync$2$2"
    f = "UTSProxyModule.kt"
    i = {
        0x0
    }
    l = {
        0x34e
    }
    m = "invokeSuspend"
    n = {
        "paramArray"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $executeRet:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $inputOption:Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;

.field final synthetic $javaClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $paramList:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $targetFunction:Lkotlin/reflect/KFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KFunction<",
            "*>;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/dcloud/feature/utsplugin/ProxyModule;


# direct methods
.method constructor <init>(Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/Class;Lkotlin/jvm/internal/Ref$ObjectRef;Lio/dcloud/feature/utsplugin/ProxyModule;Lkotlin/reflect/KFunction;Lkotlin/coroutines/Continuation;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Object;",
            ">;",
            "Lio/dcloud/feature/utsplugin/ProxyModule;",
            "Lkotlin/reflect/KFunction<",
            "*>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;->$inputOption:Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;

    iput-object p2, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;->$paramList:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;->$javaClazz:Ljava/lang/Class;

    iput-object p4, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;->$executeRet:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p5, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;->this$0:Lio/dcloud/feature/utsplugin/ProxyModule;

    iput-object p6, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;->$targetFunction:Lkotlin/reflect/KFunction;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;

    iget-object v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;->$inputOption:Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;

    iget-object v2, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;->$paramList:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;->$javaClazz:Ljava/lang/Class;

    iget-object v4, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;->$executeRet:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;->this$0:Lio/dcloud/feature/utsplugin/ProxyModule;

    iget-object v6, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;->$targetFunction:Lkotlin/reflect/KFunction;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;-><init>(Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/Class;Lkotlin/jvm/internal/Ref$ObjectRef;Lio/dcloud/feature/utsplugin/ProxyModule;Lkotlin/reflect/KFunction;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 839
    iget v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1f

    if-ne v1, v2, :cond_17

    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;->L$0:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_6f

    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 840
    iget-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;->$inputOption:Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;

    invoke-virtual {p1}, Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;->isCompanion()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_45

    .line 842
    iget-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;->$paramList:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v3, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;->$javaClazz:Ljava/lang/Class;

    invoke-static {v3}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v3}, Lkotlin/reflect/full/KClasses;->getCompanionObject(Lkotlin/reflect/KClass;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.Nothing"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Void;

    invoke-interface {p1, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 845
    :cond_45
    iget-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;->$paramList:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    .line 1345
    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 846
    iget-object v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;->$executeRet:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;->this$0:Lio/dcloud/feature/utsplugin/ProxyModule;

    iget-object v4, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;->$targetFunction:Lkotlin/reflect/KFunction;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;->L$1:Ljava/lang/Object;

    iput v2, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$2$2;->label:I

    invoke-virtual {v3, v4, p1, v5}, Lio/dcloud/feature/utsplugin/ProxyModule;->getFunctionExecuteRet(Lkotlin/reflect/KFunction;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6e

    return-object v0

    :cond_6e
    move-object v0, v1

    .line 839
    :goto_6f
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 847
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.dcloud.feature.utsplugin.ProxyModule.AnonymousClass3 (io.dcloud.feature.utsplugin.ProxyModule$invokeSync$3)
.class final Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UTSProxyModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/utsplugin/ProxyModule;->invokeSync(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlinx/coroutines/Job;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUTSProxyModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UTSProxyModule.kt\nio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,1341:1\n44#2,4:1342\n*S KotlinDebug\n*F\n+ 1 UTSProxyModule.kt\nio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3\n*L\n991#1:1342,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlinx/coroutines/Job;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.dcloud.feature.utsplugin.ProxyModule$invokeSync$3"
    f = "UTSProxyModule.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $errRet:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lio/dcloud/feature/utsplugin/ReturnResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $executeRet:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $paramList:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $targetFunction:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlin/reflect/KFunction<",
            "*>;>;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/dcloud/feature/utsplugin/ProxyModule;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lio/dcloud/feature/utsplugin/ProxyModule;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lio/dcloud/feature/utsplugin/ReturnResult;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lio/dcloud/feature/utsplugin/ProxyModule;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlin/reflect/KFunction<",
            "*>;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3;->$executeRet:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3;->$errRet:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3;->$paramList:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3;->this$0:Lio/dcloud/feature/utsplugin/ProxyModule;

    iput-object p5, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3;->$targetFunction:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3;

    iget-object v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3;->$executeRet:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3;->$errRet:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3;->$paramList:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3;->this$0:Lio/dcloud/feature/utsplugin/ProxyModule;

    iget-object v5, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3;->$targetFunction:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lio/dcloud/feature/utsplugin/ProxyModule;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/Job;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3;->L$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 990
    iget v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3;->label:I

    if-nez v0, :cond_38

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 991
    iget-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3;->$executeRet:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3;->$errRet:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 1342
    sget-object v2, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    new-instance v3, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3$invokeSuspend$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v3, v2, p1, v0}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3$invokeSuspend$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v3, Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 1345
    move-object v2, v3

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    .line 991
    new-instance v3, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3$2;

    iget-object v4, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3;->$paramList:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3;->$executeRet:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3;->this$0:Lio/dcloud/feature/utsplugin/ProxyModule;

    iget-object v7, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3;->$targetFunction:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lio/dcloud/feature/utsplugin/ProxyModule;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    move-object v4, v3

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1

    .line 990
    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.dcloud.feature.utsplugin.ProxyModule.AnonymousClass3.AnonymousClass2 (io.dcloud.feature.utsplugin.ProxyModule$invokeSync$3$2)
.class final Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UTSProxyModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUTSProxyModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UTSProxyModule.kt\nio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3$2\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1341:1\n37#2:1342\n36#2,3:1343\n*S KotlinDebug\n*F\n+ 1 UTSProxyModule.kt\nio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3$2\n*L\n1000#1:1342\n1000#1:1343,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.dcloud.feature.utsplugin.ProxyModule$invokeSync$3$2"
    f = "UTSProxyModule.kt"
    i = {
        0x0
    }
    l = {
        0x3e9
    }
    m = "invokeSuspend"
    n = {
        "paramArray"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $executeRet:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $paramList:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $targetFunction:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlin/reflect/KFunction<",
            "*>;>;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/dcloud/feature/utsplugin/ProxyModule;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lio/dcloud/feature/utsplugin/ProxyModule;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Object;",
            ">;",
            "Lio/dcloud/feature/utsplugin/ProxyModule;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlin/reflect/KFunction<",
            "*>;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3$2;->$paramList:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3$2;->$executeRet:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3$2;->this$0:Lio/dcloud/feature/utsplugin/ProxyModule;

    iput-object p4, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3$2;->$targetFunction:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3$2;

    iget-object v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3$2;->$paramList:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3$2;->$executeRet:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3$2;->this$0:Lio/dcloud/feature/utsplugin/ProxyModule;

    iget-object v4, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3$2;->$targetFunction:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lio/dcloud/feature/utsplugin/ProxyModule;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 999
    iget v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1f

    if-ne v1, v2, :cond_17

    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3$2;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3$2;->L$0:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4e

    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1000
    iget-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3$2;->$paramList:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    const/4 v1, 0x0

    .line 1345
    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 1001
    iget-object v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3$2;->$executeRet:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3$2;->this$0:Lio/dcloud/feature/utsplugin/ProxyModule;

    iget-object v4, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3$2;->$targetFunction:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lkotlin/reflect/KFunction;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3$2;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3$2;->L$1:Ljava/lang/Object;

    iput v2, p0, Lio/dcloud/feature/utsplugin/ProxyModule$invokeSync$3$2;->label:I

    invoke-virtual {v3, v4, p1, v5}, Lio/dcloud/feature/utsplugin/ProxyModule;->getFunctionExecuteRet(Lkotlin/reflect/KFunction;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4d

    return-object v0

    :cond_4d
    move-object v0, v1

    .line 999
    :goto_4e
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1002
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.dcloud.feature.utsplugin.ProxyModule.C01072 (io.dcloud.feature.utsplugin.ProxyModule$wrapDoTypeAction$2)
.class final Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UTSProxyModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/utsplugin/ProxyModule;->wrapDoTypeAction(Lio/dcloud/feature/utsplugin/ProxyModule$InputOption;Ljava/lang/Class;Ljava/lang/Object;Lcom/taobao/weex/bridge/JSCallback;Lio/dcloud/feature/utsplugin/ReturnResult;)Lcom/alibaba/fastjson/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlinx/coroutines/Job;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUTSProxyModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UTSProxyModule.kt\nio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,1341:1\n44#2,4:1342\n*S KotlinDebug\n*F\n+ 1 UTSProxyModule.kt\nio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2\n*L\n693#1:1342,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlinx/coroutines/Job;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.dcloud.feature.utsplugin.ProxyModule$wrapDoTypeAction$2"
    f = "UTSProxyModule.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $errRet:Lio/dcloud/feature/utsplugin/ReturnResult;

.field final synthetic $executeRet:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $paramList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $targetInstance:Ljava/lang/Object;

.field final synthetic $targetMethod:Ljava/lang/reflect/Method;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/dcloud/feature/utsplugin/ReturnResult;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Object;",
            ">;",
            "Lio/dcloud/feature/utsplugin/ReturnResult;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2;->$executeRet:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2;->$errRet:Lio/dcloud/feature/utsplugin/ReturnResult;

    iput-object p3, p0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2;->$targetMethod:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2;->$targetInstance:Ljava/lang/Object;

    iput-object p5, p0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2;->$paramList:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2;

    iget-object v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2;->$executeRet:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2;->$errRet:Lio/dcloud/feature/utsplugin/ReturnResult;

    iget-object v3, p0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2;->$targetMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2;->$targetInstance:Ljava/lang/Object;

    iget-object v5, p0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2;->$paramList:Ljava/util/List;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/dcloud/feature/utsplugin/ReturnResult;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/Job;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2;->L$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 691
    iget v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2;->label:I

    if-nez v0, :cond_38

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 693
    iget-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2;->$executeRet:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2;->$errRet:Lio/dcloud/feature/utsplugin/ReturnResult;

    .line 1342
    sget-object v2, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    new-instance v3, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2$invokeSuspend$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v3, v2, p1, v0}, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2$invokeSuspend$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lkotlin/jvm/internal/Ref$ObjectRef;Lio/dcloud/feature/utsplugin/ReturnResult;)V

    check-cast v3, Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 1345
    move-object v2, v3

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    .line 693
    new-instance v3, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2$2;

    iget-object v4, p0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2;->$executeRet:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, p0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2;->$targetMethod:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2;->$targetInstance:Ljava/lang/Object;

    iget-object v7, p0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2;->$paramList:Ljava/util/List;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    move-object v4, v3

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1

    .line 691
    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.dcloud.feature.utsplugin.ProxyModule.C01072.C00512 (io.dcloud.feature.utsplugin.ProxyModule$wrapDoTypeAction$2$2)
.class final Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UTSProxyModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUTSProxyModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UTSProxyModule.kt\nio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2$2\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1341:1\n37#2:1342\n36#2,3:1343\n*S KotlinDebug\n*F\n+ 1 UTSProxyModule.kt\nio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2$2\n*L\n702#1:1342\n702#1:1343,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.dcloud.feature.utsplugin.ProxyModule$wrapDoTypeAction$2$2"
    f = "UTSProxyModule.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $executeRet:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $paramList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $targetInstance:Ljava/lang/Object;

.field final synthetic $targetMethod:Ljava/lang/reflect/Method;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2$2;->$executeRet:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2$2;->$targetMethod:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2$2;->$targetInstance:Ljava/lang/Object;

    iput-object p4, p0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2$2;->$paramList:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2$2;

    iget-object v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2$2;->$executeRet:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2$2;->$targetMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2$2;->$targetInstance:Ljava/lang/Object;

    iget-object v4, p0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2$2;->$paramList:Ljava/util/List;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 701
    iget v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2$2;->label:I

    if-nez v0, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 702
    iget-object p1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2$2;->$executeRet:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2$2;->$targetMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2$2;->$targetInstance:Ljava/lang/Object;

    iget-object v2, p0, Lio/dcloud/feature/utsplugin/ProxyModule$wrapDoTypeAction$2$2;->$paramList:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    const/4 v3, 0x0

    .line 1345
    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 702
    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 703
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 701
    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
