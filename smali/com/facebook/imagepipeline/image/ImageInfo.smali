###### Class com.facebook.imagepipeline.image.ImageInfo (com.facebook.imagepipeline.image.ImageInfo)
.class public interface abstract Lcom/facebook/imagepipeline/image/ImageInfo;
.super Ljava/lang/Object;
.source "ImageInfo.java"

# interfaces
.implements Lcom/facebook/imagepipeline/image/HasImageMetadata;


# virtual methods
.method public abstract getHeight()I
.end method

.method public abstract getQualityInfo()Lcom/facebook/imagepipeline/image/QualityInfo;
.end method

.method public abstract getSizeInBytes()I
.end method

.method public abstract getWidth()I
.end method

###### Class com.facebook.imagepipeline.image.ImageInfo.CC (com.facebook.imagepipeline.image.ImageInfo$-CC)
.class public final synthetic Lcom/facebook/imagepipeline/image/ImageInfo$-CC;
.super Ljava/lang/Object;
.source "ImageInfo.java"


# direct methods
.method public static $default$getSizeInBytes(Lcom/facebook/imagepipeline/image/ImageInfo;)I
    .registers 2
    .param p0, "_this"    # Lcom/facebook/imagepipeline/image/ImageInfo;

    .line 0
    const/4 v0, 0x0

    return v0
.end method
