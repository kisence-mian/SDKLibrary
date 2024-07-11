.class public Lcom/sigmob/volley/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/q;


# instance fields
.field private final a:I

.field private final b:F

.field private final c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0x2710

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sigmob/volley/d;-><init>(IIF)V

    return-void
.end method

.method public constructor <init>(IIF)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sigmob/volley/d;->c:I

    iput p1, p0, Lcom/sigmob/volley/d;->d:I

    iput p2, p0, Lcom/sigmob/volley/d;->a:I

    iput p3, p0, Lcom/sigmob/volley/d;->b:F

    return-void
.end method

.method public constructor <init>(IIIF)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sigmob/volley/d;->c:I

    iput p2, p0, Lcom/sigmob/volley/d;->d:I

    iput p3, p0, Lcom/sigmob/volley/d;->a:I

    iput p4, p0, Lcom/sigmob/volley/d;->b:F

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/sigmob/volley/d;->d:I

    return v0
.end method

.method public a(Lcom/sigmob/volley/t;)V
    .registers 5

    iget v0, p0, Lcom/sigmob/volley/d;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sigmob/volley/d;->e:I

    iget v0, p0, Lcom/sigmob/volley/d;->d:I

    int-to-float v1, v0

    iget v2, p0, Lcom/sigmob/volley/d;->b:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/volley/d;->d:I

    invoke-virtual {p0}, Lcom/sigmob/volley/d;->d()Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_17
    throw p1
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/sigmob/volley/d;->e:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/sigmob/volley/d;->c:I

    return v0
.end method

.method protected d()Z
    .registers 3

    iget v0, p0, Lcom/sigmob/volley/d;->e:I

    iget v1, p0, Lcom/sigmob/volley/d;->a:I

    if-gt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
