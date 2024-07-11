.class Lcom/kwad/sdk/reward/b/b/a/c$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/webview/jshandler/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/reward/b/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/b/b/a/c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/b/b/a/c;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/b/a/c$9;->a:Lcom/kwad/sdk/reward/b/b/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/a/c$9;->a:Lcom/kwad/sdk/reward/b/b/a/c;

    invoke-static {v0, p1}, Lcom/kwad/sdk/reward/b/b/a/c;->a(Lcom/kwad/sdk/reward/b/b/a/c;I)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "load time:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/b/a/c$9;->a:Lcom/kwad/sdk/reward/b/b/a/c;

    invoke-static {v2}, Lcom/kwad/sdk/reward/b/b/a/c;->h(Lcom/kwad/sdk/reward/b/b/a/c;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RewardActionBarWeb"

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/b/a/c$9;->a:Lcom/kwad/sdk/reward/b/b/a/c;

    invoke-static {p1}, Lcom/kwad/sdk/reward/b/b/a/c;->i(Lcom/kwad/sdk/reward/b/b/a/c;)Z

    move-result p1

    if-eqz p1, :cond_51

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/b/a/c$9;->a:Lcom/kwad/sdk/reward/b/b/a/c;

    invoke-static {p1}, Lcom/kwad/sdk/reward/b/b/a/c;->j(Lcom/kwad/sdk/reward/b/b/a/c;)Lcom/kwad/sdk/reward/a;

    move-result-object p1

    iget-object p1, p1, Lcom/kwad/sdk/reward/a;->i:Lcom/kwad/sdk/reward/c/a;

    invoke-virtual {p1}, Lcom/kwad/sdk/reward/c/a;->i()I

    move-result p1

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/a/c$9;->a:Lcom/kwad/sdk/reward/b/b/a/c;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/b/a/c;->k(Lcom/kwad/sdk/reward/b/b/a/c;)Lcom/kwad/sdk/reward/a;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->i:Lcom/kwad/sdk/reward/c/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/reward/c/a;->j()I

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/a/c$9;->a:Lcom/kwad/sdk/reward/b/b/a/c;

    invoke-static {v1}, Lcom/kwad/sdk/reward/b/b/a/c;->l(Lcom/kwad/sdk/reward/b/b/a/c;)Lcom/kwad/sdk/reward/b/b/a/a;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/kwad/sdk/reward/b/b/a/a;->b(II)V

    :cond_51
    return-void
.end method
