.class Lcom/sigmob/windad/Drift/WindDriftAdView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/Drift/WindDriftAdView;->a(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RelativeLayout;

.field final synthetic b:Lcom/sigmob/windad/Drift/WindDriftAdView;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/Drift/WindDriftAdView;Landroid/widget/RelativeLayout;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$1;->b:Lcom/sigmob/windad/Drift/WindDriftAdView;

    iput-object p2, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$1;->a:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$1;->a:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$1;->b:Lcom/sigmob/windad/Drift/WindDriftAdView;

    invoke-static {v0}, Lcom/sigmob/windad/Drift/WindDriftAdView;->a(Lcom/sigmob/windad/Drift/WindDriftAdView;)Lcom/sigmob/sdk/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/a/b;->e()V

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$1;->a:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/ai;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$1;->b:Lcom/sigmob/windad/Drift/WindDriftAdView;

    iget-object v0, v0, Lcom/sigmob/windad/Drift/WindDriftAdView;->a:Lcom/sigmob/windad/Drift/WindDriftAdListener;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$1;->b:Lcom/sigmob/windad/Drift/WindDriftAdView;

    iget-object v0, v0, Lcom/sigmob/windad/Drift/WindDriftAdView;->a:Lcom/sigmob/windad/Drift/WindDriftAdListener;

    iget-object v1, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$1;->b:Lcom/sigmob/windad/Drift/WindDriftAdView;

    invoke-static {v1}, Lcom/sigmob/windad/Drift/WindDriftAdView;->b(Lcom/sigmob/windad/Drift/WindDriftAdView;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/windad/Drift/WindDriftAdListener;->onDriftAdViewClosed(Ljava/lang/String;)V

    :cond_28
    return-void
.end method
