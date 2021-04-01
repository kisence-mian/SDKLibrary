.class Lcom/bytedance/sdk/openadsdk/core/q$1;
.super Ljava/lang/Object;
.source "NetApiImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/core/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/l;ILcom/bytedance/sdk/openadsdk/core/p$b;)V
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
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/p$b;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic c:I

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/core/q;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/q;Lcom/bytedance/sdk/openadsdk/core/p$b;Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 6

    .prologue
    .line 288
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->e:Lcom/bytedance/sdk/openadsdk/core/q;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->a:Lcom/bytedance/sdk/openadsdk/core/p$b;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->c:I

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 16
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
    .line 291
    const/4 v4, 0x1

    .line 292
    const-wide/16 v2, 0x0

    .line 294
    :try_start_3
    const-string v0, "extra_time_start"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/n;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_e} :catch_3c

    move-result-wide v0

    move-wide v2, v0

    move v1, v4

    .line 298
    :goto_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 300
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->e:Lcom/bytedance/sdk/openadsdk/core/q;

    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v6, v0}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/core/q;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 301
    if-nez v0, :cond_40

    .line 302
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->e:Lcom/bytedance/sdk/openadsdk/core/q;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->a:Lcom/bytedance/sdk/openadsdk/core/p$b;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/core/q;Lcom/bytedance/sdk/openadsdk/core/p$b;)V

    .line 304
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->e:Lcom/bytedance/sdk/openadsdk/core/q;

    iget-wide v2, p1, Lcom/bytedance/sdk/adnet/core/n;->e:J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->c:I

    const/4 v6, 0x0

    const/4 v7, -0x1

    const-string v8, "mate parse_fail"

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/core/q;JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/q$a;ILjava/lang/String;)V

    .line 380
    :cond_3b
    :goto_3b
    return-void

    .line 295
    :catch_3c
    move-exception v0

    .line 296
    const/4 v0, 0x0

    move v1, v0

    goto :goto_11

    .line 309
    :cond_40
    :try_start_40
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/q$a;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;)Lcom/bytedance/sdk/openadsdk/core/q$a;

    move-result-object v6

    .line 311
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->e:Lcom/bytedance/sdk/openadsdk/core/q;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/core/q;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, v6, Lcom/bytedance/sdk/openadsdk/core/q$a;->i:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/j;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 312
    iget v7, v6, Lcom/bytedance/sdk/openadsdk/core/q$a;->d:I

    const/16 v8, 0x4e20

    if-eq v7, v8, :cond_9b

    .line 313
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->a:Lcom/bytedance/sdk/openadsdk/core/p$b;

    iget v1, v6, Lcom/bytedance/sdk/openadsdk/core/q$a;->d:I

    iget-object v2, v6, Lcom/bytedance/sdk/openadsdk/core/q$a;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/p$b;->a(ILjava/lang/String;)V

    .line 315
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->e:Lcom/bytedance/sdk/openadsdk/core/q;

    iget-wide v2, p1, Lcom/bytedance/sdk/adnet/core/n;->e:J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->c:I

    iget v7, v6, Lcom/bytedance/sdk/openadsdk/core/q$a;->d:I

    iget v0, v6, Lcom/bytedance/sdk/openadsdk/core/q$a;->f:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/core/q;JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/q$a;ILjava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_77} :catch_78

    goto :goto_3b

    .line 371
    :catch_78
    move-exception v0

    .line 372
    const-string v1, "NetApiImpl"

    const-string v2, "get ad error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 373
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->e:Lcom/bytedance/sdk/openadsdk/core/q;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->a:Lcom/bytedance/sdk/openadsdk/core/p$b;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/core/q;Lcom/bytedance/sdk/openadsdk/core/p$b;)V

    .line 376
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->e:Lcom/bytedance/sdk/openadsdk/core/q;

    iget-wide v2, p1, Lcom/bytedance/sdk/adnet/core/n;->e:J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->c:I

    const/4 v6, 0x0

    const/4 v7, -0x1

    const-string v8, "parse_fail"

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/core/q;JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/q$a;ILjava/lang/String;)V

    goto :goto_3b

    .line 319
    :cond_9b
    :try_start_9b
    iget-object v7, v6, Lcom/bytedance/sdk/openadsdk/core/q$a;->h:Lcom/bytedance/sdk/openadsdk/core/d/a;

    if-nez v7, :cond_b9

    .line 320
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->e:Lcom/bytedance/sdk/openadsdk/core/q;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->a:Lcom/bytedance/sdk/openadsdk/core/p$b;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/core/q;Lcom/bytedance/sdk/openadsdk/core/p$b;)V

    .line 322
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->e:Lcom/bytedance/sdk/openadsdk/core/q;

    iget-wide v2, p1, Lcom/bytedance/sdk/adnet/core/n;->e:J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->c:I

    const/4 v7, -0x1

    const-string v8, "parse_fail"

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/core/q;JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/q$a;ILjava/lang/String;)V

    goto :goto_3b

    .line 326
    :cond_b9
    iget-object v7, v6, Lcom/bytedance/sdk/openadsdk/core/q$a;->h:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c(Ljava/lang/String;)V

    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 328
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->a:Lcom/bytedance/sdk/openadsdk/core/p$b;

    iget-object v7, v6, Lcom/bytedance/sdk/openadsdk/core/q$a;->h:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-interface {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/p$b;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V

    .line 329
    if-eqz v1, :cond_3b

    .line 331
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/core/q$a;->h:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/core/q$a;->h:Lcom/bytedance/sdk/openadsdk/core/d/a;

    .line 332
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 333
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/core/q$a;->h:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 334
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->c:I

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 335
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 348
    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v10, :cond_134

    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-wide v10, v10, Lcom/bytedance/sdk/openadsdk/core/d/l;->f:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_134

    .line 349
    const-string v10, "client_start_time"

    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-wide v12, v11, Lcom/bytedance/sdk/openadsdk/core/d/l;->f:J

    sub-long v12, v2, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string v10, "load_ts"

    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-wide v12, v11, Lcom/bytedance/sdk/openadsdk/core/d/l;->f:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string v10, "total_time"

    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-wide v12, v11, Lcom/bytedance/sdk/openadsdk/core/d/l;->f:J

    sub-long v12, v8, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :cond_134
    const-string v10, "request_ts"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v10, "s_revice_ts"

    iget-wide v12, v6, Lcom/bytedance/sdk/openadsdk/core/q$a;->b:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v10, "s_send_ts"

    iget-wide v12, v6, Lcom/bytedance/sdk/openadsdk/core/q$a;->c:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v10, "c_revice_ts"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v10, "c_end_ts"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v10, "network_time"

    iget-wide v12, p1, Lcom/bytedance/sdk/adnet/core/n;->f:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v10, "go_time"

    iget-wide v12, v6, Lcom/bytedance/sdk/openadsdk/core/q$a;->b:J

    sub-long v2, v12, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v7, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v2, "sever_time"

    iget v3, v6, Lcom/bytedance/sdk/openadsdk/core/q$a;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v2, "back_time"

    iget-wide v10, v6, Lcom/bytedance/sdk/openadsdk/core/q$a;->c:J

    sub-long v10, v4, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v2, "client_end_time"

    sub-long v4, v8, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-static {v0, v1, v7}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1a3
    .catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_1a3} :catch_78

    goto/16 :goto_3b
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 11
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
    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v1, -0x2

    .line 384
    iget-object v2, p1, Lcom/bytedance/sdk/adnet/core/n;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    .line 385
    instance-of v0, v2, Lcom/bytedance/sdk/adnet/err/e;

    if-eqz v0, :cond_24

    .line 386
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->e:Lcom/bytedance/sdk/openadsdk/core/q;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->a:Lcom/bytedance/sdk/openadsdk/core/p$b;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/core/q;Lcom/bytedance/sdk/openadsdk/core/p$b;)V

    .line 389
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->e:Lcom/bytedance/sdk/openadsdk/core/q;

    iget-wide v2, p1, Lcom/bytedance/sdk/adnet/core/n;->e:J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->c:I

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/core/q;JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/q$a;ILjava/lang/String;)V

    .line 410
    :goto_23
    return-void

    .line 395
    :cond_24
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 396
    if-eqz v2, :cond_50

    if-eqz p1, :cond_50

    .line 397
    iget-wide v0, p1, Lcom/bytedance/sdk/adnet/core/n;->h:J

    long-to-int v7, v0

    .line 398
    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/err/VAdError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 401
    :goto_33
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->a:Lcom/bytedance/sdk/openadsdk/core/p$b;

    invoke-interface {v1, v7, v0}, Lcom/bytedance/sdk/openadsdk/core/p$b;->a(ILjava/lang/String;)V

    .line 404
    instance-of v1, v2, Lcom/bytedance/sdk/adnet/err/g;

    if-eqz v1, :cond_4e

    .line 405
    const-string v8, "SocketTimeout"

    .line 407
    :goto_3e
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->e:Lcom/bytedance/sdk/openadsdk/core/q;

    iget-wide v2, p1, Lcom/bytedance/sdk/adnet/core/n;->e:J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/q$1;->c:I

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/core/q;JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/q$a;ILjava/lang/String;)V

    goto :goto_23

    :cond_4e
    move-object v8, v0

    goto :goto_3e

    :cond_50
    move v7, v1

    goto :goto_33
.end method
