###### Class androidx.webkit.TracingConfig (androidx.webkit.TracingConfig)
.class public Landroidx/webkit/TracingConfig;
.super Ljava/lang/Object;
.source "TracingConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/TracingConfig$Builder;,
        Landroidx/webkit/TracingConfig$TracingMode;,
        Landroidx/webkit/TracingConfig$PredefinedCategories;
    }
.end annotation


# static fields
.field public static final CATEGORIES_ALL:I = 0x1

.field public static final CATEGORIES_ANDROID_WEBVIEW:I = 0x2

.field public static final CATEGORIES_FRAME_VIEWER:I = 0x40

.field public static final CATEGORIES_INPUT_LATENCY:I = 0x8

.field public static final CATEGORIES_JAVASCRIPT_AND_RENDERING:I = 0x20

.field public static final CATEGORIES_NONE:I = 0x0

.field public static final CATEGORIES_RENDERING:I = 0x10

.field public static final CATEGORIES_WEB_DEVELOPER:I = 0x4

.field public static final RECORD_CONTINUOUSLY:I = 0x1

.field public static final RECORD_UNTIL_FULL:I


# instance fields
.field private final mCustomIncludedCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPredefinedCategories:I

.field private mTracingMode:I


# direct methods
.method public constructor <init>(ILjava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/webkit/TracingConfig;->mCustomIncludedCategories:Ljava/util/List;

    .line 131
    iput p1, p0, Landroidx/webkit/TracingConfig;->mPredefinedCategories:I

    .line 132
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 133
    iput p3, p0, Landroidx/webkit/TracingConfig;->mTracingMode:I

    return-void
.end method


# virtual methods
.method public getCustomIncludedCategories()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Landroidx/webkit/TracingConfig;->mCustomIncludedCategories:Ljava/util/List;

    return-object v0
.end method

.method public getPredefinedCategories()I
    .registers 2

    .line 143
    iget v0, p0, Landroidx/webkit/TracingConfig;->mPredefinedCategories:I

    return v0
.end method

.method public getTracingMode()I
    .registers 2

    .line 163
    iget v0, p0, Landroidx/webkit/TracingConfig;->mTracingMode:I

    return v0
.end method

###### Class androidx.webkit.TracingConfig.Builder (androidx.webkit.TracingConfig$Builder)
.class public Landroidx/webkit/TracingConfig$Builder;
.super Ljava/lang/Object;
.source "TracingConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/TracingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mCustomIncludedCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPredefinedCategories:I

.field private mTracingMode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 201
    iput v0, p0, Landroidx/webkit/TracingConfig$Builder;->mPredefinedCategories:I

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/webkit/TracingConfig$Builder;->mCustomIncludedCategories:Ljava/util/List;

    const/4 v0, 0x1

    .line 203
    iput v0, p0, Landroidx/webkit/TracingConfig$Builder;->mTracingMode:I

    return-void
.end method


# virtual methods
.method public addCategories(Ljava/util/Collection;)Landroidx/webkit/TracingConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/webkit/TracingConfig$Builder;"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Landroidx/webkit/TracingConfig$Builder;->mCustomIncludedCategories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs addCategories([I)Landroidx/webkit/TracingConfig$Builder;
    .registers 6

    .line 240
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget v2, p1, v1

    .line 241
    iget v3, p0, Landroidx/webkit/TracingConfig$Builder;->mPredefinedCategories:I

    or-int/2addr v2, v3

    iput v2, p0, Landroidx/webkit/TracingConfig$Builder;->mPredefinedCategories:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return-object p0
.end method

.method public varargs addCategories([Ljava/lang/String;)Landroidx/webkit/TracingConfig$Builder;
    .registers 3

    .line 260
    iget-object v0, p0, Landroidx/webkit/TracingConfig$Builder;->mCustomIncludedCategories:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public build()Landroidx/webkit/TracingConfig;
    .registers 5

    .line 218
    new-instance v0, Landroidx/webkit/TracingConfig;

    iget v1, p0, Landroidx/webkit/TracingConfig$Builder;->mPredefinedCategories:I

    iget-object v2, p0, Landroidx/webkit/TracingConfig$Builder;->mCustomIncludedCategories:Ljava/util/List;

    iget v3, p0, Landroidx/webkit/TracingConfig$Builder;->mTracingMode:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/webkit/TracingConfig;-><init>(ILjava/util/List;I)V

    return-object v0
.end method

.method public setTracingMode(I)Landroidx/webkit/TracingConfig$Builder;
    .registers 2

    .line 290
    iput p1, p0, Landroidx/webkit/TracingConfig$Builder;->mTracingMode:I

    return-object p0
.end method

###### Class androidx.webkit.TracingConfig.PredefinedCategories (androidx.webkit.TracingConfig$PredefinedCategories)
.class public interface abstract annotation Landroidx/webkit/TracingConfig$PredefinedCategories;
.super Ljava/lang/Object;
.source "TracingConfig.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/TracingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "PredefinedCategories"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class androidx.webkit.TracingConfig.TracingMode (androidx.webkit.TracingConfig$TracingMode)
.class public interface abstract annotation Landroidx/webkit/TracingConfig$TracingMode;
.super Ljava/lang/Object;
.source "TracingConfig.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/TracingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "TracingMode"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
