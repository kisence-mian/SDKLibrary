.class Lcom/bytedance/sdk/openadsdk/component/splash/a$c;
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
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

.field private b:Ljava/io/File;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/a;Ljava/lang/String;Ljava/io/File;)V
    .registers 4

    .prologue
    .line 544
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$c;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$c;->c:Ljava/lang/String;

    .line 546
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$c;->b:Ljava/io/File;

    .line 547
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/a$c;Ljava/lang/String;Ljava/io/File;)V
    .registers 3

    .prologue
    .line 540
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/a$c;->a(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/io/File;)V
    .registers 3

    .prologue
    .line 550
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$c;->c:Ljava/lang/String;

    .line 551
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$c;->b:Ljava/io/File;

    .line 552
    return-void
.end method

.method private a(Ljava/io/File;)[B
    .registers 8

    .prologue
    .line 588
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 590
    const/16 v0, 0x400

    new-array v3, v0, [B

    .line 591
    const/4 v1, 0x0

    .line 593
    :try_start_a
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_52
    .catchall {:try_start_a .. :try_end_f} :catchall_3d

    .line 594
    :goto_f
    const/4 v1, 0x0

    :try_start_10
    array-length v4, v3

    invoke-virtual {v0, v3, v1, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2d

    .line 595
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1c} :catch_1d
    .catchall {:try_start_10 .. :try_end_1c} :catchall_4b

    goto :goto_f

    .line 598
    :catch_1d
    move-exception v1

    .line 602
    :goto_1e
    if-eqz v2, :cond_23

    .line 603
    :try_start_20
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 605
    :cond_23
    if-eqz v0, :cond_28

    .line 606
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_28} :catch_50

    .line 611
    :cond_28
    :goto_28
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 597
    :cond_2d
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_1d
    .catchall {:try_start_2d .. :try_end_30} :catchall_4b

    .line 602
    if-eqz v2, :cond_35

    .line 603
    :try_start_32
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 605
    :cond_35
    if-eqz v0, :cond_28

    .line 606
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3a} :catch_3b

    goto :goto_28

    .line 608
    :catch_3b
    move-exception v0

    goto :goto_28

    .line 600
    :catchall_3d
    move-exception v0

    .line 602
    :goto_3e
    if-eqz v2, :cond_43

    .line 603
    :try_start_40
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 605
    :cond_43
    if-eqz v1, :cond_48

    .line 606
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_48} :catch_49

    .line 609
    :cond_48
    :goto_48
    throw v0

    .line 608
    :catch_49
    move-exception v1

    goto :goto_48

    .line 600
    :catchall_4b
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3e

    .line 608
    :catch_50
    move-exception v0

    goto :goto_28

    .line 598
    :catch_52
    move-exception v0

    move-object v0, v1

    goto :goto_1e
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 556
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$c;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Lcom/bytedance/sdk/openadsdk/utils/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 557
    const/4 v0, 0x1

    iput v0, v1, Landroid/os/Message;->what:I

    .line 559
    :try_start_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$c;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$c;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/a;

    move-result-object v0

    .line 560
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/d/n;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/n;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/k;[B)V

    .line 561
    if-eqz v0, :cond_52

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_52

    .line 562
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_52

    .line 563
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 564
    if-eqz v0, :cond_52

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->aa()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 565
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$c;->b:Ljava/io/File;

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/component/splash/a$c;->a(Ljava/io/File;)[B

    move-result-object v3

    .line 566
    if-eqz v3, :cond_52

    array-length v4, v3

    if-eqz v4, :cond_52

    .line 567
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/n;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 568
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/n;->a([B)V

    .line 573
    :cond_52
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_54} :catch_65
    .catchall {:try_start_d .. :try_end_54} :catchall_70

    .line 577
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$c;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Lcom/bytedance/sdk/openadsdk/utils/ak;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->sendMessage(Landroid/os/Message;)Z

    .line 582
    :goto_5d
    :try_start_5d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$c;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->d(Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_64} :catch_7b

    .line 585
    :goto_64
    return-void

    .line 575
    :catch_65
    move-exception v0

    .line 577
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$c;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Lcom/bytedance/sdk/openadsdk/utils/ak;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5d

    :catchall_70
    move-exception v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$c;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Lcom/bytedance/sdk/openadsdk/utils/ak;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->sendMessage(Landroid/os/Message;)Z

    throw v0

    .line 583
    :catch_7b
    move-exception v0

    goto :goto_64
.end method
