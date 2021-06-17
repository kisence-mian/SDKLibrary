.class public Lcom/facebook/bidding/a/f/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/facebook/bidding/FBAdBidRequest;)Lcom/facebook/bidding/a/f/a;
    .registers 4

    new-instance v0, Lcom/facebook/bidding/a/f/a;

    invoke-virtual {p0}, Lcom/facebook/bidding/FBAdBidRequest;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/bidding/FBAdBidRequest;->getPlatformAuctionId()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Bid timeout - Please consider increasing the timeout."

    invoke-direct {v0, v1, v2, p0}, Lcom/facebook/bidding/a/f/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/facebook/bidding/FBAdBidRequest;Lcom/facebook/bidding/a/h/a/g;)Lcom/facebook/bidding/a/f/a;
    .registers 4

    invoke-virtual {p1}, Lcom/facebook/bidding/a/h/a/g;->a()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_d

    invoke-static {p0, p1}, Lcom/facebook/bidding/a/f/b;->b(Lcom/facebook/bidding/FBAdBidRequest;Lcom/facebook/bidding/a/h/a/g;)Lcom/facebook/bidding/a/f/a;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-static {p0, p1}, Lcom/facebook/bidding/a/f/b;->c(Lcom/facebook/bidding/FBAdBidRequest;Lcom/facebook/bidding/a/h/a/g;)Lcom/facebook/bidding/a/f/a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/facebook/bidding/FBAdBidRequest;Ljava/lang/String;)Lcom/facebook/bidding/a/f/a;
    .registers 6

    new-instance v0, Lcom/facebook/bidding/a/f/a;

    invoke-virtual {p0}, Lcom/facebook/bidding/FBAdBidRequest;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send a bid request - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " Please check your network connection and make sure you are passing in the correct values."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/facebook/bidding/FBAdBidRequest;->getPlatformAuctionId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p1, p0}, Lcom/facebook/bidding/a/f/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Lcom/facebook/bidding/a/h/a/g;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/bidding/a/h/a/g;->c()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static b(Lcom/facebook/bidding/FBAdBidRequest;Lcom/facebook/bidding/a/h/a/g;)Lcom/facebook/bidding/a/f/a;
    .registers 21

    move-object/from16 v1, p1

    const-string v0, "x-fb-debug"

    invoke-static {v1, v0}, Lcom/facebook/bidding/a/f/b;->a(Lcom/facebook/bidding/a/h/a/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v0, "x-fb-an-request-id"

    invoke-static {v1, v0}, Lcom/facebook/bidding/a/f/b;->a(Lcom/facebook/bidding/a/h/a/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    :try_start_e
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/bidding/a/h/a/g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "seatbid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "bid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "adm"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v18, Lcom/facebook/bidding/a/f/a;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/bidding/FBAdBidRequest;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/bidding/FBAdBidRequest;->getPlatformAuctionId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "impid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "resolved_placement_id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "price"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-string v7, "cur"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "nurl"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v0, "lurl"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/bidding/a/h/a/g;->a()I

    move-result v14

    move-object/from16 v2, v18

    move-object/from16 v7, v17

    move-object/from16 v15, v16

    invoke-direct/range {v2 .. v15}, Lcom/facebook/bidding/a/f/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_72
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_72} :catch_73

    return-object v18

    :catch_73
    move-exception v0

    new-instance v0, Lcom/facebook/bidding/a/f/a;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/bidding/FBAdBidRequest;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/bidding/a/h/a/g;->a()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/bidding/FBAdBidRequest;->getPlatformAuctionId()Ljava/lang/String;

    move-result-object v7

    const-string v3, "Failed to parse the bid response."

    move-object v1, v0

    move-object/from16 v5, v17

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v7}, Lcom/facebook/bidding/a/f/a;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static c(Lcom/facebook/bidding/FBAdBidRequest;Lcom/facebook/bidding/a/h/a/g;)Lcom/facebook/bidding/a/f/a;
    .registers 10

    const-string v0, "x-fb-debug"

    invoke-static {p1, v0}, Lcom/facebook/bidding/a/f/b;->a(Lcom/facebook/bidding/a/h/a/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "x-fb-an-request-id"

    invoke-static {p1, v0}, Lcom/facebook/bidding/a/f/b;->a(Lcom/facebook/bidding/a/h/a/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "x-fb-an-errors"

    invoke-static {p1, v0}, Lcom/facebook/bidding/a/f/b;->a(Lcom/facebook/bidding/a/h/a/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/bidding/a/h/a/g;->a()I

    move-result v1

    sparse-switch v1, :sswitch_data_5a

    const-string v0, "Unexpected error - Please reach out to your account manager for technical support by providing auction platform id, bid request id, debug header for debugging purpose."

    goto :goto_45

    :sswitch_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid bid request - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Please make sure you are passing in all the required parameters with correct values."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_41

    :sswitch_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No bid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_45
    move-object v3, v0

    new-instance v0, Lcom/facebook/bidding/a/f/a;

    invoke-virtual {p0}, Lcom/facebook/bidding/FBAdBidRequest;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/bidding/a/h/a/g;->a()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/bidding/FBAdBidRequest;->getPlatformAuctionId()Ljava/lang/String;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/bidding/a/f/a;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    nop

    :sswitch_data_5a
    .sparse-switch
        0xcc -> :sswitch_32
        0x190 -> :sswitch_1c
    .end sparse-switch
.end method
