.class Lcom/sigmob/sdk/mraid/h$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/h;->j()V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/h;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/h;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/h$7;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$7;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->c(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/d;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h$7;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/h;->j(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/s;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/h$7;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v2}, Lcom/sigmob/sdk/mraid/h;->i(Lcom/sigmob/sdk/mraid/h;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/mraid/s;->b(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/h$7;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v2}, Lcom/sigmob/sdk/mraid/h;->j(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/s;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/h$7;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v3}, Lcom/sigmob/sdk/mraid/h;->i(Lcom/sigmob/sdk/mraid/h;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sigmob/sdk/mraid/s;->a(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/h$7;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v3}, Lcom/sigmob/sdk/mraid/h;->j(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/s;

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/h$7;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v3}, Lcom/sigmob/sdk/mraid/h;->i(Lcom/sigmob/sdk/mraid/h;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sigmob/sdk/mraid/s;->d(Landroid/content/Context;)Z

    move-result v3

    iget-object v4, p0, Lcom/sigmob/sdk/mraid/h$7;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v4}, Lcom/sigmob/sdk/mraid/h;->j(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/s;

    iget-object v4, p0, Lcom/sigmob/sdk/mraid/h$7;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v4}, Lcom/sigmob/sdk/mraid/h;->i(Lcom/sigmob/sdk/mraid/h;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sigmob/sdk/mraid/s;->c(Landroid/content/Context;)Z

    move-result v4

    iget-object v5, p0, Lcom/sigmob/sdk/mraid/h$7;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v5}, Lcom/sigmob/sdk/mraid/h;->g()Z

    move-result v5

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/sigmob/sdk/mraid/d;->a(ZZZZZZZ)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$7;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->c(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/d;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h$7;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/h;->k(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/base/models/ViewState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/base/models/ViewState;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$7;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->c(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/d;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h$7;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/h;->l(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/base/models/PlacementType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/base/models/PlacementType;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$7;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->c(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/d;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h$7;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/h;->c(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid/d;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/d;->a(Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$7;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->c(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/d;->e()V

    return-void
.end method
