.class final Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a$1;
.super Ljava/lang/Object;
.source "TTDynamic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/d/r;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/r;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 141
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/r;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/r;)V

    .line 143
    monitor-exit v0

    .line 144
    return-void

    .line 143
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method
