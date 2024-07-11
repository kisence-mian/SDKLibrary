.class public Lcom/kwad/sdk/pngencrypt/chunk/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/pngencrypt/g;


# instance fields
.field a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kwad/sdk/pngencrypt/chunk/a;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/a;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/sdk/pngencrypt/chunk/d;Lcom/kwad/sdk/pngencrypt/k;)Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;
    .registers 4

    iget-object v0, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/kwad/sdk/pngencrypt/chunk/a;->a(Ljava/lang/String;Lcom/kwad/sdk/pngencrypt/k;)Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/kwad/sdk/pngencrypt/chunk/a;->c(Ljava/lang/String;Lcom/kwad/sdk/pngencrypt/k;)Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;

    move-result-object v0

    :cond_e
    if-nez v0, :cond_16

    iget-object v0, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/kwad/sdk/pngencrypt/chunk/a;->b(Ljava/lang/String;Lcom/kwad/sdk/pngencrypt/k;)Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;

    move-result-object v0

    :cond_16
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;->b(Lcom/kwad/sdk/pngencrypt/chunk/d;)V

    iget-boolean p2, p0, Lcom/kwad/sdk/pngencrypt/chunk/a;->a:Z

    if-eqz p2, :cond_24

    iget-object p2, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    if-eqz p2, :cond_24

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;->a(Lcom/kwad/sdk/pngencrypt/chunk/d;)V

    :cond_24
    return-object v0
.end method

