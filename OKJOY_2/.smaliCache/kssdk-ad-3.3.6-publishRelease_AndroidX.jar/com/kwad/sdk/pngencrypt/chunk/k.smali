.class public Lcom/kwad/sdk/pngencrypt/chunk/k;
.super Lcom/kwad/sdk/pngencrypt/chunk/s;


# instance fields
.field h:I

.field private i:I

.field private j:[B


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/pngencrypt/k;)V
    .registers 3

    const-string v0, "fdAT"

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

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/k;->i:I

    iget v0, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->a:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/k;->h:I

    iget-object p1, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/k;->j:[B

    return-void
.end method
