.class public Lcom/ksad/lottie/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static a:Z

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Z

.field private static d:[Ljava/lang/String;

.field private static e:[J

.field private static f:I

.field private static g:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/ksad/lottie/c;->b:Ljava/util/Set;

    sput-boolean v1, Lcom/ksad/lottie/c;->c:Z

    sput v1, Lcom/ksad/lottie/c;->f:I

    sput v1, Lcom/ksad/lottie/c;->g:I

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 5

    sget-boolean v0, Lcom/ksad/lottie/c;->c:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget v0, Lcom/ksad/lottie/c;->f:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_12

    sget v0, Lcom/ksad/lottie/c;->g:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ksad/lottie/c;->g:I

    goto :goto_4

    :cond_12
    sget-object v1, Lcom/ksad/lottie/c;->d:[Ljava/lang/String;

    aput-object p0, v1, v0

    sget-object v1, Lcom/ksad/lottie/c;->e:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    aput-wide v2, v1, v0

    invoke-static {p0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    sget v0, Lcom/ksad/lottie/c;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ksad/lottie/c;->f:I

    goto :goto_4
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lcom/ksad/lottie/c;->a:Z

    if-eqz v0, :cond_9

    const-string v0, "LOTTIE"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static c(Ljava/lang/String;)F
    .registers 5

    const/4 v0, 0x0

    sget v1, Lcom/ksad/lottie/c;->g:I

    if-lez v1, :cond_a

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/ksad/lottie/c;->g:I

    :cond_9
    :goto_9
    return v0

    :cond_a
    sget-boolean v1, Lcom/ksad/lottie/c;->c:Z

    if-eqz v1, :cond_9

    sget v0, Lcom/ksad/lottie/c;->f:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/ksad/lottie/c;->f:I

    sget v0, Lcom/ksad/lottie/c;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_66

    sget-object v1, Lcom/ksad/lottie/c;->d:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object v2, Lcom/ksad/lottie/c;->e:[J

    sget v3, Lcom/ksad/lottie/c;->f:I

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    goto :goto_9

    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unbalanced trace call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ksad/lottie/c;->d:[Ljava/lang/String;

    sget v3, Lcom/ksad/lottie/c;->f:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t end trace section. There are none."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/ksad/lottie/c;->b:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    const-string v0, "LOTTIE"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ksad/lottie/c;->b:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method