.method protected final a(Ljava/lang/String;Lcom/kwad/sdk/pngencrypt/k;)Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;
    .registers 4

    const-string v0, "IDAT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance p1, Lcom/kwad/sdk/pngencrypt/chunk/o;

    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/chunk/o;-><init>(Lcom/kwad/sdk/pngencrypt/k;)V

    return-object p1

    :cond_e
    const-string v0, "IHDR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance p1, Lcom/kwad/sdk/pngencrypt/chunk/q;

    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/chunk/q;-><init>(Lcom/kwad/sdk/pngencrypt/k;)V

    return-object p1

    :cond_1c
    const-string v0, "PLTE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance p1, Lcom/kwad/sdk/pngencrypt/chunk/v;

    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/chunk/v;-><init>(Lcom/kwad/sdk/pngencrypt/k;)V

    return-object p1

    :cond_2a
    const-string v0, "IEND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    new-instance p1, Lcom/kwad/sdk/pngencrypt/chunk/p;

    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/chunk/p;-><init>(Lcom/kwad/sdk/pngencrypt/k;)V

    return-object p1

    :cond_38
    const-string v0, "tEXt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    new-instance p1, Lcom/kwad/sdk/pngencrypt/chunk/ab;

    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/chunk/ab;-><init>(Lcom/kwad/sdk/pngencrypt/k;)V

    return-object p1

    :cond_46
    const-string v0, "iTXt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    new-instance p1, Lcom/kwad/sdk/pngencrypt/chunk/r;

    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/chunk/r;-><init>(Lcom/kwad/sdk/pngencrypt/k;)V

    return-object p1

    :cond_54
    const-string v0, "zTXt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    new-instance p1, Lcom/kwad/sdk/pngencrypt/chunk/ag;

    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/chunk/ag;-><init>(Lcom/kwad/sdk/pngencrypt/k;)V

    return-object p1

    :cond_62
    const-string v0, "bKGD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    new-instance p1, Lcom/kwad/sdk/pngencrypt/chunk/h;

    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/chunk/h;-><init>(Lcom/kwad/sdk/pngencrypt/k;)V

    return-object p1

    :cond_70
    const-string v0, "gAMA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    new-instance p1, Lcom/kwad/sdk/pngencrypt/chunk/l;

    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/chunk/l;-><init>(Lcom/kwad/sdk/pngencrypt/k;)V

    return-object p1

    :cond_7e
    const-string v0, "pHYs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    new-instance p1, Lcom/kwad/sdk/pngencrypt/chunk/u;

    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/chunk/u;-><init>(Lcom/kwad/sdk/pngencrypt/k;)V

    return-object p1

    :cond_8c
    const-string v0, "iCCP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    new-instance p1, Lcom/kwad/sdk/pngencrypt/chunk/n;

    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/chunk/n;-><init>(Lcom/kwad/sdk/pngencrypt/k;)V

    return-object p1

    :cond_9a
    const-string v0, "tIME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    new-instance p1, Lcom/kwad/sdk/pngencrypt/chunk/ac;

    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/chunk/ac;-><init>(Lcom/kwad/sdk/pngencrypt/k;)V

    return-object p1

    :cond_a8
    const-string v0, "tRNS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    new-instance p1, Lcom/kwad/sdk/pngencrypt/chunk/ad;

    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/chunk/ad;-><init>(Lcom/kwad/sdk/pngencrypt/k;)V

    return-object p1

    :cond_b6
    const-string v0, "cHRM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    new-instance p1, Lcom/kwad/sdk/pngencrypt/chunk/i;

    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/chunk/i;-><init>(Lcom/kwad/sdk/pngencrypt/k;)V

    return-object p1

    :cond_c4
    const-string v0, "sBIT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    new-instance p1, Lcom/kwad/sdk/pngencrypt/chunk/w;

    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/chunk/w;-><init>(Lcom/kwad/sdk/pngencrypt/k;)V

    return-object p1

    :cond_d2
    const-string v0, "sRGB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e0

    new-instance p1, Lcom/kwad/sdk/pngencrypt/chunk/y;

    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/chunk/y;-><init>(Lcom/kwad/sdk/pngencrypt/k;)V

    return-object p1

    :cond_e0
    const-string v0, "hIST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ee

    new-instance p1, Lcom/kwad/sdk/pngencrypt/chunk/m;

    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/chunk/m;-><init>(Lcom/kwad/sdk/pngencrypt/k;)V

    return-object p1

    :cond_ee
    const-string v0, "sPLT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    new-instance p1, Lcom/kwad/sdk/pngencrypt/chunk/x;

    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/chunk/x;-><init>(Lcom/kwad/sdk/pngencrypt/k;)V

    return-object p1

    :cond_fc
    const-string v0, "fdAT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10a

    new-instance p1, Lcom/kwad/sdk/pngencrypt/chunk/k;

    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/chunk/k;-><init>(Lcom/kwad/sdk/pngencrypt/k;)V

    return-object p1

    :cond_10a
    const-string v0, "acTL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_118

    new-instance p1, Lcom/kwad/sdk/pngencrypt/chunk/g;

    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/chunk/g;-><init>(Lcom/kwad/sdk/pngencrypt/k;)V

    return-object p1

    :cond_118
    const-string v0, "fcTL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_126

    new-instance p1, Lcom/kwad/sdk/pngencrypt/chunk/j;

    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/chunk/j;-><init>(Lcom/kwad/sdk/pngencrypt/k;)V

    return-object p1

    :cond_126
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final b(Ljava/lang/String;Lcom/kwad/sdk/pngencrypt/k;)Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;
    .registers 4

    new-instance v0, Lcom/kwad/sdk/pngencrypt/chunk/af;

    invoke-direct {v0, p1, p2}, Lcom/kwad/sdk/pngencrypt/chunk/af;-><init>(Ljava/lang/String;Lcom/kwad/sdk/pngencrypt/k;)V

    return-object v0
.end method

.method protected c(Ljava/lang/String;Lcom/kwad/sdk/pngencrypt/k;)Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;
    .registers 4

    const-string v0, "oFFs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance p1, Lcom/kwad/sdk/pngencrypt/chunk/t;

    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/chunk/t;-><init>(Lcom/kwad/sdk/pngencrypt/k;)V

    return-object p1

    :cond_e
    const-string v0, "sTER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    new-instance p1, Lcom/kwad/sdk/pngencrypt/chunk/z;

    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/chunk/z;-><init>(Lcom/kwad/sdk/pngencrypt/k;)V

    return-object p1

    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method
