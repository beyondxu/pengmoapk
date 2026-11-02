###### Class com.facebook.imagepipeline.memory.BitmapPoolType (com.facebook.imagepipeline.memory.BitmapPoolType)
.class public interface abstract annotation Lcom/facebook/imagepipeline/memory/BitmapPoolType;
.super Ljava/lang/Object;
.source "BitmapPoolType.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/memory/BitmapPoolType$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0008\u0002\u0008\u0086\u0002\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002B\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/memory/BitmapPoolType;",
        "",
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
.field public static final Companion:Lcom/facebook/imagepipeline/memory/BitmapPoolType$Companion;

.field public static final DEFAULT:Ljava/lang/String; = "legacy"

.field public static final DUMMY:Ljava/lang/String; = "dummy"

.field public static final DUMMY_WITH_TRACKING:Ljava/lang/String; = "dummy_with_tracking"

.field public static final EXPERIMENTAL:Ljava/lang/String; = "experimental"

.field public static final LEGACY:Ljava/lang/String; = "legacy"

.field public static final LEGACY_DEFAULT_PARAMS:Ljava/lang/String; = "legacy_default_params"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/facebook/imagepipeline/memory/BitmapPoolType$Companion;->$$INSTANCE:Lcom/facebook/imagepipeline/memory/BitmapPoolType$Companion;

    sput-object v0, Lcom/facebook/imagepipeline/memory/BitmapPoolType;->Companion:Lcom/facebook/imagepipeline/memory/BitmapPoolType$Companion;

    return-void
.end method

###### Class com.facebook.imagepipeline.memory.BitmapPoolType.Companion (com.facebook.imagepipeline.memory.BitmapPoolType$Companion)
.class public final Lcom/facebook/imagepipeline/memory/BitmapPoolType$Companion;
.super Ljava/lang/Object;
.source "BitmapPoolType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/memory/BitmapPoolType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/memory/BitmapPoolType$Companion;",
        "",
        "<init>",
        "()V",
        "LEGACY",
        "",
        "LEGACY_DEFAULT_PARAMS",
        "DUMMY",
        "DUMMY_WITH_TRACKING",
        "EXPERIMENTAL",
        "DEFAULT",
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
.field static final synthetic $$INSTANCE:Lcom/facebook/imagepipeline/memory/BitmapPoolType$Companion;

.field public static final DEFAULT:Ljava/lang/String; = "legacy"

.field public static final DUMMY:Ljava/lang/String; = "dummy"

.field public static final DUMMY_WITH_TRACKING:Ljava/lang/String; = "dummy_with_tracking"

.field public static final EXPERIMENTAL:Ljava/lang/String; = "experimental"

.field public static final LEGACY:Ljava/lang/String; = "legacy"

.field public static final LEGACY_DEFAULT_PARAMS:Ljava/lang/String; = "legacy_default_params"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/imagepipeline/memory/BitmapPoolType$Companion;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/memory/BitmapPoolType$Companion;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/memory/BitmapPoolType$Companion;->$$INSTANCE:Lcom/facebook/imagepipeline/memory/BitmapPoolType$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
