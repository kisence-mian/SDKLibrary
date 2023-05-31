.class Lcom/bytedance/sdk/openadsdk/component/splash/a$d;
.super Ljava/lang/Object;
.source "SplashAdCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/d/n;

.field private b:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/n;Ljava/io/File;)V
    .registers 3

    .prologue
    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 622
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$d;->a:Lcom/bytedance/sdk/openadsdk/core/d/n;

    .line 623
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$d;->b:Ljava/io/File;

    .line 624
    return-void
.end method

.method private a()V
    .registers 6

    .prologue
    .line 646
    const/4 v1, 0x0

    .line 648
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$d;->a:Lcom/bytedance/sdk/openadsdk/core/d/n;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$d;->a:Lcom/bytedance/sdk/openadsdk/core/d/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/n;->b()[B

    move-result-object v0

    if-eqz v0, :cond_26

    .line 649
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$d;->b:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_19} :catch_2c
    .catchall {:try_start_1 .. :try_end_19} :catchall_36

    .line 650
    :try_start_19
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$d;->a:Lcom/bytedance/sdk/openadsdk/core/d/n;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/n;->b()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 651
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_25} :catch_46
    .catchall {:try_start_19 .. :try_end_25} :catchall_41

    move-object v1, v0

    .line 656
    :cond_26
    if-eqz v1, :cond_2b

    .line 657
    :try_start_28
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2b} :catch_3d

    .line 662
    :cond_2b
    :goto_2b
    return-void

    .line 653
    :catch_2c
    move-exception v0

    move-object v0, v1

    .line 656
    :goto_2e
    if-eqz v0, :cond_2b

    .line 657
    :try_start_30
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_2b

    .line 659
    :catch_34
    move-exception v0

    goto :goto_2b

    .line 655
    :catchall_36
    move-exception v0

    .line 656
    :goto_37
    if-eqz v1, :cond_3c

    .line 657
    :try_start_39
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_3c} :catch_3f

    .line 660
    :cond_3c
    :goto_3c
    throw v0

    .line 659
    :catch_3d
    move-exception v0

    goto :goto_2b

    :catch_3f
    move-exception v1

    goto :goto_3c

    .line 655
    :catchall_41
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_37

    .line 653
    :catch_46
    move-exception v1

    goto :goto_2e
.end method

.method private b()V
    .registers 5

    .prologue
    .line 668
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$d;->a:Lcom/bytedance/sdk/openadsdk/core/d/n;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->c(Lcom/bytedance/sdk/openadsdk/core/d/n;)I

    move-result v0

    .line 669
    if-gtz v0, :cond_9

    .line 680
    :goto_8
    return-void

    .line 672
    :cond_9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 673
    const-string v1, "tt_materialMeta"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "materialMeta"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$d;->a:Lcom/bytedance/sdk/openadsdk/core/d/n;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/n;->c()Lcom/bytedance/sdk/openadsdk/core/d/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 676
    :cond_32
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_materialMeta"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 677
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "materialMeta"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$d;->a:Lcom/bytedance/sdk/openadsdk/core/d/n;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/n;->c()Lcom/bytedance/sdk/openadsdk/core/d/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_8
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/d/n;)V
    .registers 2

    .prologue
    .line 628
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$d;->a:Lcom/bytedance/sdk/openadsdk/core/d/n;

    .line 629
    return-void
.end method

.method public a(Ljava/io/File;)V
    .registers 2

    .prologue
    .line 633
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$d;->b:Ljava/io/File;

    .line 634
    return-void
.end method

.method public run()V
    .registers 1

    .prologue
    .line 638
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a$d;->a()V

    .line 639
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a$d;->b()V

    .line 640
    return-void
.end method
