.class Lcom/bytedance/sdk/openadsdk/core/h/b$2;
.super Ljava/lang/Object;
.source "ApplistHelper.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/core/m$a;


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
        "Lcom/bytedance/sdk/adnet/core/m$a<",
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

    .line 409
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/h/b;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/h/b$2;->a:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/h/b$2;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 412
    const-string v0, "ApplistHelper"

    const-string v1, "real upload response"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    if-eqz p1, :cond_6c

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/m;->a()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 415
    iget-object v1, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    if-eqz v1, :cond_67

    iget-object v1, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    .line 416
    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "20000"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 417
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/b$2;->a:Z

    if-eqz v1, :cond_32

    .line 418
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/h/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/h/b;->a(Lcom/bytedance/sdk/openadsdk/core/h/b;)Lcom/bytedance/sdk/openadsdk/core/h/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/h/b$a;->a()V

    .line 420
    :cond_32
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/b$2;->b:Ljava/util/List;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 421
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 422
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/h/b;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/h/b;->a(Lcom/bytedance/sdk/openadsdk/core/h/b;)Lcom/bytedance/sdk/openadsdk/core/h/b$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/h/b$a;->a(Ljava/lang/String;)V

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APP List upload success ! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/bytedance/sdk/adnet/core/m;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    goto :goto_6c

    .line 425
    :cond_67
    const-string p1, "APP List upload failed !"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_6c
    :goto_6c
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/h/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h/b;->b(Lcom/bytedance/sdk/openadsdk/core/h/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 429
    return-void
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 433
    if-eqz p1, :cond_1e

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload failed: code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/bytedance/sdk/adnet/core/m;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    const-string v1, "ApplistHelper"

    invoke-static {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 435
    :cond_1e
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/h/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h/b;->b(Lcom/bytedance/sdk/openadsdk/core/h/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 436
    return-void
.end method
