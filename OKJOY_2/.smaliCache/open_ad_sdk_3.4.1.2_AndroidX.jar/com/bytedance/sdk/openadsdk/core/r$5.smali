.class Lcom/bytedance/sdk/openadsdk/core/r$5;
.super Ljava/lang/Object;
.source "NetApiImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/core/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/r;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/q$c;)V
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
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/q$c;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/r;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r;Lcom/bytedance/sdk/openadsdk/core/q$c;)V
    .registers 3

    .line 1251
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r$5;->b:Lcom/bytedance/sdk/openadsdk/core/r;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/r$5;->a:Lcom/bytedance/sdk/openadsdk/core/q$c;

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

    .line 1254
    if-eqz p1, :cond_6b

    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    if-eqz v0, :cond_6b

    .line 1255
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const/4 v1, -0x1

    const-string v2, "cypher"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 1256
    iget-object v1, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1258
    iget-object p1, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    .line 1259
    const/4 v2, 0x0

    .line 1260
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2c

    .line 1261
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_33

    .line 1262
    :cond_2c
    const/4 v3, 0x2

    if-ne v0, v3, :cond_33

    .line 1263
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1266
    :cond_33
    :goto_33
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 1268
    :try_start_39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_40

    .line 1270
    move-object p1, v0

    goto :goto_41

    .line 1269
    :catchall_40
    move-exception v0

    .line 1273
    :cond_41
    :goto_41
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r$c;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/r$c;

    move-result-object p1

    .line 1274
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/core/r$c;->a:I

    const/16 v1, 0x4e20

    if-eq v0, v1, :cond_59

    .line 1275
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r$5;->a:Lcom/bytedance/sdk/openadsdk/core/q$c;

    iget v1, p1, Lcom/bytedance/sdk/openadsdk/core/r$c;->a:I

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/r$c;->a:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/q$c;->a(ILjava/lang/String;)V

    .line 1276
    return-void

    .line 1278
    :cond_59
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/r$c;->c:Lcom/bytedance/sdk/openadsdk/core/d/s;

    if-nez v0, :cond_65

    .line 1279
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r$5;->b:Lcom/bytedance/sdk/openadsdk/core/r;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r$5;->a:Lcom/bytedance/sdk/openadsdk/core/q$c;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r;->a(Lcom/bytedance/sdk/openadsdk/core/r;Lcom/bytedance/sdk/openadsdk/core/q$c;)V

    .line 1280
    return-void

    .line 1282
    :cond_65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r$5;->a:Lcom/bytedance/sdk/openadsdk/core/q$c;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/q$c;->a(Lcom/bytedance/sdk/openadsdk/core/r$c;)V

    .line 1283
    goto :goto_72

    .line 1284
    :cond_6b
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r$5;->b:Lcom/bytedance/sdk/openadsdk/core/r;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r$5;->a:Lcom/bytedance/sdk/openadsdk/core/q$c;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r;->a(Lcom/bytedance/sdk/openadsdk/core/r;Lcom/bytedance/sdk/openadsdk/core/q$c;)V

    .line 1286
    :goto_72
    return-void
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 1290
    nop

    .line 1291
    const/4 v0, -0x2

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 1292
    if-eqz p1, :cond_b

    .line 1293
    iget-wide v2, p1, Lcom/bytedance/sdk/adnet/core/m;->h:J

    long-to-int v0, v2

    .line 1295
    :cond_b
    if-eqz p1, :cond_23

    iget-object v2, p1, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    if-eqz v2, :cond_23

    iget-object v2, p1, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    .line 1296
    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/err/VAdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 1297
    iget-object p1, p1, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/err/VAdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 1299
    :cond_23
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r$5;->a:Lcom/bytedance/sdk/openadsdk/core/q$c;

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/q$c;->a(ILjava/lang/String;)V

    .line 1300
    return-void
.end method
