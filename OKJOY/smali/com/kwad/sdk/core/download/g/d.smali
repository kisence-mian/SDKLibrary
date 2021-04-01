.class public Lcom/kwad/sdk/core/download/g/d;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/content/Context;Ljava/io/File;Lcom/ksad/download/a;Z)Lcom/kwad/sdk/export/proxy/AdDownloadProxy;
    .registers 6
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ksad/download/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/kwad/sdk/core/download/h/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/download/h/a;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/ksad/download/d;->a(Landroid/content/Context;Ljava/io/File;Lcom/ksad/download/f;)V

    invoke-static {}, Lcom/ksad/download/d;->e()Lcom/ksad/download/d;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/core/download/b;

    invoke-direct {v1}, Lcom/kwad/sdk/core/download/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ksad/download/d;->a(Lcom/ksad/download/c;)V

    invoke-static {p2}, Lcom/ksad/download/b;->a(Lcom/ksad/download/a;)V

    new-instance v0, Lcom/kwad/sdk/core/download/i/a;

    invoke-direct {v0, p3}, Lcom/kwad/sdk/core/download/i/a;-><init>(Z)V

    return-object v0
.end method
