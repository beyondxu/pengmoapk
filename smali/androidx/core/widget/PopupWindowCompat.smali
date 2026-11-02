###### Class androidx.core.widget.PopupWindowCompat (androidx.core.widget.PopupWindowCompat)
.class public final Landroidx/core/widget/PopupWindowCompat;
.super Ljava/lang/Object;
.source "PopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/PopupWindowCompat$Api23Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupWindowCompatApi21"

.field private static sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

.field private static sGetWindowLayoutTypeMethodAttempted:Z

.field private static sOverlapAnchorField:Ljava/lang/reflect/Field;

.field private static sOverlapAnchorFieldAttempted:Z

.field private static sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

.field private static sSetWindowLayoutTypeMethodAttempted:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOverlapAnchor(Landroid/widget/PopupWindow;)Z
    .registers 5

    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 111
    invoke-static {p0}, Landroidx/core/widget/PopupWindowCompat$Api23Impl;->getOverlapAnchor(Landroid/widget/PopupWindow;)Z

    move-result p0

    return p0

    .line 113
    :cond_b
    sget-boolean v0, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorFieldAttempted:Z

    const-string v1, "PopupWindowCompatApi21"

    if-nez v0, :cond_28

    const/4 v0, 0x1

    .line 115
    :try_start_12
    const-class v2, Landroid/widget/PopupWindow;

    const-string v3, "mOverlapAnchor"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    .line 116
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_12 .. :try_end_1f} :catch_20

    goto :goto_26

    :catch_20
    move-exception v2

    .line 118
    const-string v3, "Could not fetch mOverlapAnchor field from PopupWindow"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    :goto_26
    sput-boolean v0, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorFieldAttempted:Z

    .line 122
    :cond_28
    sget-object v0, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3d

    .line 124
    :try_start_2c
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_36
    .catch Ljava/lang/IllegalAccessException; {:try_start_2c .. :try_end_36} :catch_37

    return p0

    :catch_37
    move-exception p0

    .line 126
    const-string v0, "Could not get overlap anchor field in PopupWindow"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3d
    const/4 p0, 0x0

    return p0
.end method

.method public static getWindowLayoutType(Landroid/widget/PopupWindow;)I
    .registers 5

    .line 174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 175
    invoke-static {p0}, Landroidx/core/widget/PopupWindowCompat$Api23Impl;->getWindowLayoutType(Landroid/widget/PopupWindow;)I

    move-result p0

    return p0

    .line 177
    :cond_b
    sget-boolean v0, Landroidx/core/widget/PopupWindowCompat;->sGetWindowLayoutTypeMethodAttempted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    .line 179
    :try_start_11
    const-class v2, Landroid/widget/PopupWindow;

    const-string v3, "getWindowLayoutType"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/core/widget/PopupWindowCompat;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    .line 181
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1e} :catch_1e

    .line 185
    :catch_1e
    sput-boolean v0, Landroidx/core/widget/PopupWindowCompat;->sGetWindowLayoutTypeMethodAttempted:Z

    .line 187
    :cond_20
    sget-object v0, Landroidx/core/widget/PopupWindowCompat;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2f

    .line 189
    :try_start_24
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2e} :catch_2f

    return p0

    :catch_2f
    :cond_2f
    const/4 p0, 0x0

    return p0
.end method

.method public static setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .registers 6

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_a

    .line 80
    invoke-static {p0, p1}, Landroidx/core/widget/PopupWindowCompat$Api23Impl;->setOverlapAnchor(Landroid/widget/PopupWindow;Z)V

    return-void

    .line 82
    :cond_a
    sget-boolean v0, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorFieldAttempted:Z

    const-string v1, "PopupWindowCompatApi21"

    if-nez v0, :cond_27

    const/4 v0, 0x1

    .line 84
    :try_start_11
    const-class v2, Landroid/widget/PopupWindow;

    const-string v3, "mOverlapAnchor"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    .line 85
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_11 .. :try_end_1e} :catch_1f

    goto :goto_25

    :catch_1f
    move-exception v2

    .line 87
    const-string v3, "Could not fetch mOverlapAnchor field from PopupWindow"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    :goto_25
    sput-boolean v0, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorFieldAttempted:Z

    .line 91
    :cond_27
    sget-object v0, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_39

    .line 93
    :try_start_2b
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_2b .. :try_end_32} :catch_33

    goto :goto_39

    :catch_33
    move-exception p0

    .line 95
    const-string p1, "Could not set overlap anchor field in PopupWindow"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_39
    :goto_39
    return-void
.end method

.method public static setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .registers 8

    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_a

    .line 145
    invoke-static {p0, p1}, Landroidx/core/widget/PopupWindowCompat$Api23Impl;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    return-void

    .line 147
    :cond_a
    sget-boolean v0, Landroidx/core/widget/PopupWindowCompat;->sSetWindowLayoutTypeMethodAttempted:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_25

    .line 149
    :try_start_10
    const-class v0, Landroid/widget/PopupWindow;

    const-string v3, "setWindowLayoutType"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/widget/PopupWindowCompat;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_23} :catch_23

    .line 155
    :catch_23
    sput-boolean v2, Landroidx/core/widget/PopupWindowCompat;->sSetWindowLayoutTypeMethodAttempted:Z

    .line 157
    :cond_25
    sget-object v0, Landroidx/core/widget/PopupWindowCompat;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_34

    .line 159
    :try_start_29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_34} :catch_34

    :catch_34
    :cond_34
    return-void
.end method

.method public static showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .registers 5

    .line 67
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method

###### Class androidx.core.widget.PopupWindowCompat.Api23Impl (androidx.core.widget.PopupWindowCompat$Api23Impl)
.class Landroidx/core/widget/PopupWindowCompat$Api23Impl;
.super Ljava/lang/Object;
.source "PopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/PopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getOverlapAnchor(Landroid/widget/PopupWindow;)Z
    .registers 1

    .line 211
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getOverlapAnchor()Z

    move-result p0

    return p0
.end method

.method static getWindowLayoutType(Landroid/widget/PopupWindow;)I
    .registers 1

    .line 221
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWindowLayoutType()I

    move-result p0

    return p0
.end method

.method static setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .registers 2

    .line 206
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    return-void
.end method

.method static setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .registers 2

    .line 216
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    return-void
.end method
