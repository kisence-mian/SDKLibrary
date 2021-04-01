.class Lcom/kwad/sdk/d/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/draw/view/c$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/d/a;->getDrawView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/d/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/d/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/d/a$a;->a:Lcom/kwad/sdk/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/d/a$a;->a:Lcom/kwad/sdk/d/a;

    invoke-static {v0}, Lcom/kwad/sdk/d/a;->a(Lcom/kwad/sdk/d/a;)Lcom/kwad/sdk/export/i/KsDrawAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kwad/sdk/d/a$a;->a:Lcom/kwad/sdk/d/a;

    invoke-static {v0}, Lcom/kwad/sdk/d/a;->a(Lcom/kwad/sdk/d/a;)Lcom/kwad/sdk/export/i/KsDrawAd$AdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwad/sdk/export/i/KsDrawAd$AdInteractionListener;->onAdClicked()V

    :cond_11
    return-void
.end method

.method public onAdShow()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/d/a$a;->a:Lcom/kwad/sdk/d/a;

    invoke-static {v0}, Lcom/kwad/sdk/d/a;->a(Lcom/kwad/sdk/d/a;)Lcom/kwad/sdk/export/i/KsDrawAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kwad/sdk/d/a$a;->a:Lcom/kwad/sdk/d/a;

    invoke-static {v0}, Lcom/kwad/sdk/d/a;->a(Lcom/kwad/sdk/d/a;)Lcom/kwad/sdk/export/i/KsDrawAd$AdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwad/sdk/export/i/KsDrawAd$AdInteractionListener;->onAdShow()V

    :cond_11
    return-void
.end method
