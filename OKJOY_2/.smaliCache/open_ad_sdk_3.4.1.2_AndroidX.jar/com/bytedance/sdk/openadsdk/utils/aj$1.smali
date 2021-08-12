.class final Lcom/bytedance/sdk/openadsdk/utils/aj$1;
.super Ljava/lang/Object;
.source "ToolUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/aj;->b()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 467
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;-><init>(Landroid/content/Context;)V

    .line 468
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->n(Ljava/lang/String;)Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 470
    goto :goto_16

    .line 469
    :catch_15
    move-exception v0

    .line 472
    :goto_16
    return-void
.end method
