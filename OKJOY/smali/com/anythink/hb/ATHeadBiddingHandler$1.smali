.class final Lcom/anythink/hb/ATHeadBiddingHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/hb/ATHeadBiddingHandler;->startHeadBiddingRequest(Lcom/anythink/core/b/g$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/b/g$a;

.field final synthetic b:Lcom/anythink/hb/ATHeadBiddingHandler;


# direct methods
.method constructor <init>(Lcom/anythink/hb/ATHeadBiddingHandler;Lcom/anythink/core/b/g$a;)V
    .registers 3

    .prologue
    .line 85
    iput-object p1, p0, Lcom/anythink/hb/ATHeadBiddingHandler$1;->b:Lcom/anythink/hb/ATHeadBiddingHandler;

    iput-object p2, p0, Lcom/anythink/hb/ATHeadBiddingHandler$1;->a:Lcom/anythink/core/b/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    const-wide/16 v4, 0x0

    .line 93
    :try_start_8
    iget-object v0, p0, Lcom/anythink/hb/ATHeadBiddingHandler$1;->b:Lcom/anythink/hb/ATHeadBiddingHandler;

    iget-object v0, v0, Lcom/anythink/hb/ATHeadBiddingHandler;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_10
    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ed

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/c/c$b;

    .line 94
    new-instance v7, Lorg/json/JSONObject;

    iget-object v2, v0, Lcom/anythink/core/c/c$b;->e:Ljava/lang/String;

    invoke-direct {v7, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 96
    iget-wide v2, v0, Lcom/anythink/core/c/c$b;->r:J

    .line 97
    cmp-long v8, v2, v4

    if-lez v8, :cond_2a

    move-wide v4, v2

    .line 101
    :cond_2a
    iget v2, v0, Lcom/anythink/core/c/c$b;->b:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_9a

    .line 102
    const-string v2, "appid"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    const-string v3, "unitid"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    const-string v8, "appkey"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 106
    new-instance v9, Lcom/anythink/hb/data/BidRequestInfo;

    invoke-direct {v9}, Lcom/anythink/hb/data/BidRequestInfo;-><init>()V

    .line 107
    const-string v10, "KEY_APP_ID"

    invoke-virtual {v9, v10, v2}, Lcom/anythink/hb/data/BidRequestInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    const-string v2, "KEY_APP_KEY"

    invoke-virtual {v9, v2, v8}, Lcom/anythink/hb/data/BidRequestInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    const-string v2, "KEY_PLACEMENT_ID"

    invoke-virtual {v9, v2, v3}, Lcom/anythink/hb/data/BidRequestInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    const-string v2, "KEY_CUSTOM_INFO"

    iget-object v3, p0, Lcom/anythink/hb/ATHeadBiddingHandler$1;->b:Lcom/anythink/hb/ATHeadBiddingHandler;

    iget-object v3, v3, Lcom/anythink/hb/ATHeadBiddingHandler;->a:Landroid/content/Context;

    iget-object v8, p0, Lcom/anythink/hb/ATHeadBiddingHandler$1;->b:Lcom/anythink/hb/ATHeadBiddingHandler;

    iget-object v8, v8, Lcom/anythink/hb/ATHeadBiddingHandler;->h:Ljava/lang/String;

    iget-object v10, p0, Lcom/anythink/hb/ATHeadBiddingHandler$1;->b:Lcom/anythink/hb/ATHeadBiddingHandler;

    iget-object v10, v10, Lcom/anythink/hb/ATHeadBiddingHandler;->e:Ljava/lang/String;

    iget-object v11, p0, Lcom/anythink/hb/ATHeadBiddingHandler$1;->b:Lcom/anythink/hb/ATHeadBiddingHandler;

    iget v11, v11, Lcom/anythink/hb/ATHeadBiddingHandler;->f:I

    invoke-static {v3, v8, v10, v11, v0}, Lcom/anythink/core/b/g/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/anythink/core/c/c$b;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lcom/anythink/hb/data/BidRequestInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    const-string v2, "KEY_BIDDER_CLASS"

    const-class v3, Lcom/anythink/hb/bidder/MtgBidder;

    invoke-virtual {v9, v2, v3}, Lcom/anythink/hb/data/BidRequestInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    iget-object v2, p0, Lcom/anythink/hb/ATHeadBiddingHandler$1;->b:Lcom/anythink/hb/ATHeadBiddingHandler;

    iget-object v2, v2, Lcom/anythink/hb/ATHeadBiddingHandler;->g:Ljava/lang/String;

    const-string v3, "BANNER"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 113
    const-string v2, "size"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    const-string v3, "KEY_BANNER_SIZE"

    invoke-virtual {v9, v3, v2}, Lcom/anythink/hb/data/BidRequestInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    :cond_90
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v2, p0, Lcom/anythink/hb/ATHeadBiddingHandler$1;->b:Lcom/anythink/hb/ATHeadBiddingHandler;

    iget-object v2, v2, Lcom/anythink/hb/ATHeadBiddingHandler;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v9, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_9a
    iget v2, v0, Lcom/anythink/core/c/c$b;->b:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    .line 123
    const-string v2, "unit_id"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    const-string v3, "app_id"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    new-instance v8, Lcom/anythink/hb/data/BidRequestInfo;

    invoke-direct {v8}, Lcom/anythink/hb/data/BidRequestInfo;-><init>()V

    .line 126
    const-string v9, "KEY_APP_ID"

    invoke-virtual {v8, v9, v3}, Lcom/anythink/hb/data/BidRequestInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    const-string v9, "KEY_PLACEMENT_ID"

    invoke-virtual {v8, v9, v2}, Lcom/anythink/hb/data/BidRequestInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    const-string v2, "KEY_BIDDER_CLASS"

    const-class v9, Lcom/anythink/hb/bidder/FacebookBidder;

    invoke-virtual {v8, v2, v9}, Lcom/anythink/hb/data/BidRequestInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    const-string v2, "KEY_PLATFORM_ID"

    invoke-virtual {v8, v2, v3}, Lcom/anythink/hb/data/BidRequestInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    iget-object v2, p0, Lcom/anythink/hb/ATHeadBiddingHandler$1;->b:Lcom/anythink/hb/ATHeadBiddingHandler;

    iget-object v2, v2, Lcom/anythink/hb/ATHeadBiddingHandler;->g:Ljava/lang/String;

    const-string v3, "BANNER"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 131
    const-string v2, "size"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    const-string v3, "KEY_BANNER_SIZE"

    invoke-virtual {v8, v3, v2}, Lcom/anythink/hb/data/BidRequestInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    :cond_dd
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v2, p0, Lcom/anythink/hb/ATHeadBiddingHandler$1;->b:Lcom/anythink/hb/ATHeadBiddingHandler;

    iget-object v2, v2, Lcom/anythink/hb/ATHeadBiddingHandler;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v8, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e7} :catch_e9

    goto/16 :goto_10

    .line 142
    :catch_e9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    :cond_ed
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_109

    .line 147
    iget-object v0, p0, Lcom/anythink/hb/ATHeadBiddingHandler$1;->a:Lcom/anythink/core/b/g$a;

    if-eqz v0, :cond_108

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    iget-object v1, p0, Lcom/anythink/hb/ATHeadBiddingHandler$1;->b:Lcom/anythink/hb/ATHeadBiddingHandler;

    iget-object v1, v1, Lcom/anythink/hb/ATHeadBiddingHandler;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 150
    iget-object v1, p0, Lcom/anythink/hb/ATHeadBiddingHandler$1;->a:Lcom/anythink/core/b/g$a;

    invoke-interface {v1, v0, v12}, Lcom/anythink/core/b/g$a;->a(Ljava/util/List;Ljava/util/List;)V

    .line 173
    :cond_108
    :goto_108
    return-void

    .line 156
    :cond_109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    :try_start_10e
    iget-object v2, p0, Lcom/anythink/hb/ATHeadBiddingHandler$1;->b:Lcom/anythink/hb/ATHeadBiddingHandler;

    iget-object v2, v2, Lcom/anythink/hb/ATHeadBiddingHandler;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/hb/ATHeadBiddingHandler$1;->b:Lcom/anythink/hb/ATHeadBiddingHandler;

    iget-object v3, v3, Lcom/anythink/hb/ATHeadBiddingHandler;->g:Ljava/lang/String;

    new-instance v6, Lcom/anythink/hb/ATHeadBiddingHandler$1$1;

    invoke-direct {v6, p0}, Lcom/anythink/hb/ATHeadBiddingHandler$1$1;-><init>(Lcom/anythink/hb/ATHeadBiddingHandler$1;)V

    invoke-static/range {v1 .. v6}, Lcom/anythink/hb/HeaderBiddingAggregator;->requestBid(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;JLcom/anythink/hb/callback/BidRequestCallback;)Lcom/anythink/hb/HeaderBiddingTransaction;

    move-result-object v1

    .line 166
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_122} :catch_123

    goto :goto_108

    .line 168
    :catch_123
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    iget-object v0, p0, Lcom/anythink/hb/ATHeadBiddingHandler$1;->a:Lcom/anythink/core/b/g$a;

    if-eqz v0, :cond_108

    .line 170
    iget-object v0, p0, Lcom/anythink/hb/ATHeadBiddingHandler$1;->a:Lcom/anythink/core/b/g$a;

    iget-object v1, p0, Lcom/anythink/hb/ATHeadBiddingHandler$1;->b:Lcom/anythink/hb/ATHeadBiddingHandler;

    iget-object v1, v1, Lcom/anythink/hb/ATHeadBiddingHandler;->b:Ljava/util/List;

    invoke-interface {v0, v1, v12}, Lcom/anythink/core/b/g$a;->a(Ljava/util/List;Ljava/util/List;)V

    goto :goto_108
.end method
