###### Class com.facebook.imagepipeline.filter.RenderScriptBlurFilter (com.facebook.imagepipeline.filter.RenderScriptBlurFilter)
.class public final Lcom/facebook/imagepipeline/filter/RenderScriptBlurFilter;
.super Ljava/lang/Object;
.source "RenderScriptBlurFilter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J(\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0005H\u0007J\u0008\u0010\u000e\u001a\u00020\u000fH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/filter/RenderScriptBlurFilter;",
        "",
        "<init>",
        "()V",
        "BLUR_MAX_RADIUS",
        "",
        "blurBitmap",
        "",
        "dest",
        "Landroid/graphics/Bitmap;",
        "src",
        "context",
        "Landroid/content/Context;",
        "radius",
        "canUseRenderScript",
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


# static fields
.field public static final BLUR_MAX_RADIUS:I = 0x19

.field public static final INSTANCE:Lcom/facebook/imagepipeline/filter/RenderScriptBlurFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/imagepipeline/filter/RenderScriptBlurFilter;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/filter/RenderScriptBlurFilter;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/filter/RenderScriptBlurFilter;->INSTANCE:Lcom/facebook/imagepipeline/filter/RenderScriptBlurFilter;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blurBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/content/Context;I)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "dest"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p3, :cond_17

    const/16 v0, 0x19

    if-gt p3, v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 39
    :goto_18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    const/4 v0, 0x0

    .line 42
    :try_start_20
    invoke-static {p2}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p2
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_79

    const-string v1, "Required value was null."

    if-eqz p2, :cond_6f

    .line 45
    :try_start_28
    invoke-static {p2}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    .line 48
    invoke-static {p2, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p1

    if-eqz p1, :cond_62

    .line 49
    invoke-static {p2, p0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v2

    if-eqz v2, :cond_58

    int-to-float p3, p3

    .line 52
    invoke-virtual {v0, p3}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 53
    invoke-virtual {v0, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 54
    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 55
    invoke-virtual {v2, p0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 56
    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 57
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->destroy()V

    .line 58
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V
    :try_end_52
    .catchall {:try_start_28 .. :try_end_52} :catchall_6c

    if-eqz p2, :cond_57

    .line 60
    invoke-virtual {p2}, Landroid/renderscript/RenderScript;->destroy()V

    :cond_57
    return-void

    .line 49
    :cond_58
    :try_start_58
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 48
    :cond_62
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6c
    .catchall {:try_start_58 .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception p0

    move-object v0, p2

    goto :goto_7a

    .line 42
    :cond_6f
    :try_start_6f
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_79
    .catchall {:try_start_6f .. :try_end_79} :catchall_79

    :catchall_79
    move-exception p0

    :goto_7a
    if-eqz v0, :cond_7f

    .line 60
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    :cond_7f
    throw p0
.end method

.method public static final canUseRenderScript()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method
