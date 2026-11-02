###### Class kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass (kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;
.super Ljava/lang/Object;
.source "KotlinJvmBinaryClass.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;,
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor;,
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationVisitor;,
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$MemberVisitor;,
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$MethodAnnotationVisitor;
    }
.end annotation


# virtual methods
.method public abstract getClassHeader()Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader;
.end method

.method public abstract getClassId()Lkotlin/reflect/jvm/internal/impl/name/ClassId;
.end method

.method public abstract getLocation()Ljava/lang/String;
.end method

.method public abstract loadClassAnnotations(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationVisitor;[B)V
.end method

.method public abstract visitMembers(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$MemberVisitor;[B)V
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass.AnnotationArgumentVisitor (kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArgumentVisitor)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;
.super Ljava/lang/Object;
.source "KotlinJvmBinaryClass.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnnotationArgumentVisitor"
.end annotation


# virtual methods
.method public abstract visit(Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/Object;)V
.end method

.method public abstract visitAnnotation(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;
.end method

.method public abstract visitArray(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor;
.end method

.method public abstract visitClassLiteral(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;)V
.end method

.method public abstract visitEnd()V
.end method

.method public abstract visitEnum(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/name/Name;)V
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass.AnnotationArrayArgumentVisitor (kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor;
.super Ljava/lang/Object;
.source "KotlinJvmBinaryClass.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnnotationArrayArgumentVisitor"
.end annotation


# virtual methods
.method public abstract visit(Ljava/lang/Object;)V
.end method

.method public abstract visitAnnotation(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;
.end method

.method public abstract visitClassLiteral(Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;)V
.end method

.method public abstract visitEnd()V
.end method

.method public abstract visitEnum(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/name/Name;)V
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass.AnnotationVisitor (kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationVisitor)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationVisitor;
.super Ljava/lang/Object;
.source "KotlinJvmBinaryClass.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnnotationVisitor"
.end annotation


# virtual methods
.method public abstract visitAnnotation(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;
.end method

.method public abstract visitEnd()V
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass.MemberVisitor (kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$MemberVisitor)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$MemberVisitor;
.super Ljava/lang/Object;
.source "KotlinJvmBinaryClass.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MemberVisitor"
.end annotation


# virtual methods
.method public abstract visitField(Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/String;Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationVisitor;
.end method

.method public abstract visitMethod(Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$MethodAnnotationVisitor;
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass.MethodAnnotationVisitor (kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$MethodAnnotationVisitor)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$MethodAnnotationVisitor;
.super Ljava/lang/Object;
.source "KotlinJvmBinaryClass.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MethodAnnotationVisitor"
.end annotation


# virtual methods
.method public abstract visitParameterAnnotation(ILkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;
.end method
