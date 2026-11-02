###### Class com.bumptech.glide.GeneratedAppGlideModuleImpl (com.bumptech.glide.GeneratedAppGlideModuleImpl)
.class final Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;
.super Lcom/bumptech/glide/GeneratedAppGlideModule;
.source "GeneratedAppGlideModuleImpl.java"


# instance fields
.field private final appGlideModule:Lio/dcloud/glide/DCloudGlideModule;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 14
    invoke-direct {p0}, Lcom/bumptech/glide/GeneratedAppGlideModule;-><init>()V

    .line 15
    new-instance p1, Lio/dcloud/glide/DCloudGlideModule;

    invoke-direct {p1}, Lio/dcloud/glide/DCloudGlideModule;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->appGlideModule:Lio/dcloud/glide/DCloudGlideModule;

    const/4 p1, 0x3

    .line 16
    const-string v0, "Glide"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 17
    const-string p1, "Discovered AppGlideModule from annotation: io.dcloud.glide.DCloudGlideModule"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return-void
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .registers 4

    .line 23
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->appGlideModule:Lio/dcloud/glide/DCloudGlideModule;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/glide/DCloudGlideModule;->applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V

    return-void
.end method

.method public getExcludedModuleClasses()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 40
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method getRequestManagerFactory()Lcom/bumptech/glide/GeneratedRequestManagerFactory;
    .registers 2

    .line 46
    new-instance v0, Lcom/bumptech/glide/GeneratedRequestManagerFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/GeneratedRequestManagerFactory;-><init>()V

    return-object v0
.end method

.method bridge synthetic getRequestManagerFactory()Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;
    .registers 2

    .line 10
    invoke-virtual {p0}, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->getRequestManagerFactory()Lcom/bumptech/glide/GeneratedRequestManagerFactory;

    move-result-object v0

    return-object v0
.end method

.method public isManifestParsingEnabled()Z
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->appGlideModule:Lio/dcloud/glide/DCloudGlideModule;

    invoke-virtual {v0}, Lio/dcloud/glide/DCloudGlideModule;->isManifestParsingEnabled()Z

    move-result v0

    return v0
.end method

.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .registers 5

    .line 29
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->appGlideModule:Lio/dcloud/glide/DCloudGlideModule;

    invoke-virtual {v0, p1, p2, p3}, Lio/dcloud/glide/DCloudGlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    return-void
.end method
