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

    .line 96
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 101
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/g/a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Lcom/bytedance/sdk/openadsdk/core/g/a;)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 103
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 105
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 106
    if-eqz v1, :cond_3b

    .line 107
    array-length v2, v1

    const/4 v3, 0x0

    :goto_26
    if-ge v3, v2, :cond_3b

    aget-object v4, v1, v3
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_3c

    .line 109
    :try_start_2a
    new-instance v5, Ljava/io/File;

    const-string v6, "tt_open_ad_sdk_check_res.dat"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/g/a;

    invoke-static {v4, v5, v0}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Lcom/bytedance/sdk/openadsdk/core/g/a;Ljava/io/File;Z)Lorg/json/JSONObject;
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_37

    .line 112
    goto :goto_38

    .line 111
    :catchall_37
    move-exception v4

    .line 107
    :goto_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 118
    :cond_3b
    goto :goto_3d

    .line 117
    :catchall_3c
    move-exception v1

    .line 119
    :goto_3d
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/g/a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/g/a;->b(Lcom/bytedance/sdk/openadsdk/core/g/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 120
    return-void
.end method
