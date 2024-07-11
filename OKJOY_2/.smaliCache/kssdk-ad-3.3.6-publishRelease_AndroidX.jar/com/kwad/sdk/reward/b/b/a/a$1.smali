.class Lcom/kwad/sdk/reward/b/b/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/reward/b/b/a/a;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/b/b/a/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/b/b/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/b/a/a$1;->a:Lcom/kwad/sdk/reward/b/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/a/a$1;->a:Lcom/kwad/sdk/reward/b/b/a/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kwad/sdk/reward/b/b/a/a;->a(Lcom/kwad/sdk/reward/b/b/a/a;Z)Z

    const-string v0, "ActionBarControl"

    const-string v2, "mHasOutTime"

    invoke-static {v0, v2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/b/a/a$1;->a:Lcom/kwad/sdk/reward/b/b/a/a;

    invoke-static {v2}, Lcom/kwad/sdk/reward/b/b/a/a;->a(Lcom/kwad/sdk/reward/b/b/a/a;)Lcom/kwad/sdk/reward/b/b/a/a$b;

    move-result-object v2

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/b/a/a$1;->a:Lcom/kwad/sdk/reward/b/b/a/a;

    invoke-static {v2}, Lcom/kwad/sdk/reward/b/b/a/a;->a(Lcom/kwad/sdk/reward/b/b/a/a;)Lcom/kwad/sdk/reward/b/b/a/a$b;

    move-result-object v2

    invoke-interface {v2}, Lcom/kwad/sdk/reward/b/b/a/a$b;->a()Z

    move-result v2

    if-eqz v2, :cond_3e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showWebActionBar success on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/b/a/a$1;->a:Lcom/kwad/sdk/reward/b/b/a/a;

    invoke-static {v2}, Lcom/kwad/sdk/reward/b/b/a/a;->b(Lcom/kwad/sdk/reward/b/b/a/a;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f

    :cond_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showWebActionBar out "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/reward/b/b/a/a$1;->a:Lcom/kwad/sdk/reward/b/b/a/a;

    invoke-static {v3}, Lcom/kwad/sdk/reward/b/b/a/a;->b(Lcom/kwad/sdk/reward/b/b/a/a;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/a/a$1;->a:Lcom/kwad/sdk/reward/b/b/a/a;

    invoke-static {v0, v1}, Lcom/kwad/sdk/reward/b/b/a/a;->b(Lcom/kwad/sdk/reward/b/b/a/a;Z)V

    :goto_5f
    return-void
.end method
