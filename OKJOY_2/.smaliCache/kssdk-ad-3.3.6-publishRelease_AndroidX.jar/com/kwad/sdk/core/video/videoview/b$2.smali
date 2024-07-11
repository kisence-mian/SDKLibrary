.class Lcom/kwad/sdk/core/video/videoview/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/video/a/c$h;


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

    iput-object p1, p0, Lcom/kwad/sdk/core/video/videoview/b$2;->a:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/video/a/c;II)V
    .registers 5

    iget-object p1, p0, Lcom/kwad/sdk/core/video/videoview/b$2;->a:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-static {p1}, Lcom/kwad/sdk/core/video/videoview/b;->g(Lcom/kwad/sdk/core/video/videoview/b;)Z

    move-result p1

    if-eqz p1, :cond_b

    if-le p3, p2, :cond_b

    return-void

    :cond_b
    iget-object p1, p0, Lcom/kwad/sdk/core/video/videoview/b$2;->a:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-static {p1}, Lcom/kwad/sdk/core/video/videoview/b;->h(Lcom/kwad/sdk/core/video/videoview/b;)Lcom/kwad/sdk/core/video/a;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/kwad/sdk/core/video/a;->a(II)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVideoSizeChanged \u2014\u2014> width\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\uff0c height\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KSVideoPlayerViewView"

    invoke-static {p2, p1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
