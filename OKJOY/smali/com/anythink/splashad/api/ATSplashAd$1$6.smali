.class final Lcom/anythink/splashad/api/ATSplashAd$1$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/splashad/api/ATSplashAd$1;->onAdTick(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

.field final synthetic val$millisUtilFinished:J


# direct methods
.method constructor <init>(Lcom/anythink/splashad/api/ATSplashAd$1;J)V
    .registers 4

    .prologue
    .line 110
    iput-object p1, p0, Lcom/anythink/splashad/api/ATSplashAd$1$6;->this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

    iput-wide p2, p0, Lcom/anythink/splashad/api/ATSplashAd$1$6;->val$millisUtilFinished:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 113
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1$6;->this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mListener:Lcom/anythink/splashad/api/ATSplashAdListener;

    if-eqz v0, :cond_13

    .line 114
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1$6;->this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mListener:Lcom/anythink/splashad/api/ATSplashAdListener;

    iget-wide v2, p0, Lcom/anythink/splashad/api/ATSplashAd$1$6;->val$millisUtilFinished:J

    invoke-interface {v0, v2, v3}, Lcom/anythink/splashad/api/ATSplashAdListener;->onAdTick(J)V

    .line 116
    :cond_13
    return-void
.end method
