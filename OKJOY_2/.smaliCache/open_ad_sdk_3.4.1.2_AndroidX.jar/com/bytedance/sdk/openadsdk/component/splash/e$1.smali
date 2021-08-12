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

    .line 111
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 114
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->b(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "tt_splash_unmute"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    goto :goto_21

    :cond_15
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    .line 115
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->b(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "tt_splash_mute"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 116
    :goto_21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setVoiceViewImageResource(I)V

    .line 117
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Lcom/bytedance/sdk/openadsdk/component/splash/e;Z)Z

    .line 118
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/d;

    move-result-object p1

    if-eqz p1, :cond_4c

    .line 119
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/d;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->c(Z)V

    .line 121
    :cond_4c
    return-void
.end method
