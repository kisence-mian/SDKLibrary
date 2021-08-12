.class public Lcom/kwad/sdk/pngencrypt/chunk/e;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/kwad/sdk/pngencrypt/k;

.field c:Z


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/pngencrypt/k;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/e;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/e;->c:Z

    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/e;->b:Lcom/kwad/sdk/pngencrypt/k;

    return-void
.end method

.method protected static a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_c

    new-instance p2, Lcom/kwad/sdk/pngencrypt/chunk/e$1;

    invoke-direct {p2, p1}, Lcom/kwad/sdk/pngencrypt/chunk/e$1;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lcom/kwad/sdk/pngencrypt/chunk/b;->a(Ljava/util/List;Lcom/kwad/sdk/pngencrypt/chunk/c;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance v0, Lcom/kwad/sdk/pngencrypt/chunk/e$2;

    invoke-direct {v0, p1, p2}, Lcom/kwad/sdk/pngencrypt/chunk/e$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/kwad/sdk/pngencrypt/chunk/b;->a(Ljava/util/List;Lcom/kwad/sdk/pngencrypt/chunk/c;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/e;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/e;->a:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/kwad/sdk/pngencrypt/chunk/e;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;I)V
    .registers 3

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;->a(I)V

    iget-object p2, p0, Lcom/kwad/sdk/pngencrypt/chunk/e;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;->a:Ljava/lang/String;

    const-string p2, "PLTE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/e;->c:Z

    :cond_15
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChunkList: read: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/pngencrypt/chunk/e;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
