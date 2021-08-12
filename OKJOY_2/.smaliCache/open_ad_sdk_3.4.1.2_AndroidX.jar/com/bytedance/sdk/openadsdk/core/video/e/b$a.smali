.class public Lcom/bytedance/sdk/openadsdk/core/video/e/b$a;
.super Landroid/os/AsyncTask;
.source "MediaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/video/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/video/e/b$b;

.field private b:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/e/b$b;J)V
    .registers 6

    .line 92
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/e/b$a;->b:J

    .line 93
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/e/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/e/b$b;

    .line 94
    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/e/b$a;->b:J

    .line 95
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 8

    .line 99
    nop

    .line 101
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 102
    const/4 v2, 0x0

    aget-object p1, p1, v2

    .line 103
    const-string v2, "http"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 105
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1e

    .line 108
    :cond_1b
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 110
    :goto_1e
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/e/b$a;->b:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const/4 p1, 0x3

    invoke-virtual {v1, v2, v3, p1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_2c

    .line 114
    goto :goto_34

    .line 112
    :catchall_2c
    move-exception p1

    .line 113
    const-string v1, "MediaUtils"

    const-string v2, "MediaUtils doInBackground : "

    invoke-static {v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    :goto_34
    return-object v0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 120
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/e/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/e/b$b;

    if-eqz v0, :cond_a

    .line 122
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/e/b$b;->a(Landroid/graphics/Bitmap;)V

    .line 124
    :cond_a
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 88
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/e/b$a;->a([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 88
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/e/b$a;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
