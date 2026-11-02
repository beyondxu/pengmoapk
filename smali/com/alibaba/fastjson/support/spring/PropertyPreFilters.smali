###### Class com.alibaba.fastjson.support.spring.PropertyPreFilters (com.alibaba.fastjson.support.spring.PropertyPreFilters)
.class public Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;
.super Ljava/lang/Object;
.source "PropertyPreFilters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;
    }
.end annotation


# instance fields
.field private filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;->filters:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addFilter()Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;
    .registers 3

    .line 18
    new-instance v0, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;-><init>(Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;)V

    .line 19
    iget-object v1, p0, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;->filters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public varargs addFilter(Ljava/lang/Class;[Ljava/lang/String;)Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;-><init>(Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;Ljava/lang/Class;[Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;->filters:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public varargs addFilter([Ljava/lang/String;)Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;
    .registers 3

    .line 24
    new-instance v0, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;-><init>(Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;[Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;->filters:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getFilters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;->filters:Ljava/util/List;

    return-object v0
.end method

.method public setFilters(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;->filters:Ljava/util/List;

    return-void
.end method

.method public toFilters()[Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;->filters:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;

    return-object v0
.end method

###### Class com.alibaba.fastjson.support.spring.PropertyPreFilters.MySimplePropertyPreFilter (com.alibaba.fastjson.support.spring.PropertyPreFilters$MySimplePropertyPreFilter)
.class public Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;
.super Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;
.source "PropertyPreFilters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MySimplePropertyPreFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;->this$0:Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>(Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;Ljava/lang/Class;[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;->this$0:Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;

    .line 56
    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>(Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;[Ljava/lang/String;)V
    .registers 3

    .line 51
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;->this$0:Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;

    .line 52
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs addExcludes([Ljava/lang/String;)Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;
    .registers 5

    const/4 v0, 0x0

    .line 60
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_10

    .line 61
    invoke-virtual {p0}, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;->getExcludes()Ljava/util/Set;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-object p0
.end method

.method public varargs addIncludes([Ljava/lang/String;)Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;
    .registers 5

    const/4 v0, 0x0

    .line 67
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_10

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;->getIncludes()Ljava/util/Set;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-object p0
.end method
