###### Class com.facebook.imagepipeline.memory.PoolStatsTracker (com.facebook.imagepipeline.memory.PoolStatsTracker)
.class public interface abstract Lcom/facebook/imagepipeline/memory/PoolStatsTracker;
.super Ljava/lang/Object;
.source "PoolStatsTracker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/memory/PoolStatsTracker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008f\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010J\u0014\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0008\u0010\t\u001a\u00020\u0003H&J\u0008\u0010\n\u001a\u00020\u0003H&J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0008H&J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0008H&J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0008H&\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/memory/PoolStatsTracker;",
        "",
        "setBasePool",
        "",
        "basePool",
        "Lcom/facebook/imagepipeline/memory/BasePool;",
        "onValueReuse",
        "bucketedSize",
        "",
        "onSoftCapReached",
        "onHardCapReached",
        "onAlloc",
        "size",
        "onFree",
        "sizeInBytes",
        "onValueRelease",
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
.field public static final BUCKETS_USED_PREFIX:Ljava/lang/String; = "buckets_used_"

.field public static final Companion:Lcom/facebook/imagepipeline/memory/PoolStatsTracker$Companion;

.field public static final FREE_BYTES:Ljava/lang/String; = "free_bytes"

.field public static final FREE_COUNT:Ljava/lang/String; = "free_count"

.field public static final HARD_CAP:Ljava/lang/String; = "hard_cap"

.field public static final SOFT_CAP:Ljava/lang/String; = "soft_cap"

.field public static final USED_BYTES:Ljava/lang/String; = "used_bytes"

.field public static final USED_COUNT:Ljava/lang/String; = "used_count"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/facebook/imagepipeline/memory/PoolStatsTracker$Companion;->$$INSTANCE:Lcom/facebook/imagepipeline/memory/PoolStatsTracker$Companion;

    sput-object v0, Lcom/facebook/imagepipeline/memory/PoolStatsTracker;->Companion:Lcom/facebook/imagepipeline/memory/PoolStatsTracker$Companion;

    return-void
.end method


# virtual methods
.method public abstract onAlloc(I)V
.end method

.method public abstract onFree(I)V
.end method

.method public abstract onHardCapReached()V
.end method

.method public abstract onSoftCapReached()V
.end method

.method public abstract onValueRelease(I)V
.end method

.method public abstract onValueReuse(I)V
.end method

.method public abstract setBasePool(Lcom/facebook/imagepipeline/memory/BasePool;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/memory/BasePool<",
            "*>;)V"
        }
    .end annotation
.end method

###### Class com.facebook.imagepipeline.memory.PoolStatsTracker.Companion (com.facebook.imagepipeline.memory.PoolStatsTracker$Companion)
.class public final Lcom/facebook/imagepipeline/memory/PoolStatsTracker$Companion;
.super Ljava/lang/Object;
.source "PoolStatsTracker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/memory/PoolStatsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/memory/PoolStatsTracker$Companion;",
        "",
        "<init>",
        "()V",
        "BUCKETS_USED_PREFIX",
        "",
        "USED_COUNT",
        "USED_BYTES",
        "FREE_COUNT",
        "FREE_BYTES",
        "SOFT_CAP",
        "HARD_CAP",
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
.field static final synthetic $$INSTANCE:Lcom/facebook/imagepipeline/memory/PoolStatsTracker$Companion;

.field public static final BUCKETS_USED_PREFIX:Ljava/lang/String; = "buckets_used_"

.field public static final FREE_BYTES:Ljava/lang/String; = "free_bytes"

.field public static final FREE_COUNT:Ljava/lang/String; = "free_count"

.field public static final HARD_CAP:Ljava/lang/String; = "hard_cap"

.field public static final SOFT_CAP:Ljava/lang/String; = "soft_cap"

.field public static final USED_BYTES:Ljava/lang/String; = "used_bytes"

.field public static final USED_COUNT:Ljava/lang/String; = "used_count"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/imagepipeline/memory/PoolStatsTracker$Companion;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/memory/PoolStatsTracker$Companion;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/memory/PoolStatsTracker$Companion;->$$INSTANCE:Lcom/facebook/imagepipeline/memory/PoolStatsTracker$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
