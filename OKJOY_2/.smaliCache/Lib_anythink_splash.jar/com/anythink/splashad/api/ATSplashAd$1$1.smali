.class final Lcom/anythink/splashad/api/ATSplashAd$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/splashad/api/ATSplashAd$1;->onDeeplinkCallback(Lcom/anythink/core/api/ATAdInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

.field final synthetic val$entity:Lcom/anythink/core/api/ATAdInfo;

.field final synthetic val$isSuccess:Z


# direct methods
.method constructor <init>(Lcom/anythink/splashad/api/ATSplashAd$1;Lcom/anythink/core/api/ATAdInfo;Z)V
    .registers 4

    .line 58
    iput-object p1, p0, Lcom/anythink/splashad/api/ATSplashAd$1$1;->this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

    iput-object p2, p0, Lcom/anythink/splashad/api/ATSplashAd$1$1;->val$entity:Lcom/anythink/core/api/ATAdInfo;

    iput-boolean p3, p0, Lcom/anythink/splashad/api/ATSplashAd$1$1;->val$isSuccess:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 61
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1$1;->this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mListener:Lcom/anythink/splashad/api/ATSplashAdListener;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1$1;->this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mListener:Lcom/anythink/splashad/api/ATSplashAdListener;

    instance-of v0, v0, Lcom/anythink/splashad/api/ATSplashExListener;

    if-eqz v0, :cond_21

    .line 62
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1$1;->this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mListener:Lcom/anythink/splashad/api/ATSplashAdListener;

    check-cast v0, Lcom/anythink/splashad/api/ATSplashExListener;

    iget-object v1, p0, Lcom/anythink/splashad/api/ATSplashAd$1$1;->val$entity:Lcom/anythink/core/api/ATAdInfo;

    iget-boolean v2, p0, Lcom/anythink/splashad/api/ATSplashAd$1$1;->val$isSuccess:Z

    invoke-interface {v0, v1, v2}, Lcom/anythink/splashad/api/ATSplashExListener;->onDeeplinkCallback(Lcom/anythink/core/api/ATAdInfo;Z)V

    .line 64
    :cond_21
    return-void
.end method
