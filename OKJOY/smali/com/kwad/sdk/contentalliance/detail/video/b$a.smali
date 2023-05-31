.class Lcom/kwad/sdk/contentalliance/detail/video/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/c/h/d/c$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/contentalliance/detail/video/b;-><init>(Landroid/support/v4/app/Fragment;Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;Lcom/kwad/sdk/core/response/model/AdTemplate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/contentalliance/detail/video/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/detail/video/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/b$a;->a:Lcom/kwad/sdk/contentalliance/detail/video/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/c/h/d/c;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepared "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/b$a;->a:Lcom/kwad/sdk/contentalliance/detail/video/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DetailPlayModule"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b$a;->a:Lcom/kwad/sdk/contentalliance/detail/video/b;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/video/b;->a(Lcom/kwad/sdk/contentalliance/detail/video/b;)Z

    move-result v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b$a;->a:Lcom/kwad/sdk/contentalliance/detail/video/b;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/video/b;->b(Lcom/kwad/sdk/contentalliance/detail/video/b;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b$a;->a:Lcom/kwad/sdk/contentalliance/detail/video/b;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/video/b;->c(Lcom/kwad/sdk/contentalliance/detail/video/b;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x46

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/p;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_8d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepared play start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/b$a;->a:Lcom/kwad/sdk/contentalliance/detail/video/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DetailPlayModule"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b$a;->a:Lcom/kwad/sdk/contentalliance/detail/video/b;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/b$a;->a:Lcom/kwad/sdk/contentalliance/detail/video/b;

    invoke-static {v1}, Lcom/kwad/sdk/contentalliance/detail/video/b;->e(Lcom/kwad/sdk/contentalliance/detail/video/b;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/kwad/sdk/contentalliance/detail/video/b;->a(Lcom/kwad/sdk/contentalliance/detail/video/b;J)J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "becomesAttachedOnPageSelected mStartPlayDuration= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/b$a;->a:Lcom/kwad/sdk/contentalliance/detail/video/b;

    invoke-static {v1}, Lcom/kwad/sdk/contentalliance/detail/video/b;->d(Lcom/kwad/sdk/contentalliance/detail/video/b;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DetailPlayModule"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b$a;->a:Lcom/kwad/sdk/contentalliance/detail/video/b;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/video/b;->f(Lcom/kwad/sdk/contentalliance/detail/video/b;)Lcom/kwad/sdk/contentalliance/detail/video/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->o()V

    :cond_8d
    return-void
.end method
