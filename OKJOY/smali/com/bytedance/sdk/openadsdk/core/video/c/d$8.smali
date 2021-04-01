.class Lcom/bytedance/sdk/openadsdk/core/video/c/d$8;
.super Ljava/lang/Object;
.source "SSMediaPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b(Lcom/bytedance/sdk/openadsdk/core/video/c/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/c/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/c/d;)V
    .registers 2

    .prologue
    .line 791
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$8;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 795
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$8;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->c(Lcom/bytedance/sdk/openadsdk/core/video/c/d;)Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->h()V

    .line 796
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$8;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    const/16 v1, 0xcf

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/d;I)I

    .line 797
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$8;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/d;Z)Z
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_17

    .line 801
    :goto_16
    return-void

    .line 798
    :catch_17
    move-exception v0

    .line 799
    const-string v1, "SSMediaPlayeWrapper"

    const-string v2, "onPrepared error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method
