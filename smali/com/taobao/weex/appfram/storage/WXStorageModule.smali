###### Class com.taobao.weex.appfram.storage.WXStorageModule (com.taobao.weex.appfram.storage.WXStorageModule)
.class public Lcom/taobao/weex/appfram/storage/WXStorageModule;
.super Lcom/taobao/weex/WXSDKEngine$DestroyableModule;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/appfram/storage/IWXStorage;


# instance fields
.field mStorageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKEngine$DestroyableModule;-><init>()V

    return-void
.end method

.method private ability()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule;->mStorageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    if-eqz v0, :cond_5

    return-object v0

    .line 4
    :cond_5
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getIWXStorageAdapter()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule;->mStorageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/WXStorageModule;->ability()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 3
    invoke-interface {v0}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;->close()V

    :cond_9
    return-void
.end method

.method public getAllKeys(Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/WXStorageModule;->ability()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    move-result-object v0

    if-nez v0, :cond_a

    .line 3
    invoke-static {p1}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleNoHandlerError(Lcom/taobao/weex/bridge/JSCallback;)V

    return-void

    .line 6
    :cond_a
    new-instance v1, Lcom/taobao/weex/appfram/storage/WXStorageModule$5;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/appfram/storage/WXStorageModule$5;-><init>(Lcom/taobao/weex/appfram/storage/WXStorageModule;Lcom/taobao/weex/bridge/JSCallback;)V

    invoke-interface {v0, v1}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;->getAllKeys(Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    return-void
.end method

.method public getItem(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2
    invoke-static {p2}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleInvalidParam(Lcom/taobao/weex/bridge/JSCallback;)V

    return-void

    .line 6
    :cond_a
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/WXStorageModule;->ability()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    move-result-object v0

    if-nez v0, :cond_14

    .line 8
    invoke-static {p2}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleNoHandlerError(Lcom/taobao/weex/bridge/JSCallback;)V

    return-void

    .line 11
    :cond_14
    new-instance v1, Lcom/taobao/weex/appfram/storage/WXStorageModule$2;

    invoke-direct {v1, p0, p2}, Lcom/taobao/weex/appfram/storage/WXStorageModule$2;-><init>(Lcom/taobao/weex/appfram/storage/WXStorageModule;Lcom/taobao/weex/bridge/JSCallback;)V

    invoke-interface {v0, p1, v1}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;->getItem(Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    return-void
.end method

.method public length(Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/WXStorageModule;->ability()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    move-result-object v0

    if-nez v0, :cond_a

    .line 3
    invoke-static {p1}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleNoHandlerError(Lcom/taobao/weex/bridge/JSCallback;)V

    return-void

    .line 6
    :cond_a
    new-instance v1, Lcom/taobao/weex/appfram/storage/WXStorageModule$4;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/appfram/storage/WXStorageModule$4;-><init>(Lcom/taobao/weex/appfram/storage/WXStorageModule;Lcom/taobao/weex/bridge/JSCallback;)V

    invoke-interface {v0, v1}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;->length(Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    return-void
.end method

.method public removeItem(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2
    invoke-static {p2}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleInvalidParam(Lcom/taobao/weex/bridge/JSCallback;)V

    return-void

    .line 6
    :cond_a
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/WXStorageModule;->ability()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    move-result-object v0

    if-nez v0, :cond_14

    .line 8
    invoke-static {p2}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleNoHandlerError(Lcom/taobao/weex/bridge/JSCallback;)V

    return-void

    .line 11
    :cond_14
    new-instance v1, Lcom/taobao/weex/appfram/storage/WXStorageModule$3;

    invoke-direct {v1, p0, p2}, Lcom/taobao/weex/appfram/storage/WXStorageModule$3;-><init>(Lcom/taobao/weex/appfram/storage/WXStorageModule;Lcom/taobao/weex/bridge/JSCallback;)V

    invoke-interface {v0, p1, v1}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;->removeItem(Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    return-void
.end method

.method public setItem(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 6
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    if-nez p2, :cond_9

    goto :goto_1c

    .line 6
    :cond_9
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/WXStorageModule;->ability()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    move-result-object v0

    if-nez v0, :cond_13

    .line 8
    invoke-static {p3}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleNoHandlerError(Lcom/taobao/weex/bridge/JSCallback;)V

    return-void

    .line 11
    :cond_13
    new-instance v1, Lcom/taobao/weex/appfram/storage/WXStorageModule$1;

    invoke-direct {v1, p0, p3}, Lcom/taobao/weex/appfram/storage/WXStorageModule$1;-><init>(Lcom/taobao/weex/appfram/storage/WXStorageModule;Lcom/taobao/weex/bridge/JSCallback;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;->setItem(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    return-void

    .line 12
    :cond_1c
    :goto_1c
    invoke-static {p3}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleInvalidParam(Lcom/taobao/weex/bridge/JSCallback;)V

    return-void
.end method

.method public setItemPersistent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 6
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    if-nez p2, :cond_9

    goto :goto_1c

    .line 6
    :cond_9
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/WXStorageModule;->ability()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    move-result-object v0

    if-nez v0, :cond_13

    .line 8
    invoke-static {p3}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleNoHandlerError(Lcom/taobao/weex/bridge/JSCallback;)V

    return-void

    .line 11
    :cond_13
    new-instance v1, Lcom/taobao/weex/appfram/storage/WXStorageModule$6;

    invoke-direct {v1, p0, p3}, Lcom/taobao/weex/appfram/storage/WXStorageModule$6;-><init>(Lcom/taobao/weex/appfram/storage/WXStorageModule;Lcom/taobao/weex/bridge/JSCallback;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;->setItemPersistent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    return-void

    .line 12
    :cond_1c
    :goto_1c
    invoke-static {p3}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleInvalidParam(Lcom/taobao/weex/bridge/JSCallback;)V

    return-void
.end method

###### Class com.taobao.weex.appfram.storage.WXStorageModule.AnonymousClass1 (com.taobao.weex.appfram.storage.WXStorageModule$1)
.class Lcom/taobao/weex/appfram/storage/WXStorageModule$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/storage/WXStorageModule;->setItem(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/storage/WXStorageModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/storage/WXStorageModule;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$1;->this$0:Lcom/taobao/weex/appfram/storage/WXStorageModule;

    iput-object p2, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

###### Class com.taobao.weex.appfram.storage.WXStorageModule.AnonymousClass2 (com.taobao.weex.appfram.storage.WXStorageModule$2)
.class Lcom/taobao/weex/appfram/storage/WXStorageModule$2;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/storage/WXStorageModule;->getItem(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/storage/WXStorageModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/storage/WXStorageModule;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$2;->this$0:Lcom/taobao/weex/appfram/storage/WXStorageModule;

    iput-object p2, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

###### Class com.taobao.weex.appfram.storage.WXStorageModule.AnonymousClass3 (com.taobao.weex.appfram.storage.WXStorageModule$3)
.class Lcom/taobao/weex/appfram/storage/WXStorageModule$3;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/storage/WXStorageModule;->removeItem(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/storage/WXStorageModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/storage/WXStorageModule;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$3;->this$0:Lcom/taobao/weex/appfram/storage/WXStorageModule;

    iput-object p2, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$3;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$3;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

###### Class com.taobao.weex.appfram.storage.WXStorageModule.AnonymousClass4 (com.taobao.weex.appfram.storage.WXStorageModule$4)
.class Lcom/taobao/weex/appfram/storage/WXStorageModule$4;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/storage/WXStorageModule;->length(Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/storage/WXStorageModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/storage/WXStorageModule;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$4;->this$0:Lcom/taobao/weex/appfram/storage/WXStorageModule;

    iput-object p2, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$4;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$4;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

###### Class com.taobao.weex.appfram.storage.WXStorageModule.AnonymousClass5 (com.taobao.weex.appfram.storage.WXStorageModule$5)
.class Lcom/taobao/weex/appfram/storage/WXStorageModule$5;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/storage/WXStorageModule;->getAllKeys(Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/storage/WXStorageModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/storage/WXStorageModule;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$5;->this$0:Lcom/taobao/weex/appfram/storage/WXStorageModule;

    iput-object p2, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$5;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$5;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

###### Class com.taobao.weex.appfram.storage.WXStorageModule.AnonymousClass6 (com.taobao.weex.appfram.storage.WXStorageModule$6)
.class Lcom/taobao/weex/appfram/storage/WXStorageModule$6;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/storage/WXStorageModule;->setItemPersistent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/storage/WXStorageModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/storage/WXStorageModule;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$6;->this$0:Lcom/taobao/weex/appfram/storage/WXStorageModule;

    iput-object p2, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$6;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$6;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method
