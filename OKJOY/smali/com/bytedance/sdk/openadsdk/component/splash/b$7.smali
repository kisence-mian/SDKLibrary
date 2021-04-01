.class Lcom/bytedance/sdk/openadsdk/component/splash/b$7;
.super Ljava/lang/Object;
.source "SplashAdLoadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/f/a/d;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/splash/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/f/a/d;)V
    .registers 3

    .prologue
    .line 940
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->b:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->a:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 943
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->b:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/16 v8, 0x3a9c

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->b:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v2, 0x3

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->a:Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    move-object v1, v7

    move v2, v8

    move-object v3, v0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    .line 944
    return-void
.end method
