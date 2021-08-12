.class Lcom/sigmob/windad/Drift/WindDriftAdView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/Drift/WindDriftAdView;->setupLayout(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
    .registers 3

    iget-object p1, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$1;->a:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$1;->b:Lcom/sigmob/windad/Drift/WindDriftAdView;

    invoke-static {p1}, Lcom/sigmob/windad/Drift/WindDriftAdView;->a(Lcom/sigmob/windad/Drift/WindDriftAdView;)Lcom/sigmob/sdk/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/a/b;->e()V

    iget-object p1, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$1;->a:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/s;->a(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$1;->b:Lcom/sigmob/windad/Drift/WindDriftAdView;

    iget-object p1, p1, Lcom/sigmob/windad/Drift/WindDriftAdView;->a:Lcom/sigmob/windad/Drift/WindDriftAdListener;

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$1;->b:Lcom/sigmob/windad/Drift/WindDriftAdView;

    iget-object p1, p1, Lcom/sigmob/windad/Drift/WindDriftAdView;->a:Lcom/sigmob/windad/Drift/WindDriftAdListener;

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$1;->b:Lcom/sigmob/windad/Drift/WindDriftAdView;

    invoke-static {v0}, Lcom/sigmob/windad/Drift/WindDriftAdView;->b(Lcom/sigmob/windad/Drift/WindDriftAdView;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sigmob/windad/Drift/WindDriftAdListener;->onDriftAdViewClosed(Ljava/lang/String;)V

    :cond_28
    return-void
.end method
