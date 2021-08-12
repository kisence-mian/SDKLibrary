.class public abstract Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field protected final e:Lcom/kwad/sdk/pngencrypt/k;

.field protected f:Lcom/kwad/sdk/pngencrypt/chunk/d;

.field protected g:I

.field private h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/kwad/sdk/pngencrypt/k;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;->h:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;->g:I

    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;->e:Lcom/kwad/sdk/pngencrypt/k;

    invoke-static {p1}, Lcom/kwad/sdk/pngencrypt/chunk/b;->b(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;->b:Z

    invoke-static {p1}, Lcom/kwad/sdk/pngencrypt/chunk/b;->c(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;->c:Z

    invoke-static {p1}, Lcom/kwad/sdk/pngencrypt/chunk/b;->d(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;->d:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;->f:Lcom/kwad/sdk/pngencrypt/chunk/d;

    if-eqz v0, :cond_7

    iget v0, v0, Lcom/kwad/sdk/pngencrypt/chunk/d;->a:I

    goto :goto_8

    :cond_7
    const/4 v0, -0x1

    :goto_8
    return v0
.end method

.method final a(I)V
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;->g:I

    return-void
.end method

.method protected abstract a(Lcom/kwad/sdk/pngencrypt/chunk/d;)V
.end method

.method public b()J
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;->f:Lcom/kwad/sdk/pngencrypt/chunk/d;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/kwad/sdk/pngencrypt/chunk/d;->c()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, -0x1

    :goto_b
    return-wide v0
.end method

.method b(Lcom/kwad/sdk/pngencrypt/chunk/d;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;->f:Lcom/kwad/sdk/pngencrypt/chunk/d;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chunk id= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
