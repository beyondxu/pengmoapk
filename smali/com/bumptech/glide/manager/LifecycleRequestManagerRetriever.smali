###### Class com.bumptech.glide.manager.LifecycleRequestManagerRetriever (com.bumptech.glide.manager.LifecycleRequestManagerRetriever)
.class final Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;
.super Ljava/lang/Object;
.source "LifecycleRequestManagerRetriever.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever$SupportRequestManagerTreeNode;
    }
.end annotation


# instance fields
.field private final factory:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

.field final lifecycleToRequestManager:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/lifecycle/Lifecycle;",
            "Lcom/bumptech/glide/RequestManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;->lifecycleToRequestManager:Ljava/util/Map;

    .line 24
    iput-object p1, p0, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;->factory:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    return-void
.end method


# virtual methods
.method getOnly(Landroidx/lifecycle/Lifecycle;)Lcom/bumptech/glide/RequestManager;
    .registers 3

    .line 28
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 29
    iget-object v0, p0, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;->lifecycleToRequestManager:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestManager;

    return-object p1
.end method

.method getOrCreate(Landroid/content/Context;Lcom/bumptech/glide/Glide;Landroidx/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager;Z)Lcom/bumptech/glide/RequestManager;
    .registers 9

    .line 38
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 39
    invoke-virtual {p0, p3}, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;->getOnly(Landroidx/lifecycle/Lifecycle;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 41
    new-instance v0, Lcom/bumptech/glide/manager/LifecycleLifecycle;

    invoke-direct {v0, p3}, Lcom/bumptech/glide/manager/LifecycleLifecycle;-><init>(Landroidx/lifecycle/Lifecycle;)V

    .line 42
    iget-object v1, p0, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;->factory:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    new-instance v2, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever$SupportRequestManagerTreeNode;

    invoke-direct {v2, p0, p4}, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever$SupportRequestManagerTreeNode;-><init>(Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;Landroidx/fragment/app/FragmentManager;)V

    .line 43
    invoke-interface {v1, p2, v0, v2, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;->build(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 48
    iget-object p2, p0, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;->lifecycleToRequestManager:Ljava/util/Map;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance p2, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever$1;

    invoke-direct {p2, p0, p3}, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever$1;-><init>(Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;Landroidx/lifecycle/Lifecycle;)V

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/manager/LifecycleLifecycle;->addListener(Lcom/bumptech/glide/manager/LifecycleListener;)V

    if-eqz p5, :cond_2b

    .line 66
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->onStart()V

    :cond_2b
    return-object p1

    :cond_2c
    return-object v0
.end method

###### Class com.bumptech.glide.manager.LifecycleRequestManagerRetriever.AnonymousClass1 (com.bumptech.glide.manager.LifecycleRequestManagerRetriever$1)
.class Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever$1;
.super Ljava/lang/Object;
.source "LifecycleRequestManagerRetriever.java"

# interfaces
.implements Lcom/bumptech/glide/manager/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;->getOrCreate(Landroid/content/Context;Lcom/bumptech/glide/Glide;Landroidx/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager;Z)Lcom/bumptech/glide/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;

.field final synthetic val$lifecycle:Landroidx/lifecycle/Lifecycle;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;Landroidx/lifecycle/Lifecycle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever$1;->this$0:Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;

    iput-object p2, p0, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever$1;->val$lifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever$1;->this$0:Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;

    iget-object v0, v0, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;->lifecycleToRequestManager:Ljava/util/Map;

    iget-object v1, p0, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever$1;->val$lifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onStop()V
    .registers 1

    return-void
.end method

###### Class com.bumptech.glide.manager.LifecycleRequestManagerRetriever.SupportRequestManagerTreeNode (com.bumptech.glide.manager.LifecycleRequestManagerRetriever$SupportRequestManagerTreeNode)
.class final Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever$SupportRequestManagerTreeNode;
.super Ljava/lang/Object;
.source "LifecycleRequestManagerRetriever.java"

# interfaces
.implements Lcom/bumptech/glide/manager/RequestManagerTreeNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SupportRequestManagerTreeNode"
.end annotation


# instance fields
.field private final childFragmentManager:Landroidx/fragment/app/FragmentManager;

.field final synthetic this$0:Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;Landroidx/fragment/app/FragmentManager;)V
    .registers 3

    .line 75
    iput-object p1, p0, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever$SupportRequestManagerTreeNode;->this$0:Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever$SupportRequestManagerTreeNode;->childFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method private getChildFragmentsRecursive(Landroidx/fragment/app/FragmentManager;Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/RequestManager;",
            ">;)V"
        }
    .end annotation

    .line 89
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    .line 90
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_2a

    .line 91
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 92
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever$SupportRequestManagerTreeNode;->getChildFragmentsRecursive(Landroidx/fragment/app/FragmentManager;Ljava/util/Set;)V

    .line 93
    iget-object v3, p0, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever$SupportRequestManagerTreeNode;->this$0:Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;->getOnly(Landroidx/lifecycle/Lifecycle;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 95
    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_2a
    return-void
.end method


# virtual methods
.method public getDescendants()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/RequestManager;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 83
    iget-object v1, p0, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever$SupportRequestManagerTreeNode;->childFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever$SupportRequestManagerTreeNode;->getChildFragmentsRecursive(Landroidx/fragment/app/FragmentManager;Ljava/util/Set;)V

    return-object v0
.end method
