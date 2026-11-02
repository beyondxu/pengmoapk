###### Class com.bumptech.glide.load.model.stream.HttpUriLoader (com.bumptech.glide.load.model.stream.HttpUriLoader)
.class public Lcom/bumptech/glide/load/model/stream/HttpUriLoader;
.super Lcom/bumptech/glide/load/model/UrlUriLoader;
.source "HttpUriLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/stream/HttpUriLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/model/UrlUriLoader<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/model/ModelLoader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/model/UrlUriLoader;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;)V

    return-void
.end method

###### Class com.bumptech.glide.load.model.stream.HttpUriLoader.Factory (com.bumptech.glide.load.model.stream.HttpUriLoader$Factory)
.class public Lcom/bumptech/glide/load/model/stream/HttpUriLoader$Factory;
.super Lcom/bumptech/glide/load/model/UrlUriLoader$StreamFactory;
.source "HttpUriLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/stream/HttpUriLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/bumptech/glide/load/model/UrlUriLoader$StreamFactory;-><init>()V

    return-void
.end method
