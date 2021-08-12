.class Lcom/bytedance/sdk/openadsdk/component/splash/a$f;
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
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

.field private b:Lcom/bytedance/sdk/openadsdk/core/d/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/a;Lcom/bytedance/sdk/openadsdk/core/d/p;)V
    .registers 3

    .line 640
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$f;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 641
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$f;->b:Lcom/bytedance/sdk/openadsdk/core/d/p;

    .line 642
    return-void
.end method

.method private a()V
    .registers 7

    .line 662
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$f;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Lcom/bytedance/sdk/openadsdk/utils/al;

    move-result-object v0

    if-nez v0, :cond_9

    .line 663
    return-void

    .line 665
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$f;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Lcom/bytedance/sdk/openadsdk/utils/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/al;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 666
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 668
    :try_start_16
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$f;->b:Lcom/bytedance/sdk/openadsdk/core/d/p;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->c(Lcom/bytedance/sdk/openadsdk/core/d/p;)I

    move-result v1
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_8a

    .line 669
    if-gtz v1, :cond_28

    .line 683
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$f;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Lcom/bytedance/sdk/openadsdk/utils/al;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendMessage(Landroid/os/Message;)Z

    .line 670
    return-void

    .line 672
    :cond_28
    :try_start_28
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v2
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_8a

    const-string v3, "materialMeta"

    const-string v4, "tt_materialMeta"

    if-eqz v2, :cond_5a

    .line 673
    :try_start_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$f;->b:Lcom/bytedance/sdk/openadsdk/core/d/p;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->c()Lcom/bytedance/sdk/openadsdk/core/d/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_32 .. :try_end_50} :catchall_8a

    .line 683
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$f;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Lcom/bytedance/sdk/openadsdk/utils/al;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendMessage(Landroid/os/Message;)Z

    .line 674
    return-void

    .line 676
    :cond_5a
    :try_start_5a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 677
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 679
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$f;->b:Lcom/bytedance/sdk/openadsdk/core/d/p;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/p;->c()Lcom/bytedance/sdk/openadsdk/core/d/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_89
    .catchall {:try_start_5a .. :try_end_89} :catchall_8a

    goto :goto_8b

    .line 680
    :catchall_8a
    move-exception v1

    .line 683
    :goto_8b
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$f;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Lcom/bytedance/sdk/openadsdk/utils/al;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendMessage(Landroid/os/Message;)Z

    .line 684
    nop

    .line 685
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/d/p;)V
    .registers 2

    .line 646
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$f;->b:Lcom/bytedance/sdk/openadsdk/core/d/p;

    .line 647
    return-void
.end method

.method public run()V
    .registers 1

    .line 655
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a$f;->a()V

    .line 656
    return-void
.end method
