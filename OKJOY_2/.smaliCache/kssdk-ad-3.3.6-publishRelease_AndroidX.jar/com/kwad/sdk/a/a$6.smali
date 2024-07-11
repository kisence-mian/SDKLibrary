.class Lcom/kwad/sdk/a/a$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/a/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/a/a$6;->a:Lcom/kwad/sdk/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;Lcom/kwad/sdk/api/KsNativeAd;)V
    .registers 4

    iget-object p2, p0, Lcom/kwad/sdk/a/a$6;->a:Lcom/kwad/sdk/a/a;

    invoke-static {p2}, Lcom/kwad/sdk/a/a;->b(Lcom/kwad/sdk/a/a;)Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;

    move-result-object p2

    if-eqz p2, :cond_13

    iget-object p2, p0, Lcom/kwad/sdk/a/a$6;->a:Lcom/kwad/sdk/a/a;

    invoke-static {p2}, Lcom/kwad/sdk/a/a;->b(Lcom/kwad/sdk/a/a;)Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;

    move-result-object p2

    iget-object v0, p0, Lcom/kwad/sdk/a/a$6;->a:Lcom/kwad/sdk/a/a;

    invoke-interface {p2, p1, v0}, Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;->onAdClicked(Landroid/view/View;Lcom/kwad/sdk/api/KsNativeAd;)V

    :cond_13
    return-void
.end method

.method public onAdShow(Lcom/kwad/sdk/api/KsNativeAd;)V
    .registers 3

    iget-object p1, p0, Lcom/kwad/sdk/a/a$6;->a:Lcom/kwad/sdk/a/a;

    invoke-static {p1}, Lcom/kwad/sdk/a/a;->b(Lcom/kwad/sdk/a/a;)Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/kwad/sdk/a/a$6;->a:Lcom/kwad/sdk/a/a;

    invoke-static {p1}, Lcom/kwad/sdk/a/a;->b(Lcom/kwad/sdk/a/a;)Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/a/a$6;->a:Lcom/kwad/sdk/a/a;

    invoke-interface {p1, v0}, Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;->onAdShow(Lcom/kwad/sdk/api/KsNativeAd;)V

    :cond_13
    return-void
.end method
