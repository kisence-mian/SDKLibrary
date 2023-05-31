.class public Lcom/ksad/lottie/model/content/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:[F

.field private final b:[I


# direct methods
.method public constructor <init>([F[I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ksad/lottie/model/content/c;->a:[F

    iput-object p2, p0, Lcom/ksad/lottie/model/content/c;->b:[I

    return-void
.end method


# virtual methods
.method public a(Lcom/ksad/lottie/model/content/c;Lcom/ksad/lottie/model/content/c;F)V
    .registers 8

    iget-object v0, p1, Lcom/ksad/lottie/model/content/c;->b:[I

    array-length v0, v0

    iget-object v1, p2, Lcom/ksad/lottie/model/content/c;->b:[I

    array-length v1, v1

    if-ne v0, v1, :cond_31

    const/4 v0, 0x0

    :goto_9
    iget-object v1, p1, Lcom/ksad/lottie/model/content/c;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_60

    iget-object v1, p0, Lcom/ksad/lottie/model/content/c;->a:[F

    iget-object v2, p1, Lcom/ksad/lottie/model/content/c;->a:[F

    aget v2, v2, v0

    iget-object v3, p2, Lcom/ksad/lottie/model/content/c;->a:[F

    aget v3, v3, v0

    invoke-static {v2, v3, p3}, Lcom/ksad/lottie/r/e;->c(FFF)F

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/ksad/lottie/model/content/c;->b:[I

    iget-object v2, p1, Lcom/ksad/lottie/model/content/c;->b:[I

    aget v2, v2, v0

    iget-object v3, p2, Lcom/ksad/lottie/model/content/c;->b:[I

    aget v3, v3, v0

    invoke-static {p3, v2, v3}, Lcom/ksad/lottie/r/b;->a(FII)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot interpolate between gradients. Lengths vary ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/ksad/lottie/model/content/c;->b:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/ksad/lottie/model/content/c;->b:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    return-void
.end method

.method public a()[I
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/c;->b:[I

    return-object v0
.end method

.method public b()[F
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/c;->a:[F

    return-object v0
.end method

.method public c()I
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/c;->b:[I

    array-length v0, v0

    return v0
.end method
