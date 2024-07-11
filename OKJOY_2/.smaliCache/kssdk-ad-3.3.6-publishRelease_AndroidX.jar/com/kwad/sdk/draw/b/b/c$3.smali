.class Lcom/kwad/sdk/draw/b/b/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/webview/jshandler/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/draw/b/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/draw/b/b/c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/draw/b/b/c;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/draw/b/b/c$3;->a:Lcom/kwad/sdk/draw/b/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b/c$3;->a:Lcom/kwad/sdk/draw/b/b/c;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/b/c;->c(Lcom/kwad/sdk/draw/b/b/c;)Lcom/kwad/sdk/draw/a/b;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/draw/a/b;->a:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b/c$3;->a:Lcom/kwad/sdk/draw/b/b/c;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/b/c;->d(Lcom/kwad/sdk/draw/b/b/c;)Lcom/kwad/sdk/draw/a/b;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/draw/a/b;->a:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;->onAdClicked()V

    :cond_15
    return-void
.end method
