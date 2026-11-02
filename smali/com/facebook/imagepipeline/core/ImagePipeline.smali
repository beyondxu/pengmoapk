###### Class com.facebook.imagepipeline.core.ImagePipeline (com.facebook.imagepipeline.core.ImagePipeline)
.class public final Lcom/facebook/imagepipeline/core/ImagePipeline;
.super Ljava/lang/Object;
.source "ImagePipeline.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/core/ImagePipeline$Companion;,
        Lcom/facebook/imagepipeline/core/ImagePipeline$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImagePipeline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImagePipeline.kt\ncom/facebook/imagepipeline/core/ImagePipeline\n+ 2 FrescoSystrace.kt\ncom/facebook/imagepipeline/systrace/FrescoSystrace\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1154:1\n40#2,9:1155\n40#2,9:1164\n40#2,9:1180\n40#2,9:1189\n40#2,9:1198\n40#2,9:1207\n216#3,2:1173\n216#3,2:1175\n216#3,2:1178\n1#4:1177\n*S KotlinDebug\n*F\n+ 1 ImagePipeline.kt\ncom/facebook/imagepipeline/core/ImagePipeline\n*L\n418#1:1155,9\n550#1:1164,9\n902#1:1180,9\n967#1:1189,9\n1005#1:1198,9\n1039#1:1207,9\n610#1:1173,2\n638#1:1175,2\n768#1:1178,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ea\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 u2\u00020\u0001:\u0001uB\u00b1\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005\u0012\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0005\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r\u0012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00110\r\u0012\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\n\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\u0006\u0010\u001c\u001a\u00020\u001d\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0006\u0010.\u001a\u00020/J4\u00100\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f02010\n2\u0006\u00103\u001a\u0002042\u0008\u00105\u001a\u0004\u0018\u00010\u00012\u0008\u00106\u001a\u0004\u0018\u000107J>\u00100\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f02010\n2\u0006\u00103\u001a\u0002042\u0008\u00105\u001a\u0004\u0018\u00010\u00012\u0008\u00106\u001a\u0004\u0018\u0001072\u0008\u0010\"\u001a\u0004\u0018\u00010\u0006JH\u00100\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f02010\n2\u0006\u00103\u001a\u0002042\u0008\u00105\u001a\u0004\u0018\u00010\u00012\u0008\u00106\u001a\u0004\u0018\u0001072\u0008\u0010\"\u001a\u0004\u0018\u00010\u00062\u0008\u00108\u001a\u0004\u0018\u00010/J*\u00109\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001102010\n2\u0006\u00103\u001a\u0002042\u0008\u00105\u001a\u0004\u0018\u00010\u0001J$\u0010:\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f02012\u0006\u00103\u001a\u0002042\u0008\u00105\u001a\u0004\u0018\u00010\u0001JJ\u0010;\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f02012\u0008\u00103\u001a\u0004\u0018\u0001042\u0008\u00105\u001a\u0004\u0018\u00010\u00012\n\u0008\u0002\u0010<\u001a\u0004\u0018\u0001072\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u00108\u001a\u0004\u0018\u00010/J&\u0010;\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f02012\u0008\u00103\u001a\u0004\u0018\u0001042\u0008\u00105\u001a\u0004\u0018\u00010\u0001J.\u0010;\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f02012\u0008\u00103\u001a\u0004\u0018\u0001042\u0008\u00105\u001a\u0004\u0018\u00010\u00012\u0006\u0010\"\u001a\u00020\u0006J.\u0010;\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f02012\u0008\u00103\u001a\u0004\u0018\u0001042\u0008\u00105\u001a\u0004\u0018\u00010\u00012\u0006\u0010<\u001a\u000207JV\u0010;\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f02012\u0008\u00103\u001a\u0004\u0018\u0001042\u0008\u00105\u001a\u0004\u0018\u00010\u00012\u0006\u0010<\u001a\u0002072\u0008\u0010\"\u001a\u0004\u0018\u00010\u00062\u0008\u00108\u001a\u0004\u0018\u00010/2\u0012\u0010=\u001a\u000e\u0012\u0004\u0012\u00020/\u0012\u0002\u0008\u0003\u0018\u00010>J$\u0010?\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001102012\u0006\u00103\u001a\u0002042\u0008\u00105\u001a\u0004\u0018\u00010\u0001J.\u0010?\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001102012\u0006\u00103\u001a\u0002042\u0008\u00105\u001a\u0004\u0018\u00010\u00012\u0008\u0010\"\u001a\u0004\u0018\u00010\u0006J$\u0010@\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010A012\u0008\u00103\u001a\u0004\u0018\u0001042\u0008\u00105\u001a\u0004\u0018\u00010\u0001H\u0007J.\u0010@\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010A012\u0008\u00103\u001a\u0004\u0018\u0001042\u0008\u00105\u001a\u0004\u0018\u00010\u00012\u0008\u0010\"\u001a\u0004\u0018\u00010\u0006H\u0007J,\u0010B\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010A012\u0008\u00103\u001a\u0004\u0018\u0001042\u0008\u00105\u001a\u0004\u0018\u00010\u00012\u0008\u0010\"\u001a\u0004\u0018\u00010\u0006J\"\u0010B\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010A012\u0008\u00103\u001a\u0004\u0018\u0001042\u0008\u00105\u001a\u0004\u0018\u00010\u0001J*\u0010B\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010A012\u0008\u00103\u001a\u0004\u0018\u0001042\u0008\u00105\u001a\u0004\u0018\u00010\u00012\u0006\u0010C\u001a\u00020DJ6\u0010B\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010A012\u0008\u00103\u001a\u0004\u0018\u0001042\u0008\u00105\u001a\u0004\u0018\u00010\u00012\u0006\u0010C\u001a\u00020D2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0006H\u0007J,\u0010E\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010A012\u0008\u00103\u001a\u0004\u0018\u0001042\u0008\u00105\u001a\u0004\u0018\u00010\u00012\u0008\u0010\"\u001a\u0004\u0018\u00010\u0006J:\u0010E\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010A012\u0008\u00103\u001a\u0004\u0018\u0001042\u0008\u00105\u001a\u0004\u0018\u00010\u00012\u0008\u0008\u0002\u0010C\u001a\u00020D2\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u0006H\u0007J\u000e\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u00020IJ\u0010\u0010J\u001a\u00020G2\u0008\u0010H\u001a\u0004\u0018\u00010IJ\u0010\u0010J\u001a\u00020G2\u0008\u00103\u001a\u0004\u0018\u000104J\u000e\u0010K\u001a\u00020G2\u0006\u0010H\u001a\u00020IJ\u0006\u0010L\u001a\u00020GJ\u0006\u0010M\u001a\u00020GJ\u0006\u0010R\u001a\u00020GJ\u0010\u0010S\u001a\u00020\u000b2\u0008\u0010H\u001a\u0004\u0018\u00010IJ\u0010\u0010S\u001a\u00020\u000b2\u0008\u00103\u001a\u0004\u0018\u000104J\u0010\u0010T\u001a\u00020\u000b2\u0008\u0010H\u001a\u0004\u0018\u00010IJ\u0010\u0010T\u001a\u00020\u000b2\u0008\u00103\u001a\u0004\u0018\u000104J\u0010\u0010U\u001a\u00020\u000b2\u0008\u0010H\u001a\u0004\u0018\u00010IJ\u001a\u0010U\u001a\u00020\u000b2\u0008\u0010H\u001a\u0004\u0018\u00010I2\u0008\u0010V\u001a\u0004\u0018\u00010WJ\u0010\u0010X\u001a\u00020\u000b2\u0006\u00103\u001a\u000204H\u0002J\u000e\u0010U\u001a\u00020\u000b2\u0006\u00103\u001a\u000204J\u0016\u0010Y\u001a\u0008\u0012\u0004\u0012\u00020\u000b012\u0008\u0010H\u001a\u0004\u0018\u00010IJ<\u0010Z\u001a\u0008\u0012\u0004\u0012\u00020\u000b0[2\u0008\u00103\u001a\u0004\u0018\u0001042\u0006\u0010\\\u001a\u00020\u000e2\u0012\u0010]\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020A0^2\u0006\u0010_\u001a\u00020`H\u0002J\u0016\u0010Y\u001a\u0008\u0012\u0004\u0012\u00020\u000b012\u0008\u00103\u001a\u0004\u0018\u000104J\u001c\u0010a\u001a\u0004\u0018\u00010\u000e2\u0008\u00103\u001a\u0004\u0018\u0001042\u0008\u00105\u001a\u0004\u0018\u00010\u0001J\u0018\u0010b\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u0001022\u0008\u0010\\\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010c\u001a\u00020\u000b2\u0008\u0010\\\u001a\u0004\u0018\u00010\u000eJ\\\u0010d\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002He0201\"\u0004\u0008\u0000\u0010e2\u0012\u0010f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002He020g2\u0006\u00103\u001a\u0002042\u0006\u0010<\u001a\u0002072\u0008\u00105\u001a\u0004\u0018\u00010\u00012\u0008\u0010\"\u001a\u0004\u0018\u00010\u00062\u0008\u00108\u001a\u0004\u0018\u00010/H\u0002Jp\u0010d\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002He0201\"\u0004\u0008\u0000\u0010e2\u0012\u0010f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002He020g2\u0006\u00103\u001a\u0002042\u0006\u0010<\u001a\u0002072\u0008\u00105\u001a\u0004\u0018\u00010\u00012\u0008\u0010\"\u001a\u0004\u0018\u00010\u00062\u0008\u00108\u001a\u0004\u0018\u00010/2\u0012\u0010=\u001a\u000e\u0012\u0004\u0012\u00020/\u0012\u0002\u0008\u0003\u0018\u00010>H\u0002Jf\u0010d\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002He0201\"\u0004\u0008\u0000\u0010e2\u0012\u0010f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002He020g2\u0006\u00103\u001a\u0002042\u0006\u0010<\u001a\u0002072\u0008\u00105\u001a\u0004\u0018\u00010\u00012\u0008\u0010\"\u001a\u0004\u0018\u00010\u00062\u0012\u0010=\u001a\u000e\u0012\u0004\u0012\u00020/\u0012\u0002\u0008\u0003\u0018\u00010>H\u0002J@\u0010d\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002He0201\"\u0004\u0008\u0000\u0010e2\u0014\u0010f\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u0002He\u0018\u0001020g2\u0006\u0010h\u001a\u00020i2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0006JL\u0010j\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010A012\u000e\u0010f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010A0g2\u0006\u00103\u001a\u0002042\u0006\u0010<\u001a\u0002072\u0008\u00105\u001a\u0004\u0018\u00010\u00012\u0006\u0010C\u001a\u00020D2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0006H\u0002J\u001a\u0010k\u001a\u00020\u00062\u0008\u00103\u001a\u0004\u0018\u0001042\u0008\u0010\"\u001a\u0004\u0018\u00010\u0006J\u0010\u0010l\u001a\u00020\u00062\u0008\u0010m\u001a\u0004\u0018\u00010\u0006J\u0016\u0010n\u001a\u0008\u0012\u0004\u0012\u00020\u000e0o2\u0006\u0010H\u001a\u00020IH\u0002J\u0006\u0010p\u001a\u00020GJ\u0006\u0010q\u001a\u00020GJ\u0006\u0010t\u001a\u00020GR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u001a\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00110\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0014\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010+R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001c\u001a\u00020\u001d\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010-R\u0011\u0010N\u001a\u00020O8F\u00a2\u0006\u0006\u001a\u0004\u0008P\u0010QR\u0011\u0010r\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008r\u0010s\u00a8\u0006v"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/core/ImagePipeline;",
        "",
        "producerSequenceFactory",
        "Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;",
        "requestListeners",
        "",
        "Lcom/facebook/imagepipeline/listener/RequestListener;",
        "requestListener2s",
        "Lcom/facebook/imagepipeline/listener/RequestListener2;",
        "isPrefetchEnabledSupplier",
        "Lcom/facebook/common/internal/Supplier;",
        "",
        "bitmapMemoryCache",
        "Lcom/facebook/imagepipeline/cache/MemoryCache;",
        "Lcom/facebook/cache/common/CacheKey;",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        "encodedMemoryCache",
        "Lcom/facebook/common/memory/PooledByteBuffer;",
        "diskCachesStoreSupplier",
        "Lcom/facebook/imagepipeline/core/DiskCachesStore;",
        "cacheKeyFactory",
        "Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
        "threadHandoffProducerQueue",
        "Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;",
        "suppressBitmapPrefetchingSupplier",
        "lazyDataSource",
        "callerContextVerifier",
        "Lcom/facebook/callercontext/CallerContextVerifier;",
        "config",
        "Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;",
        "<init>",
        "(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;Ljava/util/Set;Ljava/util/Set;Lcom/facebook/common/internal/Supplier;Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/common/internal/Supplier;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;Lcom/facebook/common/internal/Supplier;Lcom/facebook/common/internal/Supplier;Lcom/facebook/callercontext/CallerContextVerifier;Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;)V",
        "getProducerSequenceFactory",
        "()Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;",
        "requestListener",
        "requestListener2",
        "getBitmapMemoryCache",
        "()Lcom/facebook/imagepipeline/cache/MemoryCache;",
        "getCacheKeyFactory",
        "()Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
        "idCounter",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "isLazyDataSource",
        "()Lcom/facebook/common/internal/Supplier;",
        "getConfig",
        "()Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;",
        "generateUniqueFutureId",
        "",
        "getDataSourceSupplier",
        "Lcom/facebook/datasource/DataSource;",
        "Lcom/facebook/common/references/CloseableReference;",
        "imageRequest",
        "Lcom/facebook/imagepipeline/request/ImageRequest;",
        "callerContext",
        "requestLevel",
        "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
        "uiComponentId",
        "getEncodedImageDataSourceSupplier",
        "fetchImageFromBitmapCache",
        "fetchDecodedImage",
        "lowestPermittedRequestLevelOnSubmit",
        "extras",
        "",
        "fetchEncodedImage",
        "prefetchToBitmapCache",
        "Ljava/lang/Void;",
        "prefetchToDiskCache",
        "priority",
        "Lcom/facebook/imagepipeline/common/Priority;",
        "prefetchToEncodedCache",
        "evictFromMemoryCache",
        "",
        "uri",
        "Landroid/net/Uri;",
        "evictFromDiskCache",
        "evictFromCache",
        "clearMemoryCaches",
        "clearDiskCaches",
        "usedDiskCacheSize",
        "",
        "getUsedDiskCacheSize",
        "()J",
        "clearCaches",
        "isInBitmapMemoryCache",
        "isInEncodedMemoryCache",
        "isInDiskCacheSync",
        "cacheChoice",
        "Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;",
        "isInDynamicDiskCachesSync",
        "isInDiskCache",
        "isInDynamicDiskCaches",
        "Lbolts/Task;",
        "cacheKey",
        "intermediateContinuation",
        "Lbolts/Continuation;",
        "cts",
        "Lbolts/CancellationTokenSource;",
        "getCacheKey",
        "getCachedImage",
        "hasCachedImage",
        "submitFetchRequest",
        "T",
        "producerSequence",
        "Lcom/facebook/imagepipeline/producers/Producer;",
        "settableProducerContext",
        "Lcom/facebook/imagepipeline/producers/SettableProducerContext;",
        "submitPrefetchRequest",
        "getRequestListenerForRequest",
        "getCombinedRequestListener",
        "listener",
        "predicateForUri",
        "Lcom/facebook/common/internal/Predicate;",
        "pause",
        "resume",
        "isPaused",
        "()Z",
        "init",
        "Companion",
        "imagepipeline_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/imagepipeline/core/ImagePipeline$Companion;

