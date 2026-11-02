###### Class uts.sdk.modules.DCloudUniExit.IndexKt (uts.sdk.modules.DCloudUniExit.IndexKt)
.class public final Luts/sdk/modules/DCloudUniExit/IndexKt;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0000\n\u0002\u0010\u0004\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0016\u001a\u00020\n2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0017\"2\u0010\u0012\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0010\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\n0\u0005j\u0002`\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015*\n\u0010\u0000\"\u00020\u00012\u00020\u0001*\n\u0010\u0002\"\u00020\u00032\u00020\u0003*@\u0010\u0004\"\u001d\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u00052\u001d\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u0005*S\u0010\u000b\"\u001d\u0012\u0013\u0012\u0011`\u000c\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u000520\u0012&\u0012$0\u0003j\u0011`\u000c\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u0005*@\u0010\r\"\u001d\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u00052\u001d\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u0005*D\u0010\u000f\"\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0010\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\n0\u00052\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0010\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\n0\u0005\u00a8\u0006\u0018"
    }
    d2 = {
        "ExitErrorCode",
        "",
        "ExitFail",
        "Luts/sdk/modules/DCloudUniExit/IExitError;",
        "ExitSuccessCallback",
        "Lkotlin/Function1;",
        "Luts/sdk/modules/DCloudUniExit/ExitSuccess;",
        "Lkotlin/ParameterName;",
        "name",
        "res",
        "",
        "ExitFailCallback",
        "Luts/sdk/modules/DCloudUniExit/ExitFail;",
        "ExitCompleteCallback",
        "",
        "Exit",
        "Luts/sdk/modules/DCloudUniExit/ExitOptions;",
        "options",
        "exit",
        "Luts/sdk/modules/DCloudUniExit/Exit;",
        "getExit",
        "()Lkotlin/jvm/functions/Function1;",
        "exitByJs",
        "Luts/sdk/modules/DCloudUniExit/ExitOptionsJSONObject;",
        "uni-exit_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final exit:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniExit/ExitOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$77uVhOjfYr3txZfLvTNERTWC554(Luts/sdk/modules/DCloudUniExit/ExitOptionsJSONObject;Luts/sdk/modules/DCloudUniExit/ExitSuccess;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniExit/IndexKt;->exitByJs$lambda$1(Luts/sdk/modules/DCloudUniExit/ExitOptionsJSONObject;Luts/sdk/modules/DCloudUniExit/ExitSuccess;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$B8oz_txNkGw6kO_90NmxrLUIhAU(Luts/sdk/modules/DCloudUniExit/ExitOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniExit/IndexKt;->exitByJs$lambda$3(Luts/sdk/modules/DCloudUniExit/ExitOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZwOfbIyQfjUSE9NXuiPtUm6X89s(Luts/sdk/modules/DCloudUniExit/ExitOptionsJSONObject;Luts/sdk/modules/DCloudUniExit/IExitError;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniExit/IndexKt;->exitByJs$lambda$2(Luts/sdk/modules/DCloudUniExit/ExitOptionsJSONObject;Luts/sdk/modules/DCloudUniExit/IExitError;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ooFoJsAwoLkIf85UkvR4gu4JSuE(Luts/sdk/modules/DCloudUniExit/ExitOptions;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Luts/sdk/modules/DCloudUniExit/IndexKt;->exit$lambda$0(Luts/sdk/modules/DCloudUniExit/ExitOptions;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Luts/sdk/modules/DCloudUniExit/IndexKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniExit/IndexKt$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Luts/sdk/modules/DCloudUniExit/IndexKt;->exit:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private static final exit$lambda$0(Luts/sdk/modules/DCloudUniExit/ExitOptions;)Lkotlin/Unit;
    .registers 3

    .line 33
    new-instance v0, Luts/sdk/modules/DCloudUniExit/ExitSuccess;

    const-string v1, "exit:ok"

    invoke-direct {v0, v1}, Luts/sdk/modules/DCloudUniExit/ExitSuccess;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_12

    .line 34
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniExit/ExitOptions;->getSuccess()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    if-eqz p0, :cond_1d

    .line 35
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniExit/ExitOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_1d

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_1d
    sget-object p0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {p0}, Lio/dcloud/uts/UTSAndroid;->exit()V

    .line 37
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final exitByJs(Luts/sdk/modules/DCloudUniExit/ExitOptionsJSONObject;)V
    .registers 6

    .line 44
    sget-object v0, Luts/sdk/modules/DCloudUniExit/IndexKt;->exit:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_19

    .line 45
    new-instance v1, Luts/sdk/modules/DCloudUniExit/ExitOptions;

    .line 44
    new-instance v2, Luts/sdk/modules/DCloudUniExit/IndexKt$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Luts/sdk/modules/DCloudUniExit/IndexKt$$ExternalSyntheticLambda1;-><init>(Luts/sdk/modules/DCloudUniExit/ExitOptionsJSONObject;)V

    new-instance v3, Luts/sdk/modules/DCloudUniExit/IndexKt$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Luts/sdk/modules/DCloudUniExit/IndexKt$$ExternalSyntheticLambda2;-><init>(Luts/sdk/modules/DCloudUniExit/ExitOptionsJSONObject;)V

    new-instance v4, Luts/sdk/modules/DCloudUniExit/IndexKt$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Luts/sdk/modules/DCloudUniExit/IndexKt$$ExternalSyntheticLambda3;-><init>(Luts/sdk/modules/DCloudUniExit/ExitOptionsJSONObject;)V

    .line 45
    invoke-direct {v1, v2, v3, v4}, Luts/sdk/modules/DCloudUniExit/ExitOptions;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    .line 44
    :goto_1a
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final exitByJs$lambda$1(Luts/sdk/modules/DCloudUniExit/ExitOptionsJSONObject;Luts/sdk/modules/DCloudUniExit/ExitSuccess;)Lkotlin/Unit;
    .registers 4

    .line 46
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniExit/ExitOptionsJSONObject;->getSuccess()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_12

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_12
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final exitByJs$lambda$2(Luts/sdk/modules/DCloudUniExit/ExitOptionsJSONObject;Luts/sdk/modules/DCloudUniExit/IExitError;)Lkotlin/Unit;
    .registers 4

    .line 48
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniExit/ExitOptionsJSONObject;->getFail()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_12

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_12
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final exitByJs$lambda$3(Luts/sdk/modules/DCloudUniExit/ExitOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 4

    .line 50
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniExit/ExitOptionsJSONObject;->getComplete()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_12

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_12
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final getExit()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniExit/ExitOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 32
    sget-object v0, Luts/sdk/modules/DCloudUniExit/IndexKt;->exit:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

###### Class uts.sdk.modules.DCloudUniExit.IndexKt$$ExternalSyntheticLambda0 (uts.sdk.modules.DCloudUniExit.IndexKt$$ExternalSyntheticLambda0)
.class public final synthetic Luts/sdk/modules/DCloudUniExit/IndexKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Luts/sdk/modules/DCloudUniExit/ExitOptions;

    invoke-static {p1}, Luts/sdk/modules/DCloudUniExit/IndexKt;->$r8$lambda$ooFoJsAwoLkIf85UkvR4gu4JSuE(Luts/sdk/modules/DCloudUniExit/ExitOptions;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniExit.IndexKt$$ExternalSyntheticLambda1 (uts.sdk.modules.DCloudUniExit.IndexKt$$ExternalSyntheticLambda1)
.class public final synthetic Luts/sdk/modules/DCloudUniExit/IndexKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniExit/ExitOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniExit/ExitOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniExit/IndexKt$$ExternalSyntheticLambda1;->f$0:Luts/sdk/modules/DCloudUniExit/ExitOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniExit/IndexKt$$ExternalSyntheticLambda1;->f$0:Luts/sdk/modules/DCloudUniExit/ExitOptionsJSONObject;

    check-cast p1, Luts/sdk/modules/DCloudUniExit/ExitSuccess;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniExit/IndexKt;->$r8$lambda$77uVhOjfYr3txZfLvTNERTWC554(Luts/sdk/modules/DCloudUniExit/ExitOptionsJSONObject;Luts/sdk/modules/DCloudUniExit/ExitSuccess;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniExit.IndexKt$$ExternalSyntheticLambda2 (uts.sdk.modules.DCloudUniExit.IndexKt$$ExternalSyntheticLambda2)
.class public final synthetic Luts/sdk/modules/DCloudUniExit/IndexKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniExit/ExitOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniExit/ExitOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniExit/IndexKt$$ExternalSyntheticLambda2;->f$0:Luts/sdk/modules/DCloudUniExit/ExitOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniExit/IndexKt$$ExternalSyntheticLambda2;->f$0:Luts/sdk/modules/DCloudUniExit/ExitOptionsJSONObject;

    check-cast p1, Luts/sdk/modules/DCloudUniExit/IExitError;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniExit/IndexKt;->$r8$lambda$ZwOfbIyQfjUSE9NXuiPtUm6X89s(Luts/sdk/modules/DCloudUniExit/ExitOptionsJSONObject;Luts/sdk/modules/DCloudUniExit/IExitError;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniExit.IndexKt$$ExternalSyntheticLambda3 (uts.sdk.modules.DCloudUniExit.IndexKt$$ExternalSyntheticLambda3)
.class public final synthetic Luts/sdk/modules/DCloudUniExit/IndexKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniExit/ExitOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniExit/ExitOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniExit/IndexKt$$ExternalSyntheticLambda3;->f$0:Luts/sdk/modules/DCloudUniExit/ExitOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniExit/IndexKt$$ExternalSyntheticLambda3;->f$0:Luts/sdk/modules/DCloudUniExit/ExitOptionsJSONObject;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniExit/IndexKt;->$r8$lambda$B8oz_txNkGw6kO_90NmxrLUIhAU(Luts/sdk/modules/DCloudUniExit/ExitOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
