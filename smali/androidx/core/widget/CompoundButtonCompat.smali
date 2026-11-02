###### Class androidx.core.widget.CompoundButtonCompat (androidx.core.widget.CompoundButtonCompat)
.class public final Landroidx/core/widget/CompoundButtonCompat;
.super Ljava/lang/Object;
.source "CompoundButtonCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/CompoundButtonCompat$Api21Impl;,
        Landroidx/core/widget/CompoundButtonCompat$Api23Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CompoundButtonCompat"

.field private static sButtonDrawableField:Ljava/lang/reflect/Field;

.field private static sButtonDrawableFieldFetched:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 128
    invoke-static {p0}, Landroidx/core/widget/CompoundButtonCompat$Api23Impl;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 131
    :cond_b
    sget-boolean v0, Landroidx/core/widget/CompoundButtonCompat;->sButtonDrawableFieldFetched:Z

    const-string v1, "CompoundButtonCompat"

    if-nez v0, :cond_28

    const/4 v0, 0x1

    .line 133
    :try_start_12
    const-class v2, Landroid/widget/CompoundButton;

    const-string v3, "mButtonDrawable"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroidx/core/widget/CompoundButtonCompat;->sButtonDrawableField:Ljava/lang/reflect/Field;

    .line 134
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_12 .. :try_end_1f} :catch_20

    goto :goto_26

    :catch_20
    move-exception v2

    .line 136
    const-string v3, "Failed to retrieve mButtonDrawable field"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    :goto_26
    sput-boolean v0, Landroidx/core/widget/CompoundButtonCompat;->sButtonDrawableFieldFetched:Z

    .line 141
    :cond_28
    sget-object v0, Landroidx/core/widget/CompoundButtonCompat;->sButtonDrawableField:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    if-eqz v0, :cond_3c

    .line 143
    :try_start_2d
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;
    :try_end_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_2d .. :try_end_33} :catch_34

    return-object p0

    :catch_34
    move-exception p0

    .line 145
    const-string v0, "Failed to get button drawable via reflection"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    sput-object v2, Landroidx/core/widget/CompoundButtonCompat;->sButtonDrawableField:Ljava/lang/reflect/Field;

    :cond_3c
    return-object v2
.end method

.method public static getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
    .registers 1

    .line 75
    invoke-static {p0}, Landroidx/core/widget/CompoundButtonCompat$Api21Impl;->getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;
    .registers 1

    .line 112
    invoke-static {p0}, Landroidx/core/widget/CompoundButtonCompat$Api21Impl;->getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public static setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 61
    invoke-static {p0, p1}, Landroidx/core/widget/CompoundButtonCompat$Api21Impl;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    .line 98
    invoke-static {p0, p1}, Landroidx/core/widget/CompoundButtonCompat$Api21Impl;->setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

###### Class androidx.core.widget.CompoundButtonCompat.Api21Impl (androidx.core.widget.CompoundButtonCompat$Api21Impl)
.class Landroidx/core/widget/CompoundButtonCompat$Api21Impl;
.super Ljava/lang/Object;
.source "CompoundButtonCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/CompoundButtonCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
    .registers 1

    .line 165
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method static getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;
    .registers 1

    .line 175
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method static setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 160
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method static setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    .line 170
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

###### Class androidx.core.widget.CompoundButtonCompat.Api23Impl (androidx.core.widget.CompoundButtonCompat$Api23Impl)
.class Landroidx/core/widget/CompoundButtonCompat$Api23Impl;
.super Ljava/lang/Object;
.source "CompoundButtonCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/CompoundButtonCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 187
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
