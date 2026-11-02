###### Class uts.sdk.modules.DCloudUniNetwork.UploadTaskByJsProxy (uts.sdk.modules.DCloudUniNetwork.UploadTaskByJsProxy)
.class public Luts/sdk/modules/DCloudUniNetwork/UploadTaskByJsProxy;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u001a\u0010\u0006\u001a\u00020\u0003X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\u0005\u00a8\u0006\u000f"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/UploadTaskByJsProxy;",
        "",
        "ins",
        "Luts/sdk/modules/DCloudUniNetwork/UploadTask;",
        "<init>",
        "(Luts/sdk/modules/DCloudUniNetwork/UploadTask;)V",
        "__instance",
        "get__instance",
        "()Luts/sdk/modules/DCloudUniNetwork/UploadTask;",
        "set__instance",
        "abortByJs",
        "",
        "onProgressUpdateByJs",
        "callback",
        "Lio/dcloud/uts/UTSCallback;",
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


# instance fields
.field public __instance:Luts/sdk/modules/DCloudUniNetwork/UploadTask;


# direct methods
.method public static synthetic $r8$lambda$Gg8n168TYis32eokaBM8Kp3uQxQ(Lio/dcloud/uts/UTSCallback;Luts/sdk/modules/DCloudUniNetwork/OnProgressUpdateResult;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniNetwork/UploadTaskByJsProxy;->onProgressUpdateByJs$lambda$0(Lio/dcloud/uts/UTSCallback;Luts/sdk/modules/DCloudUniNetwork/OnProgressUpdateResult;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Luts/sdk/modules/DCloudUniNetwork/UploadTask;)V
    .registers 3

    const-string v0, "ins"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2825
    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniNetwork/UploadTaskByJsProxy;->set__instance(Luts/sdk/modules/DCloudUniNetwork/UploadTask;)V

    return-void
.end method

.method private static final onProgressUpdateByJs$lambda$0(Lio/dcloud/uts/UTSCallback;Luts/sdk/modules/DCloudUniNetwork/OnProgressUpdateResult;)Lkotlin/Unit;
    .registers 4

    const/4 v0, 0x1

    .line 2835
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 2836
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public abortByJs()V
    .registers 2

    .line 2828
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniNetwork/UploadTaskByJsProxy;->get__instance()Luts/sdk/modules/DCloudUniNetwork/UploadTask;

    move-result-object v0

    invoke-interface {v0}, Luts/sdk/modules/DCloudUniNetwork/UploadTask;->abort()V

    return-void
.end method

.method public get__instance()Luts/sdk/modules/DCloudUniNetwork/UploadTask;
    .registers 2

    .line 2823
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/UploadTaskByJsProxy;->__instance:Luts/sdk/modules/DCloudUniNetwork/UploadTask;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "__instance"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onProgressUpdateByJs(Lio/dcloud/uts/UTSCallback;)V
    .registers 4

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2831
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniNetwork/UploadTaskByJsProxy;->get__instance()Luts/sdk/modules/DCloudUniNetwork/UploadTask;

    move-result-object v0

    invoke-virtual {p1}, Lio/dcloud/uts/UTSCallback;->getFnJS()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 2832
    invoke-virtual {p1}, Lio/dcloud/uts/UTSCallback;->getFnJS()Ljava/lang/Object;

    move-result-object p1

    goto :goto_20

    .line 2834
    :cond_14
    new-instance v1, Luts/sdk/modules/DCloudUniNetwork/UploadTaskByJsProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Luts/sdk/modules/DCloudUniNetwork/UploadTaskByJsProxy$$ExternalSyntheticLambda0;-><init>(Lio/dcloud/uts/UTSCallback;)V

    invoke-virtual {p1, v1}, Lio/dcloud/uts/UTSCallback;->setFnJS(Ljava/lang/Object;)V

    .line 2837
    invoke-virtual {p1}, Lio/dcloud/uts/UTSCallback;->getFnJS()Ljava/lang/Object;

    move-result-object p1

    .line 2831
    :goto_20
    const-string v1, "null cannot be cast to non-null type kotlin.Function1<@[ParameterName(name = \"result\")] uts.sdk.modules.DCloudUniNetwork.OnProgressUpdateResult, kotlin.Unit>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Luts/sdk/modules/DCloudUniNetwork/UploadTask;->onProgressUpdate(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public set__instance(Luts/sdk/modules/DCloudUniNetwork/UploadTask;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2823
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadTaskByJsProxy;->__instance:Luts/sdk/modules/DCloudUniNetwork/UploadTask;

    return-void
.end method

###### Class uts.sdk.modules.DCloudUniNetwork.UploadTaskByJsProxy$$ExternalSyntheticLambda0 (uts.sdk.modules.DCloudUniNetwork.UploadTaskByJsProxy$$ExternalSyntheticLambda0)
.class public final synthetic Luts/sdk/modules/DCloudUniNetwork/UploadTaskByJsProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lio/dcloud/uts/UTSCallback;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/uts/UTSCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadTaskByJsProxy$$ExternalSyntheticLambda0;->f$0:Lio/dcloud/uts/UTSCallback;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/UploadTaskByJsProxy$$ExternalSyntheticLambda0;->f$0:Lio/dcloud/uts/UTSCallback;

    check-cast p1, Luts/sdk/modules/DCloudUniNetwork/OnProgressUpdateResult;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniNetwork/UploadTaskByJsProxy;->$r8$lambda$Gg8n168TYis32eokaBM8Kp3uQxQ(Lio/dcloud/uts/UTSCallback;Luts/sdk/modules/DCloudUniNetwork/OnProgressUpdateResult;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
