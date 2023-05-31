.class public Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;
.super Landroid/os/AsyncTask;
.source "MediaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/video/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/video/d/b$b;

.field private b:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/d/b$b;J)V
    .registers 6

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->b:J

    .line 93
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/b$b;

    .line 94
    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->b:J

    .line 95
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 11

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 101
    :try_start_1
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 102
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 103
    const-string v3, "http"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 105
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    .line 110
    :goto_19
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->b:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const/4 v0, 0x3

    invoke-virtual {v2, v4, v5, v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_22} :catch_2b

    move-result-object v0

    .line 111
    :try_start_23
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_26} :catch_37

    .line 115
    :goto_26
    return-object v0

    .line 108
    :cond_27
    :try_start_27
    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_19

    .line 112
    :catch_2b
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 113
    :goto_2f
    const-string v2, "MediaUtils"

    const-string v3, "MediaUtils doInBackground : "

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26

    .line 112
    :catch_37
    move-exception v1

    goto :goto_2f
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .registers 3

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/b$b;

    if-eqz v0, :cond_c

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/b$b;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/b$b;->a(Landroid/graphics/Bitmap;)V

    .line 124
    :cond_c
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 88
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->a([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 88
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
