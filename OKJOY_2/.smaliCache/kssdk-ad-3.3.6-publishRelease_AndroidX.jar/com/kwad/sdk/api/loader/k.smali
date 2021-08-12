.class Lcom/kwad/sdk/api/loader/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/api/loader/k$b;,
        Lcom/kwad/sdk/api/loader/k$h;,
        Lcom/kwad/sdk/api/loader/k$d;,
        Lcom/kwad/sdk/api/loader/k$g;,
        Lcom/kwad/sdk/api/loader/k$e;,
        Lcom/kwad/sdk/api/loader/k$a;,
        Lcom/kwad/sdk/api/loader/k$c;,
        Lcom/kwad/sdk/api/loader/k$f;
    }
.end annotation


# direct methods
.method static a(Ljava/lang/String;)Lcom/kwad/sdk/api/loader/k$f;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/kwad/sdk/api/loader/k$f<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/kwad/sdk/api/loader/Loader;->get()Lcom/kwad/sdk/api/loader/Loader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/api/loader/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/api/loader/k$e;

    new-instance v2, Lcom/kwad/sdk/api/loader/k$g;

    new-instance v3, Lcom/kwad/sdk/api/loader/k$d;

    new-instance v4, Lcom/kwad/sdk/api/loader/k$h;

    new-instance v5, Lcom/kwad/sdk/api/loader/k$b;

    invoke-direct {v5, p0}, Lcom/kwad/sdk/api/loader/k$b;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v0}, Lcom/kwad/sdk/api/loader/k$h;-><init>(Lcom/kwad/sdk/api/loader/k$f;Landroid/content/Context;)V

    invoke-direct {v3, v4, v0}, Lcom/kwad/sdk/api/loader/k$d;-><init>(Lcom/kwad/sdk/api/loader/k$f;Landroid/content/Context;)V

    invoke-direct {v2, v3, v0}, Lcom/kwad/sdk/api/loader/k$g;-><init>(Lcom/kwad/sdk/api/loader/k$f;Landroid/content/Context;)V

    invoke-direct {v1, v2, v0}, Lcom/kwad/sdk/api/loader/k$e;-><init>(Lcom/kwad/sdk/api/loader/k$f;Landroid/content/Context;)V

    return-object v1
.end method
