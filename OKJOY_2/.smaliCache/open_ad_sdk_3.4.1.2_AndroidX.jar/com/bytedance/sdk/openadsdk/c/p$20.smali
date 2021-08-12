.class Lcom/bytedance/sdk/openadsdk/c/p$20;
.super Lcom/bytedance/sdk/openadsdk/j/g;
.source "WebviewTimeTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/c/p;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/c/p;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/c/p;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/p$20;->a:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/j/g;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/p$20;->a:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lcom/bytedance/sdk/openadsdk/c/p;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 181
    :try_start_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/p$20;->a:Lcom/bytedance/sdk/openadsdk/c/p;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lorg/json/JSONObject;)V

    .line 182
    monitor-exit v0

    .line 183
    return-void

    .line 182
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method
