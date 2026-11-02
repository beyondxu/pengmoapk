###### Class com.facebook.imagepipeline.memory.BitmapCounterConfig (com.facebook.imagepipeline.memory.BitmapCounterConfig)
.class public final Lcom/facebook/imagepipeline/memory/BitmapCounterConfig;
.super Ljava/lang/Object;
.source "BitmapCounterConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/memory/BitmapCounterConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008B\u0011\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/memory/BitmapCounterConfig;",
        "",
        "maxBitmapCount",
        "",
        "<init>",
        "(I)V",
        "getMaxBitmapCount",
        "()I",
        "Companion",
        "imagepipeline_release"
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
.field public static final Companion:Lcom/facebook/imagepipeline/memory/BitmapCounterConfig$Companion;

.field public static final DEFAULT_MAX_BITMAP_COUNT:I = 0x180


# instance fields
.field private final maxBitmapCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/imagepipeline/memory/BitmapCounterConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/BitmapCounterConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/imagepipeline/memory/BitmapCounterConfig;->Companion:Lcom/facebook/imagepipeline/memory/BitmapCounterConfig$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/imagepipeline/memory/BitmapCounterConfig;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/imagepipeline/memory/BitmapCounterConfig;->maxBitmapCount:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    const/16 p1, 0x180

    .line 10
    :cond_6
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/memory/BitmapCounterConfig;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getMaxBitmapCount()I
    .registers 2

    .line 10
    iget v0, p0, Lcom/facebook/imagepipeline/memory/BitmapCounterConfig;->maxBitmapCount:I

    return v0
.end method

###### Class com.facebook.imagepipeline.memory.BitmapCounterConfig.Companion (com.facebook.imagepipeline.memory.BitmapCounterConfig$Companion)
.class public final Lcom/facebook/imagepipeline/memory/BitmapCounterConfig$Companion;
.super Ljava/lang/Object;
.source "BitmapCounterConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/memory/BitmapCounterConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/memory/BitmapCounterConfig$Companion;",
        "",
        "<init>",
        "()V",
        "DEFAULT_MAX_BITMAP_COUNT",
        "",
        "imagepipeline_release"
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

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BitmapCounterConfig$Companion;-><init>()V

    return-void
.end method
