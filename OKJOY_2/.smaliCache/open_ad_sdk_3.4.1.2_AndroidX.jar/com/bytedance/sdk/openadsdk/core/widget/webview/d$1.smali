.class Lcom/bytedance/sdk/openadsdk/core/widget/webview/d$1;
.super Ljava/lang/Object;
.source "WebViewPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/webview/d;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/webview/d;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/webview/d;)V

    .line 67
    return-void
.end method
