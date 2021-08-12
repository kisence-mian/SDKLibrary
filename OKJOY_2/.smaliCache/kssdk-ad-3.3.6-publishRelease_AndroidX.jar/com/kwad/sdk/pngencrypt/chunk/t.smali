.class public Lcom/kwad/sdk/pngencrypt/chunk/t;
.super Lcom/kwad/sdk/pngencrypt/chunk/aa;


# instance fields
.field private h:J

.field private i:J

.field private j:I


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/pngencrypt/k;)V
    .registers 3

    const-string v0, "oFFs"

    invoke-direct {p0, v0, p1}, Lcom/kwad/sdk/pngencrypt/chunk/aa;-><init>(Ljava/lang/String;Lcom/kwad/sdk/pngencrypt/k;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/pngencrypt/chunk/d;)V
    .registers 9

    iget v0, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->a:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3a

    iget-object v0, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kwad/sdk/pngencrypt/n;->c([BI)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/t;->h:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-wide v5, 0x100000000L

    if-gez v4, :cond_1e

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/t;->h:J

    :cond_1e
    iget-object v0, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/kwad/sdk/pngencrypt/n;->c([BI)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/t;->i:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2f

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/t;->i:J

    :cond_2f
    iget-object p1, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/kwad/sdk/pngencrypt/n;->a([BI)I

    move-result p1

    iput p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/t;->j:I

    return-void

    :cond_3a
    new-instance v0, Lcom/kwad/sdk/pngencrypt/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad chunk length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
