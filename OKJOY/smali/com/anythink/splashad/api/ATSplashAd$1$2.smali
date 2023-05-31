.class final Lcom/anythink/splashad/api/ATSplashAd$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/splashad/api/ATSplashAd$1;->onNoAdError(Lcom/anythink/core/api/AdError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

.field final synthetic val$adError:Lcom/anythink/core/api/AdError;


# direct methods
.method constructor <init>(Lcom/anythink/splashad/api/ATSplashAd$1;Lcom/anythink/core/api/AdError;)V
    .registers 3

    .prologue
    .line 56
    iput-object p1, p0, Lcom/anythink/splashad/api/ATSplashAd$1$2;->this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

    iput-object p2, p0, Lcom/anythink/splashad/api/ATSplashAd$1$2;->val$adError:Lcom/anythink/core/api/AdError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1$2;->this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-boolean v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mHasReturn:Z

    if-nez v0, :cond_22

    .line 60
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1$2;->this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/splashad/api/ATSplashAd;->mHasReturn:Z

    .line 61
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1$2;->this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mListener:Lcom/anythink/splashad/api/ATSplashAdListener;

    if-eqz v0, :cond_22

    .line 62
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1$2;->this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mListener:Lcom/anythink/splashad/api/ATSplashAdListener;

    iget-object v1, p0, Lcom/anythink/splashad/api/ATSplashAd$1$2;->val$adError:Lcom/anythink/core/api/AdError;

    invoke-interface {v0, v1}, Lcom/anythink/splashad/api/ATSplashAdListener;->onNoAdError(Lcom/anythink/core/api/AdError;)V

    .line 65
    :cond_22
    return-void
.end method
