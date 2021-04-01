.class public Lcom/anythink/hb/ATHeadBiddingHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/b/g$b;


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/anythink/hb/data/BidRequestInfo;",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/lang/String;

.field f:I

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->b:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->c:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic a(Lcom/anythink/hb/ATHeadBiddingHandler;Lcom/anythink/hb/data/AuctionResult;Lcom/anythink/core/b/g$a;)V
    .registers 15

    .prologue
    const/4 v3, 0x0

    .line 3178
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3179
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3181
    invoke-virtual {p1}, Lcom/anythink/hb/data/AuctionResult;->getWinner()Lcom/anythink/hb/data/BiddingResponse;

    move-result-object v6

    .line 3183
    invoke-virtual {p1}, Lcom/anythink/hb/data/AuctionResult;->getWinner()Lcom/anythink/hb/data/BiddingResponse;

    move-result-object v0

    if-eqz v0, :cond_dd

    .line 3185
    invoke-virtual {v6}, Lcom/anythink/hb/data/BiddingResponse;->getBidRequestInfo()Lcom/anythink/hb/data/BidRequestInfo;

    move-result-object v0

    .line 3186
    iget-object v1, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/c/c$b;

    .line 3187
    if-eqz v0, :cond_60

    .line 3189
    :try_start_23
    invoke-virtual {v6}, Lcom/anythink/hb/data/BiddingResponse;->getBiddingPriceUSD()D

    move-result-wide v8

    iput-wide v8, v0, Lcom/anythink/core/c/c$b;->l:D

    .line 3190
    invoke-virtual {v6}, Lcom/anythink/hb/data/BiddingResponse;->getPayload()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/c/c$b;->n:Ljava/lang/String;

    .line 3191
    const/4 v1, 0x0

    iput v1, v0, Lcom/anythink/core/c/c$b;->p:I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_36} :catch_d7

    .line 3197
    :goto_36
    iget-object v1, v0, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    .line 3199
    new-instance v2, Lcom/anythink/core/b/c/g;

    invoke-direct {v2}, Lcom/anythink/core/b/c/g;-><init>()V

    .line 3200
    invoke-virtual {v6}, Lcom/anythink/hb/data/BiddingResponse;->getPayload()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/anythink/core/b/c/g;->b:Ljava/lang/String;

    .line 3201
    invoke-virtual {v6}, Lcom/anythink/hb/data/BiddingResponse;->getBiddingPriceUSD()D

    move-result-wide v8

    iput-wide v8, v2, Lcom/anythink/core/b/c/g;->a:D

    .line 3638
    iget-wide v8, v0, Lcom/anythink/core/c/c$b;->u:J

    .line 3202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v2, Lcom/anythink/core/b/c/g;->c:J

    .line 3204
    invoke-static {}, Lcom/anythink/core/b/d/a;->a()Lcom/anythink/core/b/d/a;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Lcom/anythink/core/b/d/a;->a(Ljava/lang/String;Lcom/anythink/core/b/c/g;)V

    .line 3206
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3209
    :cond_60
    const-string v0, "bidding"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "winner bidding succsess......\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/anythink/hb/data/BiddingResponse;->getPayload()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/hb/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3214
    :goto_78
    invoke-virtual {p1}, Lcom/anythink/hb/data/AuctionResult;->getOtherBidders()Ljava/util/List;

    move-result-object v0

    .line 3216
    if-eqz v0, :cond_17f

    .line 3217
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_82
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/hb/data/BiddingResponse;

    .line 3218
    invoke-virtual {v0}, Lcom/anythink/hb/data/BiddingResponse;->getBidRequestInfo()Lcom/anythink/hb/data/BidRequestInfo;

    move-result-object v1

    .line 3219
    iget-object v2, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/c/c$b;

    .line 3221
    invoke-virtual {v0}, Lcom/anythink/hb/data/BiddingResponse;->getBiddingPriceUSD()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v2, v8, v10

    if-nez v2, :cond_123

    .line 3223
    iget-object v2, v1, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    .line 3225
    invoke-static {}, Lcom/anythink/core/b/d/a;->a()Lcom/anythink/core/b/d/a;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/anythink/core/b/d/a;->b(Ljava/lang/String;)Lcom/anythink/core/b/c/g;

    move-result-object v2

    .line 3226
    if-eqz v2, :cond_ea

    .line 3228
    :try_start_b0
    iget-wide v8, v2, Lcom/anythink/core/b/c/g;->a:D

    iput-wide v8, v1, Lcom/anythink/core/c/c$b;->l:D

    .line 3229
    iget-object v2, v2, Lcom/anythink/core/b/c/g;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/anythink/core/c/c$b;->n:Ljava/lang/String;

    .line 3230
    const/4 v2, 0x2

    iput v2, v1, Lcom/anythink/core/c/c$b;->p:I
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_bb} :catch_e5

    .line 3235
    :goto_bb
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3236
    const-string v1, "bidding"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "use cache......payload:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/anythink/hb/data/BiddingResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/anythink/hb/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_82

    .line 3194
    :catch_d7
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_36

    .line 3211
    :cond_dd
    const-string v0, "bidding"

    const-string v1, "bidding fail......"

    invoke-static {v0, v1}, Lcom/anythink/hb/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_78

    .line 3233
    :catch_e5
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_bb

    .line 3239
    :cond_ea
    :try_start_ea
    invoke-virtual {v0}, Lcom/anythink/hb/data/BiddingResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    .line 3746
    iput-object v2, v1, Lcom/anythink/core/c/c$b;->o:Ljava/lang/String;
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_f0} :catch_11e

    .line 3244
    :goto_f0
    sget-object v2, Lcom/anythink/core/b/a/d$e;->g:Ljava/lang/String;

    iget-object v8, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->e:Ljava/lang/String;

    iget v9, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->f:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/anythink/core/b/g/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v8, v9, v1}, Lcom/anythink/core/b/g/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c$b;)V

    .line 3246
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3247
    const-string v1, "bidding"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "bidding fail......payload:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/anythink/hb/data/BiddingResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/anythink/hb/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_82

    .line 3241
    :catch_11e
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f0

    .line 3251
    :cond_123
    const-string v2, "bidding"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "other bidding succsess......\uff1a"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/anythink/hb/data/BiddingResponse;->getPayload()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/anythink/hb/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3254
    :try_start_13b
    invoke-virtual {v0}, Lcom/anythink/hb/data/BiddingResponse;->getBiddingPriceUSD()D

    move-result-wide v8

    iput-wide v8, v1, Lcom/anythink/core/c/c$b;->l:D

    .line 3255
    invoke-virtual {v0}, Lcom/anythink/hb/data/BiddingResponse;->getPayload()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/anythink/core/c/c$b;->n:Ljava/lang/String;

    .line 3256
    const/4 v0, 0x0

    iput v0, v1, Lcom/anythink/core/c/c$b;->p:I
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_14e} :catch_17a

    .line 3261
    :goto_14e
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3263
    iget-object v0, v1, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    .line 3265
    new-instance v2, Lcom/anythink/core/b/c/g;

    invoke-direct {v2}, Lcom/anythink/core/b/c/g;-><init>()V

    .line 3266
    invoke-virtual {v6}, Lcom/anythink/hb/data/BiddingResponse;->getPayload()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/anythink/core/b/c/g;->b:Ljava/lang/String;

    .line 3267
    invoke-virtual {v6}, Lcom/anythink/hb/data/BiddingResponse;->getBiddingPriceUSD()D

    move-result-wide v8

    iput-wide v8, v2, Lcom/anythink/core/b/c/g;->a:D

    .line 4638
    iget-wide v8, v1, Lcom/anythink/core/c/c$b;->u:J

    .line 3268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v2, Lcom/anythink/core/b/c/g;->c:J

    .line 3269
    invoke-static {}, Lcom/anythink/core/b/d/a;->a()Lcom/anythink/core/b/d/a;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/anythink/core/b/d/a;->a(Ljava/lang/String;Lcom/anythink/core/b/c/g;)V

    goto/16 :goto_82

    .line 3259
    :catch_17a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14e

    .line 3275
    :cond_17f
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_183
    :goto_183
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_204

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/c/c$b;

    .line 3276
    iget-object v1, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1ae

    .line 3277
    sget-object v1, Lcom/anythink/core/b/a/d$e;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->e:Ljava/lang/String;

    iget v6, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->f:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/anythink/core/b/g/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v2, v6, v0}, Lcom/anythink/core/b/g/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c$b;)V

    .line 3278
    iget-object v1, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_183

    :cond_1ae
    move v2, v3

    .line 3282
    :goto_1af
    iget-object v1, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1dd

    .line 3283
    iget-object v1, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/c/c$b;

    .line 3285
    :try_start_1bf
    iget-wide v6, v0, Lcom/anythink/core/c/c$b;->l:D

    iget-wide v8, v1, Lcom/anythink/core/c/c$b;->l:D

    cmpl-double v1, v6, v8

    if-ltz v1, :cond_200

    .line 3286
    sget-object v1, Lcom/anythink/core/b/a/d$e;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->e:Ljava/lang/String;

    iget v7, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->f:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/anythink/core/b/g/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v6, v7, v0}, Lcom/anythink/core/b/g/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c$b;)V

    .line 3287
    iget-object v1, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->b:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1dd
    .catch Ljava/lang/Exception; {:try_start_1bf .. :try_end_1dd} :catch_1fc

    .line 3295
    :cond_1dd
    iget-object v1, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_183

    .line 3296
    sget-object v1, Lcom/anythink/core/b/a/d$e;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->e:Ljava/lang/String;

    iget v6, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->f:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/anythink/core/b/g/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v2, v6, v0}, Lcom/anythink/core/b/g/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c$b;)V

    .line 3297
    iget-object v1, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_183

    .line 3291
    :catch_1fc
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3282
    :cond_200
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1af

    .line 3301
    :cond_204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3302
    :goto_209
    iget-object v0, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_21f

    .line 3303
    iget-object v0, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/c/c$b;

    .line 3305
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3302
    add-int/lit8 v3, v3, 0x1

    goto :goto_209

    .line 3308
    :cond_21f
    if-eqz p2, :cond_224

    .line 3309
    invoke-interface {p2, v1, v5}, Lcom/anythink/core/b/g$a;->a(Ljava/util/List;Ljava/util/List;)V

    .line 31
    :cond_224
    return-void
