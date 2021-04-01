.class final Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$12;
.super Ljava/lang/Object;
.source "MTGInterstitialActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->showLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)V
    .registers 2

    .prologue
    .line 471
    iput-object p1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$12;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 475
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$12;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    iget-object v0, v0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_e

    .line 476
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$12;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    iget-object v0, v0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 478
    :cond_e
    return-void
.end method
