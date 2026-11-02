###### Class com.bumptech.glide.manager.RequestManagerFragment (com.bumptech.glide.manager.RequestManagerFragment)
.class public Lcom/bumptech/glide/manager/RequestManagerFragment;
.super Landroid/app/Fragment;
.source "RequestManagerFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequestManager()Lcom/bumptech/glide/RequestManager;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestManagerTreeNode()Lcom/bumptech/glide/manager/RequestManagerTreeNode;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    new-instance v0, Lcom/bumptech/glide/manager/RequestManagerFragment$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerFragment$1;-><init>(Lcom/bumptech/glide/manager/RequestManagerFragment;)V

    return-object v0
.end method

.method public setRequestManager(Lcom/bumptech/glide/RequestManager;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

###### Class com.bumptech.glide.manager.RequestManagerFragment.AnonymousClass1 (com.bumptech.glide.manager.RequestManagerFragment$1)
.class Lcom/bumptech/glide/manager/RequestManagerFragment$1;
.super Ljava/lang/Object;
.source "RequestManagerFragment.java"

# interfaces
.implements Lcom/bumptech/glide/manager/RequestManagerTreeNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/manager/RequestManagerFragment;->getRequestManagerTreeNode()Lcom/bumptech/glide/manager/RequestManagerTreeNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/manager/RequestManagerFragment;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/RequestManagerFragment;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/bumptech/glide/manager/RequestManagerFragment$1;->this$0:Lcom/bumptech/glide/manager/RequestManagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescendants()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/RequestManager;",
            ">;"
        }
    .end annotation

    .line 43
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method
