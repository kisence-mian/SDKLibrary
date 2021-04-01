.class final Lcom/mintegral/msdk/videocommon/download/a$3;
.super Ljava/lang/Object;
.source "CampaignDownLoadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/videocommon/download/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mintegral/msdk/videocommon/download/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/videocommon/download/a;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 290
    iput-object p1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    iput-object p2, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 16

    .prologue
    .line 294
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->a:Ljava/lang/String;

    .line 295
    const-string v1, "CampaignDownLoadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "=======\u5f00\u59cb\u4e0b\u8f7d-->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v3}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v1}, Lcom/mintegral/msdk/videocommon/download/a;->e(Lcom/mintegral/msdk/videocommon/download/a;)V

    .line 297
    const-string v1, "CampaignDownLoadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "=======\u5f00\u59cb\u4e0b\u8f7d2222-->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v3}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v1}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4a

    .line 300
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/a;I)I

    .line 302
    :cond_4a
    const/4 v3, 0x0

    .line 303
    const/4 v2, 0x0

    .line 304
    const/4 v1, 0x0

    .line 306
    :try_start_4d
    iget-object v4, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v4}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v4

    if-eqz v4, :cond_73

    iget-object v4, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v4}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_73

    iget-object v4, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v4}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_73

    .line 307
    iget-object v4, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v4}, Lcom/mintegral/msdk/videocommon/download/a;->p()V

    .line 308
    const-string v4, "CampaignDownLoadTask"

    const-string v5, "=======\u5220\u9664\u8d44\u6e90"

    invoke-static {v4, v5}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_73
    iget-object v4, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v4}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_85

    iget-object v4, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v4}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_9c

    .line 311
    :cond_85
    const-string v0, "CampaignDownLoadTask"

    const-string v4, "=======\u6b63\u5728\u4e0b\u8f7d\u4e2d\u6216\u4e0b\u8f7d\u5b8c\u6210"

    invoke-static {v0, v4}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_8c} :catch_889
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_8c} :catch_879
    .catchall {:try_start_4d .. :try_end_8c} :catchall_815

    .line 479
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9b

    .line 480
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/a;I)I

    .line 512
    :cond_9b
    :goto_9b
    return-void

    .line 314
    :cond_9c
    :try_start_9c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9f} :catch_889
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_9f} :catch_879
    .catchall {:try_start_9c .. :try_end_9f} :catchall_815

    move-result v4

    if-eqz v4, :cond_b2

    .line 479
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9b

    .line 480
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/a;I)I

    goto :goto_9b

    .line 317
    :cond_b2
    :try_start_b2
    iget-object v4, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v4}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_16d

    .line 318
    const-string v4, "CampaignDownLoadTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "VideoCacheDowning0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v4, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    iget-object v5, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v5}, Lcom/mintegral/msdk/videocommon/download/a;->f(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/mintegral/msdk/videocommon/download/k;->a(Lcom/mintegral/msdk/videocommon/download/a;I)Z

    move-result v4

    if-eqz v4, :cond_101

    .line 320
    const-string v4, "CampaignDownLoadTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "VideoCacheDowning1"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_f1} :catch_889
    .catch Ljava/lang/Throwable; {:try_start_b2 .. :try_end_f1} :catch_879
    .catchall {:try_start_b2 .. :try_end_f1} :catchall_815

    .line 479
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9b

    .line 480
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/a;I)I

    goto :goto_9b

    .line 323
    :cond_101
    :try_start_101
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->a()Lcom/mintegral/msdk/base/controller/b;

    move-result-object v4

    iget-object v5, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v5}, Lcom/mintegral/msdk/videocommon/download/a;->g(Lcom/mintegral/msdk/videocommon/download/a;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v6}, Lcom/mintegral/msdk/videocommon/download/a;->h(Lcom/mintegral/msdk/videocommon/download/a;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/mintegral/msdk/base/controller/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/mintegral/msdk/f/f;

    move-result-object v4

    .line 324
    const-string v5, "CampaignDownLoadTask"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "VideoCacheDowning55555"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v7}, Lcom/mintegral/msdk/videocommon/download/a;->h(Lcom/mintegral/msdk/videocommon/download/a;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v5, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v4, v5, v0}, Lcom/mintegral/msdk/f/f;->a(Lcom/mintegral/msdk/f/b;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v4, v0}, Lcom/mintegral/msdk/f/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    iget-object v5, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mintegral/msdk/f/f;->d(Ljava/lang/String;)Lcom/mintegral/msdk/f/g;

    move-result-object v5

    if-eqz v5, :cond_159

    iget-object v5, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mintegral/msdk/f/f;->d(Ljava/lang/String;)Lcom/mintegral/msdk/f/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mintegral/msdk/f/g;->a()Lcom/mintegral/msdk/f/e;

    move-result-object v5

    if-eqz v5, :cond_159

    .line 328
    iget-object v5, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mintegral/msdk/f/f;->d(Ljava/lang/String;)Lcom/mintegral/msdk/f/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mintegral/msdk/f/g;->a()Lcom/mintegral/msdk/f/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mintegral/msdk/f/e;->b()V

    .line 330
    :cond_159
    const-string v4, "CampaignDownLoadTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "VideoCacheDowning2"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16d
    move-object v7, v0

    .line 332
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_179} :catch_889
    .catch Ljava/lang/Throwable; {:try_start_101 .. :try_end_179} :catch_879
    .catchall {:try_start_101 .. :try_end_179} :catchall_815

    .line 334
    const/16 v3, 0x3a98

    :try_start_17b
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 335
    const v3, 0x927c0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 336
    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 337
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 338
    const-string v3, "CampaignDownLoadTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "=========CampaignDownLoadTask,run url:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const/4 v3, 0x0

    .line 342
    invoke-static {}, Lcom/mintegral/msdk/base/utils/i;->b()J

    move-result-wide v8

    .line 345
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 346
    const/16 v5, 0xc8

    if-eq v4, v5, :cond_1b2

    const/16 v5, 0xce

    if-ne v4, v5, :cond_79a

    .line 348
    :cond_1b2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1b5
    .catch Ljava/lang/Exception; {:try_start_17b .. :try_end_1b5} :catch_7a3
    .catch Ljava/lang/Throwable; {:try_start_17b .. :try_end_1b5} :catch_87d
    .catchall {:try_start_17b .. :try_end_1b5} :catchall_865

    move-result-object v5

    .line 350
    :try_start_1b6
    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    int-to-long v10, v4

    invoke-static {v2, v10, v11}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/a;J)J

    .line 351
    const-string v2, "CampaignDownLoadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "=========\u6b63\u5728\u4e0b\u8f7d\u4e2d,\u7a7a\u95f4:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",contentLength:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v6}, Lcom/mintegral/msdk/videocommon/download/a;->i(Lcom/mintegral/msdk/videocommon/download/a;)J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-eqz v2, :cond_1f4

    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v2}, Lcom/mintegral/msdk/videocommon/download/a;->i(Lcom/mintegral/msdk/videocommon/download/a;)J

    move-result-wide v10

    cmp-long v2, v8, v10

    if-lez v2, :cond_3b4

    .line 355
    :cond_1f4
    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v2}, Lcom/mintegral/msdk/videocommon/download/a;->j(Lcom/mintegral/msdk/videocommon/download/a;)Z

    .line 357
    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v2}, Lcom/mintegral/msdk/videocommon/download/a;->f(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v2

    const/16 v4, 0x64

    if-eq v2, v4, :cond_33d

    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v2}, Lcom/mintegral/msdk/videocommon/download/a;->f(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v2

    if-eqz v2, :cond_33d

    .line 358
    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    iget-object v4, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v4}, Lcom/mintegral/msdk/videocommon/download/a;->f(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/mintegral/msdk/videocommon/download/k;->a(Lcom/mintegral/msdk/videocommon/download/a;I)Z

    move-result v2

    if-eqz v2, :cond_25f

    .line 359
    const-string v2, "CampaignDownLoadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VideoCacheDowning6666"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22d
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_22d} :catch_88e
    .catch Ljava/lang/Throwable; {:try_start_1b6 .. :try_end_22d} :catch_884
    .catchall {:try_start_1b6 .. :try_end_22d} :catchall_86b

    .line 479
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v1}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23c

    .line 480
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/a;I)I

    .line 482
    :cond_23c
    if-eqz v0, :cond_241

    .line 484
    :try_start_23e
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_241
    .catch Ljava/lang/Throwable; {:try_start_23e .. :try_end_241} :catch_254

    .line 489
    :cond_241
    :goto_241
    if-eqz v5, :cond_9b

    .line 491
    :try_start_243
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_246
    .catch Ljava/lang/Throwable; {:try_start_243 .. :try_end_246} :catch_248

    goto/16 :goto_9b

    .line 492
    :catch_248
    move-exception v0

    .line 493
    const-string v1, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9b

    .line 485
    :catch_254
    move-exception v0

    .line 486
    const-string v1, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_241

    .line 362
    :cond_25f
    :try_start_25f
    const-string v2, "CampaignDownLoadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "=======\u5f00\u59cb\u4e0b\u8f7d---------111111111-->"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v6}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v4}, Lcom/mintegral/msdk/videocommon/download/a;->k(Lcom/mintegral/msdk/videocommon/download/a;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v8}, Lcom/mintegral/msdk/videocommon/download/a;->l(Lcom/mintegral/msdk/videocommon/download/a;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ".dltmp"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v2

    .line 377
    :goto_29e
    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/a;I)I

    .line 379
    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->a:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e6

    .line 380
    const-string v2, "CampaignDownLoadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "=======\u5f00\u59cb\u4e0b\u8f7d---------4444444-->"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v8}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2cb
    .catch Ljava/lang/Exception; {:try_start_25f .. :try_end_2cb} :catch_88e
    .catch Ljava/lang/Throwable; {:try_start_25f .. :try_end_2cb} :catch_884
    .catchall {:try_start_25f .. :try_end_2cb} :catchall_86b

    .line 385
    :goto_2cb
    :try_start_2cb
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v1}, Lcom/mintegral/msdk/videocommon/download/a;->m(Lcom/mintegral/msdk/videocommon/download/a;)Lcom/mintegral/msdk/base/b/v;

    move-result-object v1

    if-nez v1, :cond_2e8

    .line 386
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    .line 387
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v2

    .line 386
    invoke-static {v2}, Lcom/mintegral/msdk/base/b/v;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/v;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/a;Lcom/mintegral/msdk/base/b/v;)Lcom/mintegral/msdk/base/b/v;

    .line 389
    :cond_2e8
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v1}, Lcom/mintegral/msdk/videocommon/download/a;->m(Lcom/mintegral/msdk/videocommon/download/a;)Lcom/mintegral/msdk/base/b/v;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v2}, Lcom/mintegral/msdk/videocommon/download/a;->n(Lcom/mintegral/msdk/videocommon/download/a;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v2

    iget-object v8, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v8}, Lcom/mintegral/msdk/videocommon/download/a;->i(Lcom/mintegral/msdk/videocommon/download/a;)J

    move-result-wide v8

    invoke-virtual {v1, v2, v8, v9}, Lcom/mintegral/msdk/base/b/v;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;J)J

    .line 390
    const/16 v1, 0x1000

    new-array v8, v1, [B

    .line 392
    const-string v1, "CampaignDownLoadTask"

    const-string v2, "=========\u5f00\u59cb\u4e0b\u8f7d\uff0cwhile\u5faa\u73af\u8bfb\u6d41"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_30b
    .catch Ljava/lang/Exception; {:try_start_2cb .. :try_end_30b} :catch_523
    .catch Ljava/lang/Throwable; {:try_start_2cb .. :try_end_30b} :catch_602
    .catchall {:try_start_2cb .. :try_end_30b} :catchall_86f

    move-result v1

    if-nez v1, :cond_894

    .line 479
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v1}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_31d

    .line 480
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/a;I)I

    .line 482
    :cond_31d
    if-eqz v0, :cond_322

    .line 484
    :try_start_31f
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_322
    .catch Ljava/lang/Throwable; {:try_start_31f .. :try_end_322} :catch_403

    .line 489
    :cond_322
    :goto_322
    if-eqz v5, :cond_327

    .line 491
    :try_start_324
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_327
    .catch Ljava/lang/Throwable; {:try_start_324 .. :try_end_327} :catch_40f

    .line 496
    :cond_327
    :goto_327
    if-eqz v4, :cond_9b

    .line 498
    :try_start_329
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_32c
    .catch Ljava/lang/Throwable; {:try_start_329 .. :try_end_32c} :catch_41b

    .line 503
    :goto_32c
    :try_start_32c
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_32f
    .catch Ljava/lang/Throwable; {:try_start_32c .. :try_end_32f} :catch_331

    goto/16 :goto_9b

    .line 504
    :catch_331
    move-exception v0

    .line 505
    const-string v1, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9b

    .line 365
    :cond_33d
    :try_start_33d
    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->a:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_386

    .line 366
    const-string v2, "CampaignDownLoadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "=======\u5f00\u59cb\u4e0b\u8f7d---------22222222-->"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v6}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v4}, Lcom/mintegral/msdk/videocommon/download/a;->k(Lcom/mintegral/msdk/videocommon/download/a;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v8}, Lcom/mintegral/msdk/videocommon/download/a;->l(Lcom/mintegral/msdk/videocommon/download/a;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ".dltmp"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v2

    goto/16 :goto_29e

    .line 369
    :cond_386
    const-string v2, "CampaignDownLoadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "=======\u5f00\u59cb\u4e0b\u8f7d---------333333-->"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v6}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v4}, Lcom/mintegral/msdk/videocommon/download/a;->k(Lcom/mintegral/msdk/videocommon/download/a;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v6}, Lcom/mintegral/msdk/videocommon/download/a;->l(Lcom/mintegral/msdk/videocommon/download/a;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b1
    .catch Ljava/lang/Exception; {:try_start_33d .. :try_end_3b1} :catch_88e
    .catch Ljava/lang/Throwable; {:try_start_33d .. :try_end_3b1} :catch_884
    .catchall {:try_start_33d .. :try_end_3b1} :catchall_86b

    move-object v6, v2

    goto/16 :goto_29e

    .line 479
    :cond_3b4
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v1}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3c3

    .line 480
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/a;I)I

    .line 482
    :cond_3c3
    if-eqz v0, :cond_3c8

    .line 484
    :try_start_3c5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3c8
    .catch Ljava/lang/Throwable; {:try_start_3c5 .. :try_end_3c8} :catch_3db

    .line 489
    :cond_3c8
    :goto_3c8
    if-eqz v5, :cond_9b

    .line 491
    :try_start_3ca
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3cd
    .catch Ljava/lang/Throwable; {:try_start_3ca .. :try_end_3cd} :catch_3cf

    goto/16 :goto_9b

    .line 492
    :catch_3cf
    move-exception v0

    .line 493
    const-string v1, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9b

    .line 485
    :catch_3db
    move-exception v0

    .line 486
    const-string v1, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3c8

    .line 383
    :cond_3e6
    :try_start_3e6
    const-string v2, "CampaignDownLoadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "=======\u5f00\u59cb\u4e0b\u8f7d---------5555555-->"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v8}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_400
    .catch Ljava/lang/Exception; {:try_start_3e6 .. :try_end_400} :catch_88e
    .catch Ljava/lang/Throwable; {:try_start_3e6 .. :try_end_400} :catch_884
    .catchall {:try_start_3e6 .. :try_end_400} :catchall_86b

    move-object v4, v1

    goto/16 :goto_2cb

    .line 485
    :catch_403
    move-exception v0

    .line 486
    const-string v1, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_322

    .line 492
    :catch_40f
    move-exception v0

    .line 493
    const-string v1, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_327

    .line 499
    :catch_41b
    move-exception v0

    .line 500
    const-string v1, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32c

    .line 431
    :cond_427
    :try_start_427
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->a()Lcom/mintegral/msdk/base/controller/b;

    move-result-object v1

    iget-object v3, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v3}, Lcom/mintegral/msdk/videocommon/download/a;->g(Lcom/mintegral/msdk/videocommon/download/a;)Landroid/content/Context;

    move-result-object v3

    iget-object v9, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v9}, Lcom/mintegral/msdk/videocommon/download/a;->h(Lcom/mintegral/msdk/videocommon/download/a;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v3, v9}, Lcom/mintegral/msdk/base/controller/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/mintegral/msdk/f/f;

    move-result-object v1

    .line 432
    iget-object v3, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mintegral/msdk/f/f;->d(Ljava/lang/String;)Lcom/mintegral/msdk/f/g;

    move-result-object v3

    if-eqz v3, :cond_45c

    iget-object v3, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mintegral/msdk/f/f;->d(Ljava/lang/String;)Lcom/mintegral/msdk/f/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/f/g;->a()Lcom/mintegral/msdk/f/e;

    move-result-object v3

    if-eqz v3, :cond_45c

    .line 433
    iget-object v3, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mintegral/msdk/f/f;->d(Ljava/lang/String;)Lcom/mintegral/msdk/f/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/f/g;->a()Lcom/mintegral/msdk/f/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/f/e;->b()V
    :try_end_45c
    .catch Ljava/lang/Exception; {:try_start_427 .. :try_end_45c} :catch_5fc
    .catch Ljava/lang/Throwable; {:try_start_427 .. :try_end_45c} :catch_602
    .catchall {:try_start_427 .. :try_end_45c} :catchall_86f

    .line 397
    :cond_45c
    :goto_45c
    :try_start_45c
    invoke-virtual {v5, v8}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_641

    .line 398
    iget-object v3, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->a:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_427

    .line 399
    const/4 v3, 0x0

    invoke-virtual {v4, v8, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_46f
    .catch Ljava/lang/Exception; {:try_start_45c .. :try_end_46f} :catch_523
    .catch Ljava/lang/Throwable; {:try_start_45c .. :try_end_46f} :catch_602
    .catchall {:try_start_45c .. :try_end_46f} :catchall_86f

    .line 400
    add-int/2addr v2, v1

    .line 403
    :try_start_470
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    int-to-long v10, v2

    iget-object v3, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v3}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v3

    invoke-static {v1, v10, v11, v3}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/a;JI)V
    :try_end_47c
    .catch Ljava/lang/Throwable; {:try_start_470 .. :try_end_47c} :catch_517
    .catch Ljava/lang/Exception; {:try_start_470 .. :try_end_47c} :catch_523
    .catchall {:try_start_470 .. :try_end_47c} :catchall_86f

    .line 408
    :goto_47c
    :try_start_47c
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v1}, Lcom/mintegral/msdk/videocommon/download/a;->f(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v1

    const/16 v3, 0x64

    if-eq v1, v3, :cond_580

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v1}, Lcom/mintegral/msdk/videocommon/download/a;->f(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v1

    if-eqz v1, :cond_580

    .line 409
    int-to-double v10, v2

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v1}, Lcom/mintegral/msdk/videocommon/download/a;->i(Lcom/mintegral/msdk/videocommon/download/a;)J

    move-result-wide v12

    long-to-double v12, v12

    invoke-static {v10, v11, v12, v13}, Lcom/mintegral/msdk/videocommon/download/a;->a(DD)D

    move-result-wide v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v12

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v1}, Lcom/mintegral/msdk/videocommon/download/a;->f(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v1

    int-to-double v12, v1

    cmpl-double v1, v10, v12

    if-ltz v1, :cond_580

    .line 410
    const-string v1, "VideoCache\u9636\u6bb5\u4e86"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "readyreate\u4e0b\u8f7d\u7ed3\u675f mFilesize-->"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v6}, Lcom/mintegral/msdk/videocommon/download/a;->i(Lcom/mintegral/msdk/videocommon/download/a;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " mPorgresSize-->"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/a;I)I

    .line 412
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v1}, Lcom/mintegral/msdk/videocommon/download/a;->d(Lcom/mintegral/msdk/videocommon/download/a;)Z

    .line 413
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v2}, Lcom/mintegral/msdk/videocommon/download/a;->b(Lcom/mintegral/msdk/videocommon/download/a;)J

    move-result-wide v2

    iget-object v6, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v6}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v6

    invoke-static {v1, v2, v3, v6}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/a;JI)V
    :try_end_4e8
    .catch Ljava/lang/Exception; {:try_start_47c .. :try_end_4e8} :catch_523
    .catch Ljava/lang/Throwable; {:try_start_47c .. :try_end_4e8} :catch_602
    .catchall {:try_start_47c .. :try_end_4e8} :catchall_86f

    .line 479
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v1}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4f7

    .line 480
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/a;I)I

    .line 482
    :cond_4f7
    if-eqz v0, :cond_4fc

    .line 484
    :try_start_4f9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4fc
    .catch Ljava/lang/Throwable; {:try_start_4f9 .. :try_end_4fc} :catch_55f

    .line 489
    :cond_4fc
    :goto_4fc
    if-eqz v5, :cond_501

    .line 491
    :try_start_4fe
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_501
    .catch Ljava/lang/Throwable; {:try_start_4fe .. :try_end_501} :catch_56a

    .line 496
    :cond_501
    :goto_501
    if-eqz v4, :cond_9b

    .line 498
    :try_start_503
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_506
    .catch Ljava/lang/Throwable; {:try_start_503 .. :try_end_506} :catch_575

    .line 503
    :goto_506
    :try_start_506
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_509
    .catch Ljava/lang/Throwable; {:try_start_506 .. :try_end_509} :catch_50b

    goto/16 :goto_9b

    .line 504
    :catch_50b
    move-exception v0

    .line 505
    const-string v1, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9b

    .line 404
    :catch_517
    move-exception v1

    .line 405
    :try_start_518
    const-string v3, "CampaignDownLoadTask"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_521
    .catch Ljava/lang/Exception; {:try_start_518 .. :try_end_521} :catch_523
    .catch Ljava/lang/Throwable; {:try_start_518 .. :try_end_521} :catch_602
    .catchall {:try_start_518 .. :try_end_521} :catchall_86f

    goto/16 :goto_47c

    .line 473
    :catch_523
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v4

    .line 474
    :goto_527
    :try_start_527
    iget-object v3, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mintegral/msdk/videocommon/download/a;->b(Lcom/mintegral/msdk/videocommon/download/a;Ljava/lang/String;)V
    :try_end_530
    .catchall {:try_start_527 .. :try_end_530} :catchall_874

    .line 479
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_53f

    .line 480
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/a;I)I

    .line 482
    :cond_53f
    if-eqz v2, :cond_544

    .line 484
    :try_start_541
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_544
    .catch Ljava/lang/Throwable; {:try_start_541 .. :try_end_544} :catch_7cd

    .line 489
    :cond_544
    :goto_544
    if-eqz v5, :cond_549

    .line 491
    :try_start_546
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_549
    .catch Ljava/lang/Throwable; {:try_start_546 .. :try_end_549} :catch_7d9

    .line 496
    :cond_549
    :goto_549
    if-eqz v1, :cond_9b

    .line 498
    :try_start_54b
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_54e
    .catch Ljava/lang/Throwable; {:try_start_54b .. :try_end_54e} :catch_7e5

    .line 503
    :goto_54e
    :try_start_54e
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_551
    .catch Ljava/lang/Throwable; {:try_start_54e .. :try_end_551} :catch_553

    goto/16 :goto_9b

    .line 504
    :catch_553
    move-exception v0

    .line 505
    const-string v1, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9b

    .line 485
    :catch_55f
    move-exception v0

    .line 486
    const-string v1, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4fc

    .line 492
    :catch_56a
    move-exception v0

    .line 493
    const-string v1, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_501

    .line 499
    :catch_575
    move-exception v0

    .line 500
    const-string v1, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_506

    .line 418
    :cond_580
    :try_start_580
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v1}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_592

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v1}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_45c

    .line 419
    :cond_592
    const/4 v1, 0x2

    .line 420
    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v2}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_59d

    .line 421
    const/4 v1, 0x3

    .line 423
    :cond_59d
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 424
    iput v1, v2, Landroid/os/Message;->what:I

    .line 425
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v1}, Lcom/mintegral/msdk/videocommon/download/a;->o(Lcom/mintegral/msdk/videocommon/download/a;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5ac
    .catch Ljava/lang/Exception; {:try_start_580 .. :try_end_5ac} :catch_523
    .catch Ljava/lang/Throwable; {:try_start_580 .. :try_end_5ac} :catch_602
    .catchall {:try_start_580 .. :try_end_5ac} :catchall_86f

    .line 479
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v1}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5bb

    .line 480
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/a;I)I

    .line 482
    :cond_5bb
    if-eqz v0, :cond_5c0

    .line 484
    :try_start_5bd
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5c0
    .catch Ljava/lang/Throwable; {:try_start_5bd .. :try_end_5c0} :catch_5db

    .line 489
    :cond_5c0
    :goto_5c0
    if-eqz v5, :cond_5c5

    .line 491
    :try_start_5c2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5c5
    .catch Ljava/lang/Throwable; {:try_start_5c2 .. :try_end_5c5} :catch_5e6

    .line 496
    :cond_5c5
    :goto_5c5
    if-eqz v4, :cond_9b

    .line 498
    :try_start_5c7
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_5ca
    .catch Ljava/lang/Throwable; {:try_start_5c7 .. :try_end_5ca} :catch_5f1

    .line 503
    :goto_5ca
    :try_start_5ca
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5cd
    .catch Ljava/lang/Throwable; {:try_start_5ca .. :try_end_5cd} :catch_5cf

    goto/16 :goto_9b

    .line 504
    :catch_5cf
    move-exception v0

    .line 505
    const-string v1, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9b

    .line 485
    :catch_5db
    move-exception v0

    .line 486
    const-string v1, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5c0

    .line 492
    :catch_5e6
    move-exception v0

    .line 493
    const-string v1, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5c5

    .line 499
    :catch_5f1
    move-exception v0

    .line 500
    const-string v1, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5ca

    .line 437
    :catch_5fc
    move-exception v1

    :try_start_5fd
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_600
    .catch Ljava/lang/Exception; {:try_start_5fd .. :try_end_600} :catch_523
    .catch Ljava/lang/Throwable; {:try_start_5fd .. :try_end_600} :catch_602
    .catchall {:try_start_5fd .. :try_end_600} :catchall_86f

    goto/16 :goto_45c

    .line 475
    :catch_602
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v4

    .line 476
    :goto_606
    :try_start_606
    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mintegral/msdk/videocommon/download/a;->b(Lcom/mintegral/msdk/videocommon/download/a;Ljava/lang/String;)V

    .line 477
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_612
    .catchall {:try_start_606 .. :try_end_612} :catchall_877

    .line 479
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_621

    .line 480
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/a;I)I

    .line 482
    :cond_621
    if-eqz v3, :cond_626

    .line 484
    :try_start_623
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_626
    .catch Ljava/lang/Throwable; {:try_start_623 .. :try_end_626} :catch_7f1

    .line 489
    :cond_626
    :goto_626
    if-eqz v5, :cond_62b

    .line 491
    :try_start_628
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_62b
    .catch Ljava/lang/Throwable; {:try_start_628 .. :try_end_62b} :catch_7fd

    .line 496
    :cond_62b
    :goto_62b
    if-eqz v1, :cond_9b

    .line 498
    :try_start_62d
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_630
    .catch Ljava/lang/Throwable; {:try_start_62d .. :try_end_630} :catch_809

    .line 503
    :goto_630
    :try_start_630
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_633
    .catch Ljava/lang/Throwable; {:try_start_630 .. :try_end_633} :catch_635

    goto/16 :goto_9b

    .line 504
    :catch_635
    move-exception v0

    .line 505
    const-string v1, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9b

    .line 443
    :cond_641
    :try_start_641
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->a:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77d

    .line 444
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v1}, Lcom/mintegral/msdk/videocommon/download/a;->f(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v1

    const/16 v3, 0x64

    if-eq v1, v3, :cond_65b

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v1}, Lcom/mintegral/msdk/videocommon/download/a;->f(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v1

    if-nez v1, :cond_76f

    .line 445
    :cond_65b
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v1}, Lcom/mintegral/msdk/videocommon/download/a;->n(Lcom/mintegral/msdk/videocommon/download/a;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoMD5Value()Ljava/lang/String;

    move-result-object v1

    .line 446
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_668
    .catch Ljava/lang/Exception; {:try_start_641 .. :try_end_668} :catch_523
    .catch Ljava/lang/Throwable; {:try_start_641 .. :try_end_668} :catch_602
    .catchall {:try_start_641 .. :try_end_668} :catchall_86f

    move-result v2

    if-nez v2, :cond_713

    .line 448
    :try_start_66b
    invoke-static {v6}, Lcom/mintegral/msdk/base/utils/d;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 449
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6db

    .line 450
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v2}, Lcom/mintegral/msdk/videocommon/download/a;->b(Lcom/mintegral/msdk/videocommon/download/a;)J

    move-result-wide v2

    const/4 v6, 0x1

    invoke-virtual {v1, v2, v3, v6}, Lcom/mintegral/msdk/videocommon/download/a;->a(JZ)V
    :try_end_681
    .catch Ljava/lang/Throwable; {:try_start_66b .. :try_end_681} :catch_6d1
    .catch Ljava/lang/Exception; {:try_start_66b .. :try_end_681} :catch_523
    .catchall {:try_start_66b .. :try_end_681} :catchall_86f

    .line 479
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v1}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_690

    .line 480
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/a;I)I

    .line 482
    :cond_690
    if-eqz v0, :cond_695

    .line 484
    :try_start_692
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_695
    .catch Ljava/lang/Throwable; {:try_start_692 .. :try_end_695} :catch_6b0

    .line 489
    :cond_695
    :goto_695
    if-eqz v5, :cond_69a

    .line 491
    :try_start_697
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_69a
    .catch Ljava/lang/Throwable; {:try_start_697 .. :try_end_69a} :catch_6bb

    .line 496
    :cond_69a
    :goto_69a
    if-eqz v4, :cond_9b

    .line 498
    :try_start_69c
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_69f
    .catch Ljava/lang/Throwable; {:try_start_69c .. :try_end_69f} :catch_6c6

    .line 503
    :goto_69f
    :try_start_69f
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6a2
    .catch Ljava/lang/Throwable; {:try_start_69f .. :try_end_6a2} :catch_6a4

    goto/16 :goto_9b

    .line 504
    :catch_6a4
    move-exception v0

    .line 505
    const-string v1, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9b

    .line 485
    :catch_6b0
    move-exception v0

    .line 486
    const-string v1, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_695

    .line 492
    :catch_6bb
    move-exception v0

    .line 493
    const-string v1, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_69a

    .line 499
    :catch_6c6
    move-exception v0

    .line 500
    const-string v1, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_69f

    .line 453
    :catch_6d1
    move-exception v1

    .line 454
    :try_start_6d2
    const-string v2, "CampaignDownLoadTask"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 456
    :cond_6db
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    const-string v2, "MD5 check failed"

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/videocommon/download/a;->a(Ljava/lang/String;)V
    :try_end_6e2
    .catch Ljava/lang/Exception; {:try_start_6d2 .. :try_end_6e2} :catch_523
    .catch Ljava/lang/Throwable; {:try_start_6d2 .. :try_end_6e2} :catch_602
    .catchall {:try_start_6d2 .. :try_end_6e2} :catchall_86f

    move-object v1, v4

    move-object v2, v5

    .line 479
    :goto_6e4
    iget-object v3, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v3}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6f3

    .line 480
    iget-object v3, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/a;I)I

    .line 482
    :cond_6f3
    if-eqz v0, :cond_6f8

    .line 484
    :try_start_6f5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6f8
    .catch Ljava/lang/Throwable; {:try_start_6f5 .. :try_end_6f8} :catch_7a9

    .line 489
    :cond_6f8
    :goto_6f8
    if-eqz v2, :cond_6fd

    .line 491
    :try_start_6fa
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6fd
    .catch Ljava/lang/Throwable; {:try_start_6fa .. :try_end_6fd} :catch_7b5

    .line 496
    :cond_6fd
    :goto_6fd
    if-eqz v1, :cond_9b

    .line 498
    :try_start_6ff
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_702
    .catch Ljava/lang/Throwable; {:try_start_6ff .. :try_end_702} :catch_7c1

    .line 503
    :goto_702
    :try_start_702
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_705
    .catch Ljava/lang/Throwable; {:try_start_702 .. :try_end_705} :catch_707

    goto/16 :goto_9b

    .line 504
    :catch_707
    move-exception v0

    .line 505
    const-string v1, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9b

    .line 458
    :cond_713
    :try_start_713
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v2}, Lcom/mintegral/msdk/videocommon/download/a;->b(Lcom/mintegral/msdk/videocommon/download/a;)J

    move-result-wide v2

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v3, v6}, Lcom/mintegral/msdk/videocommon/download/a;->a(JZ)V
    :try_end_71f
    .catch Ljava/lang/Exception; {:try_start_713 .. :try_end_71f} :catch_523
    .catch Ljava/lang/Throwable; {:try_start_713 .. :try_end_71f} :catch_602
    .catchall {:try_start_713 .. :try_end_71f} :catchall_86f

    .line 479
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v1}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_72e

    .line 480
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/a;I)I

    .line 482
    :cond_72e
    if-eqz v0, :cond_733

    .line 484
    :try_start_730
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_733
    .catch Ljava/lang/Throwable; {:try_start_730 .. :try_end_733} :catch_74e

    .line 489
    :cond_733
    :goto_733
    if-eqz v5, :cond_738

    .line 491
    :try_start_735
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_738
    .catch Ljava/lang/Throwable; {:try_start_735 .. :try_end_738} :catch_759

    .line 496
    :cond_738
    :goto_738
    if-eqz v4, :cond_9b

    .line 498
    :try_start_73a
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_73d
    .catch Ljava/lang/Throwable; {:try_start_73a .. :try_end_73d} :catch_764

    .line 503
    :goto_73d
    :try_start_73d
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_740
    .catch Ljava/lang/Throwable; {:try_start_73d .. :try_end_740} :catch_742

    goto/16 :goto_9b

    .line 504
    :catch_742
    move-exception v0

    .line 505
    const-string v1, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9b

    .line 485
    :catch_74e
    move-exception v0

    .line 486
    const-string v1, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_733

    .line 492
    :catch_759
    move-exception v0

    .line 493
    const-string v1, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_738

    .line 499
    :catch_764
    move-exception v0

    .line 500
    const-string v1, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_73d

    .line 462
    :cond_76f
    :try_start_76f
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    int-to-long v2, v2

    .line 465
    :cond_772
    const/4 v6, 0x0

    move v14, v6

    move-object v6, v1

    move v1, v14

    :goto_776
    invoke-virtual {v6, v2, v3, v1}, Lcom/mintegral/msdk/videocommon/download/a;->a(JZ)V

    move-object v1, v4

    move-object v2, v5

    .line 469
    goto/16 :goto_6e4

    .line 465
    :cond_77d
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v2}, Lcom/mintegral/msdk/videocommon/download/a;->b(Lcom/mintegral/msdk/videocommon/download/a;)J

    move-result-wide v2

    iget-object v6, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v6}, Lcom/mintegral/msdk/videocommon/download/a;->n(Lcom/mintegral/msdk/videocommon/download/a;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoMD5Value()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_792
    .catch Ljava/lang/Exception; {:try_start_76f .. :try_end_792} :catch_523
    .catch Ljava/lang/Throwable; {:try_start_76f .. :try_end_792} :catch_602
    .catchall {:try_start_76f .. :try_end_792} :catchall_86f

    move-result v6

    if-nez v6, :cond_772

    const/4 v6, 0x1

    move v14, v6

    move-object v6, v1

    move v1, v14

    goto :goto_776

    .line 470
    :cond_79a
    :try_start_79a
    iget-object v3, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    const-string v4, "http response failed"

    invoke-static {v3, v4}, Lcom/mintegral/msdk/videocommon/download/a;->b(Lcom/mintegral/msdk/videocommon/download/a;Ljava/lang/String;)V
    :try_end_7a1
    .catch Ljava/lang/Exception; {:try_start_79a .. :try_end_7a1} :catch_7a3
    .catch Ljava/lang/Throwable; {:try_start_79a .. :try_end_7a1} :catch_87d
    .catchall {:try_start_79a .. :try_end_7a1} :catchall_865

    goto/16 :goto_6e4

    .line 473
    :catch_7a3
    move-exception v3

    move-object v5, v2

    move-object v2, v0

    move-object v0, v3

    goto/16 :goto_527

    .line 485
    :catch_7a9
    move-exception v0

    .line 486
    const-string v3, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6f8

    .line 492
    :catch_7b5
    move-exception v0

    .line 493
    const-string v2, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6fd

    .line 499
    :catch_7c1
    move-exception v0

    .line 500
    const-string v2, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_702

    .line 485
    :catch_7cd
    move-exception v0

    .line 486
    const-string v2, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_544

    .line 492
    :catch_7d9
    move-exception v0

    .line 493
    const-string v2, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_549

    .line 499
    :catch_7e5
    move-exception v0

    .line 500
    const-string v2, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_54e

    .line 485
    :catch_7f1
    move-exception v0

    .line 486
    const-string v2, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_626

    .line 492
    :catch_7fd
    move-exception v0

    .line 493
    const-string v2, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_62b

    .line 499
    :catch_809
    move-exception v0

    .line 500
    const-string v2, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_630

    .line 479
    :catchall_815
    move-exception v0

    move-object v5, v2

    :goto_817
    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v2}, Lcom/mintegral/msdk/videocommon/download/a;->c(Lcom/mintegral/msdk/videocommon/download/a;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_826

    .line 480
    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/download/a$3;->b:Lcom/mintegral/msdk/videocommon/download/a;

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/a;I)I

    .line 482
    :cond_826
    if-eqz v3, :cond_82b

    .line 484
    :try_start_828
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_82b
    .catch Ljava/lang/Throwable; {:try_start_828 .. :try_end_82b} :catch_839

    .line 489
    :cond_82b
    :goto_82b
    if-eqz v5, :cond_830

    .line 491
    :try_start_82d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_830
    .catch Ljava/lang/Throwable; {:try_start_82d .. :try_end_830} :catch_844

    .line 496
    :cond_830
    :goto_830
    if-eqz v1, :cond_838

    .line 498
    :try_start_832
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_835
    .catch Ljava/lang/Throwable; {:try_start_832 .. :try_end_835} :catch_84f

    .line 503
    :goto_835
    :try_start_835
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_838
    .catch Ljava/lang/Throwable; {:try_start_835 .. :try_end_838} :catch_85a

    .line 506
    :cond_838
    :goto_838
    throw v0

    .line 485
    :catch_839
    move-exception v2

    .line 486
    const-string v3, "CampaignDownLoadTask"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_82b

    .line 492
    :catch_844
    move-exception v2

    .line 493
    const-string v3, "CampaignDownLoadTask"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_830

    .line 499
    :catch_84f
    move-exception v2

    .line 500
    const-string v3, "CampaignDownLoadTask"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_835

    .line 504
    :catch_85a
    move-exception v1

    .line 505
    const-string v2, "CampaignDownLoadTask"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_838

    .line 479
    :catchall_865
    move-exception v3

    move-object v5, v2

    move-object v14, v3

    move-object v3, v0

    move-object v0, v14

    goto :goto_817

    :catchall_86b
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    goto :goto_817

    :catchall_86f
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_817

    :catchall_874
    move-exception v0

    move-object v3, v2

    goto :goto_817

    :catchall_877
    move-exception v0

    goto :goto_817

    .line 475
    :catch_879
    move-exception v0

    move-object v5, v2

    goto/16 :goto_606

    :catch_87d
    move-exception v3

    move-object v5, v2

    move-object v14, v3

    move-object v3, v0

    move-object v0, v14

    goto/16 :goto_606

    :catch_884
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    goto/16 :goto_606

    .line 473
    :catch_889
    move-exception v0

    move-object v5, v2

    move-object v2, v3

    goto/16 :goto_527

    :catch_88e
    move-exception v2

    move-object v14, v2

    move-object v2, v0

    move-object v0, v14

    goto/16 :goto_527

    :cond_894
    move v2, v3

    goto/16 :goto_45c
.end method
