.class Lcom/bytedance/sdk/openadsdk/component/splash/e$2;
.super Ljava/lang/Object;
.source "TTSplashAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/e;->c()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/splash/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/e;)V
    .registers 2

    .prologue
    .line 150
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/d;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 165
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->l()V

    .line 168
    :cond_11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 169
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;->onAdTimeOver()V

    .line 171
    :cond_22
    return-void
.end method

.method public a(JI)V
    .registers 4

    .prologue
    .line 154
    return-void
.end method

.method public a(JJ)V
    .registers 5

    .prologue
    .line 181
    return-void
.end method

.method public b(JI)V
    .registers 4

    .prologue
    .line 159
    return-void
.end method
