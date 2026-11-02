###### Class com.alibaba.android.bindingx.core.BindingXCore (com.alibaba.android.bindingx.core.BindingXCore)
.class public Lcom/alibaba/android/bindingx/core/BindingXCore;
.super Ljava/lang/Object;
.source "BindingXCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;,
        Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator;
    }
.end annotation


# static fields
.field private static final sGlobalEventHandlerCreatorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator<",
            "Lcom/alibaba/android/bindingx/core/IEventHandler;",
            "Landroid/content/Context;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mBindingCouples:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/bindingx/core/IEventHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mInternalEventHandlerCreatorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator<",
            "Lcom/alibaba/android/bindingx/core/IEventHandler;",
            "Landroid/content/Context;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPlatformManager:Lcom/alibaba/android/bindingx/core/PlatformManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 54
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/alibaba/android/bindingx/core/BindingXCore;->sGlobalEventHandlerCreatorMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/bindingx/core/PlatformManager;)V
    .registers 4

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/BindingXCore;->mInternalEventHandlerCreatorMap:Ljava/util/Map;

    .line 64
    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/BindingXCore;->mPlatformManager:Lcom/alibaba/android/bindingx/core/PlatformManager;

    .line 65
    new-instance p1, Lcom/alibaba/android/bindingx/core/BindingXCore$1;

    invoke-direct {p1, p0}, Lcom/alibaba/android/bindingx/core/BindingXCore$1;-><init>(Lcom/alibaba/android/bindingx/core/BindingXCore;)V

    const-string v0, "pan"

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/android/bindingx/core/BindingXCore;->registerEventHandler(Ljava/lang/String;Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator;)V

    .line 71
    new-instance p1, Lcom/alibaba/android/bindingx/core/BindingXCore$2;

    invoke-direct {p1, p0}, Lcom/alibaba/android/bindingx/core/BindingXCore$2;-><init>(Lcom/alibaba/android/bindingx/core/BindingXCore;)V

    const-string v0, "orientation"

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/android/bindingx/core/BindingXCore;->registerEventHandler(Ljava/lang/String;Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator;)V

    .line 77
    new-instance p1, Lcom/alibaba/android/bindingx/core/BindingXCore$3;

    invoke-direct {p1, p0}, Lcom/alibaba/android/bindingx/core/BindingXCore$3;-><init>(Lcom/alibaba/android/bindingx/core/BindingXCore;)V

    const-string/jumbo v0, "timing"

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/android/bindingx/core/BindingXCore;->registerEventHandler(Ljava/lang/String;Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator;)V

    return-void
.end method

