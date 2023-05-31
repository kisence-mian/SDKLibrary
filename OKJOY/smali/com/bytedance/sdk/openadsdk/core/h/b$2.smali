.class Lcom/bytedance/sdk/openadsdk/core/h/b$2;
.super Ljava/lang/Object;
.source "ApplistHelper.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/core/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/h/b;->a(Ljava/util/List;Z)V
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
.field final synthetic a:Z

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/h/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/h/b;ZLjava/util/List;)V
    .registers 4

    .prologue
    .line 402
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/h/b;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/h/b$2;->a:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/h/b$2;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 6
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
    .line 405
    const-string v0, "ApplistHelper"

    const-string v1, "real upload response"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    if-eqz p1, :cond_68

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/n;->a()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 408
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    if-eqz v0, :cond_73

    const-string v1, "20000"

    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "status"

    .line 409
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 410
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b$2;->a:Z

    if-eqz v0, :cond_32

    .line 411
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/h/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/b;->a(Lcom/bytedance/sdk/openadsdk/core/h/b;)Lcom/bytedance/sdk/openadsdk/core/h/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/b$a;->a()V

    .line 413
    :cond_32
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/b$2;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 414
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 415
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/h/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/h/b;->a(Lcom/bytedance/sdk/openadsdk/core/h/b;)Lcom/bytedance/sdk/openadsdk/core/h/b$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/h/b$a;->a(Ljava/lang/String;)V

    .line 416
    const-string v0, "ApplistHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APP List upload success ! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/bytedance/sdk/adnet/core/n;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_68
    :goto_68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/h/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/b;->b(Lcom/bytedance/sdk/openadsdk/core/h/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 422
    return-void

    .line 418
    :cond_73
    const-string v0, "ApplistHelper"

    const-string v1, "APP List upload failed !"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 6
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
    .line 426
    if-eqz p1, :cond_1e

    .line 427
    const-string v0, "ApplistHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload failed: code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/bytedance/sdk/adnet/core/n;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/bytedance/sdk/adnet/core/n;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 428
    :cond_1e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/h/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/b;->b(Lcom/bytedance/sdk/openadsdk/core/h/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 429
    return-void
.end method
