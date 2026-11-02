###### Class com.alibaba.fastjson.support.geo.Feature (com.alibaba.fastjson.support.geo.Feature)
.class public Lcom/alibaba/fastjson/support/geo/Feature;
.super Lcom/alibaba/fastjson/support/geo/Geometry;
.source "Feature.java"


# annotations
.annotation runtime Lcom/alibaba/fastjson/annotation/JSONType;
    orders = {
        "type",
        "id",
        "bbox",
        "coordinates",
        "properties"
    }
    typeName = "Feature"
.end annotation


# instance fields
.field private geometry:Lcom/alibaba/fastjson/support/geo/Geometry;

.field private id:Ljava/lang/String;

.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    const-string v0, "Feature"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/support/geo/Geometry;-><init>(Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/support/geo/Feature;->properties:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getGeometry()Lcom/alibaba/fastjson/support/geo/Geometry;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/alibaba/fastjson/support/geo/Feature;->geometry:Lcom/alibaba/fastjson/support/geo/Geometry;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/alibaba/fastjson/support/geo/Feature;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/alibaba/fastjson/support/geo/Feature;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public setGeometry(Lcom/alibaba/fastjson/support/geo/Geometry;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/alibaba/fastjson/support/geo/Feature;->geometry:Lcom/alibaba/fastjson/support/geo/Geometry;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/alibaba/fastjson/support/geo/Feature;->id:Ljava/lang/String;

    return-void
.end method

.method public setProperties(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/alibaba/fastjson/support/geo/Feature;->properties:Ljava/util/Map;

    return-void
.end method
