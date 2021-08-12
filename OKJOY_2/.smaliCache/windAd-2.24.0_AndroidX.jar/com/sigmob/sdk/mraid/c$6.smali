.class Lcom/sigmob/sdk/mraid/c$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/c;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/c;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/c;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/c$6;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c$6;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/c;->c(Lcom/sigmob/sdk/mraid/c;)Lcom/sigmob/sdk/mraid/a;

    move-result-object v1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c$6;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/c;->j(Lcom/sigmob/sdk/mraid/c;)Lcom/sigmob/sdk/mraid/f;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/c$6;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-static {v2}, Lcom/sigmob/sdk/mraid/c;->i(Lcom/sigmob/sdk/mraid/c;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/mraid/f;->b(Landroid/content/Context;)Z

    move-result v2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c$6;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/c;->j(Lcom/sigmob/sdk/mraid/c;)Lcom/sigmob/sdk/mraid/f;

    move-result-object v0

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/c$6;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-static {v3}, Lcom/sigmob/sdk/mraid/c;->i(Lcom/sigmob/sdk/mraid/c;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/mraid/f;->a(Landroid/content/Context;)Z

    move-result v3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c$6;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/c;->j(Lcom/sigmob/sdk/mraid/c;)Lcom/sigmob/sdk/mraid/f;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c$6;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/c;->i(Lcom/sigmob/sdk/mraid/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/f;->d(Landroid/content/Context;)Z

    move-result v4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c$6;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/c;->j(Lcom/sigmob/sdk/mraid/c;)Lcom/sigmob/sdk/mraid/f;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c$6;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/c;->i(Lcom/sigmob/sdk/mraid/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/f;->c(Landroid/content/Context;)Z

    move-result v5

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c$6;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/c;->g()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/sigmob/sdk/mraid/a;->a(ZZZZZZZ)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c$6;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/c;->c(Lcom/sigmob/sdk/mraid/c;)Lcom/sigmob/sdk/mraid/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c$6;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/c;->k(Lcom/sigmob/sdk/mraid/c;)Lcom/sigmob/sdk/base/models/ViewState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/a;->a(Lcom/sigmob/sdk/base/models/ViewState;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c$6;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/c;->c(Lcom/sigmob/sdk/mraid/c;)Lcom/sigmob/sdk/mraid/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c$6;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/c;->l(Lcom/sigmob/sdk/mraid/c;)Lcom/sigmob/sdk/base/models/PlacementType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/a;->a(Lcom/sigmob/sdk/base/models/PlacementType;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c$6;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/c;->c(Lcom/sigmob/sdk/mraid/c;)Lcom/sigmob/sdk/mraid/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c$6;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/c;->c(Lcom/sigmob/sdk/mraid/c;)Lcom/sigmob/sdk/mraid/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid/a;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/a;->a(Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c$6;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/c;->c(Lcom/sigmob/sdk/mraid/c;)Lcom/sigmob/sdk/mraid/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/a;->c()V

    return-void
.end method
