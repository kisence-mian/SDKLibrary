.class public LsdkInterface/SDKBase;
.super Ljava/lang/Object;
.source "SDKBase.java"


# instance fields
.field public SDKName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, LsdkInterface/SDKBase;->SDKName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public AttachBaseContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "base"    # Landroid/content/Context;

    .line 40
    return-void
.end method

.method public CallBack(Ljava/lang/String;)V
    .registers 2
    .param p1, "content"    # Ljava/lang/String;

    .line 79
    invoke-static {p1}, LsdkInterface/SdkInterface;->SendMessage(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public CallBack(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "jo"    # Lorg/json/JSONObject;

    .line 82
    invoke-static {p1}, LsdkInterface/SdkInterface;->SendMessage(Lorg/json/JSONObject;)V

    .line 83
    return-void
.end method

.method protected CallBackADReward(LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V
    .registers 7
    .param p1, "ADType"    # LsdkInterface/define/ADType;
    .param p2, "ADResult"    # LsdkInterface/define/ADResult;
    .param p3, "tag"    # Ljava/lang/String;

    .line 139
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 140
    .local v0, "jo":Lorg/json/JSONObject;
    const-string v1, "ModuleName"

    const-string v2, "AD"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string v1, "FunctionName"

    const-string v2, "OnAD"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v1, "ADType"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v1, "ADResult"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v1, "Tag"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " CallBackADReward "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, LsdkInterface/SDKBase;->SendLog(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0, v0}, LsdkInterface/SDKBase;->CallBack(Lorg/json/JSONObject;)V
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3f} :catch_40

    .line 152
    .end local v0    # "jo":Lorg/json/JSONObject;
    goto :goto_57

    .line 150
    :catch_40
    move-exception v0

    .line 151
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendPayCallBack Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, LsdkInterface/SDKBase;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 153
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_57
    return-void
.end method

.method protected CallBackGoodsInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "goodsID"    # Ljava/lang/String;
    .param p2, "price"    # Ljava/lang/String;

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallBackGoodsInfo goodsID >"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "< >"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LsdkInterface/SDKBase;->SendLog(Ljava/lang/String;)V

    .line 193
    :try_start_26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 195
    .local v0, "jo":Lorg/json/JSONObject;
    const-string v1, "ModuleName"

    const-string v2, "Pay"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string v1, "FunctionName"

    const-string v2, "GetGoodsInfo"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string v1, "GoodsID"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string v1, "localizedPriceString"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    invoke-static {v0}, LsdkInterface/SdkInterface;->SendMessage(Lorg/json/JSONObject;)V
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_46} :catch_47

    .line 203
    .end local v0    # "jo":Lorg/json/JSONObject;
    goto :goto_5e

    .line 201
    :catch_47
    move-exception v0

    .line 202
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendPayCallBack Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, LsdkInterface/SDKBase;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 204
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_5e
    return-void
.end method

.method protected CallBackLoginResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "loginPlatform"    # Ljava/lang/String;
    .param p2, "success"    # Z
    .param p3, "accountID"    # Ljava/lang/String;
    .param p4, "errorString"    # Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "login result  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LsdkInterface/SDKBase;->SendLog(Ljava/lang/String;)V

    .line 121
    :try_start_16
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 122
    .local v0, "jo":Lorg/json/JSONObject;
    const-string v1, "ModuleName"

    const-string v2, "Login"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v1, "FunctionName"

    const-string v2, "OnLogin"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v1, "AccountId"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string v1, "IsSuccess"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 126
    const-string v1, "loginPlatform"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v1, "Error"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    invoke-virtual {p0, v0}, LsdkInterface/SDKBase;->CallBack(Lorg/json/JSONObject;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_40} :catch_41

    .line 133
    .end local v0    # "jo":Lorg/json/JSONObject;
    goto :goto_4a

    .line 130
    :catch_41
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 132
    const-string v1, "LoginResult onLogin Error"

    invoke-virtual {p0, v1, v0}, LsdkInterface/SDKBase;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 134
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4a
    return-void
.end method

.method protected CallBackPayResult(LsdkInterface/module/PayInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "payInfo"    # LsdkInterface/module/PayInfo;
    .param p2, "storeName"    # Ljava/lang/String;
    .param p3, "success"    # Z
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "errorCode"    # Ljava/lang/String;

    .line 158
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 159
    .local v0, "jo":Lorg/json/JSONObject;
    const-string v1, ""

    .line 160
    .local v1, "goodsID":Ljava/lang/String;
    if-eqz p1, :cond_c

    .line 162
    iget-object v2, p1, LsdkInterface/module/PayInfo;->goodsID:Ljava/lang/String;

    move-object v1, v2

    .line 165
    :cond_c
    const-string v2, "ModuleName"

    const-string v3, "Pay"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    const-string v2, "GoodsID"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string v2, "IsSuccess"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 168
    const-string v2, "OrderID"

    invoke-virtual {v0, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    const-string v2, "Error"

    invoke-virtual {v0, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    const-string v2, "Payment"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string v2, "Receipt"

    invoke-virtual {v0, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PayInfo is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    if-nez p1, :cond_41

    const/4 v4, 0x1

    goto :goto_42

    :cond_41
    const/4 v4, 0x0

    :goto_42
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "jo is null"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, LsdkInterface/SDKBase;->SendLog(Ljava/lang/String;)V

    .line 175
    if-nez p1, :cond_5f

    .line 176
    new-instance v2, LsdkInterface/module/PayInfo;

    invoke-direct {v2}, LsdkInterface/module/PayInfo;-><init>()V

    move-object p1, v2

    .line 178
    :cond_5f
    invoke-virtual {p1, v0}, LsdkInterface/module/PayInfo;->ToJson(Lorg/json/JSONObject;)V

    .line 180
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, LsdkInterface/SDKBase;->SendLog(Ljava/lang/String;)V

    .line 182
    invoke-static {v0}, LsdkInterface/SdkInterface;->SendMessage(Lorg/json/JSONObject;)V
    :try_end_6c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_6c} :catch_6d

    .line 185
    .end local v0    # "jo":Lorg/json/JSONObject;
    .end local v1    # "goodsID":Ljava/lang/String;
    goto :goto_84

    .line 183
    :catch_6d
    move-exception v0

    .line 184
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendPayCallBack Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, LsdkInterface/SDKBase;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 186
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_84
    return-void
.end method

.method protected GenerateHashMapBySqlitContent(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 9
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "splitChar"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 211
    .local v0, "hash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_5
    const-string v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "keySplit":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, v1

    if-ge v2, v3, :cond_31

    .line 213
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 214
    aget-object v3, v1, v2

    invoke-virtual {v3, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "key_value":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v5, v3, v4

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e

    .line 216
    aget-object v4, v3, v4

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2e} :catch_32

    .line 212
    .end local v3    # "key_value":[Ljava/lang/String;
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 222
    .end local v1    # "keySplit":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_31
    goto :goto_49

    .line 220
    :catch_32
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GenerateHashMapBySqlitContent error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, LsdkInterface/SDKBase;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 224
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_49
    return-object v0
.end method

.method protected GeneratePayCustomContent(LsdkInterface/module/PayInfo;)Ljava/lang/String;
    .registers 9
    .param p1, "payInfo"    # LsdkInterface/module/PayInfo;

    .line 229
    invoke-virtual {p1}, LsdkInterface/module/PayInfo;->GenJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 230
    .local v0, "json":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "content":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 232
    .local v2, "bytes":[B
    invoke-static {v2}, LsdkInterface/tool/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "encode":Ljava/lang/String;
    const-string v4, "+"

    const-string v5, "-"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 235
    const-string v5, "/"

    const-string v6, "_"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 236
    const-string v5, "="

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, "result":Ljava/lang/String;
    return-object v4
.end method

.method public GetCurrentActivity()Landroid/app/Activity;
    .registers 2

    .line 102
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public GetProperties()Ljava/util/Properties;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-static {}, LsdkInterface/SdkInterface;->GetContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, LsdkInterface/SDKBase;->SDKName:Ljava/lang/String;

    invoke-static {v0, v1}, LsdkInterface/tool/PropertieTool;->getProperties(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public HandleIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 72
    return-void
.end method

.method public Init(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 36
    return-void
.end method

.method public OnActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 76
    return-void
.end method

.method public OnApplicationCreate()V
    .registers 1

    .line 38
    return-void
.end method

.method public OnAppplicationQuit()Z
    .registers 2

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public OnCreate()V
    .registers 1

    .line 42
    return-void
.end method

.method public OnDestroy()V
    .registers 1

    .line 74
    return-void
.end method

.method public OnNewIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 70
    return-void
.end method

.method public OnPause()V
    .registers 1

    .line 50
    return-void
.end method

.method public OnRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 56
    return-void
.end method

.method public OnRestart()V
    .registers 1

    .line 46
    return-void
.end method

.method public OnResume()V
    .registers 1

    .line 48
    return-void
.end method

.method public OnStart()V
    .registers 1

    .line 44
    return-void
.end method

.method public OnStop()V
    .registers 1

    .line 52
    return-void
.end method

.method public SendError(Ljava/lang/String;)V
    .registers 2
    .param p1, "content"    # Ljava/lang/String;

    .line 94
    invoke-static {p1}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public SendError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 90
    invoke-static {p1, p2}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 91
    return-void
.end method

.method public SendLog(Ljava/lang/String;)V
    .registers 2
    .param p1, "content"    # Ljava/lang/String;

    .line 86
    invoke-static {p1}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public StartForResult(Landroid/content/Intent;LsdkInterface/tool/ActResultRequest$Callback;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # LsdkInterface/tool/ActResultRequest$Callback;

    .line 109
    :try_start_0
    sget-object v0, LsdkInterface/SdkInterface;->actResultRequest:LsdkInterface/tool/ActResultRequest;

    invoke-virtual {v0, p1, p2}, LsdkInterface/tool/ActResultRequest;->startForResult(Landroid/content/Intent;LsdkInterface/tool/ActResultRequest$Callback;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 113
    goto :goto_21

    .line 110
    :catch_6
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartForResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, LsdkInterface/SDKBase;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_21
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 1

    .line 64
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .line 68
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 62
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 60
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 58
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .param p1, "hasFocus"    # Z

    .line 66
    return-void
.end method
