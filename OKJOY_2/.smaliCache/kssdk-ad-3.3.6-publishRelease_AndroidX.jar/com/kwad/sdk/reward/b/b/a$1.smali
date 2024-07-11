.class Lcom/kwad/sdk/reward/b/b/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/reward/b/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/b/b/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/b/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/b/a$1;->a:Lcom/kwad/sdk/reward/b/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public b()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/a$1;->a:Lcom/kwad/sdk/reward/b/b/a;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/b/a;->a(Lcom/kwad/sdk/reward/b/b/a;)Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/a$1;->a:Lcom/kwad/sdk/reward/b/b/a;

    invoke-static {v1}, Lcom/kwad/sdk/reward/b/b/a;->b(Lcom/kwad/sdk/reward/b/b/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v1

    new-instance v2, Lcom/kwad/sdk/reward/b/b/a$1$1;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/reward/b/b/a$1$1;-><init>(Lcom/kwad/sdk/reward/b/b/a$1;)V

    iget-object v3, p0, Lcom/kwad/sdk/reward/b/b/a$1;->a:Lcom/kwad/sdk/reward/b/b/a;

    invoke-static {v3}, Lcom/kwad/sdk/reward/b/b/a;->d(Lcom/kwad/sdk/reward/b/b/a;)Lcom/kwad/sdk/core/download/b/b;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/core/download/b/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/a$a;Lcom/kwad/sdk/core/download/b/b;)V

    return-void
.end method
