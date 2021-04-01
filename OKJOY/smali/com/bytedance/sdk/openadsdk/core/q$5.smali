.class Lcom/bytedance/sdk/openadsdk/core/q$5;
.super Ljava/lang/Object;
.source "NetApiImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/core/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/q;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/p$a;)V
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
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/p$a;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/q;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/q;Lcom/bytedance/sdk/openadsdk/core/p$a;)V
    .registers 3

    .prologue
    .line 1256
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/q$5;->b:Lcom/bytedance/sdk/openadsdk/core/q;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/q$5;->a:Lcom/bytedance/sdk/openadsdk/core/p$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 8
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
    .line 1261
    const-wide/16 v2, -0x1

    .line 1262
    const-wide/16 v4, 0x0

    .line 1263
    const/4 v1, 0x0

    .line 1264
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    if-eqz v0, :cond_18

    .line 1265
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/q$b;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/q$b;

    move-result-object v0

    .line 1266
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/q$b;->a:I

    int-to-long v2, v1

    .line 1267
    iget-wide v4, p1, Lcom/bytedance/sdk/adnet/core/n;->f:J

    .line 1268
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/core/q$b;->b:Z

    .line 1271
    :cond_18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q$5;->a:Lcom/bytedance/sdk/openadsdk/core/p$a;

    invoke-interface/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/p$a;->a(ZJJ)V

    .line 1272
    return-void
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 8
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
    .line 1276
    const-wide/16 v2, -0x1

    .line 1277
    iget-wide v0, p1, Lcom/bytedance/sdk/adnet/core/n;->h:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_c

    .line 1278
    iget-wide v2, p1, Lcom/bytedance/sdk/adnet/core/n;->h:J

    .line 1280
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q$5;->a:Lcom/bytedance/sdk/openadsdk/core/p$a;

    const/4 v1, 0x0

    iget-wide v4, p1, Lcom/bytedance/sdk/adnet/core/n;->f:J

    invoke-interface/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/p$a;->a(ZJJ)V

    .line 1281
    return-void
.end method
