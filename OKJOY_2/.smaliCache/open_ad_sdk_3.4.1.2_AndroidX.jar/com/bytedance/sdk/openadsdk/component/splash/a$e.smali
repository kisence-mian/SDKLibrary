.class Lcom/bytedance/sdk/openadsdk/component/splash/a$e;
.super Ljava/lang/Object;
.source "SplashAdCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/a;Ljava/lang/String;)V
    .registers 3

    .line 549
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$e;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$e;->b:Ljava/lang/String;

    .line 551
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/a$e;Ljava/lang/String;)V
    .registers 2

    .line 546
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a$e;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    .line 554
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$e;->b:Ljava/lang/String;

    .line 555
    return-void
.end method

.method private a(Ljava/io/File;)[B
    .registers 8

    .line 608
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 610
    const/16 v1, 0x400

    new-array v2, v1, [B

    .line 611
    nop

    .line 613
    const/4 v3, 0x0

    :try_start_b
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_3b
    .catchall {:try_start_b .. :try_end_10} :catchall_2e

    .line 614
    :goto_10
    const/4 p1, 0x0

    :try_start_11
    invoke-virtual {v4, v2, p1, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1c

    .line 615
    invoke-virtual {v0, v2, p1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_10

    .line 617
    :cond_1c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1f} :catch_2b
    .catchall {:try_start_11 .. :try_end_1f} :catchall_28

    .line 622
    nop

    .line 623
    :try_start_20
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 625
    nop

    .line 626
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_27} :catch_46

    goto :goto_45

    .line 620
    :catchall_28
    move-exception p1

    move-object v3, v4

    goto :goto_2f

    .line 618
    :catch_2b
    move-exception p1

    move-object v3, v4

    goto :goto_3c

    .line 620
    :catchall_2e
    move-exception p1

    .line 622
    :goto_2f
    nop

    .line 623
    :try_start_30
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 625
    if-eqz v3, :cond_38

    .line 626
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_38} :catch_39

    .line 629
    :cond_38
    goto :goto_3a

    .line 628
    :catch_39
    move-exception v0

    .line 630
    :goto_3a
    throw p1

    .line 618
    :catch_3b
    move-exception p1

    .line 622
    :goto_3c
    nop

    .line 623
    :try_start_3d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 625
    if-eqz v3, :cond_45

    .line 626
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_45} :catch_46

    .line 629
    :cond_45
    :goto_45
    goto :goto_48

    .line 628
    :catch_46
    move-exception p1

    .line 630
    nop

    .line 631
    :goto_48
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 559
    const-string v0, "splashLoadAd"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$e;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Lcom/bytedance/sdk/openadsdk/utils/al;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 560
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 562
    :try_start_f
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$e;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$e;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/a;

    move-result-object v3

    .line 563
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/d/p;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5, v5}, Lcom/bytedance/sdk/openadsdk/core/d/p;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/l;[B)V

    .line 564
    if-eqz v3, :cond_ff

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_ff

    .line 565
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_ff

    .line 566
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 567
    if-eqz v6, :cond_ff

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aB()Z

    move-result v7

    if-eqz v7, :cond_ff

    .line 570
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/a/a;->a()Lcom/bytedance/sdk/openadsdk/h/a/a;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$e;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v8, v3}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a;Lcom/bytedance/sdk/openadsdk/core/d/a;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$e;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v9, v3}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b(Lcom/bytedance/sdk/openadsdk/component/splash/a;Lcom/bytedance/sdk/openadsdk/core/d/a;)I

    move-result v9

    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$e;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    .line 571
    invoke-static {v10, v3}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b(Lcom/bytedance/sdk/openadsdk/component/splash/a;Lcom/bytedance/sdk/openadsdk/core/d/a;)I

    move-result v3

    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 570
    invoke-virtual {v7, v8, v9, v3, v10}, Lcom/bytedance/sdk/openadsdk/h/a/a;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v3

    .line 572
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/a/a;->a()Lcom/bytedance/sdk/openadsdk/h/a/a;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/a/a;->b()Ljava/lang/String;

    move-result-object v7

    .line 573
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " readSplashAdFromCache \u5f00\u59cb\u83b7\u53d6\u7f13\u5b58\u6587\u4ef6 filePath "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " readSplashAdFromCache path "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_d9

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_d9

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-gtz v7, :cond_b1

    goto :goto_d9

    .line 582
    :cond_b1
    sput v2, Lcom/bytedance/sdk/openadsdk/h/a/b;->a:I

    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " readSplashAdFromCache \u83b7\u53d6\u6587\u4ef6\u6210\u529f cacheKey "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-direct {p0, v8}, Lcom/bytedance/sdk/openadsdk/component/splash/a$e;->a(Ljava/io/File;)[B

    move-result-object v2

    .line 585
    if-eqz v2, :cond_ff

    array-length v3, v2

    if-eqz v3, :cond_ff

    .line 586
    invoke-virtual {v4, v6}, Lcom/bytedance/sdk/openadsdk/core/d/p;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 587
    invoke-virtual {v4, v2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->a([B)V

    goto :goto_ff

    .line 578
    :cond_d9
    :goto_d9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " readSplashAdFromCache \u83b7\u53d6\u6587\u4ef6\u5931\u8d25 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iput-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_f5
    .catchall {:try_start_f .. :try_end_f5} :catchall_102

    .line 596
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$e;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Lcom/bytedance/sdk/openadsdk/utils/al;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendMessage(Landroid/os/Message;)Z

    .line 580
    return-void

    .line 592
    :cond_ff
    :goto_ff
    :try_start_ff
    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_101
    .catchall {:try_start_ff .. :try_end_101} :catchall_102

    goto :goto_103

    .line 594
    :catchall_102
    move-exception v2

    .line 596
    :goto_103
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$e;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Lcom/bytedance/sdk/openadsdk/utils/al;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendMessage(Landroid/os/Message;)Z

    .line 597
    nop

    .line 601
    :try_start_10d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u7f13\u5b58\u5e7f\u544a\u4e4b\u540e\u5c06\u5176\u6e05\u7a7a clearCache "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$e;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->d(Ljava/lang/String;)V
    :try_end_12c
    .catchall {:try_start_10d .. :try_end_12c} :catchall_12d

    .line 604
    goto :goto_12e

    .line 603
    :catchall_12d
    move-exception v0

    .line 605
    :goto_12e
    return-void
.end method
