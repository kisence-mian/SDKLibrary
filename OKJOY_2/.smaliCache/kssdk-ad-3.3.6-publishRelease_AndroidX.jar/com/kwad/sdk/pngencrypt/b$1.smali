.class Lcom/kwad/sdk/pngencrypt/b$1;
.super Lcom/kwad/sdk/pngencrypt/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/pngencrypt/b;->a(ILjava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/kwad/sdk/pngencrypt/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/pngencrypt/b;ILjava/lang/String;ZJLcom/kwad/sdk/pngencrypt/DeflatedChunksSet;)V
    .registers 15

    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/b$1;->d:Lcom/kwad/sdk/pngencrypt/b;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move-wide v4, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/kwad/sdk/pngencrypt/d;-><init>(ILjava/lang/String;ZJLcom/kwad/sdk/pngencrypt/DeflatedChunksSet;)V

    return-void
.end method


# virtual methods
.method protected c()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/pngencrypt/d;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/b$1;->d:Lcom/kwad/sdk/pngencrypt/b;

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/pngencrypt/b;->a(Lcom/kwad/sdk/pngencrypt/ChunkReader;)V

    return-void
.end method
