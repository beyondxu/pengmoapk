###### Class androidx.core.content.pm.ShortcutManagerCompat (androidx.core.content.pm.ShortcutManagerCompat)
.class public Landroidx/core/content/pm/ShortcutManagerCompat;
.super Ljava/lang/Object;
.source "ShortcutManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/pm/ShortcutManagerCompat$Api25Impl;,
        Landroidx/core/content/pm/ShortcutManagerCompat$ShortcutMatchFlags;
    }
.end annotation


# static fields
.field static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final DEFAULT_MAX_ICON_DIMENSION_DP:I = 0x60

.field private static final DEFAULT_MAX_ICON_DIMENSION_LOWRAM_DP:I = 0x30

.field public static final EXTRA_SHORTCUT_ID:Ljava/lang/String; = "android.intent.extra.shortcut.ID"

.field public static final FLAG_MATCH_CACHED:I = 0x8

.field public static final FLAG_MATCH_DYNAMIC:I = 0x2

.field public static final FLAG_MATCH_MANIFEST:I = 0x1

.field public static final FLAG_MATCH_PINNED:I = 0x4

.field static final INSTALL_SHORTCUT_PERMISSION:Ljava/lang/String; = "com.android.launcher.permission.INSTALL_SHORTCUT"

.field private static final SHORTCUT_LISTENER_INTENT_FILTER_ACTION:Ljava/lang/String; = "androidx.core.content.pm.SHORTCUT_LISTENER"

.field private static final SHORTCUT_LISTENER_META_DATA_KEY:Ljava/lang/String; = "androidx.core.content.pm.shortcut_listener_impl"

