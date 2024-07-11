.class final Lcom/anythink/splashad/api/ATSplashAd$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/splashad/api/ATSplashAd$1;->onAdLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anythink/splashad/api/ATSplashAd$1;


# direct methods
.method constructor <init>(Lcom/anythink/splashad/api/ATSplashAd$1;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/anythink/splashad/api/ATSplashAd$1$2;->this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1$2;->this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-boolean v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mHasReturn:Z

    if-nez v0, :cond_20

    .line 75
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1$2;->this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/splashad/api/ATSplashAd;->mHasReturn:Z

    .line 76
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1$2;->this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mListener:Lcom/anythink/splashad/api/ATSplashAdListener;

    if-eqz v0, :cond_20

    .line 77
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1$2;->this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mListener:Lcom/anythink/splashad/api/ATSplashAdListener;

    invoke-interface {v0}, Lcom/anythink/splashad/api/ATSplashAdListener;->onAdLoaded()V

    .line 80
    :cond_20
    return-void
.end method
