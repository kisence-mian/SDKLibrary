.class final Lcom/anythink/splashad/api/ATSplashAd$1$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/splashad/api/ATSplashAd$1;->onAdClick(Lcom/anythink/core/api/ATAdInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

.field final synthetic val$entity:Lcom/anythink/core/api/ATAdInfo;


# direct methods
.method constructor <init>(Lcom/anythink/splashad/api/ATSplashAd$1;Lcom/anythink/core/api/ATAdInfo;)V
    .registers 3

    .prologue
    .line 83
    iput-object p1, p0, Lcom/anythink/splashad/api/ATSplashAd$1$4;->this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

    iput-object p2, p0, Lcom/anythink/splashad/api/ATSplashAd$1$4;->val$entity:Lcom/anythink/core/api/ATAdInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1$4;->this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mListener:Lcom/anythink/splashad/api/ATSplashAdListener;

    if-eqz v0, :cond_13

    .line 87
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1$4;->this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mListener:Lcom/anythink/splashad/api/ATSplashAdListener;

    iget-object v1, p0, Lcom/anythink/splashad/api/ATSplashAd$1$4;->val$entity:Lcom/anythink/core/api/ATAdInfo;

    invoke-interface {v0, v1}, Lcom/anythink/splashad/api/ATSplashAdListener;->onAdClick(Lcom/anythink/core/api/ATAdInfo;)V

    .line 89
    :cond_13
    return-void
.end method
