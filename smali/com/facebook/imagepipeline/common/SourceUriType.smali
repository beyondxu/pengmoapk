###### Class com.facebook.imagepipeline.common.SourceUriType (com.facebook.imagepipeline.common.SourceUriType)
.class public interface abstract annotation Lcom/facebook/imagepipeline/common/SourceUriType;
.super Ljava/lang/Object;
.source "SourceUriType.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/common/SourceUriType$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0008\u0002\u0008\u0087\u0002\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002B\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/common/SourceUriType;",
        "",
        "Companion",
        "imagepipeline-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/imagepipeline/common/SourceUriType$Companion;

.field public static final SOURCE_TYPE_DATA:I = 0x7

.field public static final SOURCE_TYPE_LOCAL_ASSET:I = 0x5

.field public static final SOURCE_TYPE_LOCAL_CONTENT:I = 0x4

.field public static final SOURCE_TYPE_LOCAL_FILE:I = 0x1

.field public static final SOURCE_TYPE_LOCAL_IMAGE_FILE:I = 0x3

.field public static final SOURCE_TYPE_LOCAL_RESOURCE:I = 0x6

.field public static final SOURCE_TYPE_LOCAL_VIDEO_FILE:I = 0x2

.field public static final SOURCE_TYPE_NETWORK:I = 0x0

.field public static final SOURCE_TYPE_QUALIFIED_RESOURCE:I = 0x8

.field public static final SOURCE_TYPE_UNKNOWN:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/facebook/imagepipeline/common/SourceUriType$Companion;->$$INSTANCE:Lcom/facebook/imagepipeline/common/SourceUriType$Companion;

    sput-object v0, Lcom/facebook/imagepipeline/common/SourceUriType;->Companion:Lcom/facebook/imagepipeline/common/SourceUriType$Companion;

    return-void
.end method

###### Class com.facebook.imagepipeline.common.SourceUriType.Companion (com.facebook.imagepipeline.common.SourceUriType$Companion)
.class public final Lcom/facebook/imagepipeline/common/SourceUriType$Companion;
.super Ljava/lang/Object;
.source "SourceUriType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/common/SourceUriType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/common/SourceUriType$Companion;",
        "",
        "<init>",
        "()V",
        "SOURCE_TYPE_UNKNOWN",
        "",
        "SOURCE_TYPE_NETWORK",
        "SOURCE_TYPE_LOCAL_FILE",
        "SOURCE_TYPE_LOCAL_VIDEO_FILE",
        "SOURCE_TYPE_LOCAL_IMAGE_FILE",
        "SOURCE_TYPE_LOCAL_CONTENT",
        "SOURCE_TYPE_LOCAL_ASSET",
        "SOURCE_TYPE_LOCAL_RESOURCE",
        "SOURCE_TYPE_DATA",
        "SOURCE_TYPE_QUALIFIED_RESOURCE",
        "imagepipeline-base_release"
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
.field static final synthetic $$INSTANCE:Lcom/facebook/imagepipeline/common/SourceUriType$Companion;

.field public static final SOURCE_TYPE_DATA:I = 0x7

.field public static final SOURCE_TYPE_LOCAL_ASSET:I = 0x5

.field public static final SOURCE_TYPE_LOCAL_CONTENT:I = 0x4

.field public static final SOURCE_TYPE_LOCAL_FILE:I = 0x1

.field public static final SOURCE_TYPE_LOCAL_IMAGE_FILE:I = 0x3

.field public static final SOURCE_TYPE_LOCAL_RESOURCE:I = 0x6

.field public static final SOURCE_TYPE_LOCAL_VIDEO_FILE:I = 0x2

.field public static final SOURCE_TYPE_NETWORK:I = 0x0

.field public static final SOURCE_TYPE_QUALIFIED_RESOURCE:I = 0x8

.field public static final SOURCE_TYPE_UNKNOWN:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/imagepipeline/common/SourceUriType$Companion;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/common/SourceUriType$Companion;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/common/SourceUriType$Companion;->$$INSTANCE:Lcom/facebook/imagepipeline/common/SourceUriType$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
