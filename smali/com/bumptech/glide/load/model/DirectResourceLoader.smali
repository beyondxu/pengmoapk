###### Class com.bumptech.glide.load.model.DirectResourceLoader (com.bumptech.glide.load.model.DirectResourceLoader)
.class public final Lcom/bumptech/glide/load/model/DirectResourceLoader;
.super Ljava/lang/Object;
.source "DirectResourceLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/DirectResourceLoader$InputStreamFactory;,
        Lcom/bumptech/glide/load/model/DirectResourceLoader$AssetFileDescriptorFactory;,
        Lcom/bumptech/glide/load/model/DirectResourceLoader$DrawableFactory;,
        Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener;,
        Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceDataFetcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader<",
        "Ljava/lang/Integer;",
        "TDataT;>;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final resourceOpener:Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener<",
            "TDataT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener<",
            "TDataT;>;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/model/DirectResourceLoader;->context:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/bumptech/glide/load/model/DirectResourceLoader;->resourceOpener:Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener;

    return-void
.end method

.method public static assetFileDescriptorFactory(Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
            "Ljava/lang/Integer;",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/bumptech/glide/load/model/DirectResourceLoader$AssetFileDescriptorFactory;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/model/DirectResourceLoader$AssetFileDescriptorFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static drawableFactory(Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/bumptech/glide/load/model/DirectResourceLoader$DrawableFactory;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/model/DirectResourceLoader$DrawableFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static inputStreamFactory(Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
            "Ljava/lang/Integer;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/bumptech/glide/load/model/DirectResourceLoader$InputStreamFactory;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/model/DirectResourceLoader$InputStreamFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public buildLoadData(Ljava/lang/Integer;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "TDataT;>;"
        }
    .end annotation

    .line 60
    sget-object p2, Lcom/bumptech/glide/load/resource/drawable/ResourceDrawableDecoder;->THEME:Lcom/bumptech/glide/load/Option;

    invoke-virtual {p4, p2}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/res/Resources$Theme;

    if-eqz p2, :cond_f

    .line 63
    invoke-virtual {p2}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    goto :goto_15

    .line 64
    :cond_f
    iget-object p3, p0, Lcom/bumptech/glide/load/model/DirectResourceLoader;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 65
    :goto_15
    new-instance p4, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    new-instance v0, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceDataFetcher;

    iget-object v2, p0, Lcom/bumptech/glide/load/model/DirectResourceLoader;->resourceOpener:Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener;

    .line 69
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v1, p2, p3, v2, p1}, Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceDataFetcher;-><init>(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener;I)V

    invoke-direct {p4, v0, v1}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    return-object p4
.end method

.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .registers 5

    .line 34
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/model/DirectResourceLoader;->buildLoadData(Ljava/lang/Integer;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object p1

    return-object p1
.end method

.method public handles(Ljava/lang/Integer;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .registers 2

    .line 34
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/model/DirectResourceLoader;->handles(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

###### Class com.bumptech.glide.load.model.DirectResourceLoader.AssetFileDescriptorFactory (com.bumptech.glide.load.model.DirectResourceLoader$AssetFileDescriptorFactory)
.class final Lcom/bumptech/glide/load/model/DirectResourceLoader$AssetFileDescriptorFactory;
.super Ljava/lang/Object;
.source "DirectResourceLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;
.implements Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/DirectResourceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AssetFileDescriptorFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
        "Ljava/lang/Integer;",
        "Landroid/content/res/AssetFileDescriptor;",
        ">;",
        "Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener<",
        "Landroid/content/res/AssetFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/bumptech/glide/load/model/DirectResourceLoader$AssetFileDescriptorFactory;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Ljava/lang/Integer;",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance p1, Lcom/bumptech/glide/load/model/DirectResourceLoader;

    iget-object v0, p0, Lcom/bumptech/glide/load/model/DirectResourceLoader$AssetFileDescriptorFactory;->context:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/bumptech/glide/load/model/DirectResourceLoader;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener;)V

    return-object p1
.end method

.method public close(Landroid/content/res/AssetFileDescriptor;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    return-void
.end method

.method public bridge synthetic close(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    check-cast p1, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/model/DirectResourceLoader$AssetFileDescriptorFactory;->close(Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 114
    const-class v0, Landroid/content/res/AssetFileDescriptor;

    return-object v0
.end method

.method public open(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)Landroid/content/res/AssetFileDescriptor;
    .registers 4

    .line 104
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic open(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)Ljava/lang/Object;
    .registers 4

    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/model/DirectResourceLoader$AssetFileDescriptorFactory;->open(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public teardown()V
    .registers 1

    return-void
.end method

###### Class com.bumptech.glide.load.model.DirectResourceLoader.DrawableFactory (com.bumptech.glide.load.model.DirectResourceLoader$DrawableFactory)
.class final Lcom/bumptech/glide/load/model/DirectResourceLoader$DrawableFactory;
.super Ljava/lang/Object;
.source "DirectResourceLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;
.implements Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/DirectResourceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DrawableFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
        "Ljava/lang/Integer;",
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/bumptech/glide/load/model/DirectResourceLoader$DrawableFactory;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance p1, Lcom/bumptech/glide/load/model/DirectResourceLoader;

    iget-object v0, p0, Lcom/bumptech/glide/load/model/DirectResourceLoader$DrawableFactory;->context:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/bumptech/glide/load/model/DirectResourceLoader;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener;)V

    return-object p1
.end method

.method public close(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic close(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/model/DirectResourceLoader$DrawableFactory;->close(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 189
    const-class v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public open(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 181
    iget-object p2, p0, Lcom/bumptech/glide/load/model/DirectResourceLoader$DrawableFactory;->context:Landroid/content/Context;

    invoke-static {p2, p3, p1}, Lcom/bumptech/glide/load/resource/drawable/DrawableDecoderCompat;->getDrawable(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic open(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)Ljava/lang/Object;
    .registers 4

    .line 168
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/model/DirectResourceLoader$DrawableFactory;->open(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public teardown()V
    .registers 1

    return-void
.end method

###### Class com.bumptech.glide.load.model.DirectResourceLoader.InputStreamFactory (com.bumptech.glide.load.model.DirectResourceLoader$InputStreamFactory)
.class final Lcom/bumptech/glide/load/model/DirectResourceLoader$InputStreamFactory;
.super Ljava/lang/Object;
.source "DirectResourceLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;
.implements Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/DirectResourceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputStreamFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
        "Ljava/lang/Integer;",
        "Ljava/io/InputStream;",
        ">;",
        "Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/bumptech/glide/load/model/DirectResourceLoader$InputStreamFactory;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Ljava/lang/Integer;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance p1, Lcom/bumptech/glide/load/model/DirectResourceLoader;

    iget-object v0, p0, Lcom/bumptech/glide/load/model/DirectResourceLoader$InputStreamFactory;->context:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/bumptech/glide/load/model/DirectResourceLoader;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener;)V

    return-object p1
.end method

.method public close(Ljava/io/InputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public bridge synthetic close(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/model/DirectResourceLoader$InputStreamFactory;->close(Ljava/io/InputStream;)V

    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 155
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public open(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)Ljava/io/InputStream;
    .registers 4

    .line 145
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic open(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)Ljava/lang/Object;
    .registers 4

    .line 128
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/model/DirectResourceLoader$InputStreamFactory;->open(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public teardown()V
    .registers 1

    return-void
.end method

###### Class com.bumptech.glide.load.model.DirectResourceLoader.ResourceDataFetcher (com.bumptech.glide.load.model.DirectResourceLoader$ResourceDataFetcher)
.class final Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceDataFetcher;
.super Ljava/lang/Object;
.source "DirectResourceLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/DirectResourceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourceDataFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher<",
        "TDataT;>;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataT;"
        }
    .end annotation
.end field

.field private final resourceId:I

.field private final resourceOpener:Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener<",
            "TDataT;>;"
        }
    .end annotation
.end field

.field private final resources:Landroid/content/res/Resources;

.field private final theme:Landroid/content/res/Resources$Theme;


# direct methods
.method constructor <init>(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources$Theme;",
            "Landroid/content/res/Resources;",
            "Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener<",
            "TDataT;>;I)V"
        }
    .end annotation

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceDataFetcher;->theme:Landroid/content/res/Resources$Theme;

    .line 216
    iput-object p2, p0, Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceDataFetcher;->resources:Landroid/content/res/Resources;

    .line 217
    iput-object p3, p0, Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceDataFetcher;->resourceOpener:Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener;

    .line 218
    iput p4, p0, Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceDataFetcher;->resourceId:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    return-void
.end method

.method public cleanup()V
    .registers 3

    .line 234
    iget-object v0, p0, Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceDataFetcher;->data:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 237
    :try_start_4
    iget-object v1, p0, Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceDataFetcher;->resourceOpener:Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener;->close(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_9

    :catch_9
    :cond_9
    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TDataT;>;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceDataFetcher;->resourceOpener:Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener;

    invoke-interface {v0}, Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .registers 2

    .line 256
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
            "-TDataT;>;)V"
        }
    .end annotation

    .line 225
    :try_start_0
    iget-object p1, p0, Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceDataFetcher;->resourceOpener:Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener;

    iget-object v0, p0, Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceDataFetcher;->theme:Landroid/content/res/Resources$Theme;

    iget-object v1, p0, Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceDataFetcher;->resources:Landroid/content/res/Resources;

    iget v2, p0, Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceDataFetcher;->resourceId:I

    invoke-interface {p1, v0, v1, v2}, Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener;->open(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceDataFetcher;->data:Ljava/lang/Object;

    .line 226
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p1

    .line 228
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.bumptech.glide.load.model.DirectResourceLoader.ResourceOpener (com.bumptech.glide.load.model.DirectResourceLoader$ResourceOpener)
.class interface abstract Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener;
.super Ljava/lang/Object;
.source "DirectResourceLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/DirectResourceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ResourceOpener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract close(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getDataClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TDataT;>;"
        }
    .end annotation
.end method

.method public abstract open(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources$Theme;",
            "Landroid/content/res/Resources;",
            "I)TDataT;"
        }
    .end annotation
.end method
