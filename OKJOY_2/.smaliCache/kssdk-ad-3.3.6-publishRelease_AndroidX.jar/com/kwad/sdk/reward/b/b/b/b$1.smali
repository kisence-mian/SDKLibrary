.class Lcom/kwad/sdk/reward/b/b/b/b$1;
.super Lcom/kwad/sdk/contentalliance/detail/video/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/reward/b/b/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/b/b/b/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/b/b/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/b/b/b$1;->a:Lcom/kwad/sdk/reward/b/b/b/b;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .registers 5

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/b/b/b$1;->a:Lcom/kwad/sdk/reward/b/b/b/b;

    invoke-static {p1}, Lcom/kwad/sdk/reward/b/b/b/b;->a(Lcom/kwad/sdk/reward/b/b/b/b;)J

    move-result-wide p1

    cmp-long p1, p3, p1

    if-ltz p1, :cond_f

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/b/b/b$1;->a:Lcom/kwad/sdk/reward/b/b/b/b;

    invoke-static {p1}, Lcom/kwad/sdk/reward/b/b/b/b;->b(Lcom/kwad/sdk/reward/b/b/b/b;)V

    :cond_f
    return-void
.end method
