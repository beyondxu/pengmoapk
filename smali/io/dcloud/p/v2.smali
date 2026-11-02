###### Class io.dcloud.p.v2 (io.dcloud.p.v2)
.class public abstract Lio/dcloud/p/v2;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/p/v2$c;
    }
.end annotation


# instance fields
.field protected a:Lio/dcloud/p/v2$c;

.field private b:Landroid/content/Context;

.field protected c:Ljava/lang/String;

.field protected d:Lio/dcloud/sdk/base/entry/AdData;


# direct methods
.method public constructor <init>(Lio/dcloud/p/v2$c;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/p/v2;->a:Lio/dcloud/p/v2$c;

    .line 3
    iput-object p2, p0, Lio/dcloud/p/v2;->b:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lio/dcloud/p/v2;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    .line 12
    iget-object v0, p0, Lio/dcloud/p/v2;->a:Lio/dcloud/p/v2$c;

    if-eqz v0, :cond_15

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lio/dcloud/p/v2$b;

    invoke-direct {v1, p0}, Lio/dcloud/p/v2$b;-><init>(Lio/dcloud/p/v2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_15
    return-void
.end method

.method protected a(ILjava/lang/String;)V
    .registers 5

    .line 10
    iget-object v0, p0, Lio/dcloud/p/v2;->a:Lio/dcloud/p/v2$c;

    if-eqz v0, :cond_15

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lio/dcloud/p/v2$a;

    invoke-direct {v1, p0, p1, p2}, Lio/dcloud/p/v2$a;-><init>(Lio/dcloud/p/v2;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_15
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .registers 6

    if-nez p1, :cond_b

    const p1, 0xea6a

    .line 1
    const-string v0, "\u5e7f\u544a\u5bb9\u5668\u4e0d\u53ef\u89c1"

    invoke-virtual {p0, p1, v0}, Lio/dcloud/p/v2;->a(ILjava/lang/String;)V

    return-void

    .line 4
    :cond_b
    iget-object v0, p0, Lio/dcloud/p/v2;->d:Lio/dcloud/sdk/base/entry/AdData;

    if-nez v0, :cond_18

    const p1, 0xea65

    .line 5
    const-string v0, "\u6570\u636e\u89e3\u6790\u5931\u8d25"

    invoke-virtual {p0, p1, v0}, Lio/dcloud/p/v2;->a(ILjava/lang/String;)V

    return-void

    .line 8
    :cond_18
    new-instance v0, Lio/dcloud/p/o4;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/p/v2;->a:Lio/dcloud/p/v2$c;

    iget-object v3, p0, Lio/dcloud/p/v2;->d:Lio/dcloud/sdk/base/entry/AdData;

    invoke-direct {v0, v1, v2, v3}, Lio/dcloud/p/o4;-><init>(Landroid/content/Context;Lio/dcloud/p/v2$c;Lio/dcloud/sdk/base/entry/AdData;)V

    .line 9
    invoke-virtual {v0, p1}, Lio/dcloud/p/o4;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public b()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/v2;->b:Landroid/content/Context;

    return-object v0
.end method

###### Class io.dcloud.p.v2.a (io.dcloud.p.v2$a)
.class Lio/dcloud/p/v2$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/p/v2;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lio/dcloud/p/v2;


# direct methods
.method constructor <init>(Lio/dcloud/p/v2;ILjava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/p/v2$a;->c:Lio/dcloud/p/v2;

    iput p2, p0, Lio/dcloud/p/v2$a;->a:I

    iput-object p3, p0, Lio/dcloud/p/v2$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/p/v2$a;->c:Lio/dcloud/p/v2;

    iget-object v0, v0, Lio/dcloud/p/v2;->a:Lio/dcloud/p/v2$c;

    iget v1, p0, Lio/dcloud/p/v2$a;->a:I

    iget-object v2, p0, Lio/dcloud/p/v2$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lio/dcloud/p/v2$c;->onError(ILjava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.p.v2.b (io.dcloud.p.v2$b)
.class Lio/dcloud/p/v2$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/p/v2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/p/v2;


# direct methods
.method constructor <init>(Lio/dcloud/p/v2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/p/v2$b;->a:Lio/dcloud/p/v2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/v2$b;->a:Lio/dcloud/p/v2;

    iget-object v0, v0, Lio/dcloud/p/v2;->a:Lio/dcloud/p/v2$c;

    invoke-interface {v0}, Lio/dcloud/p/v2$c;->m()V

    return-void
.end method

###### Class io.dcloud.p.v2.c (io.dcloud.p.v2$c)
.class public interface abstract Lio/dcloud/p/v2$c;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/v2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract a(ILjava/lang/String;)V
.end method

.method public abstract k()V
.end method

.method public abstract l()V
.end method

.method public abstract m()V
.end method

.method public abstract onAdClicked()V
.end method

.method public abstract onAdShow()V
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method
