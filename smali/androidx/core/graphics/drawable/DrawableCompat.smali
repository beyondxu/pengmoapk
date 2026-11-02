###### Class androidx.core.graphics.drawable.DrawableCompat (androidx.core.graphics.drawable.DrawableCompat)
.class public final Landroidx/core/graphics/drawable/DrawableCompat;
.super Ljava/lang/Object;
.source "DrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/drawable/DrawableCompat$Api21Impl;,
        Landroidx/core/graphics/drawable/DrawableCompat$Api23Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DrawableCompat"

.field private static sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

.field private static sGetLayoutDirectionMethodFetched:Z

.field private static sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

.field private static sSetLayoutDirectionMethodFetched:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V
    .registers 2

    .line 188
    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/DrawableCompat$Api21Impl;->applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public static canApplyTheme(Landroid/graphics/drawable/Drawable;)Z
    .registers 1

    .line 198
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat$Api21Impl;->canApplyTheme(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    return p0
.end method

.method public static clearColorFilter(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 224
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_a

    .line 226
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    return-void

    .line 228
    :cond_a
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 234
    instance-of v0, p0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_1b

    .line 235
    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 236
    :cond_1b
    instance-of v0, p0, Landroidx/core/graphics/drawable/WrappedDrawable;

    if-eqz v0, :cond_29

    .line 237
    check-cast p0, Landroidx/core/graphics/drawable/WrappedDrawable;

    invoke-interface {p0}, Landroidx/core/graphics/drawable/WrappedDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 238
    :cond_29
    instance-of v0, p0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v0, :cond_4a

    .line 239
    check-cast p0, Landroid/graphics/drawable/DrawableContainer;

    .line 241
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz p0, :cond_4a

    .line 244
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_3c
    if-ge v1, v0, :cond_4a

    .line 245
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_47

    .line 247
    invoke-static {v2}, Landroidx/core/graphics/drawable/DrawableCompat;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_4a
    return-void
.end method

.method public static getAlpha(Landroid/graphics/drawable/Drawable;)I
    .registers 1

    .line 179
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p0

    return p0
.end method

.method public static getColorFilter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;
    .registers 1

    .line 213
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat$Api21Impl;->getColorFilter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method

.method public static getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .registers 6

    .line 396
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 397
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat$Api23Impl;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    return p0

    .line 399
    :cond_b
    sget-boolean v0, Landroidx/core/graphics/drawable/DrawableCompat;->sGetLayoutDirectionMethodFetched:Z

    const-string v1, "DrawableCompat"

    const/4 v2, 0x0

    if-nez v0, :cond_29

    const/4 v0, 0x1

    .line 401
    :try_start_13
    const-class v3, Landroid/graphics/drawable/Drawable;

    const-string v4, "getLayoutDirection"

    .line 402
    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroidx/core/graphics/drawable/DrawableCompat;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    .line 403
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_20} :catch_21

    goto :goto_27

    :catch_21
    move-exception v3

    .line 405
    const-string v4, "Failed to retrieve getLayoutDirection() method"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    :goto_27
    sput-boolean v0, Landroidx/core/graphics/drawable/DrawableCompat;->sGetLayoutDirectionMethodFetched:Z

    .line 410
    :cond_29
    sget-object v0, Landroidx/core/graphics/drawable/DrawableCompat;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_40

    .line 412
    :try_start_2d
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_37} :catch_38

    return p0

    :catch_38
    move-exception p0

    .line 414
    const-string v0, "Failed to invoke getLayoutDirection() via reflection"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    sput-object v2, Landroidx/core/graphics/drawable/DrawableCompat;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    :cond_40
    const/4 p0, 0x0

    return p0
.end method

.method public static inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/DrawableCompat$Api21Impl;->inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public static isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z
    .registers 1

    .line 96
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result p0

    return p0
.end method

.method public static jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    return-void
.end method

.method public static setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V
    .registers 2

    .line 81
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    return-void
.end method

