.class Lcom/bytedance/sdk/openadsdk/core/h/h$1;
.super Ljava/lang/Object;
.source "SdkDnsHelper.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/core/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/h/h;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/adnet/core/n$a",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/h/h;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/h/h;)V
    .registers 2

    .prologue
    .line 206
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/h;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 210
    if-eqz p1, :cond_29

    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    if-eqz v0, :cond_29

    .line 211
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 213
    :try_start_12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/h;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->a(Lcom/bytedance/sdk/openadsdk/core/h/h;)Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/h/e;->a(Lorg/json/JSONObject;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_1b} :catch_35

    .line 216
    :goto_1b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 217
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->a(Ljava/lang/String;)V

    .line 226
    :cond_28
    :goto_28
    return-void

    .line 223
    :cond_29
    :try_start_29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->a(Lcom/bytedance/sdk/openadsdk/core/h/h;)Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/h/e;->a()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_32} :catch_33

    goto :goto_28

    .line 224
    :catch_33
    move-exception v0

    goto :goto_28

    .line 214
    :catch_35
    move-exception v1

    goto :goto_1b
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/h;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 232
    :try_start_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->a(Lcom/bytedance/sdk/openadsdk/core/h/h;)Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/h/e;->a()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_11} :catch_12

    .line 235
    :goto_11
    return-void

    .line 233
    :catch_12
    move-exception v0

    goto :goto_11
.end method
