.class final Lcom/bytedance/sdk/openadsdk/preload/geckox/a/c$1;
.super Ljava/lang/Object;
.source "ChannelCleanHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/preload/geckox/a/c;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/c$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/c$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/c;->c(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    .line 26
    goto :goto_24

    .line 24
    :catchall_6
    move-exception v0

    .line 25
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete old channel version failed\uff0cpath\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/c$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/c;->a(Ljava/lang/Throwable;)V

    .line 27
    :goto_24
    return-void
.end method
