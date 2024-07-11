.class public Llog/TalkingData;
.super LsdkInterface/SDKBase;
.source "TalkingData.java"

# interfaces
.implements LsdkInterface/ILog;


# static fields
.field public static Instance:Llog/TalkingData;

.field static m_TDGAAccount:Lcom/tendcloud/tenddata/TDGAAccount;


# instance fields
.field AppID:Ljava/lang/String;

.field Channel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, LsdkInterface/SDKBase;-><init>()V

    return-void
.end method


# virtual methods
.method public Init(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 30
    sput-object p0, Llog/TalkingData;->Instance:Llog/TalkingData;

    .line 32
    :try_start_2
    invoke-virtual {p0}, Llog/TalkingData;->GetProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "AppID"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llog/TalkingData;->AppID:Ljava/lang/String;

    .line 33
    const-string v0, "Channel"

    const-string v1, "ChannelName"

    const-string v2, "Android"

    invoke-static {v0, v1, v2}, LsdkInterface/SdkInterface;->GetProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llog/TalkingData;->Channel:Ljava/lang/String;

    .line 35
    invoke-virtual {p0}, Llog/TalkingData;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Llog/TalkingData;->AppID:Ljava/lang/String;

    iget-object v2, p0, Llog/TalkingData;->Channel:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tendcloud/tenddata/TalkingDataGA;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Llog/TalkingData;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->onResume(Landroid/app/Activity;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2c} :catch_2d

    .line 42
    goto :goto_44

    .line 40
    :catch_2d
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TalkingData Init Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Llog/TalkingData;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 43
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_44
    return-void
.end method

.method public LogError(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 234
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->onEvent(Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public LogPay(Lorg/json/JSONObject;)V
    .registers 12
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 126
    const-string v0, "---------TalkingData LogPay 1"

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 128
    :try_start_5
    const-string v0, "OrderID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "orderID":Ljava/lang/String;
    const-string v1, "GoodsID"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "goodsID":Ljava/lang/String;
    const-string v1, "Price"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 131
    .local v3, "price":D
    const-string v1, "Currency"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, "currency":Ljava/lang/String;
    const-string v1, "Payment"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 133
    .local v8, "payment":Ljava/lang/String;
    const-string v1, "Count"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v9, v1

    .line 135
    .local v9, "count":I
    int-to-double v6, v9

    move-object v1, v0

    invoke-static/range {v1 .. v8}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency;->onChargeRequest(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;)V

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---------TalkingData LogPay orderID"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReportThread finish report "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_63} :catch_64

    .line 149
    .end local v0    # "orderID":Ljava/lang/String;
    .end local v2    # "goodsID":Ljava/lang/String;
    .end local v3    # "price":D
    .end local v5    # "currency":Ljava/lang/String;
    .end local v8    # "payment":Ljava/lang/String;
    .end local v9    # "count":I
    goto :goto_7b

    .line 146
    :catch_64
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TalkingData LogPay Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Llog/TalkingData;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7b
    return-void
.end method

.method public LogPaySuccess(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 156
    :try_start_0
    const-string v0, "OrderID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "orderID":Ljava/lang/String;
    invoke-static {v0}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency;->onChargeSuccess(Ljava/lang/String;)V

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TalkingData LogPaySuccess :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Llog/TalkingData;->SendLog(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    .line 163
    .end local v0    # "orderID":Ljava/lang/String;
    goto :goto_37

    .line 160
    :catch_20
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TalkingData LogPaySuccess Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Llog/TalkingData;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_37
    return-void
.end method

.method public Login(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 49
    :try_start_0
    const-string v0, "AccountId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "AccountId":Ljava/lang/String;
    invoke-static {v0}, Lcom/tendcloud/tenddata/TDGAAccount;->setAccount(Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount;

    move-result-object v1

    sput-object v1, Llog/TalkingData;->m_TDGAAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    .line 52
    invoke-virtual {p0, p1}, Llog/TalkingData;->OnSpecialEvent(Lorg/json/JSONObject;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 56
    .end local v0    # "AccountId":Ljava/lang/String;
    goto :goto_27

    .line 53
    :catch_10
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TalkingData Login Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Llog/TalkingData;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_27
    return-void
.end method

.method public LoginOut(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 122
    return-void
.end method

.method public OnEvent(Lorg/json/JSONObject;)V
    .registers 9
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 210
    const-string v0, "EventMap"

    :try_start_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 212
    .local v1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "EventID"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "eventID":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 215
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "map":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 218
    .local v3, "jsonMap":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 219
    .local v4, "iterator":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 220
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 221
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 222
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    nop

    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    goto :goto_20

    .line 226
    .end local v0    # "map":Ljava/lang/String;
    .end local v3    # "jsonMap":Lorg/json/JSONObject;
    .end local v4    # "iterator":Ljava/util/Iterator;
    :cond_35
    invoke-static {v2, v1}, Lcom/tendcloud/tenddata/TalkingDataGA;->onEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_38} :catch_39

    .line 229
    .end local v1    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "eventID":Ljava/lang/String;
    goto :goto_50

    .line 227
    :catch_39
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TalkingData Log Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Llog/TalkingData;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 230
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_50
    return-void
.end method

.method public OnSpecialEvent(Lorg/json/JSONObject;)V
    .registers 15
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 63
    const-string v0, "onCompleted"

    const-string v1, "onBegin"

    const-string v2, "setGameServer"

    const-string v3, "setAge"

    const-string v4, "setGender"

    const-string v5, "EventMap"

    :try_start_c
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v6, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_dd

    .line 65
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "map":Ljava/lang/String;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 68
    .local v7, "jsonMap":Lorg/json/JSONObject;
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 69
    .local v8, "iterator":Ljava/util/Iterator;
    :goto_24
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_58

    .line 70
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 71
    .local v9, "key":Ljava/lang/String;
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 72
    .local v10, "value":Ljava/lang/String;
    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TalkingData OnSpecialEvent Get Info:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " =="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Llog/TalkingData;->SendLog(Ljava/lang/String;)V

    .line 74
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    goto :goto_24

    .line 76
    :cond_58
    const-string v9, "setAccount"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_5e} :catch_de

    const-string v10, "SetAccount"

    if-eqz v9, :cond_71

    .line 78
    :try_start_62
    sget-object v9, Llog/TalkingData;->m_TDGAAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/tendcloud/tenddata/TDGAAccount;->setAccountType(Lcom/tendcloud/tenddata/TDGAAccount$AccountType;)V

    .line 80
    :cond_71
    const-string v9, "setAccountName"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_84

    .line 82
    sget-object v9, Llog/TalkingData;->m_TDGAAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/tendcloud/tenddata/TDGAAccount;->setAccountName(Ljava/lang/String;)V

    .line 85
    :cond_84
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_99

    .line 87
    sget-object v9, Llog/TalkingData;->m_TDGAAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/tendcloud/tenddata/TDGAAccount;->setGender(Lcom/tendcloud/tenddata/TDGAAccount$Gender;)V

    .line 90
    :cond_99
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 92
    sget-object v4, Llog/TalkingData;->m_TDGAAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/tendcloud/tenddata/TDGAAccount;->setAge(I)V

    .line 95
    :cond_ae
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bf

    .line 97
    sget-object v3, Llog/TalkingData;->m_TDGAAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/tendcloud/tenddata/TDGAAccount;->setGameServer(Ljava/lang/String;)V

    .line 100
    :cond_bf
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 102
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/TDGAMission;->onBegin(Ljava/lang/String;)V

    .line 105
    :cond_ce
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dd

    .line 107
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/TDGAMission;->onCompleted(Ljava/lang/String;)V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_dd} :catch_de

    .line 113
    .end local v5    # "map":Ljava/lang/String;
    .end local v6    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "jsonMap":Lorg/json/JSONObject;
    .end local v8    # "iterator":Ljava/util/Iterator;
    :cond_dd
    goto :goto_f5

    .line 110
    :catch_de
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TalkingData OnSpecialEvent Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Llog/TalkingData;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_f5
    return-void
.end method

.method public PurchaseVirtualCurrency(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 182
    :try_start_0
    const-string v0, "Price"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 183
    .local v0, "price":D
    const-string v2, "Count"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 184
    .local v2, "num":I
    const-string v3, "GoodsID"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, "goods":Ljava/lang/String;
    invoke-static {v3, v2, v0, v1}, Lcom/tendcloud/tenddata/TDGAItem;->onPurchase(Ljava/lang/String;ID)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 190
    .end local v0    # "price":D
    .end local v2    # "num":I
    .end local v3    # "goods":Ljava/lang/String;
    goto :goto_35

    .line 187
    :catch_1e
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TalkingData LogPay Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Llog/TalkingData;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_35
    return-void
.end method

.method public RewardVirtualCurrency(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 169
    :try_start_0
    const-string v0, "Count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 170
    .local v0, "count":D
    const-string v2, "RewardReason"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "reason":Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency;->onReward(DLjava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 176
    .end local v0    # "count":D
    .end local v2    # "reason":Ljava/lang/String;
    goto :goto_2b

    .line 173
    :catch_14
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TalkingData LogPay Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Llog/TalkingData;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 177
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2b
    return-void
.end method

.method public UseItem(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 197
    :try_start_0
    const-string v0, "Count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 198
    .local v0, "num":I
    const-string v1, "GoodsID"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "goods":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/TDGAItem;->onUse(Ljava/lang/String;I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 204
    .end local v0    # "num":I
    .end local v1    # "goods":Ljava/lang/String;
    goto :goto_2b

    .line 201
    :catch_14
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TalkingData LogPay Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Llog/TalkingData;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 205
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2b
    return-void
.end method
