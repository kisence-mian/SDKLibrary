.class public Lcom/kwad/sdk/e/g$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/e/g;
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


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/kwad/sdk/e/g$a;->a:I

    iput v0, p0, Lcom/kwad/sdk/e/g$a;->b:I

    iput v0, p0, Lcom/kwad/sdk/e/g$a;->c:I

    iput v0, p0, Lcom/kwad/sdk/e/g$a;->d:I

    iput v0, p0, Lcom/kwad/sdk/e/g$a;->e:I

    iput v0, p0, Lcom/kwad/sdk/e/g$a;->f:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/kwad/sdk/e/g$a;->a:I

    iput v0, p0, Lcom/kwad/sdk/e/g$a;->b:I

    iput v0, p0, Lcom/kwad/sdk/e/g$a;->c:I

    iput v0, p0, Lcom/kwad/sdk/e/g$a;->d:I

    iput v0, p0, Lcom/kwad/sdk/e/g$a;->e:I

    iput v0, p0, Lcom/kwad/sdk/e/g$a;->f:I

    iput p1, p0, Lcom/kwad/sdk/e/g$a;->a:I

    iput p2, p0, Lcom/kwad/sdk/e/g$a;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/e/g$a;->c:I

    return v0
.end method

.method public a(FF)V
    .registers 4

    float-to-int v0, p1

    iput v0, p0, Lcom/kwad/sdk/e/g$a;->c:I

    float-to-int v0, p2

    iput v0, p0, Lcom/kwad/sdk/e/g$a;->d:I

    return-void
.end method

.method public a(II)V
    .registers 3

    iput p1, p0, Lcom/kwad/sdk/e/g$a;->a:I

    iput p2, p0, Lcom/kwad/sdk/e/g$a;->b:I

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/e/g$a;->d:I

    return v0
.end method

.method public b(FF)V
    .registers 4

    float-to-int v0, p1

    iput v0, p0, Lcom/kwad/sdk/e/g$a;->e:I

    float-to-int v0, p2

    iput v0, p0, Lcom/kwad/sdk/e/g$a;->f:I

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/e/g$a;->b:I

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/e/g$a;->e:I

    return v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/e/g$a;->f:I

    return v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/e/g$a;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/e/g$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/e/g$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/e/g$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/e/g$a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/e/g$a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/e/g$a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
