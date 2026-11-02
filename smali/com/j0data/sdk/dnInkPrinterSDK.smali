###### Class com.j0data.sdk.dnInkPrinterSDK (com.j0data.sdk.dnInkPrinterSDK)
.class public Lcom/j0data/sdk/dnInkPrinterSDK;
.super Ljava/lang/Object;
.source "dnInkPrinterSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j0data/sdk/dnInkPrinterSDK$PrintTimes;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const-string v0, "dnInkPrinter"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native img2PrintData(Ljava/lang/String;Ljava/lang/String;IIII)I
.end method

.method public native memImageToPrintData([BIIII)[B
.end method

###### Class com.j0data.sdk.dnInkPrinterSDK.PrintTimes (com.j0data.sdk.dnInkPrinterSDK$PrintTimes)
.class public final Lcom/j0data/sdk/dnInkPrinterSDK$PrintTimes;
.super Ljava/lang/Object;
.source "dnInkPrinterSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j0data/sdk/dnInkPrinterSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrintTimes"
.end annotation


# static fields
.field public static final FOUR:I = 0x4

.field public static final ONCE:I = 0x1

.field public static final TWICE:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
