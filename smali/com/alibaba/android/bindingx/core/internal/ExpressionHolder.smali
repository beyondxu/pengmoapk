###### Class com.alibaba.android.bindingx.core.internal.ExpressionHolder (com.alibaba.android.bindingx.core.internal.ExpressionHolder)
.class final Lcom/alibaba/android/bindingx/core/internal/ExpressionHolder;
.super Ljava/lang/Object;
.source "ExpressionHolder.java"


# instance fields
.field config:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field eventType:Ljava/lang/String;

.field expressionPair:Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;

.field prop:Ljava/lang/String;

.field targetInstanceId:Ljava/lang/String;

.field targetRef:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionHolder;->targetRef:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionHolder;->targetInstanceId:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionHolder;->expressionPair:Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;

    .line 37
    iput-object p4, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionHolder;->prop:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionHolder;->eventType:Ljava/lang/String;

    if-nez p6, :cond_14

    .line 40
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionHolder;->config:Ljava/util/Map;

    return-void

    .line 42
    :cond_14
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionHolder;->config:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_6a

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_6a

    .line 51
    :cond_12
    check-cast p1, Lcom/alibaba/android/bindingx/core/internal/ExpressionHolder;

    .line 53
    iget-object v2, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionHolder;->targetRef:Ljava/lang/String;

    if-eqz v2, :cond_21

    iget-object v3, p1, Lcom/alibaba/android/bindingx/core/internal/ExpressionHolder;->targetRef:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_25

    :cond_21
    iget-object v2, p1, Lcom/alibaba/android/bindingx/core/internal/ExpressionHolder;->targetRef:Ljava/lang/String;

    if-eqz v2, :cond_26

    :goto_25
    return v1

    .line 55
    :cond_26
    iget-object v2, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionHolder;->expressionPair:Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;

    if-eqz v2, :cond_33

    iget-object v3, p1, Lcom/alibaba/android/bindingx/core/internal/ExpressionHolder;->expressionPair:Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    goto :goto_37

    :cond_33
    iget-object v2, p1, Lcom/alibaba/android/bindingx/core/internal/ExpressionHolder;->expressionPair:Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;

    if-eqz v2, :cond_38

    :goto_37
    return v1

    .line 57
    :cond_38
    iget-object v2, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionHolder;->prop:Ljava/lang/String;

    if-eqz v2, :cond_45

    iget-object v3, p1, Lcom/alibaba/android/bindingx/core/internal/ExpressionHolder;->prop:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    goto :goto_49

    :cond_45
    iget-object v2, p1, Lcom/alibaba/android/bindingx/core/internal/ExpressionHolder;->prop:Ljava/lang/String;

    if-eqz v2, :cond_4a

    :goto_49
    return v1

    .line 58
    :cond_4a
    iget-object v2, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionHolder;->eventType:Ljava/lang/String;

    if-eqz v2, :cond_57

    iget-object v3, p1, Lcom/alibaba/android/bindingx/core/internal/ExpressionHolder;->eventType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    goto :goto_5b

    :cond_57
    iget-object v2, p1, Lcom/alibaba/android/bindingx/core/internal/ExpressionHolder;->eventType:Ljava/lang/String;

    if-eqz v2, :cond_5c

    :goto_5b
    return v1

    .line 60
    :cond_5c
    iget-object v2, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionHolder;->config:Ljava/util/Map;

    iget-object p1, p1, Lcom/alibaba/android/bindingx/core/internal/ExpressionHolder;->config:Ljava/util/Map;

    if-eqz v2, :cond_67

    invoke-interface {v2, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_67
    if-nez p1, :cond_6a

    return v0

    :cond_6a
    :goto_6a
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 66
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionHolder;->targetRef:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    .line 67
    iget-object v2, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionHolder;->expressionPair:Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 68
    iget-object v2, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionHolder;->prop:Ljava/lang/String;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget-object v2, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionHolder;->eventType:Ljava/lang/String;

    if-eqz v2, :cond_30

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 70
    iget-object v2, p0, Lcom/alibaba/android/bindingx/core/internal/ExpressionHolder;->config:Ljava/util/Map;

    if-eqz v2, :cond_3c

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v1

    :cond_3c
    add-int/2addr v0, v1

    return v0
.end method
