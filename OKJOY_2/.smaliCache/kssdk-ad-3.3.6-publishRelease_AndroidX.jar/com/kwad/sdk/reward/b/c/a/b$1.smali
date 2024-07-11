.class Lcom/kwad/sdk/reward/b/c/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/c/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/reward/b/c/a/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/b/c/a/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/b/c/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/c/a/b$1;->a:Lcom/kwad/sdk/reward/b/c/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/a/b$1;->a:Lcom/kwad/sdk/reward/b/c/a/b;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/c/a/b;->a(Lcom/kwad/sdk/reward/b/c/a/b;)Lcom/kwad/sdk/reward/a;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->b:Lcom/kwad/sdk/reward/a/b;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/a/b$1;->a:Lcom/kwad/sdk/reward/b/c/a/b;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/c/a/b;->b(Lcom/kwad/sdk/reward/b/c/a/b;)Lcom/kwad/sdk/reward/a;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->b:Lcom/kwad/sdk/reward/a/b;

    invoke-interface {v0}, Lcom/kwad/sdk/reward/a/b;->e()V

    :cond_15
    return-void
.end method
