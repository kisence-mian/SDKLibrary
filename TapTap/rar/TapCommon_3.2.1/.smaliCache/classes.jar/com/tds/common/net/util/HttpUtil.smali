.class public Lcom/tds/common/net/util/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# static fields
.field public static HTTP_METHOD_GET:Ljava/lang/String;

.field public static HTTP_METHOD_POST:Ljava/lang/String;

.field private static random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/tds/common/net/util/HttpUtil;->random:Ljava/util/Random;

    .line 36
    const-string v0, "POST"

    sput-object v0, Lcom/tds/common/net/util/HttpUtil;->HTTP_METHOD_POST:Ljava/lang/String;

    .line 37
    const-string v0, "GET"

    sput-object v0, Lcom/tds/common/net/util/HttpUtil;->HTTP_METHOD_GET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "schema"    # Ljava/lang/String;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .line 204
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 205
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 206
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 207
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 208
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, ""

    .line 210
    .local v1, "result":Ljava/lang/String;
    :try_start_13
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1b} :catch_1d

    move-object v1, v2

    .line 213
    goto :goto_21

    .line 211
    :catch_1d
    move-exception v2

    .line 212
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 214
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_21
    return-object v1
.end method

.method public static buildUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 8
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 193
    .local p1, "queries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 194
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 195
    .local v1, "builder":Landroid/net/Uri$Builder;
    if-eqz p1, :cond_2e

    .line 196
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 197
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 198
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_12

    .line 200
    :cond_2e
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 18
    .param p0, "url_string"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "keyid"    # Ljava/lang/String;
    .param p3, "mac_key"    # Ljava/lang/String;

    .line 52
    move-object v1, p0

    const-string v0, ","

    :try_start_3
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 53
    .local v2, "url":Ljava/net/URL;
    invoke-static {}, Lcom/tds/common/net/util/HttpUtil;->getTime()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "time":Ljava/lang/String;
    const/4 v4, 0x5

    invoke-static {v4}, Lcom/tds/common/net/util/HttpUtil;->getRandomString(I)Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    .line 55
    .local v11, "randomStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    .line 56
    .local v12, "host":Ljava/lang/String;
    invoke-virtual {p0, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 57
    .local v7, "uri":Ljava/lang/String;
    const-string v4, "80"

    .line 58
    .local v4, "port":Ljava/lang/String;
    const-string v5, "https"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 59
    const-string v5, "443"

    move-object v4, v5

    move-object v13, v4

    goto :goto_34

    .line 58
    :cond_33
    move-object v13, v4

    .line 61
    .end local v4    # "port":Ljava/lang/String;
    .local v13, "port":Ljava/lang/String;
    :goto_34
    const-string v10, ""

    .line 62
    .local v10, "other":Ljava/lang/String;
    move-object v4, v3

    move-object v5, v11

    move-object v6, p1

    move-object v8, v12

    move-object v9, v13

    invoke-static/range {v4 .. v10}, Lcom/tds/common/net/util/HttpUtil;->mergeSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_3f
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3f} :catch_91

    move-object/from16 v5, p3

    :try_start_41
    invoke-static {v4, v5}, Lcom/tds/common/net/util/HttpUtil;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "sign":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MAC "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "id"
    :try_end_52
    .catch Ljava/net/MalformedURLException; {:try_start_41 .. :try_end_52} :catch_8d

    move-object/from16 v9, p2

    :try_start_54
    invoke-static {v8, v9}, Lcom/tds/common/net/util/HttpUtil;->getAuthorizationParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "ts"

    invoke-static {v8, v3}, Lcom/tds/common/net/util/HttpUtil;->getAuthorizationParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "nonce"

    invoke-static {v8, v11}, Lcom/tds/common/net/util/HttpUtil;->getAuthorizationParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "mac"

    invoke-static {v6, v4}, Lcom/tds/common/net/util/HttpUtil;->getAuthorizationParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_8a
    .catch Ljava/net/MalformedURLException; {:try_start_54 .. :try_end_8a} :catch_8b

    return-object v0

    .line 64
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "time":Ljava/lang/String;
    .end local v4    # "sign":Ljava/lang/String;
    .end local v7    # "uri":Ljava/lang/String;
    .end local v10    # "other":Ljava/lang/String;
    .end local v11    # "randomStr":Ljava/lang/String;
    .end local v12    # "host":Ljava/lang/String;
    .end local v13    # "port":Ljava/lang/String;
    :catch_8b
    move-exception v0

    goto :goto_96

    :catch_8d
    move-exception v0

    move-object/from16 v9, p2

    goto :goto_96

    :catch_91
    move-exception v0

    move-object/from16 v9, p2

    move-object/from16 v5, p3

    .line 65
    .local v0, "e":Ljava/net/MalformedURLException;
    :goto_96
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 67
    .end local v0    # "e":Ljava/net/MalformedURLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getAuthorizationParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 148
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2b

    .line 151
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 149
    :cond_2b
    :goto_2b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAuthorizationWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 19
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "keyid"    # Ljava/lang/String;
    .param p3, "mac_key"    # Ljava/lang/String;

    .line 71
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 72
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/tds/common/net/util/HttpUtil;->getTime()Ljava/lang/String;

    move-result-object v8

    .line 73
    .local v8, "time":Ljava/lang/String;
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/tds/common/net/util/HttpUtil;->getRandomString(I)Ljava/lang/String;

    move-result-object v9

    .line 74
    .local v9, "randomStr":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v10

    .line 76
    .local v10, "host":Ljava/lang/String;
    const-string v1, "80"

    .line 77
    .local v1, "port":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "wss"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 78
    const-string v1, "443"

    move-object v11, v1

    goto :goto_24

    .line 77
    :cond_23
    move-object v11, v1

    .line 80
    .end local v1    # "port":Ljava/lang/String;
    .local v11, "port":Ljava/lang/String;
    :goto_24
    const-string v12, ""

    .line 81
    .local v12, "other":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v13

    .line 82
    .local v13, "queries":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "targetUrl":Ljava/lang/String;
    if-eqz v13, :cond_51

    const-string v2, "null"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    goto :goto_52

    .line 87
    :cond_51
    move-object v14, v1

    .end local v1    # "targetUrl":Ljava/lang/String;
    .local v14, "targetUrl":Ljava/lang/String;
    :goto_52
    move-object v1, v8

    move-object v2, v9

    move-object/from16 v3, p1

    move-object v4, v14

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    invoke-static/range {v1 .. v7}, Lcom/tds/common/net/util/HttpUtil;->mergeSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p3

    invoke-static {v1, v2}, Lcom/tds/common/net/util/HttpUtil;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "sign":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MAC "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "id"

    move-object/from16 v5, p2

    invoke-static {v4, v5}, Lcom/tds/common/net/util/HttpUtil;->getAuthorizationParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "ts"

    invoke-static {v6, v8}, Lcom/tds/common/net/util/HttpUtil;->getAuthorizationParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "nonce"

    invoke-static {v6, v9}, Lcom/tds/common/net/util/HttpUtil;->getAuthorizationParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mac"

    invoke-static {v4, v1}, Lcom/tds/common/net/util/HttpUtil;->getAuthorizationParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getAuthorizeHeaders(Lcom/tds/common/account/TdsAccount;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .param p0, "account"    # Lcom/tds/common/account/TdsAccount;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/account/TdsAccount;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 156
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 157
    .local v1, "authorization":Ljava/lang/String;
    const/4 v2, 0x0

    .line 158
    .local v2, "authType":Ljava/lang/String;
    sget-object v3, Lcom/tds/common/net/util/HttpUtil$1;->$SwitchMap$com$tds$common$account$TdsAccount$AccountType:[I

    invoke-interface {p0}, Lcom/tds/common/account/TdsAccount;->getAccountType()Lcom/tds/common/account/TdsAccount$AccountType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tds/common/account/TdsAccount$AccountType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_8c

    goto :goto_72

    .line 170
    :pswitch_17
    instance-of v3, p0, Lcom/tds/common/account/LCAccount;

    if-eqz v3, :cond_72

    .line 171
    move-object v3, p0

    check-cast v3, Lcom/tds/common/account/LCAccount;

    .line 172
    .local v3, "lcAccount":Lcom/tds/common/account/LCAccount;
    iget-object v4, v3, Lcom/tds/common/account/LCAccount;->clientId:Ljava/lang/String;

    const-string v5, "X-LC-Id"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v4, v3, Lcom/tds/common/account/LCAccount;->clientToken:Ljava/lang/String;

    invoke-static {v4}, Lcom/tds/common/net/util/HttpUtil;->getLcSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "X-LC-Sign"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v4, v3, Lcom/tds/common/account/LCAccount;->sessionToken:Ljava/lang/String;

    const-string v5, "X-LC-Session"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_72

    .line 167
    .end local v3    # "lcAccount":Lcom/tds/common/account/LCAccount;
    :pswitch_38
    move-object v3, p0

    check-cast v3, Lcom/tds/common/account/TDSPlatformAccount;

    iget-object v3, v3, Lcom/tds/common/account/TDSPlatformAccount;->kid:Ljava/lang/String;

    move-object v4, p0

    check-cast v4, Lcom/tds/common/account/TDSPlatformAccount;

    iget-object v4, v4, Lcom/tds/common/account/TDSPlatformAccount;->mac_key:Ljava/lang/String;

    invoke-static {p1, p2, v3, v4}, Lcom/tds/common/net/util/HttpUtil;->getAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    goto :goto_72

    .line 164
    :pswitch_47
    move-object v3, p0

    check-cast v3, Lcom/tds/common/account/TapAccount;

    iget-object v3, v3, Lcom/tds/common/account/TapAccount;->kid:Ljava/lang/String;

    move-object v4, p0

    check-cast v4, Lcom/tds/common/account/TapAccount;

    iget-object v4, v4, Lcom/tds/common/account/TapAccount;->mac_key:Ljava/lang/String;

    invoke-static {p1, p2, v3, v4}, Lcom/tds/common/net/util/HttpUtil;->getAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    goto :goto_72

    .line 161
    :pswitch_56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Lcom/tds/common/account/TdsAccount;->getToken()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    nop

    .line 178
    :cond_72
    :goto_72
    invoke-interface {p0}, Lcom/tds/common/account/TdsAccount;->getAccountType()Lcom/tds/common/account/TdsAccount$AccountType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tds/common/account/TdsAccount$AccountType;->name()Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_85

    .line 180
    const-string v3, "Authorization"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_85
    const-string v3, "X-Authorization-Type"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    return-object v0

    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_56
        :pswitch_56
        :pswitch_47
        :pswitch_38
        :pswitch_17
    .end packed-switch
.end method

.method public static getLcSign(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "clientToken"    # Ljava/lang/String;

    .line 187
    invoke-static {}, Lcom/tds/common/net/util/HttpUtil;->getTimeMillis()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "time":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "originalString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/tds/common/utils/CommonUtils;->getMD5([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getRandomString(I)Ljava/lang/String;
    .registers 6
    .param p0, "length"    # I

    .line 101
    const-string v0, "abcdefghijklmnopqrstuvwxyz0123456789"

    .line 102
    .local v0, "base":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 103
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, p0, :cond_1e

    .line 104
    sget-object v3, Lcom/tds/common/net/util/HttpUtil;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 105
    .local v3, "number":I
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 103
    .end local v3    # "number":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 107
    .end local v2    # "i":I
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getTime()Ljava/lang/String;
    .registers 6

    .line 93
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%010d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeMillis()Ljava/lang/String;
    .registers 4

    .line 97
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%010d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mergeSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "randomCode"    # Ljava/lang/String;
    .param p2, "httpType"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;
    .param p5, "port"    # Ljava/lang/String;
    .param p6, "other"    # Ljava/lang/String;

    .line 111
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_88

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_88

    .line 112
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_88

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_88

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_88

    .line 116
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "prefix":Ljava/lang/String;
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_87

    .line 121
    :cond_72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_87
    return-object v0

    .line 113
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_88
    :goto_88
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseJsonArray(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 9
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 40
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 41
    .local v0, "len":I
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 42
    .local v1, "result":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_29

    .line 43
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lorg/json/JSONObject;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 44
    .local v3, "value":Ljava/lang/Object;
    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 42
    .end local v3    # "value":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 46
    .end local v2    # "i":I
    :cond_29
    return-object v1
.end method

.method public static sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "signatureBaseString"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 129
    const-string v0, "UTF-8"

    const-string v1, "HmacSHA1"

    :try_start_4
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 131
    .local v2, "signingKey":Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 132
    .local v1, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 133
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 134
    .local v3, "text":[B
    invoke-virtual {v1, v3}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v4

    .line 135
    .local v4, "signatureBytes":[B
    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v5

    move-object v4, v5

    .line 136
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_27
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_27} :catch_37
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_27} :catch_30
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_27} :catch_29

    move-object v0, v5

    .line 137
    .local v0, "signature":Ljava/lang/String;
    return-object v0

    .line 142
    .end local v0    # "signature":Ljava/lang/String;
    .end local v1    # "mac":Ljavax/crypto/Mac;
    .end local v2    # "signingKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v3    # "text":[B
    .end local v4    # "signatureBytes":[B
    :catch_29
    move-exception v0

    .line 143
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 140
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_30
    move-exception v0

    .line 141
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 138
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_37
    move-exception v0

    .line 139
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
