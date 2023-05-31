.class public LsdkInterface/module/PayInfo;
.super Ljava/lang/Object;
.source "PayInfo.java"


# instance fields
.field public currency:Ljava/lang/String;

.field public goodsDescription:Ljava/lang/String;

.field public goodsID:Ljava/lang/String;

.field public goodsName:Ljava/lang/String;

.field public goodsType:LsdkInterface/define/GoodsType;

.field public internalOrderID:Ljava/lang/String;

.field public orderID:Ljava/lang/String;

.field public prepayID:Ljava/lang/String;

.field public price:F

.field public regionID:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public userID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, LsdkInterface/module/PayInfo;->userID:Ljava/lang/String;

    .line 13
    iput-object v0, p0, LsdkInterface/module/PayInfo;->prepayID:Ljava/lang/String;

    .line 14
    iput-object v0, p0, LsdkInterface/module/PayInfo;->goodsID:Ljava/lang/String;

    .line 15
    iput-object v0, p0, LsdkInterface/module/PayInfo;->goodsName:Ljava/lang/String;

    .line 16
    iput-object v0, p0, LsdkInterface/module/PayInfo;->goodsDescription:Ljava/lang/String;

    .line 17
    sget-object v1, LsdkInterface/define/GoodsType;->NORMAL:LsdkInterface/define/GoodsType;

    iput-object v1, p0, LsdkInterface/module/PayInfo;->goodsType:LsdkInterface/define/GoodsType;

    .line 18
    iput-object v0, p0, LsdkInterface/module/PayInfo;->orderID:Ljava/lang/String;

    .line 19
    iput-object v0, p0, LsdkInterface/module/PayInfo;->internalOrderID:Ljava/lang/String;

    .line 20
    const/4 v1, 0x0

    iput v1, p0, LsdkInterface/module/PayInfo;->price:F

    .line 21
    iput-object v0, p0, LsdkInterface/module/PayInfo;->currency:Ljava/lang/String;

    .line 22
    iput-object v0, p0, LsdkInterface/module/PayInfo;->regionID:Ljava/lang/String;

    .line 24
    iput-object v0, p0, LsdkInterface/module/PayInfo;->tag:Ljava/lang/String;

    return-void
.end method

