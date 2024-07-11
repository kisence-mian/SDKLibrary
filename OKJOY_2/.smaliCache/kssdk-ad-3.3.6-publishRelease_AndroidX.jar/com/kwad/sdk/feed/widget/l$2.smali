.class Lcom/kwad/sdk/feed/widget/l$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/feed/widget/l;->a(Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/feed/widget/l;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/feed/widget/l;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/l$2;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l$2;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {p1}, Lcom/kwad/sdk/feed/widget/l;->F(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/video/videoview/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kwad/sdk/core/video/videoview/b;->d()Z

    move-result p1

    if-eqz p1, :cond_32

    new-instance p1, Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l$2;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/l;->G(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->i(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/kwad/sdk/contentalliance/detail/video/b;-><init>(JJ)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l$2;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/l;->F(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/video/videoview/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/video/videoview/b;->setKsPlayLogParam(Lcom/kwad/sdk/contentalliance/detail/video/b;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l$2;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {p1}, Lcom/kwad/sdk/feed/widget/l;->F(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/video/videoview/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kwad/sdk/core/video/videoview/b;->a()V

    goto :goto_3b

    :cond_32
    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l$2;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {p1}, Lcom/kwad/sdk/feed/widget/l;->F(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/video/videoview/b;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kwad/sdk/feed/widget/l;->a(Lcom/kwad/sdk/feed/widget/l;Lcom/kwad/sdk/core/video/videoview/b;)V

    :goto_3b
    return-void
.end method
