.class Lcom/kwad/sdk/core/video/videoview/b$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/video/a/c$c;


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

    iput-object p1, p0, Lcom/kwad/sdk/core/video/videoview/b$4;->a:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/video/a/c;II)Z
    .registers 5

    const/16 p1, -0x26

    if-eq p2, p1, :cond_44

    iget-object p1, p0, Lcom/kwad/sdk/core/video/videoview/b$4;->a:Lcom/kwad/sdk/core/video/videoview/b;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/video/videoview/b;->a(Lcom/kwad/sdk/core/video/videoview/b;I)I

    iget-object p1, p0, Lcom/kwad/sdk/core/video/videoview/b$4;->a:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-static {p1}, Lcom/kwad/sdk/core/video/videoview/b;->b(Lcom/kwad/sdk/core/video/videoview/b;)Lcom/kwad/sdk/core/video/videoview/c;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/kwad/sdk/core/video/videoview/c;->a(II)V

    iget-object p1, p0, Lcom/kwad/sdk/core/video/videoview/b$4;->a:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-static {p1}, Lcom/kwad/sdk/core/video/videoview/b;->b(Lcom/kwad/sdk/core/video/videoview/b;)Lcom/kwad/sdk/core/video/videoview/c;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/b$4;->a:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-static {v0}, Lcom/kwad/sdk/core/video/videoview/b;->a(Lcom/kwad/sdk/core/video/videoview/b;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/video/videoview/c;->a(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError \u2014\u2014> STATE_ERROR \u2014\u2014\u2014\u2014 what\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", extra: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KSVideoPlayerViewView"

    invoke-static {p2, p1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_44
    const/4 p1, 0x1

    return p1
.end method
