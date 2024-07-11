.class Lcom/kwad/sdk/a/b/i$1;
.super Lcom/kwad/sdk/contentalliance/detail/video/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/a/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/a/b/i;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/a/b/i;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/a/b/i$1;->a:Lcom/kwad/sdk/a/b/i;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/a/b/i$1;->a:Lcom/kwad/sdk/a/b/i;

    invoke-static {v0}, Lcom/kwad/sdk/a/b/i;->a(Lcom/kwad/sdk/a/b/i;)Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/a/b/i$1;->a:Lcom/kwad/sdk/a/b/i;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
