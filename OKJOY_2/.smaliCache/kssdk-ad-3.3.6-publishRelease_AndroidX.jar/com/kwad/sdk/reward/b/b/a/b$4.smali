.class Lcom/kwad/sdk/reward/b/b/a/b$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/reward/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/reward/b/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/b/b/a/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/b/b/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/b/a/b$4;->a:Lcom/kwad/sdk/reward/b/b/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/a/b$4;->a:Lcom/kwad/sdk/reward/b/b/a/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kwad/sdk/reward/b/b/a/b;->c(Lcom/kwad/sdk/reward/b/b/a/b;Z)V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/a/b$4;->a:Lcom/kwad/sdk/reward/b/b/a/b;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/b/a/b;->d(Lcom/kwad/sdk/reward/b/b/a/b;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/a/b$4;->a:Lcom/kwad/sdk/reward/b/b/a/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kwad/sdk/reward/b/b/a/b;->b(Lcom/kwad/sdk/reward/b/b/a/b;Z)V

    :cond_e
    return-void
.end method
