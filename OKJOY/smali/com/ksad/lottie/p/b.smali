.class public Lcom/ksad/lottie/p/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:D

.field final d:I

.field public final e:I

.field final f:D

.field public final g:D

.field public final h:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public final i:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public final j:D

.field public final k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DIIDDIIDZ)V
    .registers 21
    .param p11    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p12    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ksad/lottie/p/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ksad/lottie/p/b;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/ksad/lottie/p/b;->c:D

    iput p5, p0, Lcom/ksad/lottie/p/b;->d:I

    iput p6, p0, Lcom/ksad/lottie/p/b;->e:I

    iput-wide p7, p0, Lcom/ksad/lottie/p/b;->f:D

    iput-wide p9, p0, Lcom/ksad/lottie/p/b;->g:D

    move/from16 v0, p11

    iput v0, p0, Lcom/ksad/lottie/p/b;->h:I

    move/from16 v0, p12

    iput v0, p0, Lcom/ksad/lottie/p/b;->i:I

    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/ksad/lottie/p/b;->j:D

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/ksad/lottie/p/b;->k:Z

    return-void
.end method


# virtual methods
.method public hashCode()I
    .registers 7

    iget-object v0, p0, Lcom/ksad/lottie/p/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ksad/lottie/p/b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/ksad/lottie/p/b;->c:D

    add-double/2addr v0, v2

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ksad/lottie/p/b;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ksad/lottie/p/b;->e:I

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/ksad/lottie/p/b;->f:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v4, v2, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ksad/lottie/p/b;->h:I

    add-int/2addr v0, v1

    return v0
.end method
