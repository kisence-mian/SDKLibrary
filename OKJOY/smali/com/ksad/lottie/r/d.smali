.class public Lcom/ksad/lottie/r/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:F

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .registers 5

    iget v0, p0, Lcom/ksad/lottie/r/d;->a:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/ksad/lottie/r/d;->a:F

    iget v0, p0, Lcom/ksad/lottie/r/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ksad/lottie/r/d;->b:I

    iget v0, p0, Lcom/ksad/lottie/r/d;->b:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1d

    iget v1, p0, Lcom/ksad/lottie/r/d;->a:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/ksad/lottie/r/d;->a:F

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ksad/lottie/r/d;->b:I

    :cond_1d
    return-void
.end method
