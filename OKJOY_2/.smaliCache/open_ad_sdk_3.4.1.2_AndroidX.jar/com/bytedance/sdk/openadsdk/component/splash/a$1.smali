.class Lcom/bytedance/sdk/openadsdk/component/splash/a$1;
.super Ljava/lang/Object;
.source "SplashAdCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/splash/a$c;)V
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

    .line 218
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$1;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 221
    const-string v0, "TTExecutor"

    const-string v1, "readSplashMaterialMeta....->run...."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$1;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Lcom/bytedance/sdk/openadsdk/utils/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/al;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 223
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 225
    :try_start_14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$1;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$1;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/a;

    move-result-object v1

    .line 226
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/d/p;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v3}, Lcom/bytedance/sdk/openadsdk/core/d/p;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/l;[B)V

    .line 227
    if-eqz v1, :cond_44

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_44

    .line 228
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_44

    .line 229
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 230
    if-eqz v1, :cond_44

    .line 231
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 235
    :cond_44
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_14 .. :try_end_46} :catchall_47

    goto :goto_48

    .line 237
    :catchall_47
    move-exception v1

    .line 239
    :goto_48
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$1;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Lcom/bytedance/sdk/openadsdk/utils/al;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendMessage(Landroid/os/Message;)Z

    .line 240
    nop

    .line 242
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$1;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->d(Ljava/lang/String;)V

    .line 243
    return-void
.end method
