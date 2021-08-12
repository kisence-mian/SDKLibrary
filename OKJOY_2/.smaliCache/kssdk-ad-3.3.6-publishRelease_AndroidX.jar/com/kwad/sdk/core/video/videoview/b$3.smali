.class Lcom/kwad/sdk/core/video/videoview/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/video/a/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/video/videoview/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/video/videoview/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/video/videoview/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/video/videoview/b$3;->a:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/video/a/c;)V
    .registers 3

    iget-object p1, p0, Lcom/kwad/sdk/core/video/videoview/b$3;->a:Lcom/kwad/sdk/core/video/videoview/b;

    const/16 v0, 0x9

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/video/videoview/b;->a(Lcom/kwad/sdk/core/video/videoview/b;I)I

    iget-object p1, p0, Lcom/kwad/sdk/core/video/videoview/b$3;->a:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-static {p1}, Lcom/kwad/sdk/core/video/videoview/b;->b(Lcom/kwad/sdk/core/video/videoview/b;)Lcom/kwad/sdk/core/video/videoview/c;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/b$3;->a:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-static {v0}, Lcom/kwad/sdk/core/video/videoview/b;->a(Lcom/kwad/sdk/core/video/videoview/b;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/video/videoview/c;->a(I)V

    const-string p1, "KSVideoPlayerViewView"

    const-string v0, "onCompletion \u2014\u2014> STATE_COMPLETED"

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kwad/sdk/core/video/videoview/b$3;->a:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-static {p1}, Lcom/kwad/sdk/core/video/videoview/b;->i(Lcom/kwad/sdk/core/video/videoview/b;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setKeepScreenOn(Z)V

    return-void
.end method
