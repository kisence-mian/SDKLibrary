.class Lcom/bytedance/sdk/openadsdk/component/splash/e$1;
.super Ljava/lang/Object;
.source "TTSplashAdImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/e;->b()V
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
    .line 104
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->b(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_splash_unmute"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 109
    :goto_14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setVoiceViewImageResource(I)V

    .line 110
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Z

    move-result v0

    if-nez v0, :cond_50

    const/4 v0, 0x1

    :goto_28
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Lcom/bytedance/sdk/openadsdk/component/splash/e;Z)Z

    .line 111
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/d;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 112
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->c(Z)V

    .line 114
    :cond_42
    return-void

    .line 107
    :cond_43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    .line 108
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->b(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_splash_mute"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_14

    .line 110
    :cond_50
    const/4 v0, 0x0

    goto :goto_28
.end method