.method public static CreateSelfReceipt(Ljava/lang/String;LsdkInterface/define/StoreName;)Ljava/lang/String;
    .registers 5
    .param p0, "playerID"    # Ljava/lang/String;
    .param p1, "storeName"    # LsdkInterface/define/StoreName;

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method public static FromJson(Lorg/json/JSONObject;)LsdkInterface/module/PayInfo;
    .registers 6
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 30
    const-string v0, "RegionID"

    const-string v1, "PrepayID"

    const-string v2, "InternalOrderID"

    :try_start_6
    new-instance v3, LsdkInterface/module/PayInfo;

    invoke-direct {v3}, LsdkInterface/module/PayInfo;-><init>()V

    .line 32
    .local v3, "info":LsdkInterface/module/PayInfo;
    const-string v4, "GoodsID"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, LsdkInterface/module/PayInfo;->goodsID:Ljava/lang/String;

    .line 33
    const-string v4, "GoodsName"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, LsdkInterface/module/PayInfo;->goodsName:Ljava/lang/String;

    .line 34
    const-string v4, "GoodsType"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LsdkInterface/define/GoodsType;->valueOf(Ljava/lang/String;)LsdkInterface/define/GoodsType;

    move-result-object v4

    iput-object v4, v3, LsdkInterface/module/PayInfo;->goodsType:LsdkInterface/define/GoodsType;

    .line 35
    const-string v4, "OrderID"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, LsdkInterface/module/PayInfo;->orderID:Ljava/lang/String;

    .line 37
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 39
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, LsdkInterface/module/PayInfo;->internalOrderID:Ljava/lang/String;

    .line 42
    :cond_3b
    const-string v2, "Price"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v3, LsdkInterface/module/PayInfo;->price:F

    .line 43
    const-string v2, "Currency"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, LsdkInterface/module/PayInfo;->currency:Ljava/lang/String;

    .line 45
    const-string v2, "Tag"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, LsdkInterface/module/PayInfo;->tag:Ljava/lang/String;

    .line 47
    const-string v2, "UserID"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, LsdkInterface/module/PayInfo;->userID:Ljava/lang/String;

    .line 49
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 50
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, LsdkInterface/module/PayInfo;->prepayID:Ljava/lang/String;

    .line 53
    :cond_6b
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 55
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, LsdkInterface/module/PayInfo;->regionID:Ljava/lang/String;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_77} :catch_78

    .line 58
    :cond_77
    return-object v3

    .line 60
    .end local v3    # "info":LsdkInterface/module/PayInfo;
    :catch_78
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PayInfo FromJson Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " json:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 63
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public GenJSONObject()Lorg/json/JSONObject;
    .registers 5

    .line 130
    const-string v0, "PrepayID"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 133
    .local v1, "jo":Lorg/json/JSONObject;
    :try_start_7
    const-string v2, "UserID"

    iget-object v3, p0, LsdkInterface/module/PayInfo;->userID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    iget-object v2, p0, LsdkInterface/module/PayInfo;->prepayID:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string v2, "GoodsID"

    iget-object v3, p0, LsdkInterface/module/PayInfo;->goodsID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    const-string v2, "GoodsName"

    iget-object v3, p0, LsdkInterface/module/PayInfo;->goodsName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    const-string v2, "GoodsDescription"

    iget-object v3, p0, LsdkInterface/module/PayInfo;->goodsDescription:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string v2, "GoodsType"

    iget-object v3, p0, LsdkInterface/module/PayInfo;->goodsType:LsdkInterface/define/GoodsType;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    iget-object v2, p0, LsdkInterface/module/PayInfo;->prepayID:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v0, "OrderID"

    iget-object v2, p0, LsdkInterface/module/PayInfo;->orderID:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string v0, "InternalOrderID"

    iget-object v2, p0, LsdkInterface/module/PayInfo;->internalOrderID:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v0, "Currency"

    iget-object v2, p0, LsdkInterface/module/PayInfo;->currency:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v0, "RegionID"

    iget-object v2, p0, LsdkInterface/module/PayInfo;->regionID:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v0, "Tag"

    iget-object v2, p0, LsdkInterface/module/PayInfo;->tag:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_57
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_57} :catch_58

    .line 149
    goto :goto_5c

    .line 147
    :catch_58
    move-exception v0

    .line 148
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 150
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_5c
    return-object v1
.end method

.method public ToJson(Lorg/json/JSONObject;)V
    .registers 13
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 71
    const-string v0, "RegionID"

    const-string v1, "Receipt"

    const-string v2, "InternalOrderID"

    const-string v3, "PrepayID"

    const-string v4, "Currency"

    const-string v5, "Price"

    const-string v6, "OrderID"

    const-string v7, "GoodsType"

    const-string v8, "GoodsName"

    const-string v9, "GoodsID"

    :try_start_14
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1f

    .line 73
    iget-object v10, p0, LsdkInterface/module/PayInfo;->goodsID:Ljava/lang/String;

    invoke-virtual {p1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    :cond_1f
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2a

    .line 78
    iget-object v9, p0, LsdkInterface/module/PayInfo;->goodsName:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    :cond_2a
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_35

    .line 83
    iget-object v8, p0, LsdkInterface/module/PayInfo;->goodsType:LsdkInterface/define/GoodsType;

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    :cond_35
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_40

    .line 88
    iget-object v7, p0, LsdkInterface/module/PayInfo;->orderID:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    :cond_40
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4c

    .line 93
    iget v6, p0, LsdkInterface/module/PayInfo;->price:F

    float-to-double v6, v6

    invoke-virtual {p1, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 96
    :cond_4c
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_57

    .line 98
    iget-object v5, p0, LsdkInterface/module/PayInfo;->currency:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    :cond_57
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_62

    .line 103
    iget-object v4, p0, LsdkInterface/module/PayInfo;->prepayID:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    :cond_62
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6d

    .line 108
    iget-object v3, p0, LsdkInterface/module/PayInfo;->internalOrderID:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    :cond_6d
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_78

    .line 114
    const-string v2, "Null"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    :cond_78
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_83

    .line 119
    iget-object v1, p0, LsdkInterface/module/PayInfo;->regionID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_83} :catch_84

    .line 125
    :cond_83
    goto :goto_a9

    .line 122
    :catch_84
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PayInfo ToJson Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " json:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a9
    return-void
.end method
