.class Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$a;
.super Ljava/lang/Object;
.source "TmplDiffManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;I)V
    .registers 4

    .prologue
    .line 91
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$a;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$a;->b:I

    .line 92
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$a;->b:I

    .line 93
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 97
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$a;->b:I

    if-ne v0, v3, :cond_22

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$a;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;)V

    .line 99
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$a;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;I)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$a;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->b(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/i/a;->a(Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    .line 101
    :cond_22
    return-void
.end method
