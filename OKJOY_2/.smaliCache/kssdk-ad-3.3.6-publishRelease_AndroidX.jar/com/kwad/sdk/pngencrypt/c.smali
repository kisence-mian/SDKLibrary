.class public Lcom/kwad/sdk/pngencrypt/c;
.super Lcom/kwad/sdk/pngencrypt/b;


# instance fields
.field protected e:Lcom/kwad/sdk/pngencrypt/k;

.field protected f:Lcom/kwad/sdk/pngencrypt/k;

.field protected g:Lcom/kwad/sdk/pngencrypt/e;

.field protected h:I

.field protected i:Lcom/kwad/sdk/pngencrypt/chunk/e;

.field protected final j:Z

.field private k:J

.field private l:Z

.field private m:Z

.field private n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:J

.field private p:J

.field private q:J

.field private r:Lcom/kwad/sdk/pngencrypt/g;

.field private s:Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;


# direct methods
.method public constructor <init>(Z)V
    .registers 5

    invoke-direct {p0}, Lcom/kwad/sdk/pngencrypt/b;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/c;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/pngencrypt/c;->i:Lcom/kwad/sdk/pngencrypt/chunk/e;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kwad/sdk/pngencrypt/c;->k:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/kwad/sdk/pngencrypt/c;->l:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/kwad/sdk/pngencrypt/c;->m:Z

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/kwad/sdk/pngencrypt/c;->n:Ljava/util/Set;

    iput-wide v0, p0, Lcom/kwad/sdk/pngencrypt/c;->o:J

    iput-wide v0, p0, Lcom/kwad/sdk/pngencrypt/c;->p:J

    iput-wide v0, p0, Lcom/kwad/sdk/pngencrypt/c;->q:J

    sget-object v0, Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;->LOAD_CHUNK_ALWAYS:Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;

    iput-object v0, p0, Lcom/kwad/sdk/pngencrypt/c;->s:Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;

    iput-boolean p1, p0, Lcom/kwad/sdk/pngencrypt/c;->j:Z

    new-instance p1, Lcom/kwad/sdk/pngencrypt/chunk/a;

    invoke-direct {p1}, Lcom/kwad/sdk/pngencrypt/chunk/a;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/c;->r:Lcom/kwad/sdk/pngencrypt/g;

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 6

    const-string v0, "IHDR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "unexpected chunk "

    if-eqz v0, :cond_2e

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/c;->h:I

    if-gez v0, :cond_13

    const/4 p1, 0x0

    :goto_f
    iput p1, p0, Lcom/kwad/sdk/pngencrypt/c;->h:I

    goto/16 :goto_b8

    :cond_13
    new-instance v0, Lcom/kwad/sdk/pngencrypt/PngjException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    :goto_29
    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_b8

    :cond_2e
    const-string v0, "PLTE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_59

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/c;->h:I

    if-eqz v0, :cond_57

    if-ne v0, v2, :cond_3e

    goto :goto_57

    :cond_3e
    new-instance v0, Lcom/kwad/sdk/pngencrypt/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected chunk here "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    goto :goto_29

    :cond_57
    :goto_57
    const/4 p1, 0x2

    goto :goto_f

    :cond_59
    const-string v0, "IDAT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x4

    if-eqz v0, :cond_82

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/c;->h:I

    if-ltz v0, :cond_6b

    if-gt v0, v3, :cond_6b

    iput v3, p0, Lcom/kwad/sdk/pngencrypt/c;->h:I

    goto :goto_b8

    :cond_6b
    new-instance v0, Lcom/kwad/sdk/pngencrypt/PngjException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    goto :goto_29

    :cond_82
    const-string v0, "IEND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/c;->h:I

    if-lt v0, v3, :cond_91

    const/4 p1, 0x6

    goto/16 :goto_f

    :cond_91
    new-instance v0, Lcom/kwad/sdk/pngencrypt/PngjException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    goto :goto_29

    :cond_a8
    iget p1, p0, Lcom/kwad/sdk/pngencrypt/c;->h:I

    if-gt p1, v2, :cond_af

    iput v2, p0, Lcom/kwad/sdk/pngencrypt/c;->h:I

    goto :goto_b8

    :cond_af
    const/4 v0, 0x3

    if-gt p1, v0, :cond_b5

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/c;->h:I

    goto :goto_b8

    :cond_b5
    const/4 p1, 0x5

    goto/16 :goto_f

    :goto_b8
    return-void
.end method


