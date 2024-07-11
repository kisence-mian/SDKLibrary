.class Lcom/bytedance/sdk/openadsdk/core/r$6;
.super Ljava/lang/Object;
.source "NetApiImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/core/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/q$a;)V
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
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/q$a;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/r;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r;Lcom/bytedance/sdk/openadsdk/core/q$a;)V
    .registers 3

    .line 1543
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r$6;->b:Lcom/bytedance/sdk/openadsdk/core/r;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/r$6;->a:Lcom/bytedance/sdk/openadsdk/core/q$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 1548
    nop

    .line 1549
    nop

    .line 1550
    nop

    .line 1551
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1a

    .line 1552
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r$b;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/r$b;

    move-result-object v0

    .line 1553
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/r$b;->a:I

    int-to-long v1, v1

    .line 1554
    iget-wide v3, p1, Lcom/bytedance/sdk/adnet/core/m;->f:J

    .line 1555
    iget-boolean p1, v0, Lcom/bytedance/sdk/openadsdk/core/r$b;->b:Z

    move v6, p1

    move-wide v7, v1

    move-wide v9, v3

    goto :goto_22

    .line 1551
    :cond_1a
    const-wide/16 v1, -0x1

    const-wide/16 v3, 0x0

    const/4 p1, 0x0

    move v6, p1

    move-wide v7, v1

    move-wide v9, v3

    .line 1558
    :goto_22
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/r$6;->a:Lcom/bytedance/sdk/openadsdk/core/q$a;

    invoke-interface/range {v5 .. v10}, Lcom/bytedance/sdk/openadsdk/core/q$a;->a(ZJJ)V

    .line 1559
    return-void
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 1563
    nop

    .line 1564
    iget-wide v0, p1, Lcom/bytedance/sdk/adnet/core/m;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 1565
    iget-wide v0, p1, Lcom/bytedance/sdk/adnet/core/m;->h:J

    move-wide v4, v0

    goto :goto_10

    .line 1564
    :cond_d
    const-wide/16 v0, -0x1

    move-wide v4, v0

    .line 1567
    :goto_10
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r$6;->a:Lcom/bytedance/sdk/openadsdk/core/q$a;

    const/4 v3, 0x0

    iget-wide v6, p1, Lcom/bytedance/sdk/adnet/core/m;->f:J

    invoke-interface/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/q$a;->a(ZJJ)V

    .line 1568
    return-void
.end method
