.class Lcom/kwad/sdk/core/download/a/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/webview/jshandler/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/download/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/download/a/f;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/download/a/f;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/download/a/f$1;->a:Lcom/kwad/sdk/core/download/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/f$1;->a:Lcom/kwad/sdk/core/download/a/f;

    iget-object v0, v0, Lcom/kwad/sdk/core/download/a/f;->a:Lcom/kwad/sdk/core/download/a/d;

    iget-object v0, v0, Lcom/kwad/sdk/core/download/a/d;->c:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/f$1;->a:Lcom/kwad/sdk/core/download/a/f;

    iget-object v0, v0, Lcom/kwad/sdk/core/download/a/f;->a:Lcom/kwad/sdk/core/download/a/d;

    iget-object v0, v0, Lcom/kwad/sdk/core/download/a/d;->c:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;->onAdClicked()V

    :cond_11
    return-void
.end method
