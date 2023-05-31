.class Lcom/bytedance/sdk/openadsdk/component/splash/a$1;
.super Ljava/lang/Object;
.source "SplashAdCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/splash/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/splash/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/a;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 210
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$1;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 213
    const-string v0, "TTExecutor"

    const-string v1, "readSplashMaterialMeta....->run...."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$1;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Lcom/bytedance/sdk/openadsdk/utils/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 215
    const/4 v0, 0x2

    iput v0, v1, Landroid/os/Message;->what:I

    .line 217
    :try_start_15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$1;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$1;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/a;

    move-result-object v0

    .line 218
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/d/n;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/n;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/k;[B)V

    .line 219
    if-eqz v0, :cond_46

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_46

    .line 220
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_46

    .line 221
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 222
    if-eqz v0, :cond_46

    .line 223
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/n;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 227
    :cond_46
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_48} :catch_72
    .catchall {:try_start_15 .. :try_end_48} :catchall_7d

    .line 231
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$1;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Lcom/bytedance/sdk/openadsdk/utils/ak;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->sendMessage(Landroid/os/Message;)Z

    .line 235
    :goto_51
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 236
    const-string v0, "tt_splash"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has_video_ad_cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :goto_71
    return-void

    .line 229
    :catch_72
    move-exception v0

    .line 231
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$1;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Lcom/bytedance/sdk/openadsdk/utils/ak;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->sendMessage(Landroid/os/Message;)Z

    goto :goto_51

    :catchall_7d
    move-exception v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$1;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Lcom/bytedance/sdk/openadsdk/utils/ak;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->sendMessage(Landroid/os/Message;)Z

    throw v0

    .line 238
    :cond_88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$1;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_splash"

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 239
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has_video_ad_cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_71
.end method