.end method

.method private a(Lcom/anythink/hb/data/AuctionResult;Lcom/anythink/core/b/g$a;)V
    .registers 15

    .prologue
    const/4 v3, 0x0

    .line 178
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 179
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 181
    invoke-virtual {p1}, Lcom/anythink/hb/data/AuctionResult;->getWinner()Lcom/anythink/hb/data/BiddingResponse;

    move-result-object v6

    .line 183
    invoke-virtual {p1}, Lcom/anythink/hb/data/AuctionResult;->getWinner()Lcom/anythink/hb/data/BiddingResponse;

    move-result-object v0

    if-eqz v0, :cond_dd

    .line 185
    invoke-virtual {v6}, Lcom/anythink/hb/data/BiddingResponse;->getBidRequestInfo()Lcom/anythink/hb/data/BidRequestInfo;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/c/c$b;

    .line 187
    if-eqz v0, :cond_60

    .line 189
    :try_start_23
    invoke-virtual {v6}, Lcom/anythink/hb/data/BiddingResponse;->getBiddingPriceUSD()D

    move-result-wide v8

    iput-wide v8, v0, Lcom/anythink/core/c/c$b;->l:D

    .line 190
    invoke-virtual {v6}, Lcom/anythink/hb/data/BiddingResponse;->getPayload()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/c/c$b;->n:Ljava/lang/String;

    .line 191
    const/4 v1, 0x0

    iput v1, v0, Lcom/anythink/core/c/c$b;->p:I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_36} :catch_d7

    .line 197
    :goto_36
    iget-object v1, v0, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    .line 199
    new-instance v2, Lcom/anythink/core/b/c/g;

    invoke-direct {v2}, Lcom/anythink/core/b/c/g;-><init>()V

    .line 200
    invoke-virtual {v6}, Lcom/anythink/hb/data/BiddingResponse;->getPayload()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/anythink/core/b/c/g;->b:Ljava/lang/String;

    .line 201
    invoke-virtual {v6}, Lcom/anythink/hb/data/BiddingResponse;->getBiddingPriceUSD()D

    move-result-wide v8

    iput-wide v8, v2, Lcom/anythink/core/b/c/g;->a:D

    .line 1638
    iget-wide v8, v0, Lcom/anythink/core/c/c$b;->u:J

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v2, Lcom/anythink/core/b/c/g;->c:J

    .line 204
    invoke-static {}, Lcom/anythink/core/b/d/a;->a()Lcom/anythink/core/b/d/a;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Lcom/anythink/core/b/d/a;->a(Ljava/lang/String;Lcom/anythink/core/b/c/g;)V

    .line 206
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_60
    const-string v0, "bidding"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "winner bidding succsess......\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/anythink/hb/data/BiddingResponse;->getPayload()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/hb/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :goto_78
    invoke-virtual {p1}, Lcom/anythink/hb/data/AuctionResult;->getOtherBidders()Ljava/util/List;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_17f

    .line 217
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_82
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/hb/data/BiddingResponse;

    .line 218
    invoke-virtual {v0}, Lcom/anythink/hb/data/BiddingResponse;->getBidRequestInfo()Lcom/anythink/hb/data/BidRequestInfo;

    move-result-object v1

    .line 219
    iget-object v2, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/c/c$b;

    .line 221
    invoke-virtual {v0}, Lcom/anythink/hb/data/BiddingResponse;->getBiddingPriceUSD()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v2, v8, v10

    if-nez v2, :cond_123

    .line 223
    iget-object v2, v1, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    .line 225
    invoke-static {}, Lcom/anythink/core/b/d/a;->a()Lcom/anythink/core/b/d/a;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/anythink/core/b/d/a;->b(Ljava/lang/String;)Lcom/anythink/core/b/c/g;

    move-result-object v2

    .line 226
    if-eqz v2, :cond_ea

    .line 228
    :try_start_b0
    iget-wide v8, v2, Lcom/anythink/core/b/c/g;->a:D

    iput-wide v8, v1, Lcom/anythink/core/c/c$b;->l:D

    .line 229
    iget-object v2, v2, Lcom/anythink/core/b/c/g;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/anythink/core/c/c$b;->n:Ljava/lang/String;

    .line 230
    const/4 v2, 0x2

    iput v2, v1, Lcom/anythink/core/c/c$b;->p:I
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_bb} :catch_e5

    .line 235
    :goto_bb
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    const-string v1, "bidding"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "use cache......payload:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/anythink/hb/data/BiddingResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/anythink/hb/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_82

    .line 194
    :catch_d7
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_36

    .line 211
    :cond_dd
    const-string v0, "bidding"

    const-string v1, "bidding fail......"

    invoke-static {v0, v1}, Lcom/anythink/hb/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_78

    .line 233
    :catch_e5
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_bb

    .line 239
    :cond_ea
    :try_start_ea
    invoke-virtual {v0}, Lcom/anythink/hb/data/BiddingResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    .line 1746
    iput-object v2, v1, Lcom/anythink/core/c/c$b;->o:Ljava/lang/String;
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_f0} :catch_11e

    .line 244
    :goto_f0
    sget-object v2, Lcom/anythink/core/b/a/d$e;->g:Ljava/lang/String;

    iget-object v8, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->e:Ljava/lang/String;

    iget v9, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->f:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/anythink/core/b/g/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v8, v9, v1}, Lcom/anythink/core/b/g/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c$b;)V

    .line 246
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    const-string v1, "bidding"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "bidding fail......payload:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/anythink/hb/data/BiddingResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/anythink/hb/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_82

    .line 241
    :catch_11e
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f0

    .line 251
    :cond_123
    const-string v2, "bidding"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "other bidding succsess......\uff1a"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/anythink/hb/data/BiddingResponse;->getPayload()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/anythink/hb/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :try_start_13b
    invoke-virtual {v0}, Lcom/anythink/hb/data/BiddingResponse;->getBiddingPriceUSD()D

    move-result-wide v8

    iput-wide v8, v1, Lcom/anythink/core/c/c$b;->l:D

    .line 255
    invoke-virtual {v0}, Lcom/anythink/hb/data/BiddingResponse;->getPayload()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/anythink/core/c/c$b;->n:Ljava/lang/String;

    .line 256
    const/4 v0, 0x0

    iput v0, v1, Lcom/anythink/core/c/c$b;->p:I
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_14e} :catch_17a

    .line 261
    :goto_14e
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v0, v1, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    .line 265
    new-instance v2, Lcom/anythink/core/b/c/g;

    invoke-direct {v2}, Lcom/anythink/core/b/c/g;-><init>()V

    .line 266
    invoke-virtual {v6}, Lcom/anythink/hb/data/BiddingResponse;->getPayload()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/anythink/core/b/c/g;->b:Ljava/lang/String;

    .line 267
    invoke-virtual {v6}, Lcom/anythink/hb/data/BiddingResponse;->getBiddingPriceUSD()D

    move-result-wide v8

    iput-wide v8, v2, Lcom/anythink/core/b/c/g;->a:D

    .line 2638
    iget-wide v8, v1, Lcom/anythink/core/c/c$b;->u:J

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v2, Lcom/anythink/core/b/c/g;->c:J

    .line 269
    invoke-static {}, Lcom/anythink/core/b/d/a;->a()Lcom/anythink/core/b/d/a;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/anythink/core/b/d/a;->a(Ljava/lang/String;Lcom/anythink/core/b/c/g;)V

    goto/16 :goto_82

    .line 259
    :catch_17a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14e

    .line 275
    :cond_17f
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_183
    :goto_183
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_204

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/c/c$b;

    .line 276
    iget-object v1, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1ae

    .line 277
    sget-object v1, Lcom/anythink/core/b/a/d$e;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->e:Ljava/lang/String;

    iget v6, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->f:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/anythink/core/b/g/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v2, v6, v0}, Lcom/anythink/core/b/g/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c$b;)V

    .line 278
    iget-object v1, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_183

    :cond_1ae
    move v2, v3

    .line 282
    :goto_1af
    iget-object v1, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1dd

    .line 283
    iget-object v1, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/c/c$b;

    .line 285
    :try_start_1bf
    iget-wide v6, v0, Lcom/anythink/core/c/c$b;->l:D

    iget-wide v8, v1, Lcom/anythink/core/c/c$b;->l:D

    cmpl-double v1, v6, v8

    if-ltz v1, :cond_200

    .line 286
    sget-object v1, Lcom/anythink/core/b/a/d$e;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->e:Ljava/lang/String;

    iget v7, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->f:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/anythink/core/b/g/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v6, v7, v0}, Lcom/anythink/core/b/g/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c$b;)V

    .line 287
    iget-object v1, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->b:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1dd
    .catch Ljava/lang/Exception; {:try_start_1bf .. :try_end_1dd} :catch_1fc

    .line 295
    :cond_1dd
    iget-object v1, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_183

    .line 296
    sget-object v1, Lcom/anythink/core/b/a/d$e;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->e:Ljava/lang/String;

    iget v6, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->f:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/anythink/core/b/g/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v2, v6, v0}, Lcom/anythink/core/b/g/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c$b;)V

    .line 297
    iget-object v1, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_183

    .line 291
    :catch_1fc
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 282
    :cond_200
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1af

    .line 301
    :cond_204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 302
    :goto_209
    iget-object v0, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_21f

    .line 303
    iget-object v0, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/c/c$b;

    .line 305
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    add-int/lit8 v3, v3, 0x1

    goto :goto_209

    .line 308
    :cond_21f
    if-eqz p2, :cond_224

    .line 309
    invoke-interface {p2, v1, v5}, Lcom/anythink/core/b/g$a;->a(Ljava/util/List;Ljava/util/List;)V

    .line 312
    :cond_224
    return-void