.field private static volatile sShortcutInfoChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sShortcutInfoCompatSaver:Landroidx/core/content/pm/ShortcutInfoCompatSaver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/content/pm/ShortcutInfoCompatSaver<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDynamicShortcuts(Landroid/content/Context;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 327
    invoke-static {p1, v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->removeShortcutsExcludedFromSurface(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 329
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-gt v2, v3, :cond_e

    .line 330
    invoke-static {p0, v1}, Landroidx/core/content/pm/ShortcutManagerCompat;->convertUriIconsToBitmapIcons(Landroid/content/Context;Ljava/util/List;)V

    .line 332
    :cond_e
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-lt v2, v3, :cond_45

    .line 333
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 334
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 335
    invoke-virtual {v4}, Landroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 337
    :cond_31
    invoke-static {}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$3()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    move-result-object v3

    invoke-static {v3, v2}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/content/pm/ShortcutManager;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_45

    const/4 p0, 0x0

    return p0

    .line 342
    :cond_45
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->addShortcuts(Ljava/util/List;)Ljava/lang/Object;

    .line 343
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_54
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 344
    invoke-virtual {v1, p1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    goto :goto_54

    :cond_64
    return v0
.end method

.method static convertUriIconToBitmapIcon(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;)Z
    .registers 7

    .line 557
    iget-object v0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 560
    :cond_6
    iget-object v0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    iget v0, v0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const/4 v2, 0x1

    const/4 v3, 0x6

    if-eq v0, v3, :cond_12

    const/4 v4, 0x4

    if-eq v0, v4, :cond_12

    return v2

    .line 564
    :cond_12
    iget-object v4, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v4, p0}, Landroidx/core/graphics/drawable/IconCompat;->getUriInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object p0

    if-nez p0, :cond_1b

    return v1

    .line 568
    :cond_1b
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_22

    return v1

    :cond_22
    if-ne v0, v3, :cond_29

    .line 573
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    goto :goto_2d

    .line 574
    :cond_29
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    :goto_2d
    iput-object p0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    return v2
.end method

.method static convertUriIconsToBitmapIcons(Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)V"
        }
    .end annotation

    .line 581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 582
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 583
    invoke-static {p0, v1}, Landroidx/core/content/pm/ShortcutManagerCompat;->convertUriIconToBitmapIcon(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 584
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1f
    return-void
.end method

.method public static createShortcutResultIntent(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;)Landroid/content/Intent;
    .registers 4

    .line 241
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1b

    .line 242
    invoke-static {}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$3()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    move-result-object p0

    .line 243
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/ShortcutManager;Landroid/content/pm/ShortcutInfo;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    if-nez p0, :cond_23

    .line 246
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 248
    :cond_23
    invoke-virtual {p1, p0}, Landroidx/core/content/pm/ShortcutInfoCompat;->addToIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static disableShortcuts(Landroid/content/Context;Ljava/util/List;Ljava/lang/CharSequence;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 608
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_15

    .line 609
    invoke-static {}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$3()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    move-result-object v0

    .line 610
    invoke-static {v0, p1, p2}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/ShortcutManager;Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 613
    :cond_15
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->removeShortcuts(Ljava/util/List;)Ljava/lang/Object;

    .line 614
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 615
    invoke-virtual {p2, p1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutRemoved(Ljava/util/List;)V

    goto :goto_24

    :cond_34
    return-void
.end method

.method public static enableShortcuts(Landroid/content/Context;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 637
    invoke-static {p1, v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->removeShortcutsExcludedFromSurface(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 639
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-lt v1, v2, :cond_39

    .line 640
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 641
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 642
    iget-object v3, v3, Landroidx/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 644
    :cond_2a
    invoke-static {}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$3()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/ShortcutManager;Ljava/util/List;)V

    .line 647
    :cond_39
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->addShortcuts(Ljava/util/List;)Ljava/lang/Object;

    .line 648
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_48
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 649
    invoke-virtual {v0, p1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    goto :goto_48

    :cond_58
    return-void
.end method

.method public static getDynamicShortcuts(Landroid/content/Context;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    .line 497
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_3f

    .line 498
    invoke-static {}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$3()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    move-result-object v0

    .line 499
    invoke-static {v0}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/ShortcutManager;)Ljava/util/List;

    move-result-object v0

    .line 500
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 501
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    .line 502
    new-instance v3, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    invoke-direct {v3, p0, v2}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;-><init>(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)V

    invoke-virtual {v3}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->build()Landroidx/core/content/pm/ShortcutInfoCompat;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_3e
    return-object v1

    .line 508
    :cond_3f
    :try_start_3f
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->getShortcuts()Ljava/util/List;

    move-result-object p0
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_47} :catch_48

    return-object p0

    .line 513
    :catch_48
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private static getIconDimensionInternal(Landroid/content/Context;Z)I
    .registers 4

    .line 832
    const-string v0, "activity"

    .line 833
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    .line 834
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    if-eqz v0, :cond_1a

    const/16 v0, 0x30

    goto :goto_1c

    :cond_1a
    const/16 v0, 0x60

    .line 835
    :goto_1c
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 837
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    if-eqz p1, :cond_2d

    .line 838
    iget p0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    goto :goto_2f

    :cond_2d
    iget p0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    :goto_2f
    const/high16 p1, 0x43200000    # 160.0f

    div-float/2addr p0, p1

    int-to-float p1, v0

    mul-float p1, p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static getIconMaxHeight(Landroid/content/Context;)I
    .registers 3

    .line 402
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_1a

    .line 404
    invoke-static {}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$3()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    move-result-object p0

    invoke-static {p0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/content/pm/ShortcutManager;)I

    move-result p0

    return p0

    :cond_1a
    const/4 v0, 0x0

    .line 406
    invoke-static {p0, v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getIconDimensionInternal(Landroid/content/Context;Z)I

    move-result p0

    return p0
.end method

.method public static getIconMaxWidth(Landroid/content/Context;)I
    .registers 3

    .line 391
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_1a

    .line 393
    invoke-static {}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$3()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    move-result-object p0

    invoke-static {p0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/content/pm/ShortcutManager;)I

    move-result p0

    return p0

    :cond_1a
    const/4 v0, 0x1

    .line 395
    invoke-static {p0, v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getIconDimensionInternal(Landroid/content/Context;Z)I

    move-result p0

    return p0
.end method

.method public static getMaxShortcutCountPerActivity(Landroid/content/Context;)I
    .registers 3

    .line 354
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_1a

    .line 356
    invoke-static {}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$3()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    move-result-object p0

    invoke-static {p0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/ShortcutManager;)I

    move-result p0

    return p0

    :cond_1a
    const/4 p0, 0x5

    return p0
.end method

.method static getShortcutInfoChangeListeners()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoChangeListener;",
            ">;"
        }
    .end annotation

    .line 827
    sget-object v0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoChangeListeners:Ljava/util/List;

    return-object v0
.end method

.method private static getShortcutInfoCompatWithLowestRank(Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 806
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 807
    invoke-virtual {v2}, Landroidx/core/content/pm/ShortcutInfoCompat;->getRank()I

    move-result v3

    if-le v3, v0, :cond_6

    .line 808
    invoke-virtual {v2}, Landroidx/core/content/pm/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v0

    .line 809
    invoke-virtual {v2}, Landroidx/core/content/pm/ShortcutInfoCompat;->getRank()I

    move-result v1

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_6

    :cond_24
    return-object v1
.end method

.method private static getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoChangeListener;",
            ">;"
        }
    .end annotation

    .line 866
    sget-object v0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoChangeListeners:Ljava/util/List;

    if-nez v0, :cond_73

    .line 867
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 869
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 870
    new-instance v2, Landroid/content/Intent;

    const-string v3, "androidx.core.content.pm.SHORTCUT_LISTENER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 871
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x80

    .line 873
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 876
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 877
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_36

    goto :goto_25

    .line 881
    :cond_36
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_3b

    goto :goto_25

    .line 885
    :cond_3b
    const-string v3, "androidx.core.content.pm.shortcut_listener_impl"

    .line 886
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_44

    goto :goto_25

    .line 891
    :cond_44
    :try_start_44
    const-class v3, Landroidx/core/content/pm/ShortcutManagerCompat;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    .line 892
    invoke-static {v2, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 893
    const-string v3, "getInstance"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v4

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 894
    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v4

    const/4 v4, 0x0

    .line 895
    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 894
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_6a} :catch_6b

    goto :goto_25

    :catch_6b
    nop

    goto :goto_25

    .line 901
    :cond_6d
    sget-object p0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoChangeListeners:Ljava/util/List;

    if-nez p0, :cond_73

    .line 902
    sput-object v0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoChangeListeners:Ljava/util/List;

    .line 905
    :cond_73
    sget-object p0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoChangeListeners:Ljava/util/List;

    return-object p0
.end method

.method private static getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroidx/core/content/pm/ShortcutInfoCompatSaver<",
            "*>;"
        }
    .end annotation

    .line 844
    sget-object v0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoCompatSaver:Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    if-nez v0, :cond_3e

    .line 845
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_33

    .line 847
    :try_start_a
    const-class v0, Landroidx/core/content/pm/ShortcutManagerCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 848
    const-string v1, "androidx.sharetarget.ShortcutInfoCompatSaverImpl"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 850
    const-string v1, "getInstance"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 851
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    sput-object p0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoCompatSaver:Landroidx/core/content/pm/ShortcutInfoCompatSaver;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_31} :catch_32

    goto :goto_33

    :catch_32
    nop

    .line 856
    :cond_33
    :goto_33
    sget-object p0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoCompatSaver:Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    if-nez p0, :cond_3e

    .line 858
    new-instance p0, Landroidx/core/content/pm/ShortcutInfoCompatSaver$NoopImpl;

    invoke-direct {p0}, Landroidx/core/content/pm/ShortcutInfoCompatSaver$NoopImpl;-><init>()V

    sput-object p0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoCompatSaver:Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    .line 861
    :cond_3e
    sget-object p0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoCompatSaver:Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    return-object p0
.end method

.method public static getShortcuts(Landroid/content/Context;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    .line 282
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1b

    .line 283
    invoke-static {}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$3()Ljava/lang/Class;

    move-result-object v0

    .line 284
    invoke-static {p0, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/ShortcutManager;I)Ljava/util/List;

    move-result-object p1

    .line 285
    invoke-static {p0, p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->fromShortcuts(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 286
    :cond_1b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_58

    .line 287
    invoke-static {}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$3()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    move-result-object v0

    .line 288
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_3d

    .line 290
    invoke-static {v0}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/content/pm/ShortcutManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3d
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_48

    .line 293
    invoke-static {v0}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/ShortcutManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_48
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_53

    .line 296
    invoke-static {v0}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/content/pm/ShortcutManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 298
    :cond_53
    invoke-static {p0, v1}, Landroidx/core/content/pm/ShortcutInfoCompat;->fromShortcuts(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_58
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_65

    .line 302
    :try_start_5c
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->getShortcuts()Ljava/util/List;

    move-result-object p0
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_64} :catch_65

    return-object p0

    .line 307
    :catch_65
    :cond_65
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public static isRateLimitingActive(Landroid/content/Context;)Z
    .registers 3

    .line 371
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_1a

    .line 373
    invoke-static {}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$3()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    move-result-object p0

    invoke-static {p0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/ShortcutManager;)Z

    move-result p0

    return p0

    :cond_1a
    const/4 v0, 0x3

    .line 376
    invoke-static {p0, v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcuts(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 377
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getMaxShortcutCountPerActivity(Landroid/content/Context;)I

    move-result p0

    if-ne v0, p0, :cond_2b

    const/4 p0, 0x1

    return p0

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method public static isRequestPinShortcutSupported(Landroid/content/Context;)Z
    .registers 5

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_17

    .line 154
    invoke-static {}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$3()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/ShortcutManager;)Z

    move-result p0

    return p0

    .line 157
    :cond_17
    const-string v0, "com.android.launcher.permission.INSTALL_SHORTCUT"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    return v2

    .line 161
    :cond_21
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_34
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 163
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 164
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    :cond_50
    const/4 p0, 0x1

    return p0

    :cond_52
    return v2
.end method

.method public static pushDynamicShortcut(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;)Z
    .registers 8

    .line 750
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-gt v0, v1, :cond_30

    .line 754
    invoke-virtual {p1, v2}, Landroidx/core/content/pm/ShortcutInfoCompat;->isExcludedFromSurfaces(I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 755
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 756
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    goto :goto_1b

    :cond_2f
    return v2

    .line 760
    :cond_30
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getMaxShortcutCountPerActivity(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_38

    return v1

    .line 764
    :cond_38
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-gt v3, v4, :cond_41

    .line 765
    invoke-static {p0, p1}, Landroidx/core/content/pm/ShortcutManagerCompat;->convertUriIconToBitmapIcon(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;)Z

    .line 767
    :cond_41
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_5b

    .line 768
    invoke-static {}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$3()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    move-result-object v3

    .line 769
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    .line 768
    invoke-static {v3, v4}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/ShortcutManager;Landroid/content/pm/ShortcutInfo;)V

    goto :goto_9c

    .line 770
    :cond_5b
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x19

    if-lt v3, v4, :cond_9c

    .line 771
    invoke-static {}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$3()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    move-result-object v3

    .line 772
    invoke-static {v3}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/ShortcutManager;)Z

    move-result v4

    if-eqz v4, :cond_74

    return v1

    .line 775
    :cond_74
    invoke-static {v3}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/ShortcutManager;)Ljava/util/List;

    move-result-object v4

    .line 776
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v0, :cond_8d

    .line 778
    invoke-static {v4}, Landroidx/core/content/pm/ShortcutManagerCompat$Api25Impl;->getShortcutInfoWithLowestRank(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 777
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/content/pm/ShortcutManager;Ljava/util/List;)V

    .line 780
    :cond_8d
    new-array v4, v2, [Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/content/pm/ShortcutManager;Ljava/util/List;)Z

    .line 782
    :cond_9c
    :goto_9c
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object v3

    .line 784
    :try_start_a0
    invoke-virtual {v3}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->getShortcuts()Ljava/util/List;

    move-result-object v4

    .line 785
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v0, :cond_b9

    .line 787
    invoke-static {v4}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoCompatWithLowestRank(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 786
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->removeShortcuts(Ljava/util/List;)Ljava/lang/Object;

    .line 789
    :cond_b9
    new-array v0, v2, [Landroidx/core/content/pm/ShortcutInfoCompat;

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->addShortcuts(Ljava/util/List;)Ljava/lang/Object;
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_c4} :catch_10d
    .catchall {:try_start_a0 .. :try_end_c4} :catchall_e8

    .line 794
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_cc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 795
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    goto :goto_cc

    .line 797
    :cond_e0
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/content/pm/ShortcutManagerCompat;->reportShortcutUsed(Landroid/content/Context;Ljava/lang/String;)V

    return v2

    :catchall_e8
    move-exception v0

    .line 794
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_105

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 795
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    goto :goto_f1

    .line 797
    :cond_105
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/content/pm/ShortcutManagerCompat;->reportShortcutUsed(Landroid/content/Context;Ljava/lang/String;)V

    .line 798
    throw v0

    .line 794
    :catch_10d
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_115
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_129

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 795
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    goto :goto_115

    .line 797
    :cond_129
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/content/pm/ShortcutManagerCompat;->reportShortcutUsed(Landroid/content/Context;Ljava/lang/String;)V

    return v1
.end method

.method public static removeAllDynamicShortcuts(Landroid/content/Context;)V
    .registers 3

    .line 680
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_15

    .line 681
    invoke-static {}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$3()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/ShortcutManager;)V

    .line 684
    :cond_15
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->removeAllShortcuts()Ljava/lang/Object;

    .line 685
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 686
    invoke-virtual {v0}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onAllShortcutsRemoved()V

    goto :goto_24

    :cond_34
    return-void
.end method

.method public static removeDynamicShortcuts(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 662
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_15

    .line 663
    invoke-static {}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$3()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/content/pm/ShortcutManager;Ljava/util/List;)V

    .line 666
    :cond_15
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->removeShortcuts(Ljava/util/List;)Ljava/lang/Object;

    .line 667
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 668
    invoke-virtual {v0, p1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutRemoved(Ljava/util/List;)V

    goto :goto_24

    :cond_34
    return-void
.end method

.method public static removeLongLivedShortcuts(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 703
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_a

    .line 704
    invoke-static {p0, p1}, Landroidx/core/content/pm/ShortcutManagerCompat;->removeDynamicShortcuts(Landroid/content/Context;Ljava/util/List;)V

    return-void

    .line 708
    :cond_a
    invoke-static {}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$3()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/content/pm/ShortcutManager;Ljava/util/List;)V

    .line 709
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->removeShortcuts(Ljava/util/List;)Ljava/lang/Object;

    .line 710
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 711
    invoke-virtual {v0, p1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutRemoved(Ljava/util/List;)V

    goto :goto_28

    :cond_38
    return-void
.end method

.method private static removeShortcutsExcludedFromSurface(Ljava/util/List;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;I)",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    .line 911
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-le v0, v1, :cond_a

    return-object p0

    .line 913
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 914
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 915
    invoke-virtual {v1, p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->isExcludedFromSurfaces(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 916
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_29
    return-object v0
.end method

.method public static reportShortcutUsed(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 428
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_1b

    .line 431
    invoke-static {}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$3()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/ShortcutManager;Ljava/lang/String;)V

    .line 434
    :cond_1b
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 435
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutUsageReported(Ljava/util/List;)V

    goto :goto_23

    :cond_37
    return-void
.end method

.method public static requestPinShortcut(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;Landroid/content/IntentSender;)Z
    .registers 15

    .line 191
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v1, :cond_f

    .line 192
    invoke-virtual {p1, v3}, Landroidx/core/content/pm/ShortcutInfoCompat;->isExcludedFromSurfaces(I)Z

    move-result v0

    if-eqz v0, :cond_f

    return v2

    .line 196
    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2a

    .line 197
    invoke-static {}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$3()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    move-result-object p0

    .line 198
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    .line 197
    invoke-static {p0, p1, p2}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/ShortcutManager;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    move-result p0

    return p0

    .line 201
    :cond_2a
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->isRequestPinShortcutSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_31

    return v2

    .line 204
    :cond_31
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/core/content/pm/ShortcutInfoCompat;->addToIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v5

    if-nez p2, :cond_42

    .line 208
    invoke-virtual {p0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return v3

    .line 213
    :cond_42
    new-instance v7, Landroidx/core/content/pm/ShortcutManagerCompat$1;

    invoke-direct {v7, p2}, Landroidx/core/content/pm/ShortcutManagerCompat$1;-><init>(Landroid/content/IntentSender;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return v3
.end method

.method public static setDynamicShortcuts(Landroid/content/Context;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)Z"
        }
    .end annotation

    .line 465
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 467
    invoke-static {p1, v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->removeShortcutsExcludedFromSurface(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 469
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-lt v2, v3, :cond_46

    .line 470
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 471
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 472
    invoke-virtual {v4}, Landroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 474
    :cond_32
    invoke-static {}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$3()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    move-result-object v3

    invoke-static {v3, v2}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/ShortcutManager;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_46

    const/4 p0, 0x0

    return p0

    .line 478
    :cond_46
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->removeAllShortcuts()Ljava/lang/Object;

    .line 479
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->addShortcuts(Ljava/util/List;)Ljava/lang/Object;

    .line 481
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 482
    invoke-virtual {v1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onAllShortcutsRemoved()V

    .line 483
    invoke-virtual {v1, p1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    goto :goto_5c

    :cond_6f
    return v0
.end method

.method static setShortcutInfoChangeListeners(Ljava/util/List;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoChangeListener;",
            ">;)V"
        }
    .end annotation

    .line 822
    sput-object p0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoChangeListeners:Ljava/util/List;

    return-void
.end method

.method static setShortcutInfoCompatSaver(Landroidx/core/content/pm/ShortcutInfoCompatSaver;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/content/pm/ShortcutInfoCompatSaver<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 817
    sput-object p0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoCompatSaver:Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    return-void
.end method

.method public static updateShortcuts(Landroid/content/Context;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 532
    invoke-static {p1, v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->removeShortcutsExcludedFromSurface(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 534
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-gt v2, v3, :cond_e

    .line 535
    invoke-static {p0, v1}, Landroidx/core/content/pm/ShortcutManagerCompat;->convertUriIconsToBitmapIcons(Landroid/content/Context;Ljava/util/List;)V

    .line 537
    :cond_e
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-lt v2, v3, :cond_45

    .line 538
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 539
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 540
    invoke-virtual {v4}, Landroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 542
    :cond_31
    invoke-static {}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$3()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    move-result-object v3

    invoke-static {v3, v2}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/ShortcutManager;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_45

    const/4 p0, 0x0

    return p0

    .line 547
    :cond_45
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->addShortcuts(Ljava/util/List;)Ljava/lang/Object;

    .line 548
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_54
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 549
    invoke-virtual {v1, p1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutUpdated(Ljava/util/List;)V

    goto :goto_54

    :cond_64
    return v0
.end method

###### Class androidx.core.content.pm.ShortcutManagerCompat.AnonymousClass1 (androidx.core.content.pm.ShortcutManagerCompat$1)
.class Landroidx/core/content/pm/ShortcutManagerCompat$1;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/content/pm/ShortcutManagerCompat;->requestPinShortcut(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;Landroid/content/IntentSender;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/content/IntentSender;


# direct methods
.method constructor <init>(Landroid/content/IntentSender;)V
    .registers 2

    .line 213
    iput-object p1, p0, Landroidx/core/content/pm/ShortcutManagerCompat$1;->val$callback:Landroid/content/IntentSender;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 217
    :try_start_0
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutManagerCompat$1;->val$callback:Landroid/content/IntentSender;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_a
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method

###### Class androidx.core.content.pm.ShortcutManagerCompat.Api25Impl (androidx.core.content.pm.ShortcutManagerCompat$Api25Impl)
.class Landroidx/core/content/pm/ShortcutManagerCompat$Api25Impl;
.super Ljava/lang/Object;
.source "ShortcutManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/pm/ShortcutManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api25Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getShortcutInfoWithLowestRank(Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 927
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 928
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v3

    if-le v3, v0, :cond_6

    .line 929
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 930
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v1

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_6

    :cond_24
    return-object v1
.end method

###### Class androidx.core.content.pm.ShortcutManagerCompat.ShortcutMatchFlags (androidx.core.content.pm.ShortcutManagerCompat$ShortcutMatchFlags)
.class public interface abstract annotation Landroidx/core/content/pm/ShortcutManagerCompat$ShortcutMatchFlags;
.super Ljava/lang/Object;
.source "ShortcutManagerCompat.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/pm/ShortcutManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ShortcutMatchFlags"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
