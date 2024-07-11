.class Lcom/kwad/sdk/core/download/b/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/download/b/b;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/download/b/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/download/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/download/b/b$3;->a:Lcom/kwad/sdk/core/download/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b$3;->a:Lcom/kwad/sdk/core/download/b/b;

    invoke-static {v0}, Lcom/kwad/sdk/core/download/b/b;->b(Lcom/kwad/sdk/core/download/b/b;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/api/KsAppDownloadListener;

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/kwad/sdk/core/download/b/b$3;->a:Lcom/kwad/sdk/core/download/b/b;

    invoke-static {v2, v1}, Lcom/kwad/sdk/core/download/b/b;->a(Lcom/kwad/sdk/core/download/b/b;Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    goto :goto_a

    :cond_1e
    return-void
.end method