.end method


# virtual methods
.method public initHbInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->a:Landroid/content/Context;

    .line 53
    iput p4, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->f:I

    .line 54
    iput-object p2, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->h:Ljava/lang/String;

    .line 55
    if-eqz p5, :cond_11

    .line 56
    iget-object v0, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->b:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 59
    :cond_11
    if-eqz p6, :cond_18

    .line 60
    iget-object v0, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->c:Ljava/util/List;

    invoke-interface {v0, p6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 64
    :cond_18
    iget-object v0, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/hb/HeaderBiddingAggregator;->init(Landroid/content/Context;)V

    .line 66
    iput-object p3, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->e:Ljava/lang/String;

    .line 67
    if-nez p4, :cond_25

    .line 68
    const-string v0, "NATIVE"

    iput-object v0, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->g:Ljava/lang/String;

    .line 70
    :cond_25
    const/4 v0, 0x1

    if-ne p4, v0, :cond_2c

    .line 71
    const-string v0, "REWARDED_VIDEO"

    iput-object v0, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->g:Ljava/lang/String;

    .line 73
    :cond_2c
    const/4 v0, 0x2

    if-ne p4, v0, :cond_33

    .line 74
    const-string v0, "BANNER"

    iput-object v0, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->g:Ljava/lang/String;

    .line 76
    :cond_33
    const/4 v0, 0x3

    if-ne p4, v0, :cond_3a

    .line 77
    const-string v0, "INTERSTITIAL"

    iput-object v0, p0, Lcom/anythink/hb/ATHeadBiddingHandler;->g:Ljava/lang/String;

    .line 80
    :cond_3a
    return-void
.end method

.method public setTestMode(Z)V
    .registers 2

    .prologue
    .line 46
    invoke-static {p1}, Lcom/anythink/hb/HeaderBiddingAggregator;->setDebugMode(Z)V

    .line 47
    return-void
.end method

.method public startHeadBiddingRequest(Lcom/anythink/core/b/g$a;)V
    .registers 4

    .prologue
    .line 85
    invoke-static {}, Lcom/anythink/hb/HBContext;->getInstance()Lcom/anythink/hb/HBContext;

    move-result-object v0

    new-instance v1, Lcom/anythink/hb/ATHeadBiddingHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/hb/ATHeadBiddingHandler$1;-><init>(Lcom/anythink/hb/ATHeadBiddingHandler;Lcom/anythink/core/b/g$a;)V

    invoke-virtual {v0, v1}, Lcom/anythink/hb/HBContext;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method
