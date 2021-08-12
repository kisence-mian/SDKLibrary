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

    .line 157
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/d;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 172
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->m()V

    .line 175
    :cond_11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 176
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;->onAdTimeOver()V

    .line 178
    :cond_22
    return-void
.end method

.method public a(JI)V
    .registers 4

    .line 161
    return-void
.end method

.method public a(JJ)V
    .registers 5

    .line 188
    return-void
.end method

.method public b(JI)V
    .registers 4

    .line 166
    return-void
.end method
