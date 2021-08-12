.class Lcom/bytedance/sdk/openadsdk/component/splash/e$7;
.super Ljava/lang/Object;
.source "TTSplashAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/e;->e()V
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

    .line 615
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$7;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .registers 4

    .line 618
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$7;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 619
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$7;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;->onAdClicked(Landroid/view/View;I)V

    .line 640
    :cond_11
    return-void
.end method