.field private static final MODIFIED_URL_IS_NULL:Ljava/util/concurrent/CancellationException;

.field private static final NULL_IMAGEREQUEST_EXCEPTION:Ljava/util/concurrent/CancellationException;

.field private static final PREFETCH_EXCEPTION:Ljava/util/concurrent/CancellationException;


# instance fields
.field private final bitmapMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation
.end field

.field private final cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

.field private final callerContextVerifier:Lcom/facebook/callercontext/CallerContextVerifier;

.field private final config:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

.field private final diskCachesStoreSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/core/DiskCachesStore;",
            ">;"
        }
    .end annotation
.end field

.field private final encodedMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final idCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private final isLazyDataSource:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final producerSequenceFactory:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

.field private final requestListener:Lcom/facebook/imagepipeline/listener/RequestListener;

.field private final requestListener2:Lcom/facebook/imagepipeline/listener/RequestListener2;

.field private final suppressBitmapPrefetchingSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final threadHandoffProducerQueue:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;


# direct methods
.method public static synthetic $r8$lambda$0CkmgaNjN345EkV4KcoTJN2a21w(Landroid/net/Uri;Lcom/facebook/cache/common/CacheKey;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->predicateForUri$lambda$16(Landroid/net/Uri;Lcom/facebook/cache/common/CacheKey;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$7JWcDGUyxezW9d95xY22VrjNbsE(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/cache/common/CacheKey;Lbolts/Continuation;Lbolts/CancellationTokenSource;Lbolts/Task;)Lbolts/Task;
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInDiskCache$lambda$10(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/cache/common/CacheKey;Lbolts/Continuation;Lbolts/CancellationTokenSource;Lbolts/Task;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DGsNOEa425TRIWYRH72ZcSVq_GU(Lcom/facebook/cache/common/CacheKey;)Z
    .registers 1

    invoke-static {p0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->clearMemoryCaches$lambda$3(Lcom/facebook/cache/common/CacheKey;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$OhzPD2X2Xa-maKNQDZrlF88bvU0(Lcom/facebook/datasource/SimpleDataSource;Lbolts/Task;)Ljava/lang/Void;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInDiskCache$lambda$7(Lcom/facebook/datasource/SimpleDataSource;Lbolts/Task;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$h_URuzpFksYOniHi5DkyH5FAQGQ(Lcom/facebook/imagepipeline/core/DiskCachesStore;Lcom/facebook/cache/common/CacheKey;Lbolts/Task;)Lbolts/Task;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInDiskCache$lambda$9(Lcom/facebook/imagepipeline/core/DiskCachesStore;Lcom/facebook/cache/common/CacheKey;Lbolts/Task;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tc7OeyzFcE67r_n5XtHYs8J88aw(Lcom/facebook/datasource/SimpleDataSource;Lbolts/Task;)Ljava/lang/Void;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInDiskCache$lambda$8(Lcom/facebook/datasource/SimpleDataSource;Lbolts/Task;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipeline$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipeline$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/imagepipeline/core/ImagePipeline;->Companion:Lcom/facebook/imagepipeline/core/ImagePipeline$Companion;

    .line 1149
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Prefetching is not enabled"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/imagepipeline/core/ImagePipeline;->PREFETCH_EXCEPTION:Ljava/util/concurrent/CancellationException;

    .line 1150
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "ImageRequest is null"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/imagepipeline/core/ImagePipeline;->NULL_IMAGEREQUEST_EXCEPTION:Ljava/util/concurrent/CancellationException;

    .line 1151
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Modified URL is null"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/imagepipeline/core/ImagePipeline;->MODIFIED_URL_IS_NULL:Ljava/util/concurrent/CancellationException;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;Ljava/util/Set;Ljava/util/Set;Lcom/facebook/common/internal/Supplier;Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/common/internal/Supplier;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;Lcom/facebook/common/internal/Supplier;Lcom/facebook/common/internal/Supplier;Lcom/facebook/callercontext/CallerContextVerifier;Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;",
            "Ljava/util/Set<",
            "+",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ">;",
            "Ljava/util/Set<",
            "+",
            "Lcom/facebook/imagepipeline/listener/RequestListener2;",
            ">;",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/core/DiskCachesStore;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
            "Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/callercontext/CallerContextVerifier;",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;",
            ")V"
        }
    .end annotation

    const-string v0, "producerSequenceFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestListeners"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestListener2s"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isPrefetchEnabledSupplier"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapMemoryCache"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encodedMemoryCache"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diskCachesStoreSupplier"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheKeyFactory"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threadHandoffProducerQueue"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "suppressBitmapPrefetchingSupplier"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lazyDataSource"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->producerSequenceFactory:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    .line 56
    iput-object p4, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->isPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;

    .line 59
    iput-object p7, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->diskCachesStoreSupplier:Lcom/facebook/common/internal/Supplier;

    .line 68
    new-instance p1, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;

    invoke-direct {p1, p2}, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;-><init>(Ljava/util/Set;)V

    check-cast p1, Lcom/facebook/imagepipeline/listener/RequestListener;

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->requestListener:Lcom/facebook/imagepipeline/listener/RequestListener;

    .line 69
    new-instance p1, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;

    invoke-direct {p1, p3}, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;-><init>(Ljava/util/Set;)V

    check-cast p1, Lcom/facebook/imagepipeline/listener/RequestListener2;

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->requestListener2:Lcom/facebook/imagepipeline/listener/RequestListener2;

    .line 79
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->idCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1133
    iput-object p5, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->bitmapMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    .line 1134
    iput-object p6, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->encodedMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    .line 1135
    iput-object p8, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    .line 1136
    iput-object p9, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->threadHandoffProducerQueue:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    .line 1137
    iput-object p10, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->suppressBitmapPrefetchingSupplier:Lcom/facebook/common/internal/Supplier;

    .line 1138
    iput-object p11, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->isLazyDataSource:Lcom/facebook/common/internal/Supplier;

    .line 1139
    iput-object p12, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->callerContextVerifier:Lcom/facebook/callercontext/CallerContextVerifier;

    .line 1140
    iput-object p13, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->config:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    return-void
.end method

.method private static final clearMemoryCaches$lambda$3(Lcom/facebook/cache/common/CacheKey;)Z
    .registers 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic fetchDecodedImage$default(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/datasource/DataSource;
    .registers 9

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_6

    move-object p3, v0

    :cond_6
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_b

    move-object p4, v0

    :cond_b
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_10

    move-object p5, v0

    .line 211
    :cond_10
    invoke-virtual/range {p0 .. p5}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;)Lcom/facebook/datasource/DataSource;

    move-result-object p0

    return-object p0
.end method

.method private static final isInDiskCache$lambda$10(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/cache/common/CacheKey;Lbolts/Continuation;Lbolts/CancellationTokenSource;Lbolts/Task;)Lbolts/Task;
    .registers 7

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$intermediateContinuation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$cts"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 889
    invoke-virtual {p5}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {p5}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {p5}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    if-eqz p5, :cond_32

    const/4 p0, 0x1

    .line 890
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object p0

    return-object p0

    .line 892
    :cond_32
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInDynamicDiskCaches(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/cache/common/CacheKey;Lbolts/Continuation;Lbolts/CancellationTokenSource;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method private static final isInDiskCache$lambda$7(Lcom/facebook/datasource/SimpleDataSource;Lbolts/Task;)Ljava/lang/Void;
    .registers 4

    .line 868
    invoke-virtual {p0}, Lcom/facebook/datasource/SimpleDataSource;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-nez v0, :cond_29

    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2a

    :cond_29
    const/4 v1, 0x1

    :cond_2a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 867
    invoke-virtual {p0, p1}, Lcom/facebook/datasource/SimpleDataSource;->setResult(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return-object p0
.end method

.method private static final isInDiskCache$lambda$8(Lcom/facebook/datasource/SimpleDataSource;Lbolts/Task;)Ljava/lang/Void;
    .registers 4

    .line 874
    invoke-virtual {p0}, Lcom/facebook/datasource/SimpleDataSource;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-nez v0, :cond_2c

    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 p1, 0x0

    goto :goto_2d

    :cond_2c
    :goto_2c
    const/4 p1, 0x1

    :goto_2d
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 873
    invoke-virtual {p0, p1, v1}, Lcom/facebook/datasource/SimpleDataSource;->setResult(Ljava/lang/Object;Z)Z

    const/4 p0, 0x0

    return-object p0
.end method

.method private static final isInDiskCache$lambda$9(Lcom/facebook/imagepipeline/core/DiskCachesStore;Lcom/facebook/cache/common/CacheKey;Lbolts/Task;)Lbolts/Task;
    .registers 4

    const-string v0, "$diskCachesStore"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 881
    invoke-virtual {p2}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p2}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p2}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_27

    const/4 p0, 0x1

    .line 882
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object p0

    return-object p0

    .line 884
    :cond_27
    invoke-interface {p0}, Lcom/facebook/imagepipeline/core/DiskCachesStore;->getSmallImageBufferedDiskCache()Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    move-result-object p0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->contains(Lcom/facebook/cache/common/CacheKey;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method private final isInDynamicDiskCaches(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/cache/common/CacheKey;Lbolts/Continuation;Lbolts/CancellationTokenSource;)Lbolts/Task;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lbolts/Continuation<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Void;",
            ">;",
            "Lbolts/CancellationTokenSource;",
            ")",
            "Lbolts/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 819
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->diskCachesStoreSupplier:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/imagepipeline/core/DiskCachesStore;

    if-eqz p1, :cond_14

    .line 820
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getDiskCacheId()Ljava/lang/String;

    move-result-object p1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    .line 821
    :goto_15
    const-string v1, "forResult(...)"

    const/4 v2, 0x0

    if-eqz p1, :cond_3a

    .line 822
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/DiskCachesStore;->getDynamicBufferedDiskCaches()Lcom/facebook/common/internal/ImmutableMap;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/facebook/common/internal/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    if-eqz p1, :cond_2e

    invoke-virtual {p1, p2}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->contains(Lcom/facebook/cache/common/CacheKey;)Lbolts/Task;

    move-result-object p1

    if-nez p1, :cond_2d

    goto :goto_2e

    :cond_2d
    return-object p1

    .line 823
    :cond_2e
    :goto_2e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 825
    :cond_3a
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/DiskCachesStore;->getDynamicBufferedDiskCaches()Lcom/facebook/common/internal/ImmutableMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/common/internal/ImmutableMap;->size()I

    move-result p1

    if-nez p1, :cond_50

    .line 826
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 829
    :cond_50
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/DiskCachesStore;->getDynamicBufferedDiskCaches()Lcom/facebook/common/internal/ImmutableMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 830
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 831
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 833
    :goto_70
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 834
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 835
    invoke-virtual {v2, p2}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->contains(Lcom/facebook/cache/common/CacheKey;)Lbolts/Task;

    move-result-object v2

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 836
    new-instance v2, Lcom/facebook/imagepipeline/core/ImagePipeline$isInDynamicDiskCaches$1;

    invoke-direct {v2, p4, p3, v1}, Lcom/facebook/imagepipeline/core/ImagePipeline$isInDynamicDiskCaches$1;-><init>(Lbolts/CancellationTokenSource;Lbolts/Continuation;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v2, Lbolts/Continuation;

    .line 847
    invoke-virtual {p4}, Lbolts/CancellationTokenSource;->getToken()Lbolts/CancellationToken;

    move-result-object v3

    .line 836
    invoke-virtual {v0, v2, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Lbolts/CancellationToken;)Lbolts/Task;

    .line 848
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lbolts/Task;

    goto :goto_70

    :cond_9b
    return-object v0
.end method

.method private final isInDynamicDiskCachesSync(Lcom/facebook/imagepipeline/request/ImageRequest;)Z
    .registers 5

    .line 761
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->diskCachesStoreSupplier:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/imagepipeline/core/DiskCachesStore;

    .line 762
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getEncodedCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object v1

    .line 763
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getDiskCacheId()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_30

    .line 765
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/DiskCachesStore;->getDynamicBufferedDiskCaches()Lcom/facebook/common/internal/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/common/internal/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    if-eqz p1, :cond_2f

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->diskCheckSync(Lcom/facebook/cache/common/CacheKey;)Z

    move-result p1

    return p1

    :cond_2f
    return v2

    .line 768
    :cond_30
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/DiskCachesStore;->getDynamicBufferedDiskCaches()Lcom/facebook/common/internal/ImmutableMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 1178
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 769
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->diskCheckSync(Lcom/facebook/cache/common/CacheKey;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 p1, 0x1

    return p1

    :cond_5b
    return v2
.end method

.method private final predicateForUri(Landroid/net/Uri;)Lcom/facebook/common/internal/Predicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/facebook/common/internal/Predicate<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;"
        }
    .end annotation

    .line 1117
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda4;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method

.method private static final predicateForUri$lambda$16(Landroid/net/Uri;Lcom/facebook/cache/common/CacheKey;)Z
    .registers 3

    const-string v0, "$uri"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1118
    invoke-interface {p1, p0}, Lcom/facebook/cache/common/CacheKey;->containsUri(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static synthetic prefetchToEncodedCache$default(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/listener/RequestListener;ILjava/lang/Object;)Lcom/facebook/datasource/DataSource;
    .registers 7

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_6

    .line 547
    sget-object p3, Lcom/facebook/imagepipeline/common/Priority;->MEDIUM:Lcom/facebook/imagepipeline/common/Priority;

    :cond_6
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_b

    const/4 p4, 0x0

    .line 543
    :cond_b
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/core/ImagePipeline;->prefetchToEncodedCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;

    move-result-object p0

    return-object p0
.end method

.method private final submitFetchRequest(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;)Lcom/facebook/datasource/DataSource;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 949
    invoke-direct/range {v0 .. v7}, Lcom/facebook/imagepipeline/core/ImagePipeline;->submitFetchRequest(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    return-object p1
.end method

.method private final submitFetchRequest(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/datasource/DataSource;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v5, p4

    move-object/from16 v2, p5

    move-object/from16 v11, p7

    .line 967
    sget-object v3, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .line 1189
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v3

    const/4 v4, 0x1

    const-string v6, "getMax(...)"

    const/4 v7, 0x0

    if-nez v3, :cond_70

    .line 969
    new-instance v12, Lcom/facebook/imagepipeline/producers/InternalRequestListener;

    .line 970
    invoke-virtual {p0, p2, v2}, Lcom/facebook/imagepipeline/core/ImagePipeline;->getRequestListenerForRequest(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/imagepipeline/listener/RequestListener;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->requestListener2:Lcom/facebook/imagepipeline/listener/RequestListener2;

    .line 969
    invoke-direct {v12, v2, v3}, Lcom/facebook/imagepipeline/producers/InternalRequestListener;-><init>(Lcom/facebook/imagepipeline/listener/RequestListener;Lcom/facebook/imagepipeline/listener/RequestListener2;)V

    .line 971
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->callerContextVerifier:Lcom/facebook/callercontext/CallerContextVerifier;

    if-eqz v2, :cond_26

    invoke-interface {v2, v5, v7}, Lcom/facebook/callercontext/CallerContextVerifier;->verifyCallerContext(Ljava/lang/Object;Z)V

    .line 975
    :cond_26
    :try_start_26
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getLowestPermittedRequestLevel()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v2

    .line 974
    invoke-static {v2, v0}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getMax(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v0

    .line 977
    new-instance v0, Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    .line 979
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->generateUniqueFutureId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 981
    move-object v4, v12

    check-cast v4, Lcom/facebook/imagepipeline/producers/ProducerListener2;

    .line 985
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getProgressiveRenderingEnabled()Z

    move-result v8

    if-nez v8, :cond_4f

    .line 986
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8}, Lcom/facebook/common/util/UriUtil;->isNetworkUri(Landroid/net/Uri;)Z

    move-result v8

    if-nez v8, :cond_4d

    goto :goto_4f

    :cond_4d
    const/4 v8, 0x0

    goto :goto_50

    :cond_4f
    :goto_4f
    const/4 v8, 0x1

    .line 987
    :goto_50
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getPriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v9

    .line 988
    iget-object v10, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->config:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    const/4 v7, 0x0

    move-object v1, p2

    move-object/from16 v3, p6

    .line 977
    invoke-direct/range {v0 .. v10}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/ProducerListener2;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;)V

    .line 989
    invoke-virtual {v0, v11}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;->putExtras(Ljava/util/Map;)V

    .line 991
    check-cast v12, Lcom/facebook/imagepipeline/listener/RequestListener2;

    .line 990
    invoke-static {p1, v0, v12}, Lcom/facebook/imagepipeline/datasource/CloseableProducerToDataSourceAdapter;->create(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/SettableProducerContext;Lcom/facebook/imagepipeline/listener/RequestListener2;)Lcom/facebook/datasource/DataSource;

    move-result-object p1
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_66} :catch_67

    return-object p1

    :catch_67
    move-exception v0

    move-object p1, v0

    .line 993
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    return-object p1

    :cond_70
    const/4 v3, 0x1

    .line 1193
    const-string v4, "ImagePipeline#submitFetchRequest"

    invoke-static {v4}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 969
    :try_start_76
    new-instance v12, Lcom/facebook/imagepipeline/producers/InternalRequestListener;

    .line 970
    invoke-virtual {p0, p2, v2}, Lcom/facebook/imagepipeline/core/ImagePipeline;->getRequestListenerForRequest(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/imagepipeline/listener/RequestListener;

    move-result-object v2

    iget-object v4, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->requestListener2:Lcom/facebook/imagepipeline/listener/RequestListener2;

    .line 969
    invoke-direct {v12, v2, v4}, Lcom/facebook/imagepipeline/producers/InternalRequestListener;-><init>(Lcom/facebook/imagepipeline/listener/RequestListener;Lcom/facebook/imagepipeline/listener/RequestListener2;)V

    .line 971
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->callerContextVerifier:Lcom/facebook/callercontext/CallerContextVerifier;

    if-eqz v2, :cond_88

    invoke-interface {v2, v5, v7}, Lcom/facebook/callercontext/CallerContextVerifier;->verifyCallerContext(Ljava/lang/Object;Z)V
    :try_end_88
    .catchall {:try_start_76 .. :try_end_88} :catchall_d4

    .line 975
    :cond_88
    :try_start_88
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getLowestPermittedRequestLevel()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v2

    .line 974
    invoke-static {v2, v0}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getMax(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v0

    .line 977
    new-instance v0, Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    .line 979
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->generateUniqueFutureId()Ljava/lang/String;

    move-result-object v2

    .line 981
    move-object v4, v12

    check-cast v4, Lcom/facebook/imagepipeline/producers/ProducerListener2;

    .line 985
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getProgressiveRenderingEnabled()Z

    move-result v8

    if-nez v8, :cond_b0

    .line 986
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8}, Lcom/facebook/common/util/UriUtil;->isNetworkUri(Landroid/net/Uri;)Z

    move-result v8

    if-nez v8, :cond_ae

    goto :goto_b0

    :cond_ae
    const/4 v8, 0x0

    goto :goto_b1

    :cond_b0
    :goto_b0
    const/4 v8, 0x1

    .line 987
    :goto_b1
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getPriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v9

    .line 988
    iget-object v10, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->config:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    const/4 v7, 0x0

    move-object v1, p2

    move-object/from16 v3, p6

    .line 977
    invoke-direct/range {v0 .. v10}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/ProducerListener2;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;)V

    .line 989
    invoke-virtual {v0, v11}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;->putExtras(Ljava/util/Map;)V

    .line 991
    check-cast v12, Lcom/facebook/imagepipeline/listener/RequestListener2;

    .line 990
    invoke-static {p1, v0, v12}, Lcom/facebook/imagepipeline/datasource/CloseableProducerToDataSourceAdapter;->create(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/SettableProducerContext;Lcom/facebook/imagepipeline/listener/RequestListener2;)Lcom/facebook/datasource/DataSource;

    move-result-object p1
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_c7} :catch_c8
    .catchall {:try_start_88 .. :try_end_c7} :catchall_d4

    goto :goto_d0

    :catch_c8
    move-exception v0

    move-object p1, v0

    .line 993
    :try_start_ca
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object p1
    :try_end_d0
    .catchall {:try_start_ca .. :try_end_d0} :catchall_d4

    .line 1197
    :goto_d0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-object p1

    :catchall_d4
    move-exception v0

    move-object p1, v0

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw p1
.end method

.method private final submitFetchRequest(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/util/Map;)Lcom/facebook/datasource/DataSource;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;"
        }
    .end annotation

    move-object/from16 v5, p4

    move-object/from16 v1, p5

    .line 1005
    sget-object v2, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .line 1198
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "getMax(...)"

    const/4 v6, 0x0

    if-nez v2, :cond_69

    .line 1007
    new-instance v11, Lcom/facebook/imagepipeline/producers/InternalRequestListener;

    .line 1008
    invoke-virtual {p0, p2, v1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->getRequestListenerForRequest(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/imagepipeline/listener/RequestListener;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->requestListener2:Lcom/facebook/imagepipeline/listener/RequestListener2;

    .line 1007
    invoke-direct {v11, v1, v2}, Lcom/facebook/imagepipeline/producers/InternalRequestListener;-><init>(Lcom/facebook/imagepipeline/listener/RequestListener;Lcom/facebook/imagepipeline/listener/RequestListener2;)V

    .line 1009
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->callerContextVerifier:Lcom/facebook/callercontext/CallerContextVerifier;

    if-eqz v1, :cond_22

    invoke-interface {v1, v5, v6}, Lcom/facebook/callercontext/CallerContextVerifier;->verifyCallerContext(Ljava/lang/Object;Z)V

    .line 1013
    :cond_22
    :try_start_22
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getLowestPermittedRequestLevel()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v1

    .line 1012
    invoke-static {v1, p3}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getMax(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v0

    const/4 v2, 0x0

    .line 1015
    new-instance v0, Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    const/4 v7, 0x0

    .line 1017
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->generateUniqueFutureId()Ljava/lang/String;

    move-result-object v2

    .line 1019
    move-object v4, v11

    check-cast v4, Lcom/facebook/imagepipeline/producers/ProducerListener2;

    .line 1023
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getProgressiveRenderingEnabled()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 1024
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/util/UriUtil;->isNetworkUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_4a

    goto :goto_4c

    :cond_4a
    const/4 v8, 0x0

    goto :goto_4d

    :cond_4c
    :goto_4c
    const/4 v8, 0x1

    .line 1025
    :goto_4d
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getPriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v9

    .line 1026
    iget-object v10, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->config:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    .line 1015
    invoke-direct/range {v0 .. v10}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/ProducerListener2;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;)V

    .line 1028
    check-cast v11, Lcom/facebook/imagepipeline/listener/RequestListener2;

    .line 1027
    invoke-static {p1, v0, v11}, Lcom/facebook/imagepipeline/datasource/CloseableProducerToDataSourceAdapter;->create(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/SettableProducerContext;Lcom/facebook/imagepipeline/listener/RequestListener2;)Lcom/facebook/datasource/DataSource;

    move-result-object p1
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_5f} :catch_60

    return-object p1

    :catch_60
    move-exception v0

    move-object p1, v0

    .line 1030
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    return-object p1

    :cond_69
    const/4 v7, 0x0

    .line 1202
    const-string v6, "ImagePipeline#submitFetchRequest"

    invoke-static {v6}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 1007
    :try_start_6f
    new-instance v11, Lcom/facebook/imagepipeline/producers/InternalRequestListener;

    .line 1008
    invoke-virtual {p0, p2, v1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->getRequestListenerForRequest(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/imagepipeline/listener/RequestListener;

    move-result-object v1

    iget-object v6, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->requestListener2:Lcom/facebook/imagepipeline/listener/RequestListener2;

    .line 1007
    invoke-direct {v11, v1, v6}, Lcom/facebook/imagepipeline/producers/InternalRequestListener;-><init>(Lcom/facebook/imagepipeline/listener/RequestListener;Lcom/facebook/imagepipeline/listener/RequestListener2;)V

    .line 1009
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->callerContextVerifier:Lcom/facebook/callercontext/CallerContextVerifier;

    if-eqz v1, :cond_81

    invoke-interface {v1, v5, v7}, Lcom/facebook/callercontext/CallerContextVerifier;->verifyCallerContext(Ljava/lang/Object;Z)V
    :try_end_81
    .catchall {:try_start_6f .. :try_end_81} :catchall_c8

    .line 1013
    :cond_81
    :try_start_81
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getLowestPermittedRequestLevel()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v1

    .line 1012
    invoke-static {v1, p3}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getMax(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1015
    new-instance v0, Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    .line 1017
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->generateUniqueFutureId()Ljava/lang/String;

    move-result-object v2

    .line 1019
    move-object v4, v11

    check-cast v4, Lcom/facebook/imagepipeline/producers/ProducerListener2;

    .line 1023
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getProgressiveRenderingEnabled()Z

    move-result v1

    if-nez v1, :cond_a8

    .line 1024
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/util/UriUtil;->isNetworkUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_a6

    goto :goto_a8

    :cond_a6
    const/4 v8, 0x0

    goto :goto_a9

    :cond_a8
    :goto_a8
    const/4 v8, 0x1

    .line 1025
    :goto_a9
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getPriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v9

    .line 1026
    iget-object v10, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->config:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    .line 1015
    invoke-direct/range {v0 .. v10}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/ProducerListener2;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;)V

    .line 1028
    check-cast v11, Lcom/facebook/imagepipeline/listener/RequestListener2;

    .line 1027
    invoke-static {p1, v0, v11}, Lcom/facebook/imagepipeline/datasource/CloseableProducerToDataSourceAdapter;->create(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/SettableProducerContext;Lcom/facebook/imagepipeline/listener/RequestListener2;)Lcom/facebook/datasource/DataSource;

    move-result-object p1
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_bb} :catch_bc
    .catchall {:try_start_81 .. :try_end_bb} :catchall_c8

    goto :goto_c4

    :catch_bc
    move-exception v0

    move-object p1, v0

    .line 1030
    :try_start_be
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object p1
    :try_end_c4
    .catchall {:try_start_be .. :try_end_c4} :catchall_c8

    .line 1206
    :goto_c4
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-object p1

    :catchall_c8
    move-exception v0

    move-object p1, v0

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw p1
.end method

.method private final submitPrefetchRequest(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/common/Priority;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    move-object v5, p4

    .line 1058
    new-instance v0, Lcom/facebook/imagepipeline/producers/InternalRequestListener;

    move-object/from16 v2, p6

    .line 1059
    invoke-virtual {p0, p2, v2}, Lcom/facebook/imagepipeline/core/ImagePipeline;->getRequestListenerForRequest(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/imagepipeline/listener/RequestListener;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->requestListener2:Lcom/facebook/imagepipeline/listener/RequestListener2;

    .line 1058
    invoke-direct {v0, v2, v3}, Lcom/facebook/imagepipeline/producers/InternalRequestListener;-><init>(Lcom/facebook/imagepipeline/listener/RequestListener;Lcom/facebook/imagepipeline/listener/RequestListener2;)V

    .line 1060
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->callerContextVerifier:Lcom/facebook/callercontext/CallerContextVerifier;

    const/4 v3, 0x1

    if-eqz v2, :cond_16

    invoke-interface {v2, p4, v3}, Lcom/facebook/callercontext/CallerContextVerifier;->verifyCallerContext(Ljava/lang/Object;Z)V

    .line 1061
    :cond_16
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v2

    const-string v4, "getSourceUri(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1063
    sget-object v4, Lcom/facebook/fresco/urimod/UriModifier;->INSTANCE:Lcom/facebook/fresco/urimod/UriModifierInterface;

    invoke-interface {v4, v2, p4}, Lcom/facebook/fresco/urimod/UriModifierInterface;->modifyPrefetchUri(Landroid/net/Uri;Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_35

    .line 1064
    sget-object v0, Lcom/facebook/imagepipeline/core/ImagePipeline;->MODIFIED_URL_IS_NULL:Ljava/util/concurrent/CancellationException;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    const-string v1, "immediateFailedDataSource(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 1066
    :cond_35
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    move-object v2, p2

    goto :goto_4a

    .line 1069
    :cond_3d
    invoke-static {p2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->fromRequest(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setSource(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->build()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    move-object v2, v1

    .line 1074
    :goto_4a
    :try_start_4a
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getLowestPermittedRequestLevel()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v1

    .line 1073
    invoke-static {v1, p3}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getMax(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v6

    const-string v1, "getMax(...)"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1076
    new-instance v1, Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    .line 1078
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->generateUniqueFutureId()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .line 1079
    move-object v4, v0

    check-cast v4, Lcom/facebook/imagepipeline/producers/ProducerListener2;

    .line 1083
    iget-object v8, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->config:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    invoke-interface {v8}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->getExperiments()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v8

    if-eqz v8, :cond_77

    invoke-virtual {v8}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->getAllowProgressiveOnPrefetch()Z

    move-result v8

    if-ne v8, v3, :cond_77

    .line 1084
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getProgressiveRenderingEnabled()Z

    move-result v8

    if-eqz v8, :cond_77

    const/4 v8, 0x1

    goto :goto_79

    :cond_77
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 1086
    :goto_79
    iget-object v10, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->config:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    move-object v3, v7

    const/4 v7, 0x1

    move-object/from16 v9, p5

    .line 1076
    invoke-direct/range {v1 .. v10}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/ProducerListener2;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;)V

    .line 1087
    sget-object v2, Lcom/facebook/imagepipeline/datasource/ProducerToDataSourceAdapter;->Companion:Lcom/facebook/imagepipeline/datasource/ProducerToDataSourceAdapter$Companion;

    check-cast v0, Lcom/facebook/imagepipeline/listener/RequestListener2;

    invoke-virtual {v2, p1, v1, v0}, Lcom/facebook/imagepipeline/datasource/ProducerToDataSourceAdapter$Companion;->create(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/SettableProducerContext;Lcom/facebook/imagepipeline/listener/RequestListener2;)Lcom/facebook/datasource/DataSource;

    move-result-object v0
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_8a} :catch_8b

    return-object v0

    :catch_8b
    move-exception v0

    .line 1089
    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final clearCaches()V
    .registers 1

    .line 656
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->clearMemoryCaches()V

    .line 657
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->clearDiskCaches()V

    return-void
.end method

.method public final clearDiskCaches()V
    .registers 3

    .line 635
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->diskCachesStoreSupplier:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/imagepipeline/core/DiskCachesStore;

    .line 636
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/DiskCachesStore;->getMainBufferedDiskCache()Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->clearAll()Lbolts/Task;

    .line 637
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/DiskCachesStore;->getSmallImageBufferedDiskCache()Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->clearAll()Lbolts/Task;

    .line 638
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/DiskCachesStore;->getDynamicBufferedDiskCaches()Lcom/facebook/common/internal/ImmutableMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1175
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 638
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->clearAll()Lbolts/Task;

    goto :goto_29

    :cond_3f
    return-void
.end method

.method public final clearMemoryCaches()V
    .registers 3

    .line 628
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda5;-><init>()V

    .line 629
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->bitmapMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/cache/MemoryCache;->removeAll(Lcom/facebook/common/internal/Predicate;)I

    .line 630
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->encodedMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/cache/MemoryCache;->removeAll(Lcom/facebook/common/internal/Predicate;)I

    return-void
.end method

.method public final evictFromCache(Landroid/net/Uri;)V
    .registers 3

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 622
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->evictFromMemoryCache(Landroid/net/Uri;)V

    .line 623
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->evictFromDiskCache(Landroid/net/Uri;)V

    return-void
.end method

.method public final evictFromDiskCache(Landroid/net/Uri;)V
    .registers 3

    .line 594
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->fromUri(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->evictFromDiskCache(Lcom/facebook/imagepipeline/request/ImageRequest;)V

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Required value was null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final evictFromDiskCache(Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_4c

    .line 606
    :cond_3
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getEncodedCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object p1

    .line 607
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->diskCachesStoreSupplier:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/imagepipeline/core/DiskCachesStore;

    .line 608
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/DiskCachesStore;->getMainBufferedDiskCache()Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    move-result-object v1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->remove(Lcom/facebook/cache/common/CacheKey;)Lbolts/Task;

    .line 609
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/DiskCachesStore;->getSmallImageBufferedDiskCache()Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->remove(Lcom/facebook/cache/common/CacheKey;)Lbolts/Task;

    .line 610
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/DiskCachesStore;->getDynamicBufferedDiskCaches()Lcom/facebook/common/internal/ImmutableMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1173
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 610
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->remove(Lcom/facebook/cache/common/CacheKey;)Lbolts/Task;

    goto :goto_36

    :cond_4c
    :goto_4c
    return-void
.end method

.method public final evictFromMemoryCache(Landroid/net/Uri;)V
    .registers 3

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->predicateForUri(Landroid/net/Uri;)Lcom/facebook/common/internal/Predicate;

    move-result-object p1

    .line 582
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->bitmapMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/MemoryCache;->removeAll(Lcom/facebook/common/internal/Predicate;)I

    .line 583
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->encodedMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/MemoryCache;->removeAll(Lcom/facebook/common/internal/Predicate;)I

    return-void
.end method

.method public final fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 249
    invoke-static/range {v0 .. v7}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchDecodedImage$default(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    return-object p1
.end method

.method public final fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    const-string v0, "requestListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 268
    invoke-static/range {v1 .. v8}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchDecodedImage$default(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    return-object p1
.end method

.method public final fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/datasource/DataSource;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    const-string v0, "lowestPermittedRequestLevelOnSubmit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 291
    invoke-static/range {v1 .. v8}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchDecodedImage$default(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    return-object p1
.end method

.method public final fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;)Lcom/facebook/datasource/DataSource;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_13

    .line 219
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    const-string p2, "immediateFailedDataSource(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 222
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->producerSequenceFactory:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getDecodedImageProducerSequence(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v2

    if-nez p3, :cond_1d

    .line 226
    sget-object p3, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    :cond_1d
    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    .line 223
    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/core/ImagePipeline;->submitFetchRequest(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;)Lcom/facebook/datasource/DataSource;

    move-result-object p1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_27} :catch_28

    return-object p1

    :catch_28
    move-exception v0

    move-object p1, v0

    .line 231
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    return-object p1
.end method

.method public final fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/datasource/DataSource;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    const-string v0, "lowestPermittedRequestLevelOnSubmit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_18

    .line 321
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    const-string p2, "immediateFailedDataSource(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 324
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->producerSequenceFactory:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getDecodedImageProducerSequence(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 325
    invoke-direct/range {v1 .. v8}, Lcom/facebook/imagepipeline/core/ImagePipeline;->submitFetchRequest(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/datasource/DataSource;

    move-result-object p1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_29} :catch_2a

    return-object p1

    :catch_2a
    move-exception v0

    move-object p1, v0

    .line 334
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    return-object p1
.end method

.method public final fetchEncodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;>;"
        }
    .end annotation

    const-string v0, "imageRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 353
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchEncodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    return-object p1
.end method

.method public final fetchEncodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;>;"
        }
    .end annotation

    const-string v0, "imageRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 374
    :try_start_b
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->producerSequenceFactory:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getEncodedImageProducerSequence(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v2

    .line 381
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 382
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->fromRequest(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setResizeOptions(Lcom/facebook/imagepipeline/common/ResizeOptions;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->build()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    :cond_24
    move-object v3, p1

    .line 387
    sget-object v4, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    .line 384
    invoke-direct/range {v1 .. v8}, Lcom/facebook/imagepipeline/core/ImagePipeline;->submitFetchRequest(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/datasource/DataSource;

    move-result-object p1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_30} :catch_31

    return-object p1

    :catch_31
    move-exception v0

    move-object p1, v0

    .line 393
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    return-object p1

    .line 372
    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Required value was null."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final fetchImageFromBitmapCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    const-string v0, "imageRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->BITMAP_MEMORY_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    return-object p1
.end method

.method public final generateUniqueFutureId()Ljava/lang/String;
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->idCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBitmapMemoryCache()Lcom/facebook/imagepipeline/cache/MemoryCache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->bitmapMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    return-object v0
.end method

.method public final getCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;
    .registers 5

    .line 902
    sget-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .line 1180
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_20

    if-eqz p1, :cond_1f

    .line 906
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getPostprocessor()Lcom/facebook/imagepipeline/request/Postprocessor;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 907
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getPostprocessedBitmapCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object p1

    return-object p1

    .line 909
    :cond_18
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getBitmapCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object p1

    return-object p1

    :cond_1f
    return-object v1

    .line 1184
    :cond_20
    const-string v0, "ImagePipeline#getCacheKey"

    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    if-eqz p1, :cond_41

    .line 906
    :try_start_27
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getPostprocessor()Lcom/facebook/imagepipeline/request/Postprocessor;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 907
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getPostprocessedBitmapCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object p1

    goto :goto_3a

    .line 909
    :cond_34
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getBitmapCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object p1
    :try_end_3a
    .catchall {:try_start_27 .. :try_end_3a} :catchall_3c

    :goto_3a
    move-object v1, p1

    goto :goto_41

    :catchall_3c
    move-exception p1

    .line 1188
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw p1

    :cond_41
    :goto_41
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-object v1
.end method

.method public final getCacheKeyFactory()Lcom/facebook/imagepipeline/cache/CacheKeyFactory;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    return-object v0
.end method

.method public final getCachedImage(Lcom/facebook/cache/common/CacheKey;)Lcom/facebook/common/references/CloseableReference;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/CacheKey;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 925
    :cond_4
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->bitmapMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    invoke-interface {v1, p1}, Lcom/facebook/imagepipeline/cache/MemoryCache;->get(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 926
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/image/CloseableImage;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/image/CloseableImage;->getQualityInfo()Lcom/facebook/imagepipeline/image/QualityInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/image/QualityInfo;->isOfFullQuality()Z

    move-result v1

    if-nez v1, :cond_20

    .line 927
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->close()V

    return-object v0

    :cond_20
    return-object p1
.end method

.method public final getCombinedRequestListener(Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/imagepipeline/listener/RequestListener;
    .registers 6

    if-eqz p1, :cond_15

    .line 1115
    new-instance v0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/facebook/imagepipeline/listener/RequestListener;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->requestListener:Lcom/facebook/imagepipeline/listener/RequestListener;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;-><init>([Lcom/facebook/imagepipeline/listener/RequestListener;)V

    check-cast v0, Lcom/facebook/imagepipeline/listener/RequestListener;

    return-object v0

    :cond_15
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->requestListener:Lcom/facebook/imagepipeline/listener/RequestListener;

    return-object p1
.end method

.method public final getConfig()Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->config:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    return-object v0
.end method

.method public final getDataSourceSupplier(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/common/internal/Supplier;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            ")",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "imageRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$1;-><init>(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)V

    check-cast v0, Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public final getDataSourceSupplier(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/common/internal/Supplier;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ")",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "imageRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    new-instance v1, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$2;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$2;-><init>(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;)V

    check-cast v1, Lcom/facebook/common/internal/Supplier;

    return-object v1
.end method

.method public final getDataSourceSupplier(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;)Lcom/facebook/common/internal/Supplier;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "imageRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    new-instance v1, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$3;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$3;-><init>(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;)V

    check-cast v1, Lcom/facebook/common/internal/Supplier;

    return-object v1
.end method

.method public final getEncodedImageDataSourceSupplier(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/common/internal/Supplier;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "imageRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipeline$getEncodedImageDataSourceSupplier$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/imagepipeline/core/ImagePipeline$getEncodedImageDataSourceSupplier$1;-><init>(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)V

    check-cast v0, Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public final getProducerSequenceFactory()Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->producerSequenceFactory:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    return-object v0
.end method

.method public final getRequestListenerForRequest(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/imagepipeline/listener/RequestListener;
    .registers 9

    if-eqz p1, :cond_50

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_24

    .line 1099
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getRequestListener()Lcom/facebook/imagepipeline/listener/RequestListener;

    move-result-object p2

    if-nez p2, :cond_10

    .line 1100
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->requestListener:Lcom/facebook/imagepipeline/listener/RequestListener;

    return-object p1

    .line 1102
    :cond_10
    new-instance p2, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;

    new-array v0, v0, [Lcom/facebook/imagepipeline/listener/RequestListener;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->requestListener:Lcom/facebook/imagepipeline/listener/RequestListener;

    aput-object v3, v0, v2

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getRequestListener()Lcom/facebook/imagepipeline/listener/RequestListener;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-direct {p2, v0}, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;-><init>([Lcom/facebook/imagepipeline/listener/RequestListener;)V

    check-cast p2, Lcom/facebook/imagepipeline/listener/RequestListener;

    return-object p2

    .line 1105
    :cond_24
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getRequestListener()Lcom/facebook/imagepipeline/listener/RequestListener;

    move-result-object v3

    if-nez v3, :cond_38

    .line 1106
    new-instance p1, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;

    new-array v0, v0, [Lcom/facebook/imagepipeline/listener/RequestListener;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->requestListener:Lcom/facebook/imagepipeline/listener/RequestListener;

    aput-object v3, v0, v2

    aput-object p2, v0, v1

    invoke-direct {p1, v0}, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;-><init>([Lcom/facebook/imagepipeline/listener/RequestListener;)V

    goto :goto_4d

    .line 1108
    :cond_38
    new-instance v3, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;

    const/4 v4, 0x3

    .line 1109
    new-array v4, v4, [Lcom/facebook/imagepipeline/listener/RequestListener;

    iget-object v5, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->requestListener:Lcom/facebook/imagepipeline/listener/RequestListener;

    aput-object v5, v4, v2

    aput-object p2, v4, v1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getRequestListener()Lcom/facebook/imagepipeline/listener/RequestListener;

    move-result-object p1

    aput-object p1, v4, v0

    .line 1108
    invoke-direct {v3, v4}, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;-><init>([Lcom/facebook/imagepipeline/listener/RequestListener;)V

    move-object p1, v3

    :goto_4d
    check-cast p1, Lcom/facebook/imagepipeline/listener/RequestListener;

    return-object p1

    .line 1097
    :cond_50
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Required value was null."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getUsedDiskCacheSize()J
    .registers 8

    .line 648
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->diskCachesStoreSupplier:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/imagepipeline/core/DiskCachesStore;

    .line 649
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/DiskCachesStore;->getMainBufferedDiskCache()Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->getSize()J

    move-result-wide v1

    .line 650
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/DiskCachesStore;->getSmallImageBufferedDiskCache()Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->getSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 651
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/DiskCachesStore;->getDynamicBufferedDiskCaches()Lcom/facebook/common/internal/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/internal/ImmutableMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v3, "<get-values>(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v3, 0x0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    invoke-virtual {v5}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->getSize()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_33

    :cond_45
    add-long/2addr v1, v3

    return-wide v1
.end method

.method public final hasCachedImage(Lcom/facebook/cache/common/CacheKey;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 937
    :cond_4
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->bitmapMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/MemoryCache;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final init()V
    .registers 1

    return-void
.end method

.method public final isInBitmapMemoryCache(Landroid/net/Uri;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 670
    :cond_4
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->predicateForUri(Landroid/net/Uri;)Lcom/facebook/common/internal/Predicate;

    move-result-object p1

    .line 671
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->bitmapMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/MemoryCache;->contains(Lcom/facebook/common/internal/Predicate;)Z

    move-result p1

    return p1
.end method

.method public final isInBitmapMemoryCache(Lcom/facebook/imagepipeline/request/ImageRequest;)Z
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 684
    :cond_4
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getBitmapCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object p1

    .line 685
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->bitmapMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/MemoryCache;->get(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    .line 687
    :try_start_14
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->isValid(Lcom/facebook/common/references/CloseableReference;)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_1c

    .line 689
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return v0

    :catchall_1c
    move-exception v0

    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    throw v0
.end method

.method public final isInDiskCache(Landroid/net/Uri;)Lcom/facebook/datasource/DataSource;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 811
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->fromUri(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInDiskCache(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    return-object p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Required value was null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isInDiskCache(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/datasource/DataSource;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 860
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->diskCachesStoreSupplier:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/imagepipeline/core/DiskCachesStore;

    .line 861
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getEncodedCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object v6

    .line 862
    invoke-static {}, Lcom/facebook/datasource/SimpleDataSource;->create()Lcom/facebook/datasource/SimpleDataSource;

    move-result-object v1

    .line 863
    new-instance v8, Lbolts/CancellationTokenSource;

    invoke-direct {v8}, Lbolts/CancellationTokenSource;-><init>()V

    .line 865
    new-instance v2, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/datasource/SimpleDataSource;)V

    .line 871
    new-instance v7, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda1;

    invoke-direct {v7, v1}, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda1;-><init>(Lcom/facebook/datasource/SimpleDataSource;)V

    .line 878
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/DiskCachesStore;->getMainBufferedDiskCache()Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    move-result-object v3

    .line 879
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->contains(Lcom/facebook/cache/common/CacheKey;)Lbolts/Task;

    move-result-object v3

    .line 880
    new-instance v4, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0, v6}, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda2;-><init>(Lcom/facebook/imagepipeline/core/DiskCachesStore;Lcom/facebook/cache/common/CacheKey;)V

    invoke-virtual {v3, v4}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 887
    new-instance v3, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda3;

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda3;-><init>(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/cache/common/CacheKey;Lbolts/Continuation;Lbolts/CancellationTokenSource;)V

    .line 895
    invoke-virtual {v8}, Lbolts/CancellationTokenSource;->getToken()Lbolts/CancellationToken;

    move-result-object p1

    .line 887
    invoke-virtual {v0, v3, p1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object p1

    .line 896
    invoke-virtual {p1, v2}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    .line 897
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/facebook/datasource/DataSource;

    return-object v1
.end method

.method public final isInDiskCacheSync(Landroid/net/Uri;)Z
    .registers 3

    .line 736
    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInDiskCacheSync(Landroid/net/Uri;Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 737
    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->DEFAULT:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInDiskCacheSync(Landroid/net/Uri;Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 738
    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->DYNAMIC:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInDiskCacheSync(Landroid/net/Uri;Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    return p1

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    return p1
.end method

.method public final isInDiskCacheSync(Landroid/net/Uri;Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)Z
    .registers 3

    .line 752
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->newBuilderWithSource(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setCacheChoice(Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->build()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 753
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInDiskCacheSync(Lcom/facebook/imagepipeline/request/ImageRequest;)Z

    move-result p1

    return p1
.end method

.method public final isInDiskCacheSync(Lcom/facebook/imagepipeline/request/ImageRequest;)Z
    .registers 7

    const-string v0, "imageRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->diskCachesStoreSupplier:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/imagepipeline/core/DiskCachesStore;

    .line 786
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getEncodedCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object v1

    .line 787
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getCacheChoice()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object v2

    const-string v3, "getCacheChoice(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 788
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    .line 790
    :try_start_26
    sget-object v4, Lcom/facebook/imagepipeline/core/ImagePipeline$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->ordinal()I

    move-result v2

    aget v2, v4, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4e

    const/4 v4, 0x2

    if-eq v2, v4, :cond_42

    const/4 v0, 0x3

    if-ne v2, v0, :cond_3c

    .line 793
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInDynamicDiskCachesSync(Lcom/facebook/imagepipeline/request/ImageRequest;)Z

    move-result p1

    goto :goto_59

    .line 790
    :cond_3c
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 792
    :cond_42
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/DiskCachesStore;->getSmallImageBufferedDiskCache()Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    move-result-object p1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->diskCheckSync(Lcom/facebook/cache/common/CacheKey;)Z

    move-result p1

    goto :goto_59

    .line 791
    :cond_4e
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/DiskCachesStore;->getMainBufferedDiskCache()Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    move-result-object p1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->diskCheckSync(Lcom/facebook/cache/common/CacheKey;)Z

    move-result p1
    :try_end_59
    .catchall {:try_start_26 .. :try_end_59} :catchall_5d

    .line 796
    :goto_59
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return p1

    :catchall_5d
    move-exception p1

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p1
.end method

.method public final isInEncodedMemoryCache(Landroid/net/Uri;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 703
    :cond_4
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->predicateForUri(Landroid/net/Uri;)Lcom/facebook/common/internal/Predicate;

    move-result-object p1

    .line 704
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->encodedMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/MemoryCache;->contains(Lcom/facebook/common/internal/Predicate;)Z

    move-result p1

    return p1
.end method

.method public final isInEncodedMemoryCache(Lcom/facebook/imagepipeline/request/ImageRequest;)Z
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 717
    :cond_4
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getEncodedCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object p1

    .line 718
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->encodedMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/MemoryCache;->get(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    .line 720
    :try_start_14
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->isValid(Lcom/facebook/common/references/CloseableReference;)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_1c

    .line 722
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return v0

    :catchall_1c
    move-exception v0

    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    throw v0
.end method

.method public final isLazyDataSource()Lcom/facebook/common/internal/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->isLazyDataSource:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public final isPaused()Z
    .registers 2

    .line 1130
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->threadHandoffProducerQueue:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;->isQueueing()Z

    move-result v0

    return v0
.end method

.method public final pause()V
    .registers 2

    .line 1122
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->threadHandoffProducerQueue:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;->startQueueing()V

    return-void
.end method

.method public final prefetchToBitmapCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 401
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->prefetchToBitmapCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    return-object p1
.end method

.method public final prefetchToBitmapCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 418
    sget-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .line 1155
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "get(...)"

    const-string v4, "immediateSuccessfulDataSource(...)"

    const-string v5, "Required value was null."

    const-string v6, "immediateFailedDataSource(...)"

    if-nez v0, :cond_a4

    .line 419
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->isPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 420
    sget-object p1, Lcom/facebook/imagepipeline/core/ImagePipeline;->PREFETCH_EXCEPTION:Ljava/util/concurrent/CancellationException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 423
    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->config:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->getExperiments()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->getPrefetchShortcutEnabled()Z

    move-result v0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_36} :catch_99

    if-eqz v0, :cond_4a

    :try_start_38
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInBitmapMemoryCache(Lcom/facebook/imagepipeline/request/ImageRequest;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 424
    invoke-static {}, Lcom/facebook/datasource/DataSources;->immediateSuccessfulDataSource()Lcom/facebook/datasource/DataSource;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_45} :catch_46

    return-object p1

    :catch_46
    move-exception v0

    move-object p1, v0

    move-object p2, p0

    goto :goto_9c

    :cond_4a
    if-eqz p1, :cond_8c

    .line 427
    :try_start_4c
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->shouldDecodePrefetches()Ljava/lang/Boolean;

    move-result-object v0
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_50} :catch_99

    if-eqz v0, :cond_5b

    .line 430
    :try_start_52
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_56} :catch_46

    if-nez v0, :cond_59

    goto :goto_6a

    :cond_59
    const/4 v1, 0x0

    goto :goto_6a

    .line 432
    :cond_5b
    :try_start_5b
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->suppressBitmapPrefetchingSupplier:Lcom/facebook/common/internal/Supplier;

    .line 433
    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_6a} :catch_99

    :goto_6a
    if-eqz v1, :cond_73

    .line 436
    :try_start_6c
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->producerSequenceFactory:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getEncodedImagePrefetchProducerSequence(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_72} :catch_46

    goto :goto_79

    .line 437
    :cond_73
    :try_start_73
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->producerSequenceFactory:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getDecodedImagePrefetchProducerSequence(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0

    :goto_79
    move-object v2, v0

    .line 441
    sget-object v4, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 443
    sget-object v6, Lcom/facebook/imagepipeline/common/Priority;->MEDIUM:Lcom/facebook/imagepipeline/common/Priority;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_7e} :catch_99

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    .line 438
    :try_start_82
    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/core/ImagePipeline;->submitPrefetchRequest(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;

    move-result-object p1
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_86} :catch_89

    move-object p2, v1

    goto/16 :goto_137

    :catch_89
    move-exception v0

    move-object p2, v1

    goto :goto_9b

    :cond_8c
    move-object p2, p0

    .line 426
    :try_start_8d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_97} :catch_97

    :catch_97
    move-exception v0

    goto :goto_9b

    :catch_99
    move-exception v0

    move-object p2, p0

    :goto_9b
    move-object p1, v0

    .line 446
    :goto_9c
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    goto/16 :goto_137

    :cond_a4
    move-object v7, p3

    move-object p3, v5

    move-object v5, p2

    move-object p2, p0

    .line 1159
    const-string v0, "ImagePipeline#prefetchToBitmapCache"

    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 419
    :try_start_ad
    iget-object v0, p2, Lcom/facebook/imagepipeline/core/ImagePipeline;->isPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_ca

    .line 420
    sget-object p1, Lcom/facebook/imagepipeline/core/ImagePipeline;->PREFETCH_EXCEPTION:Ljava/util/concurrent/CancellationException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_c6
    .catchall {:try_start_ad .. :try_end_c6} :catchall_138

    .line 1163
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-object p1

    .line 423
    :cond_ca
    :try_start_ca
    iget-object v0, p2, Lcom/facebook/imagepipeline/core/ImagePipeline;->config:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->getExperiments()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->getPrefetchShortcutEnabled()Z

    move-result v0

    if-eqz v0, :cond_e7

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInBitmapMemoryCache(Lcom/facebook/imagepipeline/request/ImageRequest;)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 424
    invoke-static {}, Lcom/facebook/datasource/DataSources;->immediateSuccessfulDataSource()Lcom/facebook/datasource/DataSource;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_e3} :catch_12c
    .catchall {:try_start_ca .. :try_end_e3} :catchall_138

    .line 1163
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-object p1

    :cond_e7
    if-eqz p1, :cond_122

    .line 427
    :try_start_e9
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->shouldDecodePrefetches()Ljava/lang/Boolean;

    move-result-object p3

    if-eqz p3, :cond_f8

    .line 430
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_f6

    goto :goto_107

    :cond_f6
    const/4 v1, 0x0

    goto :goto_107

    .line 432
    :cond_f8
    iget-object p3, p2, Lcom/facebook/imagepipeline/core/ImagePipeline;->suppressBitmapPrefetchingSupplier:Lcom/facebook/common/internal/Supplier;

    .line 433
    invoke-interface {p3}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_107
    if-eqz v1, :cond_110

    .line 436
    iget-object p3, p2, Lcom/facebook/imagepipeline/core/ImagePipeline;->producerSequenceFactory:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    invoke-virtual {p3, p1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getEncodedImagePrefetchProducerSequence(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object p3

    goto :goto_116

    .line 437
    :cond_110
    iget-object p3, p2, Lcom/facebook/imagepipeline/core/ImagePipeline;->producerSequenceFactory:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    invoke-virtual {p3, p1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getDecodedImagePrefetchProducerSequence(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object p3

    :goto_116
    move-object v2, p3

    .line 441
    sget-object v4, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 443
    sget-object v6, Lcom/facebook/imagepipeline/common/Priority;->MEDIUM:Lcom/facebook/imagepipeline/common/Priority;

    move-object v3, p1

    move-object v1, p2

    .line 438
    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/core/ImagePipeline;->submitPrefetchRequest(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    goto :goto_134

    .line 426
    :cond_122
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_12c} :catch_12c
    .catchall {:try_start_e9 .. :try_end_12c} :catchall_138

    :catch_12c
    move-exception v0

    move-object p1, v0

    .line 446
    :try_start_12e
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object p1
    :try_end_134
    .catchall {:try_start_12e .. :try_end_134} :catchall_138

    .line 1163
    :goto_134
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :goto_137
    return-object p1

    :catchall_138
    move-exception v0

    move-object p1, v0

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw p1
.end method

.method public final prefetchToDiskCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 458
    sget-object v0, Lcom/facebook/imagepipeline/common/Priority;->MEDIUM:Lcom/facebook/imagepipeline/common/Priority;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->prefetchToDiskCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    return-object p1
.end method

.method public final prefetchToDiskCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/datasource/DataSource;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/common/Priority;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "priority"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 466
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->prefetchToDiskCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    return-object p1
.end method

.method public final prefetchToDiskCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/common/Priority;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "priority"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->isPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_21

    .line 496
    sget-object p1, Lcom/facebook/imagepipeline/core/ImagePipeline;->PREFETCH_EXCEPTION:Ljava/util/concurrent/CancellationException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    const-string p2, "immediateFailedDataSource(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_21
    if-nez p1, :cond_34

    .line 499
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "imageRequest is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    .line 498
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1

    .line 503
    :cond_34
    :try_start_34
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->producerSequenceFactory:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getEncodedImagePrefetchProducerSequence(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v2

    .line 507
    sget-object v4, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 504
    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/core/ImagePipeline;->submitPrefetchRequest(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;

    move-result-object p1
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_45} :catch_46

    goto :goto_4e

    :catch_46
    move-exception v0

    move-object p1, v0

    .line 512
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    :goto_4e
    return-object p1
.end method

.method public final prefetchToDiskCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 455
    sget-object v0, Lcom/facebook/imagepipeline/common/Priority;->MEDIUM:Lcom/facebook/imagepipeline/common/Priority;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/imagepipeline/core/ImagePipeline;->prefetchToDiskCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    return-object p1
.end method

.method public final prefetchToEncodedCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/facebook/imagepipeline/core/ImagePipeline;->prefetchToEncodedCache$default(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/listener/RequestListener;ILjava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    return-object p1
.end method

.method public final prefetchToEncodedCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/datasource/DataSource;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/common/Priority;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "priority"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lcom/facebook/imagepipeline/core/ImagePipeline;->prefetchToEncodedCache$default(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/listener/RequestListener;ILjava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    return-object p1
.end method

.method public final prefetchToEncodedCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/common/Priority;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "priority"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    sget-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .line 1164
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    const-string v1, "immediateSuccessfulDataSource(...)"

    const-string v2, "immediateFailedDataSource(...)"

    if-nez v0, :cond_79

    .line 551
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->isPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 552
    sget-object p1, Lcom/facebook/imagepipeline/core/ImagePipeline;->PREFETCH_EXCEPTION:Ljava/util/concurrent/CancellationException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_2b
    if-nez p1, :cond_39

    .line 555
    sget-object p1, Lcom/facebook/imagepipeline/core/ImagePipeline;->NULL_IMAGEREQUEST_EXCEPTION:Ljava/util/concurrent/CancellationException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 558
    :cond_39
    :try_start_39
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->config:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->getExperiments()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->getPrefetchShortcutEnabled()Z

    move-result v0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_43} :catch_6e

    if-eqz v0, :cond_57

    :try_start_45
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInEncodedMemoryCache(Lcom/facebook/imagepipeline/request/ImageRequest;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 559
    invoke-static {}, Lcom/facebook/datasource/DataSources;->immediateSuccessfulDataSource()Lcom/facebook/datasource/DataSource;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_52} :catch_53

    return-object p1

    :catch_53
    move-exception v0

    move-object p1, v0

    move-object p2, p0

    goto :goto_71

    .line 562
    :cond_57
    :try_start_57
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->producerSequenceFactory:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getEncodedImagePrefetchProducerSequence(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v2

    .line 566
    sget-object v4, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5f} :catch_6e

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 563
    :try_start_64
    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/core/ImagePipeline;->submitPrefetchRequest(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;

    move-result-object p1
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_68} :catch_6b

    move-object p2, v1

    goto/16 :goto_e7

    :catch_6b
    move-exception v0

    move-object p2, v1

    goto :goto_70

    :catch_6e
    move-exception v0

    move-object p2, p0

    :goto_70
    move-object p1, v0

    .line 571
    :goto_71
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    goto/16 :goto_e7

    :cond_79
    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object p2, p0

    .line 1168
    const-string p1, "ImagePipeline#prefetchToEncodedCache"

    invoke-static {p1}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 551
    :try_start_83
    iget-object p1, p2, Lcom/facebook/imagepipeline/core/ImagePipeline;->isPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;

    invoke-interface {p1}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_a0

    .line 552
    sget-object p1, Lcom/facebook/imagepipeline/core/ImagePipeline;->PREFETCH_EXCEPTION:Ljava/util/concurrent/CancellationException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_9c
    .catchall {:try_start_83 .. :try_end_9c} :catchall_e8

    .line 1172
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-object p1

    :cond_a0
    if-nez v3, :cond_b1

    .line 555
    :try_start_a2
    sget-object p1, Lcom/facebook/imagepipeline/core/ImagePipeline;->NULL_IMAGEREQUEST_EXCEPTION:Ljava/util/concurrent/CancellationException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_ad
    .catchall {:try_start_a2 .. :try_end_ad} :catchall_e8

    .line 1172
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-object p1

    .line 558
    :cond_b1
    :try_start_b1
    iget-object p1, p2, Lcom/facebook/imagepipeline/core/ImagePipeline;->config:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->getExperiments()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->getPrefetchShortcutEnabled()Z

    move-result p1

    if-eqz p1, :cond_ce

    invoke-virtual {p0, v3}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInEncodedMemoryCache(Lcom/facebook/imagepipeline/request/ImageRequest;)Z

    move-result p1

    if-eqz p1, :cond_ce

    .line 559
    invoke-static {}, Lcom/facebook/datasource/DataSources;->immediateSuccessfulDataSource()Lcom/facebook/datasource/DataSource;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_ca} :catch_dc
    .catchall {:try_start_b1 .. :try_end_ca} :catchall_e8

    .line 1172
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-object p1

    .line 562
    :cond_ce
    :try_start_ce
    iget-object p1, p2, Lcom/facebook/imagepipeline/core/ImagePipeline;->producerSequenceFactory:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    invoke-virtual {p1, v3}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getEncodedImagePrefetchProducerSequence(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v2

    .line 566
    sget-object v4, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-object v1, p2

    .line 563
    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/core/ImagePipeline;->submitPrefetchRequest(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;

    move-result-object p1
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_db} :catch_dc
    .catchall {:try_start_ce .. :try_end_db} :catchall_e8

    goto :goto_e4

    :catch_dc
    move-exception v0

    move-object p1, v0

    .line 571
    :try_start_de
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object p1
    :try_end_e4
    .catchall {:try_start_de .. :try_end_e4} :catchall_e8

    .line 1172
    :goto_e4
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :goto_e7
    return-object p1

    :catchall_e8
    move-exception v0

    move-object p1, v0

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw p1
.end method

.method public final prefetchToEncodedCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 522
    sget-object v0, Lcom/facebook/imagepipeline/common/Priority;->MEDIUM:Lcom/facebook/imagepipeline/common/Priority;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/imagepipeline/core/ImagePipeline;->prefetchToEncodedCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    return-object p1
.end method

.method public final resume()V
    .registers 2

    .line 1126
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->threadHandoffProducerQueue:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;->stopQueuing()V

    return-void
.end method

.method public final submitFetchRequest(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/SettableProducerContext;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;",
            "Lcom/facebook/imagepipeline/producers/SettableProducerContext;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "producerSequence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settableProducerContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1039
    sget-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .line 1207
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-nez v0, :cond_28

    .line 1041
    :try_start_12
    new-instance v0, Lcom/facebook/imagepipeline/producers/InternalRequestListener;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->requestListener2:Lcom/facebook/imagepipeline/listener/RequestListener2;

    invoke-direct {v0, p3, v1}, Lcom/facebook/imagepipeline/producers/InternalRequestListener;-><init>(Lcom/facebook/imagepipeline/listener/RequestListener;Lcom/facebook/imagepipeline/listener/RequestListener2;)V

    .line 1043
    check-cast v0, Lcom/facebook/imagepipeline/listener/RequestListener2;

    .line 1042
    invoke-static {p1, p2, v0}, Lcom/facebook/imagepipeline/datasource/CloseableProducerToDataSourceAdapter;->create(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/SettableProducerContext;Lcom/facebook/imagepipeline/listener/RequestListener2;)Lcom/facebook/datasource/DataSource;

    move-result-object p1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1f} :catch_20

    return-object p1

    :catch_20
    move-exception p1

    .line 1045
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    return-object p1

    .line 1211
    :cond_28
    const-string v0, "ImagePipeline#submitFetchRequest"

    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 1041
    :try_start_2d
    new-instance v0, Lcom/facebook/imagepipeline/producers/InternalRequestListener;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->requestListener2:Lcom/facebook/imagepipeline/listener/RequestListener2;

    invoke-direct {v0, p3, v1}, Lcom/facebook/imagepipeline/producers/InternalRequestListener;-><init>(Lcom/facebook/imagepipeline/listener/RequestListener;Lcom/facebook/imagepipeline/listener/RequestListener2;)V

    .line 1043
    check-cast v0, Lcom/facebook/imagepipeline/listener/RequestListener2;

    .line 1042
    invoke-static {p1, p2, v0}, Lcom/facebook/imagepipeline/datasource/CloseableProducerToDataSourceAdapter;->create(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/SettableProducerContext;Lcom/facebook/imagepipeline/listener/RequestListener2;)Lcom/facebook/datasource/DataSource;

    move-result-object p1
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3a} :catch_3d
    .catchall {:try_start_2d .. :try_end_3a} :catchall_3b

    goto :goto_44

    :catchall_3b
    move-exception p1

    goto :goto_48

    :catch_3d
    move-exception p1

    .line 1045
    :try_start_3e
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object p1
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_3b

    .line 1215
    :goto_44
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-object p1

    :goto_48
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw p1
.end method

###### Class com.facebook.imagepipeline.core.ImagePipeline.Companion (com.facebook.imagepipeline.core.ImagePipeline$Companion)
.class public final Lcom/facebook/imagepipeline/core/ImagePipeline$Companion;
.super Ljava/lang/Object;
.source "ImagePipeline.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/core/ImagePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/core/ImagePipeline$Companion;",
        "",
        "<init>",
        "()V",
        "PREFETCH_EXCEPTION",
        "Ljava/util/concurrent/CancellationException;",
        "NULL_IMAGEREQUEST_EXCEPTION",
        "MODIFIED_URL_IS_NULL",
        "imagepipeline_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/imagepipeline/core/ImagePipeline$Companion;-><init>()V

    return-void
.end method

###### Class com.facebook.imagepipeline.core.ImagePipeline.WhenMappings (com.facebook.imagepipeline.core.ImagePipeline$WhenMappings)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipeline$WhenMappings;
.super Ljava/lang/Object;
.source "ImagePipeline.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/core/ImagePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->values()[Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->DEFAULT:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->DYNAMIC:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    sput-object v0, Lcom/facebook/imagepipeline/core/ImagePipeline$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class com.facebook.imagepipeline.core.ImagePipeline.AnonymousClass1 (com.facebook.imagepipeline.core.ImagePipeline$getDataSourceSupplier$1)
.class public final Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$1;
.super Ljava/lang/Object;
.source "ImagePipeline.kt"

# interfaces
.implements Lcom/facebook/common/internal/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/core/ImagePipeline;->getDataSourceSupplier(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/common/internal/Supplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/Supplier<",
        "Lcom/facebook/datasource/DataSource<",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u00020\u0001J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$1",
        "Lcom/facebook/common/internal/Supplier;",
        "Lcom/facebook/datasource/DataSource;",
        "Lcom/facebook/common/references/CloseableReference;",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        "get",
        "toString",
        "",
        "imagepipeline_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $callerContext:Ljava/lang/Object;

.field final synthetic $imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

.field final synthetic $requestLevel:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

.field final synthetic this$0:Lcom/facebook/imagepipeline/core/ImagePipeline;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)V
    .registers 5

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$1;->this$0:Lcom/facebook/imagepipeline/core/ImagePipeline;

    iput-object p2, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$1;->$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    iput-object p3, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$1;->$callerContext:Ljava/lang/Object;

    iput-object p4, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$1;->$requestLevel:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/facebook/datasource/DataSource;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$1;->this$0:Lcom/facebook/imagepipeline/core/ImagePipeline;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$1;->$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$1;->$callerContext:Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$1;->$requestLevel:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchDecodedImage$default(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 105
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$1;->get()Lcom/facebook/datasource/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 109
    invoke-static {p0}, Lcom/facebook/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$1;->$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "uri"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipeline.AnonymousClass2 (com.facebook.imagepipeline.core.ImagePipeline$getDataSourceSupplier$2)
.class public final Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$2;
.super Ljava/lang/Object;
.source "ImagePipeline.kt"

# interfaces
.implements Lcom/facebook/common/internal/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/core/ImagePipeline;->getDataSourceSupplier(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/common/internal/Supplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/Supplier<",
        "Lcom/facebook/datasource/DataSource<",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u00020\u0001J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$2",
        "Lcom/facebook/common/internal/Supplier;",
        "Lcom/facebook/datasource/DataSource;",
        "Lcom/facebook/common/references/CloseableReference;",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        "get",
        "toString",
        "",
        "imagepipeline_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $callerContext:Ljava/lang/Object;

.field final synthetic $imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

.field final synthetic $requestLevel:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

.field final synthetic $requestListener:Lcom/facebook/imagepipeline/listener/RequestListener;

.field final synthetic this$0:Lcom/facebook/imagepipeline/core/ImagePipeline;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;)V
    .registers 6

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$2;->this$0:Lcom/facebook/imagepipeline/core/ImagePipeline;

    iput-object p2, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$2;->$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    iput-object p3, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$2;->$callerContext:Ljava/lang/Object;

    iput-object p4, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$2;->$requestLevel:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    iput-object p5, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$2;->$requestListener:Lcom/facebook/imagepipeline/listener/RequestListener;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/facebook/datasource/DataSource;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$2;->this$0:Lcom/facebook/imagepipeline/core/ImagePipeline;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$2;->$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$2;->$callerContext:Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$2;->$requestLevel:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    iget-object v4, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$2;->$requestListener:Lcom/facebook/imagepipeline/listener/RequestListener;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchDecodedImage$default(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 129
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$2;->get()Lcom/facebook/datasource/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 134
    invoke-static {p0}, Lcom/facebook/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$2;->$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "uri"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipeline.AnonymousClass3 (com.facebook.imagepipeline.core.ImagePipeline$getDataSourceSupplier$3)
.class public final Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$3;
.super Ljava/lang/Object;
.source "ImagePipeline.kt"

# interfaces
.implements Lcom/facebook/common/internal/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/core/ImagePipeline;->getDataSourceSupplier(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;)Lcom/facebook/common/internal/Supplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/Supplier<",
        "Lcom/facebook/datasource/DataSource<",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u00020\u0001J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$3",
        "Lcom/facebook/common/internal/Supplier;",
        "Lcom/facebook/datasource/DataSource;",
        "Lcom/facebook/common/references/CloseableReference;",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        "get",
        "toString",
        "",
        "imagepipeline_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $callerContext:Ljava/lang/Object;

.field final synthetic $imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

.field final synthetic $requestLevel:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

.field final synthetic $requestListener:Lcom/facebook/imagepipeline/listener/RequestListener;

.field final synthetic $uiComponentId:Ljava/lang/String;

.field final synthetic this$0:Lcom/facebook/imagepipeline/core/ImagePipeline;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$3;->this$0:Lcom/facebook/imagepipeline/core/ImagePipeline;

    iput-object p2, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$3;->$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    iput-object p3, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$3;->$callerContext:Ljava/lang/Object;

    iput-object p4, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$3;->$requestLevel:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    iput-object p5, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$3;->$requestListener:Lcom/facebook/imagepipeline/listener/RequestListener;

    iput-object p6, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$3;->$uiComponentId:Ljava/lang/String;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/facebook/datasource/DataSource;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$3;->this$0:Lcom/facebook/imagepipeline/core/ImagePipeline;

    .line 159
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$3;->$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$3;->$callerContext:Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$3;->$requestLevel:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    iget-object v4, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$3;->$requestListener:Lcom/facebook/imagepipeline/listener/RequestListener;

    iget-object v5, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$3;->$uiComponentId:Ljava/lang/String;

    .line 158
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 156
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$3;->get()Lcom/facebook/datasource/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 162
    invoke-static {p0}, Lcom/facebook/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$3;->$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "uri"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipeline.C01031 (com.facebook.imagepipeline.core.ImagePipeline$getEncodedImageDataSourceSupplier$1)
.class public final Lcom/facebook/imagepipeline/core/ImagePipeline$getEncodedImageDataSourceSupplier$1;
.super Ljava/lang/Object;
.source "ImagePipeline.kt"

# interfaces
.implements Lcom/facebook/common/internal/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/core/ImagePipeline;->getEncodedImageDataSourceSupplier(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/common/internal/Supplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/Supplier<",
        "Lcom/facebook/datasource/DataSource<",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/common/memory/PooledByteBuffer;",
        ">;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u00020\u0001J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/facebook/imagepipeline/core/ImagePipeline$getEncodedImageDataSourceSupplier$1",
        "Lcom/facebook/common/internal/Supplier;",
        "Lcom/facebook/datasource/DataSource;",
        "Lcom/facebook/common/references/CloseableReference;",
        "Lcom/facebook/common/memory/PooledByteBuffer;",
        "get",
        "toString",
        "",
        "imagepipeline_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $callerContext:Ljava/lang/Object;

.field final synthetic $imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

.field final synthetic this$0:Lcom/facebook/imagepipeline/core/ImagePipeline;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getEncodedImageDataSourceSupplier$1;->this$0:Lcom/facebook/imagepipeline/core/ImagePipeline;

    iput-object p2, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getEncodedImageDataSourceSupplier$1;->$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    iput-object p3, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getEncodedImageDataSourceSupplier$1;->$callerContext:Ljava/lang/Object;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/facebook/datasource/DataSource;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;>;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getEncodedImageDataSourceSupplier$1;->this$0:Lcom/facebook/imagepipeline/core/ImagePipeline;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getEncodedImageDataSourceSupplier$1;->$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getEncodedImageDataSourceSupplier$1;->$callerContext:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchEncodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 177
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipeline$getEncodedImageDataSourceSupplier$1;->get()Lcom/facebook/datasource/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 181
    invoke-static {p0}, Lcom/facebook/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$getEncodedImageDataSourceSupplier$1;->$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "uri"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipeline.C01041 (com.facebook.imagepipeline.core.ImagePipeline$isInDynamicDiskCaches$1)
.class final Lcom/facebook/imagepipeline/core/ImagePipeline$isInDynamicDiskCaches$1;
.super Ljava/lang/Object;
.source "ImagePipeline.kt"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/core/ImagePipeline;->isInDynamicDiskCaches(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/cache/common/CacheKey;Lbolts/Continuation;Lbolts/CancellationTokenSource;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TTaskResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lbolts/Continuation;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $cts:Lbolts/CancellationTokenSource;

.field final synthetic $curTask:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lbolts/Task<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $intermediateContinuation:Lbolts/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/Continuation<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lbolts/CancellationTokenSource;Lbolts/Continuation;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/CancellationTokenSource;",
            "Lbolts/Continuation<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Void;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lbolts/Task<",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$isInDynamicDiskCaches$1;->$cts:Lbolts/CancellationTokenSource;

    iput-object p2, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$isInDynamicDiskCaches$1;->$intermediateContinuation:Lbolts/Continuation;

    iput-object p3, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$isInDynamicDiskCaches$1;->$curTask:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final then(Lbolts/Task;)Lbolts/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lbolts/Task<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 838
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 839
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$isInDynamicDiskCaches$1;->$cts:Lbolts/CancellationTokenSource;

    invoke-virtual {p1}, Lbolts/CancellationTokenSource;->cancel()V

    const/4 p1, 0x1

    .line 840
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$isInDynamicDiskCaches$1;->$intermediateContinuation:Lbolts/Continuation;

    invoke-virtual {p1, v0}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object p1

    return-object p1

    .line 841
    :cond_2d
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_3d

    const/4 p1, 0x0

    .line 842
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object p1

    return-object p1

    .line 844
    :cond_3d
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$isInDynamicDiskCaches$1;->$curTask:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lbolts/Task;

    return-object p1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .registers 2

    .line 836
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipeline$isInDynamicDiskCaches$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.facebook.imagepipeline.core.ImagePipeline$$ExternalSyntheticLambda0 (com.facebook.imagepipeline.core.ImagePipeline$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lbolts/Continuation;


# instance fields
.field public final synthetic f$0:Lcom/facebook/datasource/SimpleDataSource;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/datasource/SimpleDataSource;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/datasource/SimpleDataSource;

    return-void
.end method


# virtual methods
.method public final then(Lbolts/Task;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/datasource/SimpleDataSource;

    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->$r8$lambda$OhzPD2X2Xa-maKNQDZrlF88bvU0(Lcom/facebook/datasource/SimpleDataSource;Lbolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

###### Class com.facebook.imagepipeline.core.ImagePipeline$$ExternalSyntheticLambda1 (com.facebook.imagepipeline.core.ImagePipeline$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lbolts/Continuation;


# instance fields
.field public final synthetic f$0:Lcom/facebook/datasource/SimpleDataSource;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/datasource/SimpleDataSource;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda1;->f$0:Lcom/facebook/datasource/SimpleDataSource;

    return-void
.end method


# virtual methods
.method public final then(Lbolts/Task;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda1;->f$0:Lcom/facebook/datasource/SimpleDataSource;

    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->$r8$lambda$tc7OeyzFcE67r_n5XtHYs8J88aw(Lcom/facebook/datasource/SimpleDataSource;Lbolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

###### Class com.facebook.imagepipeline.core.ImagePipeline$$ExternalSyntheticLambda2 (com.facebook.imagepipeline.core.ImagePipeline$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lbolts/Continuation;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/DiskCachesStore;

.field public final synthetic f$1:Lcom/facebook/cache/common/CacheKey;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/DiskCachesStore;Lcom/facebook/cache/common/CacheKey;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda2;->f$0:Lcom/facebook/imagepipeline/core/DiskCachesStore;

    iput-object p2, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda2;->f$1:Lcom/facebook/cache/common/CacheKey;

    return-void
.end method


# virtual methods
.method public final then(Lbolts/Task;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda2;->f$0:Lcom/facebook/imagepipeline/core/DiskCachesStore;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda2;->f$1:Lcom/facebook/cache/common/CacheKey;

    invoke-static {v0, v1, p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->$r8$lambda$h_URuzpFksYOniHi5DkyH5FAQGQ(Lcom/facebook/imagepipeline/core/DiskCachesStore;Lcom/facebook/cache/common/CacheKey;Lbolts/Task;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.facebook.imagepipeline.core.ImagePipeline$$ExternalSyntheticLambda3 (com.facebook.imagepipeline.core.ImagePipeline$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lbolts/Continuation;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipeline;

.field public final synthetic f$1:Lcom/facebook/imagepipeline/request/ImageRequest;

.field public final synthetic f$2:Lcom/facebook/cache/common/CacheKey;

.field public final synthetic f$3:Lbolts/Continuation;

.field public final synthetic f$4:Lbolts/CancellationTokenSource;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/cache/common/CacheKey;Lbolts/Continuation;Lbolts/CancellationTokenSource;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda3;->f$0:Lcom/facebook/imagepipeline/core/ImagePipeline;

    iput-object p2, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda3;->f$1:Lcom/facebook/imagepipeline/request/ImageRequest;

    iput-object p3, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda3;->f$2:Lcom/facebook/cache/common/CacheKey;

    iput-object p4, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda3;->f$3:Lbolts/Continuation;

    iput-object p5, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda3;->f$4:Lbolts/CancellationTokenSource;

    return-void
.end method


# virtual methods
.method public final then(Lbolts/Task;)Ljava/lang/Object;
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda3;->f$0:Lcom/facebook/imagepipeline/core/ImagePipeline;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda3;->f$1:Lcom/facebook/imagepipeline/request/ImageRequest;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda3;->f$2:Lcom/facebook/cache/common/CacheKey;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda3;->f$3:Lbolts/Continuation;

    iget-object v4, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda3;->f$4:Lbolts/CancellationTokenSource;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/facebook/imagepipeline/core/ImagePipeline;->$r8$lambda$7JWcDGUyxezW9d95xY22VrjNbsE(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/cache/common/CacheKey;Lbolts/Continuation;Lbolts/CancellationTokenSource;Lbolts/Task;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.facebook.imagepipeline.core.ImagePipeline$$ExternalSyntheticLambda4 (com.facebook.imagepipeline.core.ImagePipeline$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/common/internal/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda4;->f$0:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda4;->f$0:Landroid/net/Uri;

    check-cast p1, Lcom/facebook/cache/common/CacheKey;

    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->$r8$lambda$0CkmgaNjN345EkV4KcoTJN2a21w(Landroid/net/Uri;Lcom/facebook/cache/common/CacheKey;)Z

    move-result p1

    return p1
.end method

###### Class com.facebook.imagepipeline.core.ImagePipeline$$ExternalSyntheticLambda5 (com.facebook.imagepipeline.core.ImagePipeline$$ExternalSyntheticLambda5)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/common/internal/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Lcom/facebook/cache/common/CacheKey;

    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->$r8$lambda$DGsNOEa425TRIWYRH72ZcSVq_GU(Lcom/facebook/cache/common/CacheKey;)Z

    move-result p1

    return p1
.end method
