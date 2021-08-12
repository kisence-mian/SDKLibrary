.class final Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e$1;
.super Ljava/lang/Object;
.source "UploadStatistic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 83
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e$1;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 85
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_5b

    .line 87
    :try_start_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e$1;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->h()Lcom/bytedance/sdk/openadsdk/preload/geckox/i/b;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e$1;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/i/c;

    move-result-object v1

    .line 88
    iget v2, v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/c;->c:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_29

    .line 91
    new-instance v2, Lorg/json/JSONObject;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/c;->b:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    const-string v1, "status"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 93
    if-nez v1, :cond_28

    .line 94
    return-void

    .line 98
    :cond_28
    goto :goto_58

    .line 89
    :cond_29
    new-instance v2, Landroid/accounts/NetworkErrorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "net work get failed, code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/c;->c:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", url:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_50} :catch_50

    .line 96
    :catch_50
    move-exception v1

    .line 97
    const-string v2, "gecko-debug-tag"

    const-string v3, "upload statistic:"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    :goto_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 100
    :cond_5b
    return-void
.end method
