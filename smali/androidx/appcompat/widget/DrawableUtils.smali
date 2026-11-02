###### Class androidx.appcompat.widget.DrawableUtils (androidx.appcompat.widget.DrawableUtils)
.class public Landroidx/appcompat/widget/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/DrawableUtils$Api29Impl;,
        Landroidx/appcompat/widget/DrawableUtils$Api18Impl;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final EMPTY_STATE_SET:[I

.field public static final INSETS_NONE:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x10100a0

    .line 50
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/DrawableUtils;->CHECKED_STATE_SET:[I

    const/4 v0, 0x0

    .line 51
    new-array v0, v0, [I

    sput-object v0, Landroidx/appcompat/widget/DrawableUtils;->EMPTY_STATE_SET:[I

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method static fixDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 89
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_1a

    const-string v1, "android.graphics.drawable.VectorDrawable"

    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 93
    invoke-static {p0}, Landroidx/appcompat/widget/DrawableUtils;->forceDrawableStateChange(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 94
    :cond_1a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_31

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-ge v1, v2, :cond_31

    const-string v1, "android.graphics.drawable.ColorStateListDrawable"

    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 98
    invoke-static {p0}, Landroidx/appcompat/widget/DrawableUtils;->forceDrawableStateChange(Landroid/graphics/drawable/Drawable;)V

    :cond_31
    return-void
.end method

.method private static forceDrawableStateChange(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 149
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    if-eqz v0, :cond_10

    .line 150
    array-length v1, v0

    if-nez v1, :cond_a

    goto :goto_10

    .line 155
    :cond_a
    sget-object v1, Landroidx/appcompat/widget/DrawableUtils;->EMPTY_STATE_SET:[I

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_15

    .line 152
    :cond_10
    :goto_10
    sget-object v1, Landroidx/appcompat/widget/DrawableUtils;->CHECKED_STATE_SET:[I

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 158
    :goto_15
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method public static getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .registers 5

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_20

    .line 66
    invoke-static {p0}, Landroidx/appcompat/widget/DrawableUtils$Api29Impl;->getOpticalInsets(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Insets;

    move-result-object p0

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-static {p0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Insets;)I

    move-result v1

    invoke-static {p0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/graphics/Insets;)I

    move-result v2

    invoke-static {p0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/graphics/Insets;)I

    move-result v3

    invoke-static {p0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$3(Landroid/graphics/Insets;)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 74
    :cond_20
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->getOpticalInsets(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .registers 3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x9

    if-eq p0, v0, :cond_17

    packed-switch p0, :pswitch_data_20

    return-object p1

    .line 177
    :pswitch_e
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 175
    :pswitch_11
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 173
    :pswitch_14
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 171
    :cond_17
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 169
    :cond_1a
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 167
    :cond_1d
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_data_20
    .packed-switch 0xe
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

###### Class androidx.appcompat.widget.DrawableUtils.Api18Impl (androidx.appcompat.widget.DrawableUtils$Api18Impl)
.class Landroidx/appcompat/widget/DrawableUtils$Api18Impl;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/DrawableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api18Impl"
.end annotation


# static fields
.field private static final sBottom:Ljava/lang/reflect/Field;

.field private static final sGetOpticalInsets:Ljava/lang/reflect/Method;

.field private static final sLeft:Ljava/lang/reflect/Field;

.field private static final sReflectionSuccessful:Z

.field private static final sRight:Ljava/lang/reflect/Field;

.field private static final sTop:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 202
    :try_start_3
    const-string v3, "android.graphics.Insets"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 203
    const-class v4, Landroid/graphics/drawable/Drawable;

    const-string v5, "getOpticalInsets"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_11} :catch_4d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_11} :catch_48
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_11} :catch_43

    .line 204
    :try_start_11
    const-string v5, "left"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11 .. :try_end_17} :catch_40
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_17} :catch_3d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_11 .. :try_end_17} :catch_3a

    .line 205
    :try_start_17
    const-string/jumbo v6, "top"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_17 .. :try_end_1e} :catch_37
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_1e} :catch_34
    .catch Ljava/lang/NoSuchFieldException; {:try_start_17 .. :try_end_1e} :catch_31

    .line 206
    :try_start_1e
    const-string v7, "right"

    invoke-virtual {v3, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7
    :try_end_24
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1e .. :try_end_24} :catch_2e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1e .. :try_end_24} :catch_2e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1e .. :try_end_24} :catch_2e

    .line 207
    :try_start_24
    const-string v8, "bottom"

    invoke-virtual {v3, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_2a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_24 .. :try_end_2a} :catch_2c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_24 .. :try_end_2a} :catch_2c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_24 .. :try_end_2a} :catch_2c

    const/4 v8, 0x1

    goto :goto_54

    :catch_2c
    nop

    goto :goto_52

    :catch_2e
    nop

    move-object v7, v1

    goto :goto_52

    :catch_31
    nop

    move-object v6, v1

    goto :goto_51

    :catch_34
    nop

    move-object v6, v1

    goto :goto_51

    :catch_37
    nop

    move-object v6, v1

    goto :goto_51

    :catch_3a
    nop

    move-object v5, v1

    goto :goto_46

    :catch_3d
    nop

    move-object v5, v1

    goto :goto_4b

    :catch_40
    nop

    move-object v5, v1

    goto :goto_50

    :catch_43
    nop

    move-object v4, v1

    move-object v5, v4

    :goto_46
    move-object v6, v5

    goto :goto_51

    :catch_48
    nop

    move-object v4, v1

    move-object v5, v4

    :goto_4b
    move-object v6, v5

    goto :goto_51

    :catch_4d
    nop

    move-object v4, v1

    move-object v5, v4

    :goto_50
    move-object v6, v5

    :goto_51
    move-object v7, v6

    :goto_52
    move-object v3, v1

    const/4 v8, 0x0

    :goto_54
    if-eqz v8, :cond_63

    .line 218
    sput-object v4, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sGetOpticalInsets:Ljava/lang/reflect/Method;

    .line 219
    sput-object v5, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sLeft:Ljava/lang/reflect/Field;

    .line 220
    sput-object v6, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sTop:Ljava/lang/reflect/Field;

    .line 221
    sput-object v7, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sRight:Ljava/lang/reflect/Field;

    .line 222
    sput-object v3, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sBottom:Ljava/lang/reflect/Field;

    .line 223
    sput-boolean v0, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sReflectionSuccessful:Z

    goto :goto_6f

    .line 225
    :cond_63
    sput-object v1, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sGetOpticalInsets:Ljava/lang/reflect/Method;

    .line 226
    sput-object v1, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sLeft:Ljava/lang/reflect/Field;

    .line 227
    sput-object v1, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sTop:Ljava/lang/reflect/Field;

    .line 228
    sput-object v1, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sRight:Ljava/lang/reflect/Field;

    .line 229
    sput-object v1, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sBottom:Ljava/lang/reflect/Field;

    .line 230
    sput-boolean v2, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sReflectionSuccessful:Z

    :goto_6f
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getOpticalInsets(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .registers 6

    .line 241
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_31

    sget-boolean v0, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sReflectionSuccessful:Z

    if-eqz v0, :cond_31

    .line 243
    :try_start_a
    sget-object v0, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sGetOpticalInsets:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_31

    .line 245
    new-instance v0, Landroid/graphics/Rect;

    sget-object v1, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sLeft:Ljava/lang/reflect/Field;

    .line 246
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sget-object v2, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sTop:Ljava/lang/reflect/Field;

    .line 247
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    sget-object v3, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sRight:Ljava/lang/reflect/Field;

    .line 248
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sget-object v4, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sBottom:Ljava/lang/reflect/Field;

    .line 249
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_30} :catch_31
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_30} :catch_31

    return-object v0

    .line 258
    :catch_31
    :cond_31
    sget-object p0, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    return-object p0
.end method

###### Class androidx.appcompat.widget.DrawableUtils.Api29Impl (androidx.appcompat.widget.DrawableUtils$Api29Impl)
.class Landroidx/appcompat/widget/DrawableUtils$Api29Impl;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/DrawableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getOpticalInsets(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Insets;
    .registers 1

    .line 270
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method
