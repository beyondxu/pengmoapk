###### Class com.alibaba.android.bindingx.plugin.weex.WXExpressionBindingModule (com.alibaba.android.bindingx.plugin.weex.WXExpressionBindingModule)
.class public final Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;
.super Lcom/taobao/weex/WXSDKEngine$DestroyableModule;
.source "WXExpressionBindingModule.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mExpressionBindingCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

.field private mPlatformManager:Lcom/alibaba/android/bindingx/core/PlatformManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKEngine$DestroyableModule;-><init>()V

    return-void
.end method


# virtual methods
.method public createBinding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 19
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/taobao/weex/bridge/JSCallback;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0, v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->enableBinding(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p3

    .line 74
    invoke-static {v0, v1}, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;

    move-result-object v6

    .line 75
    iget-object v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mExpressionBindingCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    new-instance v9, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule$2;

    move-object/from16 v2, p5

    invoke-direct {v9, p0, v2}, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule$2;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;Lcom/taobao/weex/bridge/JSCallback;)V

    .line 91
    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-nez v2, :cond_19

    move-object v10, v0

    goto :goto_20

    :cond_19
    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v10, v2

    .line 92
    :goto_20
    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-nez v2, :cond_25

    goto :goto_2b

    :cond_25
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    :goto_2b
    move-object v11, v0

    const/4 v0, 0x0

    new-array v12, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object/from16 v7, p4

    .line 75
    invoke-virtual/range {v1 .. v12}, Lcom/alibaba/android/bindingx/core/BindingXCore;->doBind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;Ljava/util/List;Ljava/util/Map;Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method public destroy()V
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mExpressionBindingCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    if-eqz v0, :cond_a

    .line 114
    invoke-virtual {v0}, Lcom/alibaba/android/bindingx/core/BindingXCore;->doRelease()V

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mExpressionBindingCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    :cond_a
    return-void
.end method

.method public disableAll()V
    .registers 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mExpressionBindingCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    if-eqz v0, :cond_7

    .line 107
    invoke-virtual {v0}, Lcom/alibaba/android/bindingx/core/BindingXCore;->doRelease()V

    :cond_7
    return-void
.end method

.method public disableBinding(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mExpressionBindingCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    if-eqz v0, :cond_7

    .line 99
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/bindingx/core/BindingXCore;->doUnbind(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public enableBinding(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    iget-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mPlatformManager:Lcom/alibaba/android/bindingx/core/PlatformManager;

    if-nez p1, :cond_c

    .line 54
    iget-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {p1}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->createPlatformManager(Lcom/taobao/weex/WXSDKInstance;)Lcom/alibaba/android/bindingx/core/PlatformManager;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mPlatformManager:Lcom/alibaba/android/bindingx/core/PlatformManager;

    .line 56
    :cond_c
    iget-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mExpressionBindingCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    if-nez p1, :cond_23

    .line 57
    new-instance p1, Lcom/alibaba/android/bindingx/core/BindingXCore;

    iget-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mPlatformManager:Lcom/alibaba/android/bindingx/core/PlatformManager;

    invoke-direct {p1, p2}, Lcom/alibaba/android/bindingx/core/BindingXCore;-><init>(Lcom/alibaba/android/bindingx/core/PlatformManager;)V

    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mExpressionBindingCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    .line 58
    new-instance p2, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule$1;

    invoke-direct {p2, p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;)V

    const-string v0, "scroll"

    invoke-virtual {p1, v0, p2}, Lcom/alibaba/android/bindingx/core/BindingXCore;->registerEventHandler(Ljava/lang/String;Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator;)V

    :cond_23
    return-void
.end method

.method public onActivityPause()V
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mExpressionBindingCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    if-eqz v0, :cond_7

    .line 124
    invoke-virtual {v0}, Lcom/alibaba/android/bindingx/core/BindingXCore;->onActivityPause()V

    :cond_7
    return-void
.end method

.method public onActivityResume()V
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mExpressionBindingCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    if-eqz v0, :cond_7

    .line 131
    invoke-virtual {v0}, Lcom/alibaba/android/bindingx/core/BindingXCore;->onActivityResume()V

    :cond_7
    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXExpressionBindingModule.AnonymousClass1 (com.alibaba.android.bindingx.plugin.weex.WXExpressionBindingModule$1)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule$1;
.super Ljava/lang/Object;
.source "WXExpressionBindingModule.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->enableBinding(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator<",
        "Lcom/alibaba/android/bindingx/core/IEventHandler;",
        "Landroid/content/Context;",
        "Lcom/alibaba/android/bindingx/core/PlatformManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule$1;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs createWith(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)Lcom/alibaba/android/bindingx/core/IEventHandler;
    .registers 5

    .line 62
    new-instance v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;-><init>(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic createWith(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 59
    check-cast p1, Landroid/content/Context;

    check-cast p2, Lcom/alibaba/android/bindingx/core/PlatformManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule$1;->createWith(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)Lcom/alibaba/android/bindingx/core/IEventHandler;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXExpressionBindingModule.AnonymousClass2 (com.alibaba.android.bindingx.plugin.weex.WXExpressionBindingModule$2)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule$2;
.super Ljava/lang/Object;
.source "WXExpressionBindingModule.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->createBinding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3

    .line 83
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule$2;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/Object;)V
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_7

    .line 87
    invoke-interface {v0, p1}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method
