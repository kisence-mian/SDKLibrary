.class public Lcom/kwad/sdk/pngencrypt/chunk/ah;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/kwad/sdk/pngencrypt/chunk/e;

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/pngencrypt/chunk/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/ah;->a:Lcom/kwad/sdk/pngencrypt/chunk/e;

    instance-of p1, p1, Lcom/kwad/sdk/pngencrypt/chunk/f;

    if-eqz p1, :cond_b

    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    const/4 p1, 0x1

    :goto_c
    iput-boolean p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/ah;->b:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/kwad/sdk/pngencrypt/chunk/ae;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/pngencrypt/chunk/ah;->a:Lcom/kwad/sdk/pngencrypt/chunk/e;

    const-string v2, "tEXt"

    invoke-virtual {v1, v2, p1}, Lcom/kwad/sdk/pngencrypt/chunk/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/kwad/sdk/pngencrypt/chunk/ah;->a:Lcom/kwad/sdk/pngencrypt/chunk/e;

    const-string v2, "zTXt"

    invoke-virtual {v1, v2, p1}, Lcom/kwad/sdk/pngencrypt/chunk/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/kwad/sdk/pngencrypt/chunk/ah;->a:Lcom/kwad/sdk/pngencrypt/chunk/e;

    const-string v2, "iTXt"

    invoke-virtual {v1, v2, p1}, Lcom/kwad/sdk/pngencrypt/chunk/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/pngencrypt/chunk/ah;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p1, ""

    return-object p1

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/pngencrypt/chunk/ae;

    invoke-virtual {v1}, Lcom/kwad/sdk/pngencrypt/chunk/ae;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
