.class final Lcom/anythink/splashad/api/ATSplashAd$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/splashad/api/ATSplashAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anythink/splashad/api/ATSplashAd;


# direct methods
.method constructor <init>(Lcom/anythink/splashad/api/ATSplashAd;)V
    .registers 2

    .prologue
    .line 121
    iput-object p1, p0, Lcom/anythink/splashad/api/ATSplashAd$2;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 124
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$2;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$2;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mAdLoadManager:Lcom/anythink/splashad/a/a;

    if-eqz v0, :cond_15

    .line 126
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$2;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mAdLoadManager:Lcom/anythink/splashad/a/a;

    invoke-virtual {v0}, Lcom/anythink/splashad/a/a;->g()V

    .line 128
    :cond_15
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$2;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-boolean v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mHasReturn:Z

    if-nez v0, :cond_37

    .line 129
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$2;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/splashad/api/ATSplashAd;->mHasReturn:Z

    .line 130
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$2;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mListener:Lcom/anythink/splashad/api/ATSplashAdListener;

    if-eqz v0, :cond_37

    .line 131
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$2;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mListener:Lcom/anythink/splashad/api/ATSplashAdListener;

    const-string v1, "2001"

    const-string v2, ""

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/splashad/api/ATSplashAdListener;->onNoAdError(Lcom/anythink/core/api/AdError;)V

    .line 134
    :cond_37
    return-void
.end method
