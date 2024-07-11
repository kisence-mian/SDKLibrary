.class final Lcom/kwad/sdk/core/video/a/e$2;
.super Lcom/kwai/sodler/lib/ext/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/video/a/e;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/video/a/e$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/kwai/sodler/lib/ext/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/kwai/sodler/lib/a/f;)V
    .registers 2

    check-cast p1, Lcom/kwai/sodler/lib/h;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/video/a/e$2;->a(Lcom/kwai/sodler/lib/h;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/kwai/sodler/lib/a/f;Lcom/kwai/sodler/lib/a/a;)V
    .registers 3

    check-cast p1, Lcom/kwai/sodler/lib/h;

    check-cast p2, Lcom/kwai/sodler/lib/g;

    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/core/video/a/e$2;->a(Lcom/kwai/sodler/lib/h;Lcom/kwai/sodler/lib/g;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/kwai/sodler/lib/a/f;Lcom/kwai/sodler/lib/ext/PluginError;)V
    .registers 3

    check-cast p1, Lcom/kwai/sodler/lib/h;

    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/core/video/a/e$2;->a(Lcom/kwai/sodler/lib/h;Lcom/kwai/sodler/lib/ext/PluginError;)V

    return-void
.end method

.method public a(Lcom/kwai/sodler/lib/h;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/kwai/sodler/lib/ext/b$a;->a(Lcom/kwai/sodler/lib/h;)V

    invoke-static {}, Lcom/kwad/sdk/core/video/a/e;->c()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public a(Lcom/kwai/sodler/lib/h;Lcom/kwai/sodler/lib/ext/PluginError;)V
    .registers 3

    invoke-static {}, Lcom/kwad/sdk/core/video/a/e;->c()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public a(Lcom/kwai/sodler/lib/h;Lcom/kwai/sodler/lib/g;)V
    .registers 3

    invoke-static {}, Lcom/kwad/sdk/core/video/a/e;->c()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/kwad/sdk/core/video/a/e$2;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/kwad/sdk/core/video/a/e;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/kwad/sdk/core/video/a/e;->d()V

    return-void
.end method

.method public bridge synthetic b(Lcom/kwai/sodler/lib/a/f;)V
    .registers 2

    check-cast p1, Lcom/kwai/sodler/lib/h;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/video/a/e$2;->b(Lcom/kwai/sodler/lib/h;)V

    return-void
.end method

.method public b(Lcom/kwai/sodler/lib/h;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/kwai/sodler/lib/ext/b$a;->b(Lcom/kwai/sodler/lib/h;)V

    return-void
.end method
