.class Lcom/bytedance/sdk/openadsdk/core/g/a$1;
.super Ljava/lang/Object;
.source "PlayableCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/g/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/g/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/g/a;)V
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 100
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/g/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Lcom/bytedance/sdk/openadsdk/core/g/a;)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 102
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 104
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 105
    if-eqz v1, :cond_3b

    .line 106
    array-length v2, v1

    const/4 v0, 0x0

    :goto_26
    if-ge v0, v2, :cond_3b

    aget-object v3, v1, v0
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2a} :catch_3a

    .line 108
    :try_start_2a
    new-instance v4, Ljava/io/File;

    const-string v5, "tt_open_ad_sdk_check_res.dat"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/g/a;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Lcom/bytedance/sdk/openadsdk/core/g/a;Ljava/io/File;Z)Lorg/json/JSONObject;
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_37} :catch_45

    .line 106
    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 116
    :catch_3a
    move-exception v0

    .line 118
    :cond_3b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/g/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/g/a;->b(Lcom/bytedance/sdk/openadsdk/core/g/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 119
    return-void

    .line 110
    :catch_45
    move-exception v3

    goto :goto_37
.end method
