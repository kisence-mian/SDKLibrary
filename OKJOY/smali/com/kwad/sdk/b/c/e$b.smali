.class Lcom/kwad/sdk/b/c/e$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/b/c/e;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/b/c/e;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/b/c/e;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/b/c/e$b;->a:Lcom/kwad/sdk/b/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e$b;->a:Lcom/kwad/sdk/b/c/e;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/e;->k(Lcom/kwad/sdk/b/c/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ksad/download/k/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e$b;->a:Lcom/kwad/sdk/b/c/e;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/e;->l(Lcom/kwad/sdk/b/c/e;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/b/c/e$b;->a:Lcom/kwad/sdk/b/c/e;

    invoke-static {v1}, Lcom/kwad/sdk/b/c/e;->m(Lcom/kwad/sdk/b/c/e;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "ksad_loading_retry_when_disconnected"

    invoke-static {v1, v2}, Lcom/kwad/sdk/e/l;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/f;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lcom/kwad/sdk/b/c/e$b;->a:Lcom/kwad/sdk/b/c/e;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/b;->h()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e$b;->a:Lcom/kwad/sdk/b/c/e;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/b;->k()V

    goto :goto_21
.end method
