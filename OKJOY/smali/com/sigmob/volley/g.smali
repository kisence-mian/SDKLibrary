.class public Lcom/sigmob/volley/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/ab;


# static fields
.field public static final a:I = 0x2710

.field public static final b:I = 0x2710

.field public static final c:I = 0x2

.field public static final d:F


# instance fields
.field private final e:I

.field private final f:F

.field private final g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0x2710

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sigmob/volley/g;-><init>(IIF)V

    return-void
.end method

.method public constructor <init>(IIF)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sigmob/volley/g;->g:I

    iput p1, p0, Lcom/sigmob/volley/g;->h:I

    iput p2, p0, Lcom/sigmob/volley/g;->e:I

    iput p3, p0, Lcom/sigmob/volley/g;->f:F

    return-void
.end method

.method public constructor <init>(IIIF)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sigmob/volley/g;->g:I

    iput p2, p0, Lcom/sigmob/volley/g;->h:I

    iput p3, p0, Lcom/sigmob/volley/g;->e:I

    iput p4, p0, Lcom/sigmob/volley/g;->f:F

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/sigmob/volley/g;->h:I

    return v0
.end method

.method public a(Lcom/sigmob/volley/ae;)V
    .registers 5

    iget v0, p0, Lcom/sigmob/volley/g;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sigmob/volley/g;->i:I

    iget v0, p0, Lcom/sigmob/volley/g;->h:I

    iget v1, p0, Lcom/sigmob/volley/g;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sigmob/volley/g;->f:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/volley/g;->h:I

    invoke-virtual {p0}, Lcom/sigmob/volley/g;->e()Z

    move-result v0

    if-nez v0, :cond_19

    throw p1

    :cond_19
    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/sigmob/volley/g;->i:I

    return v0
.end method

.method public c()F
    .registers 2

    iget v0, p0, Lcom/sigmob/volley/g;->f:F

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/sigmob/volley/g;->g:I

    return v0
.end method

.method protected e()Z
    .registers 3

    iget v0, p0, Lcom/sigmob/volley/g;->i:I

    iget v1, p0, Lcom/sigmob/volley/g;->e:I

    if-gt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
