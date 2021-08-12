.class public Lcom/kwad/sdk/pngencrypt/chunk/j;
.super Lcom/kwad/sdk/pngencrypt/chunk/s;


# instance fields
.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:B

.field private p:B


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/pngencrypt/k;)V
    .registers 3

    const-string v0, "fcTL"

    invoke-direct {p0, v0, p1}, Lcom/kwad/sdk/pngencrypt/chunk/s;-><init>(Ljava/lang/String;Lcom/kwad/sdk/pngencrypt/k;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/pngencrypt/chunk/d;)V
    .registers 4

    iget-object v0, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kwad/sdk/pngencrypt/n;->c([BI)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/j;->h:I

    iget-object v0, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/kwad/sdk/pngencrypt/n;->c([BI)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/j;->i:I

    iget-object v0, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/kwad/sdk/pngencrypt/n;->c([BI)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/j;->j:I

    iget-object v0, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/kwad/sdk/pngencrypt/n;->c([BI)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/j;->k:I

    iget-object v0, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/kwad/sdk/pngencrypt/n;->c([BI)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/j;->l:I

    iget-object v0, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/kwad/sdk/pngencrypt/n;->b([BI)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/j;->m:I

    iget-object v0, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    const/16 v1, 0x16

    invoke-static {v0, v1}, Lcom/kwad/sdk/pngencrypt/n;->b([BI)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/j;->n:I

    iget-object v0, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    const/16 v1, 0x18

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/j;->o:B

    iget-object p1, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    const/16 v0, 0x19

    aget-byte p1, p1, v0

    iput-byte p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/j;->p:B

    return-void
.end method
