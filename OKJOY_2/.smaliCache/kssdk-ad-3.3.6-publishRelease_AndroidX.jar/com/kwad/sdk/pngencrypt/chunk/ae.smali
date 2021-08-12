.class public abstract Lcom/kwad/sdk/pngencrypt/chunk/ae;
.super Lcom/kwad/sdk/pngencrypt/chunk/s;


# instance fields
.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/kwad/sdk/pngencrypt/k;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/pngencrypt/chunk/s;-><init>(Ljava/lang/String;Lcom/kwad/sdk/pngencrypt/k;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/ae;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/ae;->i:Ljava/lang/String;

    return-object v0
.end method