.method private createEventHandler(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/bindingx/core/IEventHandler;
    .registers 7

    .line 392
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/BindingXCore;->mInternalEventHandlerCreatorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/BindingXCore;->mPlatformManager:Lcom/alibaba/android/bindingx/core/PlatformManager;

    if-nez v0, :cond_e

    goto :goto_32

    .line 395
    :cond_e
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/BindingXCore;->mInternalEventHandlerCreatorMap:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator;

    if-nez v0, :cond_21

    .line 397
    sget-object v0, Lcom/alibaba/android/bindingx/core/BindingXCore;->sGlobalEventHandlerCreatorMap:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator;

    :cond_21
    if-eqz v0, :cond_32

    .line 399
    iget-object p3, p0, Lcom/alibaba/android/bindingx/core/BindingXCore;->mPlatformManager:Lcom/alibaba/android/bindingx/core/PlatformManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-interface {v0, p1, p3, v1}, Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator;->createWith(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/android/bindingx/core/IEventHandler;

    return-object p1

    :cond_32
    :goto_32
    return-object v1
.end method

.method private generateToken()Ljava/lang/String;
    .registers 2

    .line 385
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static registerGlobalEventHandler(Ljava/lang/String;Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator<",
            "Lcom/alibaba/android/bindingx/core/IEventHandler;",
            "Landroid/content/Context;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager;",
            ">;)V"
        }
    .end annotation

    .line 373
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    if-nez p1, :cond_9

    goto :goto_e

    .line 376
    :cond_9
    sget-object v0, Lcom/alibaba/android/bindingx/core/BindingXCore;->sGlobalEventHandlerCreatorMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_e
    return-void
.end method

.method public static unregisterGlobalEventHandler(Ljava/lang/String;)Z
    .registers 2

    .line 381
    sget-object v0, Lcom/alibaba/android/bindingx/core/BindingXCore;->sGlobalEventHandlerCreatorMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public varargs doBind(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v1, p3

    .line 99
    const-string v0, "eventType"

    invoke-static {v1, v0}, Lcom/alibaba/android/bindingx/core/internal/Utils;->getStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 100
    const-string v0, "instanceId"

    invoke-static {v1, v0}, Lcom/alibaba/android/bindingx/core/internal/Utils;->getStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-static {v1}, Lcom/alibaba/android/bindingx/core/LogProxy;->enableLogIfNeeded(Ljava/util/Map;)V

    .line 102
    const-string v0, "options"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 104
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_2f

    .line 106
    :try_start_1d
    new-instance v2, Lorg/json/JSONObject;

    check-cast v0, Ljava/util/Map;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-static {v2}, Lcom/alibaba/android/bindingx/core/internal/Utils;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_28} :catch_29

    goto :goto_30

    :catch_29
    move-exception v0

    .line 108
    const-string v2, "parse external config failed.\n"

    invoke-static {v2, v0}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    move-object v5, v0

    .line 112
    const-string v0, "exitExpression"

    invoke-static {v1, v0}, Lcom/alibaba/android/bindingx/core/internal/Utils;->getExpressionPair(Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;

    move-result-object v6

    .line 114
    const-string v0, "anchor"

    invoke-static {v1, v0}, Lcom/alibaba/android/bindingx/core/internal/Utils;->getStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-static {v1}, Lcom/alibaba/android/bindingx/core/internal/Utils;->getRuntimeProps(Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    .line 116
    invoke-static {v1}, Lcom/alibaba/android/bindingx/core/internal/Utils;->getCustomInterceptors(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    move-object v1, p0

    move-object v10, p1

    move-object v11, p2

    move-object/from16 v9, p4

    move-object/from16 v12, p5

    .line 117
    invoke-virtual/range {v1 .. v12}, Lcom/alibaba/android/bindingx/core/BindingXCore;->doBind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;Ljava/util/List;Ljava/util/Map;Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doBind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;Ljava/util/List;Ljava/util/Map;Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;",
            ">;",
            "Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 280
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v7, "]"

    if-nez v1, :cond_be

    if-nez p6, :cond_d

    goto/16 :goto_be

    .line 288
    :cond_d
    iget-object v1, p0, Lcom/alibaba/android/bindingx/core/BindingXCore;->mBindingCouples:Ljava/util/Map;

    if-eqz v1, :cond_28

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, p0, Lcom/alibaba/android/bindingx/core/BindingXCore;->mBindingCouples:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_28

    .line 289
    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/alibaba/android/bindingx/core/IEventHandler;

    :cond_28
    move-object v8, v2

    if-nez v8, :cond_70

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "binding not enabled,try auto enable it.[sourceRef:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",eventType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v1, p9

    move-object/from16 v2, p10

    .line 294
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/bindingx/core/BindingXCore;->doPrepare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6d

    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/BindingXCore;->mBindingCouples:Ljava/util/Map;

    if-eqz v0, :cond_6d

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_6d

    .line 296
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/alibaba/android/bindingx/core/IEventHandler;

    :cond_6d
    move-object v0, v8

    move-object v8, v1

    goto :goto_72

    :cond_70
    move-object v0, v8

    move-object v8, p1

    :goto_72
    if-eqz v0, :cond_a4

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object/from16 v5, p8

    .line 301
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/bindingx/core/IEventHandler;->onBindExpression(Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;Ljava/util/List;Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;)V

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createBinding success.[exitExp:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",args:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    move-object/from16 v1, p7

    .line 303
    invoke-interface {v0, v1}, Lcom/alibaba/android/bindingx/core/IEventHandler;->setInterceptors(Ljava/util/Map;)V

    move-object/from16 v1, p11

    .line 304
    invoke-interface {v0, v1}, Lcom/alibaba/android/bindingx/core/IEventHandler;->setExtensionParams([Ljava/lang/Object;)V

    return-object v8

    .line 306
    :cond_a4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "internal error.binding failed for ref:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;)V

    return-object v8

    :cond_be
    :goto_be
    move-object v4, p6

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doBind failed,illegal argument.["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;)V

    return-object v2
.end method

.method public doPrepare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 195
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 196
    const-string p1, "[doPrepare] failed. can not found eventType"

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;)V

    return-object v1

    :cond_d
    if-nez p1, :cond_15

    .line 201
    const-string p1, "[doPrepare] failed. context or wxInstance is null"

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;)V

    return-object v1

    .line 206
    :cond_15
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/alibaba/android/bindingx/core/BindingXCore;->generateToken()Ljava/lang/String;

    move-result-object p3

    .line 208
    :cond_1f
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/BindingXCore;->mBindingCouples:Ljava/util/Map;

    if-nez v0, :cond_2a

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/BindingXCore;->mBindingCouples:Ljava/util/Map;

    .line 213
    :cond_2a
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/BindingXCore;->mBindingCouples:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 216
    const-string v2, "enableBinding success.[token:"

    const-string v3, "]"

    const-string v4, ",type:"

    if-eqz v0, :cond_79

    invoke-interface {v0, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/bindingx/core/IEventHandler;

    if-eqz v5, :cond_79

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "you have already enabled binding,[token:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    .line 219
    invoke-interface {v5, p3, p5}, Lcom/alibaba/android/bindingx/core/IEventHandler;->onStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    return-object p3

    :cond_79
    if-nez v0, :cond_86

    .line 224
    new-instance v0, Ljava/util/HashMap;

    const/4 v5, 0x4

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 225
    iget-object v5, p0, Lcom/alibaba/android/bindingx/core/BindingXCore;->mBindingCouples:Ljava/util/Map;

    invoke-interface {v5, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_86
    invoke-direct {p0, p1, p2, p5}, Lcom/alibaba/android/bindingx/core/BindingXCore;->createEventHandler(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/bindingx/core/IEventHandler;

    move-result-object p1

    if-eqz p1, :cond_d5

    .line 231
    invoke-interface {p1, p4}, Lcom/alibaba/android/bindingx/core/IEventHandler;->setAnchorInstanceId(Ljava/lang/String;)V

    .line 232
    invoke-interface {p1, p3}, Lcom/alibaba/android/bindingx/core/IEventHandler;->setToken(Ljava/lang/String;)V

    .line 233
    invoke-interface {p1, p6}, Lcom/alibaba/android/bindingx/core/IEventHandler;->setGlobalConfig(Ljava/util/Map;)V

    .line 234
    invoke-interface {p1, p3, p5}, Lcom/alibaba/android/bindingx/core/IEventHandler;->onCreate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_ba

    .line 235
    invoke-interface {p1, p3, p5}, Lcom/alibaba/android/bindingx/core/IEventHandler;->onStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-interface {v0, p5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    return-object p3

    .line 240
    :cond_ba
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "expression enabled failed. [token:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;)V

    return-object v1

    .line 244
    :cond_d5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "unknown eventType: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;)V

    return-object v1
.end method

.method public doRelease()V
    .registers 4

    .line 170
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/BindingXCore;->mBindingCouples:Ljava/util/Map;

    if-eqz v0, :cond_49

    .line 172
    :try_start_4
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_c

    .line 173
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 174
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/bindingx/core/IEventHandler;

    if-eqz v2, :cond_28

    .line 176
    invoke-interface {v2}, Lcom/alibaba/android/bindingx/core/IEventHandler;->onDestroy()V

    goto :goto_28

    .line 181
    :cond_3a
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/BindingXCore;->mBindingCouples:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/BindingXCore;->mBindingCouples:Ljava/util/Map;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_42} :catch_43

    return-void

    :catch_43
    move-exception v0

    .line 184
    const-string v1, "release failed"

    invoke-static {v1, v0}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_49
    return-void
.end method

.method public doUnbind(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "disable binding ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto/16 :goto_e3

    .line 145
    :cond_2c
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/BindingXCore;->mBindingCouples:Ljava/util/Map;

    if-eqz v0, :cond_c8

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    goto/16 :goto_c8

    .line 150
    :cond_38
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/BindingXCore;->mBindingCouples:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_ad

    .line 151
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_49

    goto :goto_ad

    .line 155
    :cond_49
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/bindingx/core/IEventHandler;

    if-nez v0, :cond_6c

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "disable binding failed(0x4) ["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    return-void

    .line 161
    :cond_6c
    invoke-interface {v0, p1, p2}, Lcom/alibaba/android/bindingx/core/IEventHandler;->onDisable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 162
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/BindingXCore;->mBindingCouples:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "disable binding success["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    return-void

    .line 165
    :cond_92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "disabled failed(0x4) ["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    return-void

    .line 152
    :cond_ad
    :goto_ad
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "disable binding failed(0x3) ["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    return-void

    .line 146
    :cond_c8
    :goto_c8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "disable binding failed(0x2) ["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    return-void

    .line 142
    :cond_e3
    :goto_e3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "disable binding failed(0x1) ["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    return-void
.end method

.method public doUnbind(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 128
    :cond_3
    const-string v0, "eventType"

    invoke-static {p1, v0}, Lcom/alibaba/android/bindingx/core/internal/Utils;->getStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    const-string/jumbo v1, "token"

    invoke-static {p1, v1}, Lcom/alibaba/android/bindingx/core/internal/Utils;->getStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/bindingx/core/BindingXCore;->doUnbind(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPause()V
    .registers 5

    .line 313
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/BindingXCore;->mBindingCouples:Ljava/util/Map;

    if-nez v0, :cond_5

    goto :goto_3e

    .line 317
    :cond_5
    :try_start_5
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 318
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/bindingx/core/IEventHandler;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2d} :catch_38

    .line 320
    :try_start_2d
    invoke-interface {v2}, Lcom/alibaba/android/bindingx/core/IEventHandler;->onActivityPause()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_21

    :catch_31
    move-exception v2

    .line 322
    :try_start_32
    const-string v3, "execute activity pause failed."

    invoke-static {v3, v2}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_37} :catch_38

    goto :goto_21

    :catch_38
    move-exception v0

    .line 327
    const-string v1, "activity pause failed"

    invoke-static {v1, v0}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public onActivityResume()V
    .registers 5

    .line 332
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/BindingXCore;->mBindingCouples:Ljava/util/Map;

    if-nez v0, :cond_5

    goto :goto_3e

    .line 336
    :cond_5
    :try_start_5
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 337
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/bindingx/core/IEventHandler;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2d} :catch_38

    .line 339
    :try_start_2d
    invoke-interface {v2}, Lcom/alibaba/android/bindingx/core/IEventHandler;->onActivityResume()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_21

    :catch_31
    move-exception v2

    .line 341
    :try_start_32
    const-string v3, "execute activity pause failed."

    invoke-static {v3, v2}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_37} :catch_38

    goto :goto_21

    :catch_38
    move-exception v0

    .line 346
    const-string v1, "activity pause failed"

    invoke-static {v1, v0}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public registerEventHandler(Ljava/lang/String;Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator<",
            "Lcom/alibaba/android/bindingx/core/IEventHandler;",
            "Landroid/content/Context;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager;",
            ">;)V"
        }
    .end annotation

    .line 358
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    if-nez p2, :cond_9

    goto :goto_e

    .line 361
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/BindingXCore;->mInternalEventHandlerCreatorMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_e
    return-void
.end method

###### Class com.alibaba.android.bindingx.core.BindingXCore.AnonymousClass1 (com.alibaba.android.bindingx.core.BindingXCore$1)
.class Lcom/alibaba/android/bindingx/core/BindingXCore$1;
.super Ljava/lang/Object;
.source "BindingXCore.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/core/BindingXCore;-><init>(Lcom/alibaba/android/bindingx/core/PlatformManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator<",
        "Lcom/alibaba/android/bindingx/core/IEventHandler;",
        "Landroid/content/Context;",
        "Lcom/alibaba/android/bindingx/core/PlatformManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/core/BindingXCore;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/core/BindingXCore;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/BindingXCore$1;->this$0:Lcom/alibaba/android/bindingx/core/BindingXCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs createWith(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)Lcom/alibaba/android/bindingx/core/IEventHandler;
    .registers 5

    .line 68
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;-><init>(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic createWith(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 65
    check-cast p1, Landroid/content/Context;

    check-cast p2, Lcom/alibaba/android/bindingx/core/PlatformManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/android/bindingx/core/BindingXCore$1;->createWith(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)Lcom/alibaba/android/bindingx/core/IEventHandler;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.BindingXCore.AnonymousClass2 (com.alibaba.android.bindingx.core.BindingXCore$2)
.class Lcom/alibaba/android/bindingx/core/BindingXCore$2;
.super Ljava/lang/Object;
.source "BindingXCore.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/core/BindingXCore;-><init>(Lcom/alibaba/android/bindingx/core/PlatformManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator<",
        "Lcom/alibaba/android/bindingx/core/IEventHandler;",
        "Landroid/content/Context;",
        "Lcom/alibaba/android/bindingx/core/PlatformManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/core/BindingXCore;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/core/BindingXCore;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/BindingXCore$2;->this$0:Lcom/alibaba/android/bindingx/core/BindingXCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs createWith(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)Lcom/alibaba/android/bindingx/core/IEventHandler;
    .registers 5

    .line 74
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/BindingXOrientationHandler;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/android/bindingx/core/internal/BindingXOrientationHandler;-><init>(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic createWith(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 71
    check-cast p1, Landroid/content/Context;

    check-cast p2, Lcom/alibaba/android/bindingx/core/PlatformManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/android/bindingx/core/BindingXCore$2;->createWith(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)Lcom/alibaba/android/bindingx/core/IEventHandler;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.BindingXCore.AnonymousClass3 (com.alibaba.android.bindingx.core.BindingXCore$3)
.class Lcom/alibaba/android/bindingx/core/BindingXCore$3;
.super Ljava/lang/Object;
.source "BindingXCore.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/core/BindingXCore;-><init>(Lcom/alibaba/android/bindingx/core/PlatformManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator<",
        "Lcom/alibaba/android/bindingx/core/IEventHandler;",
        "Landroid/content/Context;",
        "Lcom/alibaba/android/bindingx/core/PlatformManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/core/BindingXCore;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/core/BindingXCore;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/BindingXCore$3;->this$0:Lcom/alibaba/android/bindingx/core/BindingXCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs createWith(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)Lcom/alibaba/android/bindingx/core/IEventHandler;
    .registers 5

    .line 80
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/android/bindingx/core/internal/BindingXTimingHandler;-><init>(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic createWith(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 77
    check-cast p1, Landroid/content/Context;

    check-cast p2, Lcom/alibaba/android/bindingx/core/PlatformManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/android/bindingx/core/BindingXCore$3;->createWith(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)Lcom/alibaba/android/bindingx/core/IEventHandler;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.BindingXCore.JavaScriptCallback (com.alibaba.android.bindingx.core.BindingXCore$JavaScriptCallback)
.class public interface abstract Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;
.super Ljava/lang/Object;
.source "BindingXCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/BindingXCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "JavaScriptCallback"
.end annotation


# virtual methods
.method public abstract callback(Ljava/lang/Object;)V
.end method

###### Class com.alibaba.android.bindingx.core.BindingXCore.ObjectCreator (com.alibaba.android.bindingx.core.BindingXCore$ObjectCreator)
.class public interface abstract Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator;
.super Ljava/lang/Object;
.source "BindingXCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/BindingXCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ObjectCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type:",
        "Ljava/lang/Object;",
        "ParamA:",
        "Ljava/lang/Object;",
        "ParamB:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public varargs abstract createWith(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParamA;TParamB;[",
            "Ljava/lang/Object;",
            ")TType;"
        }
    .end annotation
.end method
