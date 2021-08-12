.class Lcom/kwad/sdk/reward/b/c$7;
.super Lcom/kwad/sdk/contentalliance/detail/video/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/reward/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/b/c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/b/c;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/c$7;->a:Lcom/kwad/sdk/reward/b/c;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;->f()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c$7;->a:Lcom/kwad/sdk/reward/b/c;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/c;->g(Lcom/kwad/sdk/reward/b/c;)V

    return-void
.end method
