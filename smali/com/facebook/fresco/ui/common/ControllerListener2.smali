###### Class com.facebook.fresco.ui.common.ControllerListener2 (com.facebook.fresco.ui.common.ControllerListener2)
.class public interface abstract Lcom/facebook/fresco/ui/common/ControllerListener2;
.super Ljava/lang/Object;
.source "ControllerListener2.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<INFO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0003\n\u0002\u0008\u0004\u0008f\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0001\u0015J$\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH&J)\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00018\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH&\u00a2\u0006\u0002\u0010\u000cJ\u001f\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00018\u0000H&\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H&J$\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH&J\u001a\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH&J\u0012\u0010\u0014\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H&\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/facebook/fresco/ui/common/ControllerListener2;",
        "INFO",
        "",
        "onSubmit",
        "",
        "id",
        "",
        "callerContext",
        "extraData",
        "Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;",
        "onFinalImageSet",
        "imageInfo",
        "(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V",
        "onIntermediateImageSet",
        "(Ljava/lang/String;Ljava/lang/Object;)V",
        "onIntermediateImageFailed",
        "onFailure",
        "throwable",
        "",
        "onRelease",
        "onEmptyEvent",
        "Extras",
        "ui-common_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract onEmptyEvent(Ljava/lang/Object;)V
.end method

.method public abstract onFailure(Ljava/lang/String;Ljava/lang/Throwable;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
.end method

.method public abstract onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TINFO;",
            "Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onIntermediateImageFailed(Ljava/lang/String;)V
.end method

.method public abstract onIntermediateImageSet(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TINFO;)V"
        }
    .end annotation
.end method

.method public abstract onRelease(Ljava/lang/String;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
.end method

.method public abstract onSubmit(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
.end method

###### Class com.facebook.fresco.ui.common.ControllerListener2.Extras (com.facebook.fresco.ui.common.ControllerListener2$Extras)
.class public final Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;
.super Ljava/lang/Object;
.source "ControllerListener2.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/ui/common/ControllerListener2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Extras"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u001a\u001a\u00020\u0000R \u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R \u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R \u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R \u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R \u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00018\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00018\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0014R\u0016\u0010\u0015\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0014R\u0012\u0010\u0016\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;",
        "",
        "<init>",
        "()V",
        "componentExtras",
        "",
        "",
        "shortcutExtras",
        "datasourceExtras",
        "imageExtras",
        "imageSourceExtras",
        "callerContext",
        "mainUri",
        "Landroid/net/Uri;",
        "viewportWidth",
        "",
        "viewportHeight",
        "scaleType",
        "focusX",
        "",
        "Ljava/lang/Float;",
        "focusY",
        "logWithHighSamplingRate",
        "",
        "modifiedUriStatus",
        "originalUri",
        "makeExtrasCopy",
        "Companion",
        "ui-common_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;


# instance fields
.field public callerContext:Ljava/lang/Object;

.field public componentExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public datasourceExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public focusX:Ljava/lang/Float;

.field public focusY:Ljava/lang/Float;

.field public imageExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public imageSourceExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public logWithHighSamplingRate:Z

.field public mainUri:Landroid/net/Uri;

.field public modifiedUriStatus:Ljava/lang/String;

.field public originalUri:Landroid/net/Uri;

.field public scaleType:Ljava/lang/Object;

.field public shortcutExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public viewportHeight:I

.field public viewportWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->Companion:Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->viewportWidth:I

    .line 26
    iput v0, p0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->viewportHeight:I

    return-void
.end method

.method public static final of(Ljava/util/Map;)Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->Companion:Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;->of(Ljava/util/Map;)Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final makeExtrasCopy()Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;
    .registers 4

    .line 35
    new-instance v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;

    invoke-direct {v0}, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;-><init>()V

    .line 36
    sget-object v1, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->Companion:Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;

    iget-object v2, p0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->componentExtras:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;->access$copyMap(Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->componentExtras:Ljava/util/Map;

    .line 37
    iget-object v2, p0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->shortcutExtras:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;->access$copyMap(Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->shortcutExtras:Ljava/util/Map;

    .line 38
    iget-object v2, p0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->datasourceExtras:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;->access$copyMap(Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->datasourceExtras:Ljava/util/Map;

    .line 39
    iget-object v2, p0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->imageExtras:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;->access$copyMap(Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->imageExtras:Ljava/util/Map;

    .line 40
    iget-object v1, p0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->callerContext:Ljava/lang/Object;

    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->callerContext:Ljava/lang/Object;

    .line 41
    iget-object v1, p0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->mainUri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->mainUri:Landroid/net/Uri;

    .line 42
    iget v1, p0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->viewportWidth:I

    iput v1, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->viewportWidth:I

    .line 43
    iget v1, p0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->viewportHeight:I

    iput v1, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->viewportHeight:I

    .line 44
    iget-object v1, p0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->scaleType:Ljava/lang/Object;

    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->scaleType:Ljava/lang/Object;

    .line 45
    iget-object v1, p0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->focusX:Ljava/lang/Float;

    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->focusX:Ljava/lang/Float;

    .line 46
    iget-object v1, p0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->focusY:Ljava/lang/Float;

    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->focusY:Ljava/lang/Float;

    return-object v0
.end method

###### Class com.facebook.fresco.ui.common.ControllerListener2.Extras.Companion (com.facebook.fresco.ui.common.ControllerListener2$Extras$Companion)
.class public final Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;
.super Ljava/lang/Object;
.source "ControllerListener2.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControllerListener2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControllerListener2.kt\ncom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,118:1\n1#2:119\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0007H\u0007J.\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00072\u0016\u0008\u0001\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0007H\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;",
        "",
        "<init>",
        "()V",
        "of",
        "Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;",
        "componentExtras",
        "",
        "",
        "copyMap",
        "map",
        "ui-common_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$copyMap(Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;->copyMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private final copyMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    check-cast v0, Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final of(Ljava/util/Map;)Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 53
    new-instance v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;

    invoke-direct {v0}, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;-><init>()V

    .line 54
    iput-object p1, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->componentExtras:Ljava/util/Map;

    return-object v0
.end method
