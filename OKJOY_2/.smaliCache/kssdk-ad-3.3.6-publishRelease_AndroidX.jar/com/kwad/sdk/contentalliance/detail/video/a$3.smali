.class Lcom/kwad/sdk/contentalliance/detail/video/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/video/a/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/contentalliance/detail/video/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/contentalliance/detail/video/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/detail/video/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$3;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/video/a/c;)V
    .registers 3

    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$3;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    const/16 v0, 0x9

    invoke-static {p1, v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/a;I)I

    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$3;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/a;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(I)V

    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$3;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/a;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onCompletion \u2014\u2014> STATE_COMPLETED"

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$3;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->e(Lcom/kwad/sdk/contentalliance/detail/video/a;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    if-eqz p1, :cond_2d

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->setKeepScreenOn(Z)V

    :cond_2d
    return-void
.end method
