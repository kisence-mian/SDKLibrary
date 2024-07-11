.class public abstract Lcom/kwad/sdk/pngencrypt/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static a()Lcom/kwad/sdk/pngencrypt/i;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kwad/sdk/pngencrypt/i<",
            "Lcom/kwad/sdk/pngencrypt/l;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/kwad/sdk/pngencrypt/l;->a()Lcom/kwad/sdk/pngencrypt/h;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/pngencrypt/m;->a(Lcom/kwad/sdk/pngencrypt/h;)Lcom/kwad/sdk/pngencrypt/i;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/kwad/sdk/pngencrypt/h;)Lcom/kwad/sdk/pngencrypt/i;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/kwad/sdk/pngencrypt/h<",
            "TT;>;)",
            "Lcom/kwad/sdk/pngencrypt/i<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/kwad/sdk/pngencrypt/m$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/pngencrypt/m$1;-><init>(Lcom/kwad/sdk/pngencrypt/h;)V

    return-object v0
.end method
