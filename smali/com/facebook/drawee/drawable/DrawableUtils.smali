###### Class com.facebook.drawee.drawable.DrawableUtils (com.facebook.drawee.drawable.DrawableUtils)
.class public final Lcom/facebook/drawee/drawable/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0007J\u001c\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005H\u0007J\u001c\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0007J&\u0010\u000e\u001a\u00020\u00082\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0007J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0007J\u0010\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0007\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/facebook/drawee/drawable/DrawableUtils;",
        "",
        "<init>",
        "()V",
        "cloneDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "drawable",
        "copyProperties",
        "",
        "to",
        "from",
        "setDrawableProperties",
        "properties",
        "Lcom/facebook/drawee/drawable/DrawableProperties;",
        "setCallbacks",
        "callback",
        "Landroid/graphics/drawable/Drawable$Callback;",
        "transformCallback",
        "Lcom/facebook/drawee/drawable/TransformCallback;",
        "multiplyColorAlpha",
        "",
        "color",
        "alpha",
        "getOpacityFromColor",
        "drawee_release"
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
.field public static final INSTANCE:Lcom/facebook/drawee/drawable/DrawableUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/drawee/drawable/DrawableUtils;

    invoke-direct {v0}, Lcom/facebook/drawee/drawable/DrawableUtils;-><init>()V

    sput-object v0, Lcom/facebook/drawee/drawable/DrawableUtils;->INSTANCE:Lcom/facebook/drawee/drawable/DrawableUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final cloneDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 26
    :cond_4
    instance-of v1, p0, Lcom/facebook/drawee/drawable/CloneableDrawable;

    if-eqz v1, :cond_c

    move-object v1, p0

    check-cast v1, Lcom/facebook/drawee/drawable/CloneableDrawable;

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    if-eqz v1, :cond_17

    invoke-interface {v1}, Lcom/facebook/drawee/drawable/CloneableDrawable;->cloneDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_16

    goto :goto_17

    :cond_16
    return-object v1

    .line 27
    :cond_17
    :goto_17
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    if-eqz p0, :cond_22

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_22
    return-object v0
.end method

.method public static final copyProperties(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p1, :cond_2b

    if-eqz p0, :cond_2b

    if-ne p0, p1, :cond_7

    goto :goto_2b

    .line 41
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 42
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 43
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 44
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 45
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2b
    :goto_2b
    return-void
.end method

.method public static final getOpacityFromColor(I)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    ushr-int/lit8 p0, p0, 0x18

    if-eqz p0, :cond_c

    const/16 v0, 0xff

    if-eq p0, v0, :cond_a

    const/4 p0, -0x3

    return p0

    :cond_a
    const/4 p0, -0x1

    return p0

    :cond_c
    const/4 p0, -0x2

    return p0
.end method

.method public static final multiplyColorAlpha(II)I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v0, 0xff

    if-ne p1, v0, :cond_5

    return p0

    :cond_5
    const v0, 0xffffff

    if-nez p1, :cond_c

    and-int/2addr p0, v0

    return p0

    :cond_c
    shr-int/lit8 v1, p1, 0x7

    add-int/2addr p1, v1

    ushr-int/lit8 v1, p0, 0x18

    mul-int v1, v1, p1

    shr-int/lit8 p1, v1, 0x8

    shl-int/lit8 p1, p1, 0x18

    and-int/2addr p0, v0

    or-int/2addr p0, p1

    return p0
.end method

.method public static final setCallbacks(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable$Callback;Lcom/facebook/drawee/drawable/TransformCallback;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_3

    goto :goto_13

    .line 74
    :cond_3
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 75
    instance-of p1, p0, Lcom/facebook/drawee/drawable/TransformAwareDrawable;

    if-eqz p1, :cond_d

    check-cast p0, Lcom/facebook/drawee/drawable/TransformAwareDrawable;

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    if-eqz p0, :cond_13

    invoke-interface {p0, p2}, Lcom/facebook/drawee/drawable/TransformAwareDrawable;->setTransformCallback(Lcom/facebook/drawee/drawable/TransformCallback;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public static final setDrawableProperties(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/DrawableProperties;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_3

    goto :goto_8

    :cond_3
    if-eqz p1, :cond_8

    .line 57
    invoke-virtual {p1, p0}, Lcom/facebook/drawee/drawable/DrawableProperties;->applyTo(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    :goto_8
    return-void
.end method
