.class public Lcom/sigmob/sdk/base/views/o;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:[I


# direct methods
.method constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/sigmob/sdk/base/views/o;->e:I

    iput v1, p0, Lcom/sigmob/sdk/base/views/o;->f:I

    iput v2, p0, Lcom/sigmob/sdk/base/views/o;->a:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/sigmob/sdk/base/views/o;->b:I

    const-string v0, "#4d000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/o;->c:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/sigmob/sdk/base/views/o;->d:I

    iput v1, p0, Lcom/sigmob/sdk/base/views/o;->e:I

    iput v1, p0, Lcom/sigmob/sdk/base/views/o;->f:I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/o;->g:[I

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/o;->g:[I

    aput v1, v0, v1

    return-void
.end method


# virtual methods
.method a()Lcom/sigmob/sdk/base/views/n;
    .registers 10

    new-instance v0, Lcom/sigmob/sdk/base/views/n;

    iget v1, p0, Lcom/sigmob/sdk/base/views/o;->a:I

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/o;->g:[I

    iget v3, p0, Lcom/sigmob/sdk/base/views/o;->b:I

    iget v4, p0, Lcom/sigmob/sdk/base/views/o;->c:I

    iget v5, p0, Lcom/sigmob/sdk/base/views/o;->d:I

    iget v6, p0, Lcom/sigmob/sdk/base/views/o;->e:I

    iget v7, p0, Lcom/sigmob/sdk/base/views/o;->f:I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/sigmob/sdk/base/views/n;-><init>(I[IIIIIILcom/sigmob/sdk/base/views/n$1;)V

    return-object v0
.end method

.method a(I)Lcom/sigmob/sdk/base/views/o;
    .registers 2

    iput p1, p0, Lcom/sigmob/sdk/base/views/o;->a:I

    return-object p0
.end method

.method a([I)Lcom/sigmob/sdk/base/views/o;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/o;->g:[I

    return-object p0
.end method

.method b(I)Lcom/sigmob/sdk/base/views/o;
    .registers 2

    iput p1, p0, Lcom/sigmob/sdk/base/views/o;->b:I

    return-object p0
.end method

.method c(I)Lcom/sigmob/sdk/base/views/o;
    .registers 2

    iput p1, p0, Lcom/sigmob/sdk/base/views/o;->c:I

    return-object p0
.end method

.method d(I)Lcom/sigmob/sdk/base/views/o;
    .registers 2

    iput p1, p0, Lcom/sigmob/sdk/base/views/o;->d:I

    return-object p0
.end method

.method e(I)Lcom/sigmob/sdk/base/views/o;
    .registers 2

    iput p1, p0, Lcom/sigmob/sdk/base/views/o;->e:I

    return-object p0
.end method

.method f(I)Lcom/sigmob/sdk/base/views/o;
    .registers 2

    iput p1, p0, Lcom/sigmob/sdk/base/views/o;->f:I

    return-object p0
.end method

.method g(I)Lcom/sigmob/sdk/base/views/o;
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/o;->g:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-object p0
.end method
