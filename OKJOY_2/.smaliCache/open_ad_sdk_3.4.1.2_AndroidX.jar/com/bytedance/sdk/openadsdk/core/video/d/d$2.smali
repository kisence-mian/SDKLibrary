.class Lcom/bytedance/sdk/openadsdk/core/video/d/d$2;
.super Ljava/lang/Object;
.source "SSMediaPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/d/d;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/d/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V
    .registers 2

    .line 275
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 278
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 279
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 280
    const-string v0, "tag_video_play"

    const-string v1, "[video] MediaPlayerProxy#start first play prepare invoke ! sendMsg --> OP_PREPARE_ASYNC"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_1a
    return-void
.end method
