.class final Lcom/anythink/interstitial/api/ATInterstitial$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/interstitial/api/ATInterstitial$1;->onDeeplinkCallback(Lcom/anythink/core/api/ATAdInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anythink/interstitial/api/ATInterstitial$1;

.field final synthetic val$adInfo:Lcom/anythink/core/api/ATAdInfo;

.field final synthetic val$isSuccess:Z


# direct methods
.method constructor <init>(Lcom/anythink/interstitial/api/ATInterstitial$1;Lcom/anythink/core/api/ATAdInfo;Z)V
    .registers 4

    .line 42
    iput-object p1, p0, Lcom/anythink/interstitial/api/ATInterstitial$1$1;->this$1:Lcom/anythink/interstitial/api/ATInterstitial$1;

    iput-object p2, p0, Lcom/anythink/interstitial/api/ATInterstitial$1$1;->val$adInfo:Lcom/anythink/core/api/ATAdInfo;

    iput-boolean p3, p0, Lcom/anythink/interstitial/api/ATInterstitial$1$1;->val$isSuccess:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 45
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial$1$1;->this$1:Lcom/anythink/interstitial/api/ATInterstitial$1;

    iget-object v0, v0, Lcom/anythink/interstitial/api/ATInterstitial$1;->this$0:Lcom/anythink/interstitial/api/ATInterstitial;

    iget-object v0, v0, Lcom/anythink/interstitial/api/ATInterstitial;->mInterstitialListener:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial$1$1;->this$1:Lcom/anythink/interstitial/api/ATInterstitial$1;

    iget-object v0, v0, Lcom/anythink/interstitial/api/ATInterstitial$1;->this$0:Lcom/anythink/interstitial/api/ATInterstitial;

    iget-object v0, v0, Lcom/anythink/interstitial/api/ATInterstitial;->mInterstitialListener:Lcom/anythink/interstitial/api/ATInterstitialListener;

    instance-of v0, v0, Lcom/anythink/interstitial/api/ATInterstitialExListener;

    if-eqz v0, :cond_21

    .line 46
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial$1$1;->this$1:Lcom/anythink/interstitial/api/ATInterstitial$1;

    iget-object v0, v0, Lcom/anythink/interstitial/api/ATInterstitial$1;->this$0:Lcom/anythink/interstitial/api/ATInterstitial;

    iget-object v0, v0, Lcom/anythink/interstitial/api/ATInterstitial;->mInterstitialListener:Lcom/anythink/interstitial/api/ATInterstitialListener;

    check-cast v0, Lcom/anythink/interstitial/api/ATInterstitialExListener;

    iget-object v1, p0, Lcom/anythink/interstitial/api/ATInterstitial$1$1;->val$adInfo:Lcom/anythink/core/api/ATAdInfo;

    iget-boolean v2, p0, Lcom/anythink/interstitial/api/ATInterstitial$1$1;->val$isSuccess:Z

    invoke-interface {v0, v1, v2}, Lcom/anythink/interstitial/api/ATInterstitialExListener;->onDeeplinkCallback(Lcom/anythink/core/api/ATAdInfo;Z)V

    .line 48
    :cond_21
    return-void
.end method
