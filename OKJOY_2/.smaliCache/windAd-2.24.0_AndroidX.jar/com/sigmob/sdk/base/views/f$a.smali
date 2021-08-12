.class public Lcom/sigmob/sdk/base/views/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/views/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/base/views/f$a;->e:I

    iput v0, p0, Lcom/sigmob/sdk/base/views/f$a;->f:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/sigmob/sdk/base/views/f$a;->a:I

    const/16 v2, 0xc

    iput v2, p0, Lcom/sigmob/sdk/base/views/f$a;->b:I

    const-string v2, "#4d000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sigmob/sdk/base/views/f$a;->c:I

    const/16 v2, 0x12

    iput v2, p0, Lcom/sigmob/sdk/base/views/f$a;->d:I

    iput v0, p0, Lcom/sigmob/sdk/base/views/f$a;->e:I

    iput v0, p0, Lcom/sigmob/sdk/base/views/f$a;->f:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/f$a;->g:[I

    aput v0, v1, v0

    return-void
.end method


# virtual methods
.method a(I)Lcom/sigmob/sdk/base/views/f$a;
    .registers 2

    iput p1, p0, Lcom/sigmob/sdk/base/views/f$a;->b:I

    return-object p0
.end method

.method a()Lcom/sigmob/sdk/base/views/f;
    .registers 11

    new-instance v9, Lcom/sigmob/sdk/base/views/f;

    iget v1, p0, Lcom/sigmob/sdk/base/views/f$a;->a:I

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/f$a;->g:[I

    iget v3, p0, Lcom/sigmob/sdk/base/views/f$a;->b:I

    iget v4, p0, Lcom/sigmob/sdk/base/views/f$a;->c:I

    iget v5, p0, Lcom/sigmob/sdk/base/views/f$a;->d:I

    iget v6, p0, Lcom/sigmob/sdk/base/views/f$a;->e:I

    iget v7, p0, Lcom/sigmob/sdk/base/views/f$a;->f:I

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/sigmob/sdk/base/views/f;-><init>(I[IIIIIILcom/sigmob/sdk/base/views/f$1;)V

    return-object v9
.end method

.method b(I)Lcom/sigmob/sdk/base/views/f$a;
    .registers 2

    iput p1, p0, Lcom/sigmob/sdk/base/views/f$a;->c:I

    return-object p0
.end method

.method c(I)Lcom/sigmob/sdk/base/views/f$a;
    .registers 2

    iput p1, p0, Lcom/sigmob/sdk/base/views/f$a;->d:I

    return-object p0
.end method

.method d(I)Lcom/sigmob/sdk/base/views/f$a;
    .registers 2

    iput p1, p0, Lcom/sigmob/sdk/base/views/f$a;->e:I

    return-object p0
.end method

.method e(I)Lcom/sigmob/sdk/base/views/f$a;
    .registers 2

    iput p1, p0, Lcom/sigmob/sdk/base/views/f$a;->f:I

    return-object p0
.end method

.method f(I)Lcom/sigmob/sdk/base/views/f$a;
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/f$a;->g:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-object p0
.end method
