###### Class com.alibaba.fastjson.serializer.Labels (com.alibaba.fastjson.serializer.Labels)
.class public Lcom/alibaba/fastjson/serializer/Labels;
.super Ljava/lang/Object;
.source "Labels.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/serializer/Labels$DefaultLabelFilter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs excludes([Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/LabelFilter;
    .registers 3

    .line 58
    new-instance v0, Lcom/alibaba/fastjson/serializer/Labels$DefaultLabelFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson/serializer/Labels$DefaultLabelFilter;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs includes([Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/LabelFilter;
    .registers 3

    .line 54
    new-instance v0, Lcom/alibaba/fastjson/serializer/Labels$DefaultLabelFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson/serializer/Labels$DefaultLabelFilter;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

###### Class com.alibaba.fastjson.serializer.Labels.DefaultLabelFilter (com.alibaba.fastjson.serializer.Labels$DefaultLabelFilter)
.class Lcom/alibaba/fastjson/serializer/Labels$DefaultLabelFilter;
.super Ljava/lang/Object;
.source "Labels.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/LabelFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/serializer/Labels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultLabelFilter"
.end annotation


# instance fields
.field private excludes:[Ljava/lang/String;

.field private includes:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    .line 32
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/Labels$DefaultLabelFilter;->includes:[Ljava/lang/String;

    .line 33
    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/Labels$DefaultLabelFilter;->includes:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :cond_14
    if-eqz p2, :cond_24

    .line 37
    array-length p1, p2

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/Labels$DefaultLabelFilter;->excludes:[Ljava/lang/String;

    .line 38
    array-length v1, p2

    invoke-static {p2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/Labels$DefaultLabelFilter;->excludes:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :cond_24
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/String;)Z
    .registers 5

    .line 44
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/Labels$DefaultLabelFilter;->excludes:[Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    .line 45
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_d

    return v1

    :cond_d
    return v2

    .line 48
    :cond_e
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/Labels$DefaultLabelFilter;->includes:[Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 49
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_19

    return v1

    :cond_19
    return v2
.end method