# virtual methods
.method public a([BII)I
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/kwad/sdk/pngencrypt/b;->a([BII)I

    move-result p1

    return p1
.end method

.method protected a(Ljava/lang/String;)Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;
    .registers 6

    new-instance v0, Lcom/kwad/sdk/pngencrypt/j;

    iget-boolean v1, p0, Lcom/kwad/sdk/pngencrypt/c;->j:Z

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/c;->l()Lcom/kwad/sdk/pngencrypt/k;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/pngencrypt/c;->g:Lcom/kwad/sdk/pngencrypt/e;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/kwad/sdk/pngencrypt/j;-><init>(Ljava/lang/String;ZLcom/kwad/sdk/pngencrypt/k;Lcom/kwad/sdk/pngencrypt/e;)V

    return-object v0
.end method

.method protected a(ILjava/lang/String;J)V
    .registers 5

    invoke-direct {p0, p2}, Lcom/kwad/sdk/pngencrypt/c;->e(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/kwad/sdk/pngencrypt/b;->a(ILjava/lang/String;J)V

    return-void
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/kwad/sdk/pngencrypt/c;->o:J

    return-void
.end method

.method protected a(Lcom/kwad/sdk/pngencrypt/ChunkReader;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/kwad/sdk/pngencrypt/b;->a(Lcom/kwad/sdk/pngencrypt/ChunkReader;)V

    invoke-virtual {p1}, Lcom/kwad/sdk/pngencrypt/ChunkReader;->a()Lcom/kwad/sdk/pngencrypt/chunk/d;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/pngencrypt/chunk/d;->c:Ljava/lang/String;

    const-string v1, "IHDR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    new-instance v0, Lcom/kwad/sdk/pngencrypt/chunk/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kwad/sdk/pngencrypt/chunk/q;-><init>(Lcom/kwad/sdk/pngencrypt/k;)V

    invoke-virtual {p1}, Lcom/kwad/sdk/pngencrypt/ChunkReader;->a()Lcom/kwad/sdk/pngencrypt/chunk/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/pngencrypt/chunk/q;->a(Lcom/kwad/sdk/pngencrypt/chunk/d;)V

    invoke-virtual {v0}, Lcom/kwad/sdk/pngencrypt/chunk/q;->i()Lcom/kwad/sdk/pngencrypt/k;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/sdk/pngencrypt/c;->e:Lcom/kwad/sdk/pngencrypt/k;

    iput-object v1, p0, Lcom/kwad/sdk/pngencrypt/c;->f:Lcom/kwad/sdk/pngencrypt/k;

    invoke-virtual {v0}, Lcom/kwad/sdk/pngencrypt/chunk/q;->h()Z

    move-result v0

    if-eqz v0, :cond_35

    new-instance v0, Lcom/kwad/sdk/pngencrypt/e;

    iget-object v1, p0, Lcom/kwad/sdk/pngencrypt/c;->f:Lcom/kwad/sdk/pngencrypt/k;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/pngencrypt/e;-><init>(Lcom/kwad/sdk/pngencrypt/k;)V

    iput-object v0, p0, Lcom/kwad/sdk/pngencrypt/c;->g:Lcom/kwad/sdk/pngencrypt/e;

    :cond_35
    new-instance v0, Lcom/kwad/sdk/pngencrypt/chunk/e;

    iget-object v1, p0, Lcom/kwad/sdk/pngencrypt/c;->e:Lcom/kwad/sdk/pngencrypt/k;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/pngencrypt/chunk/e;-><init>(Lcom/kwad/sdk/pngencrypt/k;)V

    iput-object v0, p0, Lcom/kwad/sdk/pngencrypt/c;->i:Lcom/kwad/sdk/pngencrypt/chunk/e;

    :cond_3e
    iget-object v0, p1, Lcom/kwad/sdk/pngencrypt/ChunkReader;->a:Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;

    sget-object v1, Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;->BUFFER:Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;

    if-ne v0, v1, :cond_5c

    invoke-virtual {p1}, Lcom/kwad/sdk/pngencrypt/ChunkReader;->a()Lcom/kwad/sdk/pngencrypt/chunk/d;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/pngencrypt/chunk/d;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/pngencrypt/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-wide v0, p0, Lcom/kwad/sdk/pngencrypt/c;->k:J

    invoke-virtual {p1}, Lcom/kwad/sdk/pngencrypt/ChunkReader;->a()Lcom/kwad/sdk/pngencrypt/chunk/d;

    move-result-object v2

    iget v2, v2, Lcom/kwad/sdk/pngencrypt/chunk/d;->a:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kwad/sdk/pngencrypt/c;->k:J

    :cond_5c
    iget-object v0, p1, Lcom/kwad/sdk/pngencrypt/ChunkReader;->a:Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;

    sget-object v1, Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;->BUFFER:Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;

    if-eq v0, v1, :cond_66

    iget-boolean v0, p0, Lcom/kwad/sdk/pngencrypt/c;->m:Z

    if-eqz v0, :cond_7b

    :cond_66
    :try_start_66
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/c;->r:Lcom/kwad/sdk/pngencrypt/g;

    invoke-virtual {p1}, Lcom/kwad/sdk/pngencrypt/ChunkReader;->a()Lcom/kwad/sdk/pngencrypt/chunk/d;

    move-result-object p1

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/c;->j()Lcom/kwad/sdk/pngencrypt/k;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/kwad/sdk/pngencrypt/g;->a(Lcom/kwad/sdk/pngencrypt/chunk/d;Lcom/kwad/sdk/pngencrypt/k;)Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/c;->i:Lcom/kwad/sdk/pngencrypt/chunk/e;

    iget v1, p0, Lcom/kwad/sdk/pngencrypt/c;->h:I

    invoke-virtual {v0, p1, v1}, Lcom/kwad/sdk/pngencrypt/chunk/e;->a(Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;I)V
    :try_end_7b
    .catch Lcom/kwad/sdk/pngencrypt/PngjException; {:try_start_66 .. :try_end_7b} :catch_85

    :cond_7b
    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/c;->b()Z

    move-result p1

    if-eqz p1, :cond_84

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/c;->i()V

    :cond_84
    return-void

    :catch_85
    move-exception p1

    throw p1
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/pngencrypt/c;->l:Z

    return-void
.end method

.method public a(ILjava/lang/String;)Z
    .registers 13

    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/pngencrypt/b;->a(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-wide v2, p0, Lcom/kwad/sdk/pngencrypt/c;->o:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_51

    int-to-long v2, p1

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/c;->a()J

    move-result-wide v6

    add-long/2addr v2, v6

    iget-wide v6, p0, Lcom/kwad/sdk/pngencrypt/c;->o:J

    cmp-long v0, v2, v6

    if-lez v0, :cond_51

    new-instance v0, Lcom/kwad/sdk/pngencrypt/PngjException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum total bytes to read exceeeded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, p0, Lcom/kwad/sdk/pngencrypt/c;->o:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " offset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/c;->a()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_51
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/c;->n:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    return v1

    :cond_5a
    invoke-static {p2}, Lcom/kwad/sdk/pngencrypt/chunk/b;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_62

    return v2

    :cond_62
    iget-wide v6, p0, Lcom/kwad/sdk/pngencrypt/c;->p:J

    cmp-long v0, v6, v4

    if-lez v0, :cond_6e

    int-to-long v8, p1

    cmp-long v0, v8, v6

    if-lez v0, :cond_6e

    return v1

    :cond_6e
    iget-wide v6, p0, Lcom/kwad/sdk/pngencrypt/c;->q:J

    cmp-long v0, v6, v4

    if-lez v0, :cond_7d

    int-to-long v3, p1

    iget-wide v8, p0, Lcom/kwad/sdk/pngencrypt/c;->k:J

    sub-long/2addr v6, v8

    cmp-long p1, v3, v6

    if-lez p1, :cond_7d

    return v1

    :cond_7d
    sget-object p1, Lcom/kwad/sdk/pngencrypt/c$1;->a:[I

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/c;->s:Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;

    invoke-virtual {v0}, Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_94

    goto :goto_93

    :pswitch_8b
    return v1

    :pswitch_8c
    invoke-static {p2}, Lcom/kwad/sdk/pngencrypt/chunk/b;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_93

    return v1

    :cond_93
    :goto_93
    return v2

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_8c
        :pswitch_8b
    .end packed-switch
.end method

.method public b(J)V
    .registers 3

    iput-wide p1, p0, Lcom/kwad/sdk/pngencrypt/c;->p:J

    return-void
.end method

.method protected b(ILjava/lang/String;)Z
    .registers 3

    iget-boolean p1, p0, Lcom/kwad/sdk/pngencrypt/c;->l:Z

    return p1
.end method

.method protected b(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "IDAT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c(J)V
    .registers 3

    iput-wide p1, p0, Lcom/kwad/sdk/pngencrypt/c;->q:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/c;->n:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .registers 3

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/c;->h:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_7

    iput v1, p0, Lcom/kwad/sdk/pngencrypt/c;->h:I

    :cond_7
    invoke-super {p0}, Lcom/kwad/sdk/pngencrypt/b;->close()V

    return-void
.end method

.method protected d(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p1}, Lcom/kwad/sdk/pngencrypt/chunk/b;->b(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/c;->h:I

    return v0
.end method

.method public g()Z
    .registers 3

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/c;->f()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public h()Lcom/kwad/sdk/pngencrypt/j;
    .registers 3

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/c;->c()Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;

    move-result-object v0

    instance-of v1, v0, Lcom/kwad/sdk/pngencrypt/j;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/kwad/sdk/pngencrypt/j;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method protected i()V
    .registers 1

    return-void
.end method

.method public j()Lcom/kwad/sdk/pngencrypt/k;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/c;->e:Lcom/kwad/sdk/pngencrypt/k;

    return-object v0
.end method

.method public k()Lcom/kwad/sdk/pngencrypt/e;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/c;->g:Lcom/kwad/sdk/pngencrypt/e;

    return-object v0
.end method

.method public l()Lcom/kwad/sdk/pngencrypt/k;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/c;->f:Lcom/kwad/sdk/pngencrypt/k;

    return-object v0
.end method
