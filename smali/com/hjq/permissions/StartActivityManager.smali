###### Class com.hjq.permissions.StartActivityManager (com.hjq.permissions.StartActivityManager)
.class final Lcom/hjq/permissions/StartActivityManager;
.super Ljava/lang/Object;
.source "StartActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateSupportFragmentImpl;,
        Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateFragmentImpl;,
        Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateActivityImpl;,
        Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateContextImpl;,
        Lcom/hjq/permissions/StartActivityManager$StartActivityDelegate;
    }
.end annotation


# static fields
.field private static final SUB_INTENT_KEY:Ljava/lang/String; = "sub_intent_key"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addSubIntentToMainIntent(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4

    if-nez p0, :cond_5

    if-eqz p1, :cond_5

    return-object p1

    :cond_5
    if-nez p1, :cond_8

    return-object p0

    .line 45
    :cond_8
    invoke-static {p0}, Lcom/hjq/permissions/StartActivityManager;->getDeepSubIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 46
    const-string/jumbo v1, "sub_intent_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method static getDeepSubIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2

    .line 31
    invoke-static {p0}, Lcom/hjq/permissions/StartActivityManager;->getSubIntentInMainIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 33
    invoke-static {v0}, Lcom/hjq/permissions/StartActivityManager;->getDeepSubIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    :cond_a
    return-object p0
.end method

.method static getSubIntentInMainIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 3

    .line 22
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid13()Z

    move-result v0

    const-string/jumbo v1, "sub_intent_key"

    if-eqz v0, :cond_12

    .line 23
    const-class v0, Landroid/content/Intent;

    invoke-static {p0, v1, v0}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    return-object p0

    .line 25
    :cond_12
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    return-object p0
.end method

.method static startActivity(Landroid/app/Activity;Landroid/content/Intent;)Z
    .registers 4

    .line 55
    new-instance v0, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateActivityImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateActivityImpl;-><init>(Landroid/app/Activity;Lcom/hjq/permissions/StartActivityManager$1;)V

    invoke-static {v0, p1}, Lcom/hjq/permissions/StartActivityManager;->startActivity(Lcom/hjq/permissions/StartActivityManager$StartActivityDelegate;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static startActivity(Landroid/app/Fragment;Landroid/content/Intent;)Z
    .registers 4

    .line 59
    new-instance v0, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateFragmentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateFragmentImpl;-><init>(Landroid/app/Fragment;Lcom/hjq/permissions/StartActivityManager$1;)V

    invoke-static {v0, p1}, Lcom/hjq/permissions/StartActivityManager;->startActivity(Lcom/hjq/permissions/StartActivityManager$StartActivityDelegate;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static startActivity(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 4

    .line 51
    new-instance v0, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateContextImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateContextImpl;-><init>(Landroid/content/Context;Lcom/hjq/permissions/StartActivityManager$1;)V

    invoke-static {v0, p1}, Lcom/hjq/permissions/StartActivityManager;->startActivity(Lcom/hjq/permissions/StartActivityManager$StartActivityDelegate;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static startActivity(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)Z
    .registers 4

    .line 63
    new-instance v0, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateSupportFragmentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateSupportFragmentImpl;-><init>(Landroidx/fragment/app/Fragment;Lcom/hjq/permissions/StartActivityManager$1;)V

    invoke-static {v0, p1}, Lcom/hjq/permissions/StartActivityManager;->startActivity(Lcom/hjq/permissions/StartActivityManager$StartActivityDelegate;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static startActivity(Lcom/hjq/permissions/StartActivityManager$StartActivityDelegate;Landroid/content/Intent;)Z
    .registers 3

    .line 68
    :try_start_0
    invoke-interface {p0, p1}, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegate;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    return p0

    :catch_5
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    invoke-static {p1}, Lcom/hjq/permissions/StartActivityManager;->getSubIntentInMainIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_11

    const/4 p0, 0x0

    return p0

    .line 76
    :cond_11
    invoke-static {p0, p1}, Lcom/hjq/permissions/StartActivityManager;->startActivity(Lcom/hjq/permissions/StartActivityManager$StartActivityDelegate;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)Z
    .registers 5

    .line 81
    new-instance v0, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateActivityImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateActivityImpl;-><init>(Landroid/app/Activity;Lcom/hjq/permissions/StartActivityManager$1;)V

    invoke-static {v0, p1, p2}, Lcom/hjq/permissions/StartActivityManager;->startActivityForResult(Lcom/hjq/permissions/StartActivityManager$StartActivityDelegate;Landroid/content/Intent;I)Z

    move-result p0

    return p0
.end method

.method static startActivityForResult(Landroid/app/Fragment;Landroid/content/Intent;I)Z
    .registers 5

    .line 85
    new-instance v0, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateFragmentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateFragmentImpl;-><init>(Landroid/app/Fragment;Lcom/hjq/permissions/StartActivityManager$1;)V

    invoke-static {v0, p1, p2}, Lcom/hjq/permissions/StartActivityManager;->startActivityForResult(Lcom/hjq/permissions/StartActivityManager$StartActivityDelegate;Landroid/content/Intent;I)Z

    move-result p0

    return p0
.end method

.method static startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)Z
    .registers 5

    .line 89
    new-instance v0, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateSupportFragmentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateSupportFragmentImpl;-><init>(Landroidx/fragment/app/Fragment;Lcom/hjq/permissions/StartActivityManager$1;)V

    invoke-static {v0, p1, p2}, Lcom/hjq/permissions/StartActivityManager;->startActivityForResult(Lcom/hjq/permissions/StartActivityManager$StartActivityDelegate;Landroid/content/Intent;I)Z

    move-result p0

    return p0
.end method

.method static startActivityForResult(Lcom/hjq/permissions/StartActivityManager$StartActivityDelegate;Landroid/content/Intent;I)Z
    .registers 4

    .line 94
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegate;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    return p0

    :catch_5
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    invoke-static {p1}, Lcom/hjq/permissions/StartActivityManager;->getSubIntentInMainIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_11

    const/4 p0, 0x0

    return p0

    .line 102
    :cond_11
    invoke-static {p0, p1, p2}, Lcom/hjq/permissions/StartActivityManager;->startActivityForResult(Lcom/hjq/permissions/StartActivityManager$StartActivityDelegate;Landroid/content/Intent;I)Z

    move-result p0

    return p0
.end method

###### Class com.hjq.permissions.StartActivityManager.AnonymousClass1 (com.hjq.permissions.StartActivityManager$1)
.class synthetic Lcom/hjq/permissions/StartActivityManager$1;
.super Ljava/lang/Object;
.source "StartActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hjq/permissions/StartActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.hjq.permissions.StartActivityManager.StartActivityDelegate (com.hjq.permissions.StartActivityManager$StartActivityDelegate)
.class interface abstract Lcom/hjq/permissions/StartActivityManager$StartActivityDelegate;
.super Ljava/lang/Object;
.source "StartActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hjq/permissions/StartActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "StartActivityDelegate"
.end annotation


# virtual methods
.method public abstract startActivity(Landroid/content/Intent;)V
.end method

.method public abstract startActivityForResult(Landroid/content/Intent;I)V
.end method

###### Class com.hjq.permissions.StartActivityManager.StartActivityDelegateActivityImpl (com.hjq.permissions.StartActivityManager$StartActivityDelegateActivityImpl)
.class Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateActivityImpl;
.super Ljava/lang/Object;
.source "StartActivityManager.java"

# interfaces
.implements Lcom/hjq/permissions/StartActivityManager$StartActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hjq/permissions/StartActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StartActivityDelegateActivityImpl"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateActivityImpl;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Lcom/hjq/permissions/StartActivityManager$1;)V
    .registers 3

    .line 137
    invoke-direct {p0, p1}, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateActivityImpl;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public startActivity(Landroid/content/Intent;)V
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateActivityImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4

    .line 152
    iget-object v0, p0, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateActivityImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

###### Class com.hjq.permissions.StartActivityManager.StartActivityDelegateContextImpl (com.hjq.permissions.StartActivityManager$StartActivityDelegateContextImpl)
.class Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateContextImpl;
.super Ljava/lang/Object;
.source "StartActivityManager.java"

# interfaces
.implements Lcom/hjq/permissions/StartActivityManager$StartActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hjq/permissions/StartActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StartActivityDelegateContextImpl"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateContextImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/hjq/permissions/StartActivityManager$1;)V
    .registers 3

    .line 113
    invoke-direct {p0, p1}, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateContextImpl;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public startActivity(Landroid/content/Intent;)V
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateContextImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateContextImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hjq/permissions/PermissionUtils;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 130
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 133
    :cond_c
    invoke-virtual {p0, p1}, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateContextImpl;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

###### Class com.hjq.permissions.StartActivityManager.StartActivityDelegateFragmentImpl (com.hjq.permissions.StartActivityManager$StartActivityDelegateFragmentImpl)
.class Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateFragmentImpl;
.super Ljava/lang/Object;
.source "StartActivityManager.java"

# interfaces
.implements Lcom/hjq/permissions/StartActivityManager$StartActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hjq/permissions/StartActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StartActivityDelegateFragmentImpl"
.end annotation


# instance fields
.field private final mFragment:Landroid/app/Fragment;


# direct methods
.method private constructor <init>(Landroid/app/Fragment;)V
    .registers 2

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateFragmentImpl;->mFragment:Landroid/app/Fragment;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Fragment;Lcom/hjq/permissions/StartActivityManager$1;)V
    .registers 3

    .line 156
    invoke-direct {p0, p1}, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateFragmentImpl;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public startActivity(Landroid/content/Intent;)V
    .registers 3

    .line 166
    iget-object v0, p0, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateFragmentImpl;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4

    .line 171
    iget-object v0, p0, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateFragmentImpl;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

###### Class com.hjq.permissions.StartActivityManager.StartActivityDelegateSupportFragmentImpl (com.hjq.permissions.StartActivityManager$StartActivityDelegateSupportFragmentImpl)
.class Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateSupportFragmentImpl;
.super Ljava/lang/Object;
.source "StartActivityManager.java"

# interfaces
.implements Lcom/hjq/permissions/StartActivityManager$StartActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hjq/permissions/StartActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StartActivityDelegateSupportFragmentImpl"
.end annotation


# instance fields
.field private final mFragment:Landroidx/fragment/app/Fragment;


# direct methods
.method private constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 2

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateSupportFragmentImpl;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/fragment/app/Fragment;Lcom/hjq/permissions/StartActivityManager$1;)V
    .registers 3

    .line 175
    invoke-direct {p0, p1}, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateSupportFragmentImpl;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public startActivity(Landroid/content/Intent;)V
    .registers 3

    .line 185
    iget-object v0, p0, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateSupportFragmentImpl;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4

    .line 190
    iget-object v0, p0, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateSupportFragmentImpl;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
