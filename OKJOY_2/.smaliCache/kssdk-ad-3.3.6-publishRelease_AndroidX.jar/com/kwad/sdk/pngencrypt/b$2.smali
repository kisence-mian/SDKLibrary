.class Lcom/kwad/sdk/pngencrypt/b$2;
.super Lcom/kwad/sdk/pngencrypt/ChunkReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/pngencrypt/b;->a(Ljava/lang/String;IJZ)Lcom/kwad/sdk/pngencrypt/ChunkReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/kwad/sdk/pngencrypt/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/pngencrypt/b;ILjava/lang/String;JLcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;)V
    .registers 13

    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/b$2;->d:Lcom/kwad/sdk/pngencrypt/b;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-wide v3, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/kwad/sdk/pngencrypt/ChunkReader;-><init>(ILjava/lang/String;JLcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;)V

    return-void
.end method


# virtual methods
.method protected a(I[BII)V
    .registers 5

    new-instance p1, Lcom/kwad/sdk/pngencrypt/PngjException;

    const-string p2, "should never happen"

    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected c()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/b$2;->d:Lcom/kwad/sdk/pngencrypt/b;

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/pngencrypt/b;->a(Lcom/kwad/sdk/pngencrypt/ChunkReader;)V

    return-void
.end method