.method public static setHotspot(Landroid/graphics/drawable/Drawable;FF)V
    .registers 3

    .line 108
    invoke-static {p0, p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat$Api21Impl;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    return-void
.end method

.method public static setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V
    .registers 5

    .line 125
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/DrawableCompat$Api21Impl;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method

.method public static setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .registers 9

    .line 360
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 361
    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/DrawableCompat$Api23Impl;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result p0

    return p0

    .line 363
    :cond_b
    sget-boolean v0, Landroidx/core/graphics/drawable/DrawableCompat;->sSetLayoutDirectionMethodFetched:Z

    const-string v1, "DrawableCompat"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2f

    .line 365
    :try_start_13
    const-class v0, Landroid/graphics/drawable/Drawable;

    const-string v4, "setLayoutDirection"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    .line 366
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/graphics/drawable/DrawableCompat;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    .line 367
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_26
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_26} :catch_27

    goto :goto_2d

    :catch_27
    move-exception v0

    .line 369
    const-string v4, "Failed to retrieve setLayoutDirection(int) method"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    :goto_2d
    sput-boolean v3, Landroidx/core/graphics/drawable/DrawableCompat;->sSetLayoutDirectionMethodFetched:Z

    .line 374
    :cond_2f
    sget-object v0, Landroidx/core/graphics/drawable/DrawableCompat;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_48

    .line 376
    :try_start_33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3e} :catch_3f

    return v3

    :catch_3f
    move-exception p0

    .line 379
    const-string p1, "Failed to invoke setLayoutDirection(int) via reflection"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 380
    sput-object p0, Landroidx/core/graphics/drawable/DrawableCompat;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    :cond_48
    return v2
.end method

.method public static setTint(Landroid/graphics/drawable/Drawable;I)V
    .registers 2

    .line 137
    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/DrawableCompat$Api21Impl;->setTint(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public static setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 151
    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/DrawableCompat$Api21Impl;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    .line 165
    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/DrawableCompat$Api21Impl;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ">(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .line 339
    instance-of v0, p0, Landroidx/core/graphics/drawable/WrappedDrawable;

    if-eqz v0, :cond_a

    .line 340
    check-cast p0, Landroidx/core/graphics/drawable/WrappedDrawable;

    invoke-interface {p0}, Landroidx/core/graphics/drawable/WrappedDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_a
    return-object p0
.end method

.method public static wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 312
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_7

    goto :goto_11

    .line 315
    :cond_7
    instance-of v0, p0, Landroidx/core/graphics/drawable/TintAwareDrawable;

    if-nez v0, :cond_11

    .line 316
    new-instance v0, Landroidx/core/graphics/drawable/WrappedDrawableApi21;

    invoke-direct {v0, p0}, Landroidx/core/graphics/drawable/WrappedDrawableApi21;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_11
    :goto_11
    return-object p0
.end method

###### Class androidx.core.graphics.drawable.DrawableCompat.Api21Impl (androidx.core.graphics.drawable.DrawableCompat$Api21Impl)
.class Landroidx/core/graphics/drawable/DrawableCompat$Api21Impl;
.super Ljava/lang/Object;
.source "DrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V
    .registers 2

    .line 453
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method static canApplyTheme(Landroid/graphics/drawable/Drawable;)Z
    .registers 1

    .line 458
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result p0

    return p0
.end method

.method static getColorFilter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;
    .registers 1

    .line 463
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method

.method static inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 470
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method static setHotspot(Landroid/graphics/drawable/Drawable;FF)V
    .registers 3

    .line 433
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    return-void
.end method

.method static setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V
    .registers 5

    .line 475
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    return-void
.end method

.method static setTint(Landroid/graphics/drawable/Drawable;I)V
    .registers 2

    .line 438
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method static setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 443
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method static setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    .line 448
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

###### Class androidx.core.graphics.drawable.DrawableCompat.Api23Impl (androidx.core.graphics.drawable.DrawableCompat$Api23Impl)
.class Landroidx/core/graphics/drawable/DrawableCompat$Api23Impl;
.super Ljava/lang/Object;
.source "DrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .registers 1

    .line 492
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result p0

    return p0
.end method

.method static setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .registers 2

    .line 487
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result p0

    return p0
.end method
