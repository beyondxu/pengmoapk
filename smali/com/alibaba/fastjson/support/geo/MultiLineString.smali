###### Class com.alibaba.fastjson.support.geo.MultiLineString (com.alibaba.fastjson.support.geo.MultiLineString)
.class public Lcom/alibaba/fastjson/support/geo/MultiLineString;
.super Lcom/alibaba/fastjson/support/geo/Geometry;
.source "MultiLineString.java"


# annotations
.annotation runtime Lcom/alibaba/fastjson/annotation/JSONType;
    orders = {
        "type",
        "bbox",
        "coordinates"
    }
    typeName = "MultiLineString"
.end annotation


# instance fields
.field private coordinates:[[[D


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    const-string v0, "MultiLineString"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/support/geo/Geometry;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCoordinates()[[[D
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/alibaba/fastjson/support/geo/MultiLineString;->coordinates:[[[D

    return-object v0
.end method

.method public setCoordinates([[[D)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/alibaba/fastjson/support/geo/MultiLineString;->coordinates:[[[D

    return-void
.end method
