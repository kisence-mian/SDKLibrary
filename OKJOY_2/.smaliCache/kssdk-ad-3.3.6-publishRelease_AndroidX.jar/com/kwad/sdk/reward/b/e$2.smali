.class Lcom/kwad/sdk/reward/b/e$2;
.super Lcom/kwad/sdk/contentalliance/detail/video/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/reward/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/b/e;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/b/e;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/e$2;->a:Lcom/kwad/sdk/reward/b/e;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;->f()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/e$2;->a:Lcom/kwad/sdk/reward/b/e;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/e;->b(Lcom/kwad/sdk/reward/b/e;)Lcom/kwad/sdk/reward/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/reward/a;->b()V

    return-void
.end method
