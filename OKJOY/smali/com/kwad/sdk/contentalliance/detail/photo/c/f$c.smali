.class Lcom/kwad/sdk/contentalliance/detail/photo/c/f$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/contentalliance/detail/photo/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/contentalliance/detail/photo/c/f;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$c;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAutoHidePauseButtonCallback run="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$c;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/f;

    invoke-static {v1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->d(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;)Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoVideoControlPresenter"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$c;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/f;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->d(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;)Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$c;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/f;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->d(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;)Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$j;

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$c;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/f;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$j;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;Lcom/kwad/sdk/contentalliance/detail/photo/c/f$a;)V

    invoke-interface {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;->a(Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;)V

    :cond_37
    return-void
.end method
