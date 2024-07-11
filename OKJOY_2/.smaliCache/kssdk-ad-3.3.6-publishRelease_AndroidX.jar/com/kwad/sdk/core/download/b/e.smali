.class public Lcom/kwad/sdk/core/download/b/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Ljava/io/File;Lcom/ksad/download/a;Z)Lcom/kwad/sdk/export/proxy/AdDownloadProxy;
    .registers 5

    new-instance v0, Lcom/kwad/sdk/core/download/c/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/download/c/a;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/ksad/download/d;->a(Landroid/content/Context;Ljava/io/File;Lcom/ksad/download/f;)V

    invoke-static {}, Lcom/ksad/download/d;->a()Lcom/ksad/download/d;

    move-result-object p0

    new-instance p1, Lcom/kwad/sdk/core/download/b;

    invoke-direct {p1}, Lcom/kwad/sdk/core/download/b;-><init>()V

    invoke-virtual {p0, p1}, Lcom/ksad/download/d;->a(Lcom/ksad/download/c;)V

    invoke-static {p2}, Lcom/ksad/download/b;->a(Lcom/ksad/download/a;)V

    new-instance p0, Lcom/kwad/sdk/core/download/d/a;

    invoke-direct {p0, p3}, Lcom/kwad/sdk/core/download/d/a;-><init>(Z)V

    return-object p0
.end method
