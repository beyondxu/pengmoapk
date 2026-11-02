###### Class androidx.activity.result.ActivityResult (androidx.activity.result.ActivityResult)
.class public final Landroidx/activity/result/ActivityResult;
.super Ljava/lang/Object;
.source "ActivityResult.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/result/ActivityResult$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u000f\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u000e\u001a\u00020\u0006H\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0006H\u0016R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/activity/result/ActivityResult;",
        "Landroid/os/Parcelable;",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "resultCode",
        "",
        "data",
        "Landroid/content/Intent;",
        "(ILandroid/content/Intent;)V",
        "getData",
        "()Landroid/content/Intent;",
        "getResultCode",
        "()I",
        "describeContents",
        "toString",
        "",
        "writeToParcel",
        "",
        "dest",
        "flags",
        "Companion",
        "activity_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/activity/result/ActivityResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Landroidx/activity/result/ActivityResult$Companion;


# instance fields
.field private final data:Landroid/content/Intent;

.field private final resultCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/activity/result/ActivityResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/activity/result/ActivityResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/activity/result/ActivityResult;->Companion:Landroidx/activity/result/ActivityResult$Companion;

    .line 76
    new-instance v0, Landroidx/activity/result/ActivityResult$Companion$CREATOR$1;

    invoke-direct {v0}, Landroidx/activity/result/ActivityResult$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Landroidx/activity/result/ActivityResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Intent;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 39
    iput-object p2, p0, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_11

    const/4 p1, 0x0

    goto :goto_19

    :cond_11
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 42
    :goto_19
    invoke-direct {p0, v0, p1}, Landroidx/activity/result/ActivityResult;-><init>(ILandroid/content/Intent;)V

    return-void
.end method

.method public static final resultCodeToString(I)Ljava/lang/String;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/activity/result/ActivityResult;->Companion:Landroidx/activity/result/ActivityResult$Companion;

    invoke-virtual {v0, p0}, Landroidx/activity/result/ActivityResult$Companion;->resultCodeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getData()Landroid/content/Intent;
    .registers 2

    .line 39
    iget-object v0, p0, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    return-object v0
.end method

.method public final getResultCode()I
    .registers 2

    .line 34
    iget v0, p0, Landroidx/activity/result/ActivityResult;->resultCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActivityResult{resultCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroidx/activity/result/ActivityResult;->Companion:Landroidx/activity/result/ActivityResult$Companion;

    iget v2, p0, Landroidx/activity/result/ActivityResult;->resultCode:I

    invoke-virtual {v1, v2}, Landroidx/activity/result/ActivityResult$Companion;->resultCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget v0, p0, Landroidx/activity/result/ActivityResult;->resultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-object v0, p0, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-object v0, p0, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    if-eqz v0, :cond_1b

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_1b
    return-void
.end method

###### Class androidx.activity.result.ActivityResult.Companion (androidx.activity.result.ActivityResult$Companion)
.class public final Landroidx/activity/result/ActivityResult$Companion;
.super Ljava/lang/Object;
.source "ActivityResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/ActivityResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007R\u001c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0006\u0010\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/activity/result/ActivityResult$Companion;",
        "",
        "()V",
        "CREATOR",
        "Landroid/os/Parcelable$Creator;",
        "Landroidx/activity/result/ActivityResult;",
        "getCREATOR$annotations",
        "resultCodeToString",
        "",
        "resultCode",
        "",
        "activity_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Landroidx/activity/result/ActivityResult$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getCREATOR$annotations()V
    .registers 0

    return-void
.end method


# virtual methods
.method public final resultCodeToString(I)Ljava/lang/String;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_d

    if-eqz p1, :cond_a

    .line 70
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 69
    :cond_a
    const-string p1, "RESULT_CANCELED"

    return-object p1

    .line 68
    :cond_d
    const-string p1, "RESULT_OK"

    return-object p1
.end method

###### Class androidx.activity.result.ActivityResult$Companion$CREATOR$1 (androidx.activity.result.ActivityResult$Companion$CREATOR$1)
.class public final Landroidx/activity/result/ActivityResult$Companion$CREATOR$1;
.super Ljava/lang/Object;
.source "ActivityResult.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/ActivityResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/activity/result/ActivityResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001d\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "androidx/activity/result/ActivityResult$Companion$CREATOR$1",
        "Landroid/os/Parcelable$Creator;",
        "Landroidx/activity/result/ActivityResult;",
        "createFromParcel",
        "parcel",
        "Landroid/os/Parcel;",
        "newArray",
        "",
        "size",
        "",
        "(I)[Landroidx/activity/result/ActivityResult;",
        "activity_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/activity/result/ActivityResult;
    .registers 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance v0, Landroidx/activity/result/ActivityResult;

    invoke-direct {v0, p1}, Landroidx/activity/result/ActivityResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 76
    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResult$Companion$CREATOR$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/activity/result/ActivityResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/activity/result/ActivityResult;
    .registers 2

    .line 79
    new-array p1, p1, [Landroidx/activity/result/ActivityResult;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 76
    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResult$Companion$CREATOR$1;->newArray(I)[Landroidx/activity/result/ActivityResult;

    move-result-object p1

    return-object p1
.end method
