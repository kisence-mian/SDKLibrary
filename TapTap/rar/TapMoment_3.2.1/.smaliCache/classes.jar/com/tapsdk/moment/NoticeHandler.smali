.class public Lcom/tapsdk/moment/NoticeHandler;
.super Ljava/lang/Object;
.source "NoticeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapsdk/moment/NoticeHandler$NoticeListener;
    }
.end annotation


# static fields
.field private static noticeHandler:Lcom/tapsdk/moment/NoticeHandler;


# instance fields
.field private volatile lastSendTime:J

.field private volatile lastSuccess:Z

.field private noticeListener:Lcom/tapsdk/moment/NoticeHandler$NoticeListener;

.field private volatile noticeNum:I


# direct methods
.method private constructor <init>(Lcom/tapsdk/moment/NoticeHandler$NoticeListener;)V
    .registers 4
    .param p1, "noticeListener"    # Lcom/tapsdk/moment/NoticeHandler$NoticeListener;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tapsdk/moment/NoticeHandler;->lastSendTime:J

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapsdk/moment/NoticeHandler;->lastSuccess:Z

    .line 34
    iput v0, p0, Lcom/tapsdk/moment/NoticeHandler;->noticeNum:I

    .line 37
    iput-object p1, p0, Lcom/tapsdk/moment/NoticeHandler;->noticeListener:Lcom/tapsdk/moment/NoticeHandler$NoticeListener;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/tapsdk/moment/NoticeHandler;)I
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/NoticeHandler;

    .line 27
    iget v0, p0, Lcom/tapsdk/moment/NoticeHandler;->noticeNum:I

    return v0
.end method

.method static synthetic access$002(Lcom/tapsdk/moment/NoticeHandler;I)I
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/NoticeHandler;
    .param p1, "x1"    # I

    .line 27
    iput p1, p0, Lcom/tapsdk/moment/NoticeHandler;->noticeNum:I

    return p1
.end method

.method static synthetic access$102(Lcom/tapsdk/moment/NoticeHandler;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/NoticeHandler;
    .param p1, "x1"    # Z

    .line 27
    iput-boolean p1, p0, Lcom/tapsdk/moment/NoticeHandler;->lastSuccess:Z

    return p1
.end method

.method static synthetic access$200(Lcom/tapsdk/moment/NoticeHandler;)Lcom/tapsdk/moment/NoticeHandler$NoticeListener;
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/NoticeHandler;

    .line 27
    iget-object v0, p0, Lcom/tapsdk/moment/NoticeHandler;->noticeListener:Lcom/tapsdk/moment/NoticeHandler$NoticeListener;

    return-object v0
.end method

.method private computeSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "baseString"    # Ljava/lang/String;
    .param p2, "keyString"    # Ljava/lang/String;

    .line 140
    const/4 v0, 0x0

    .line 142
    .local v0, "secretKey":Ljavax/crypto/SecretKey;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 143
    .local v1, "keyBytes":[B
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "HmacSHA1"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v0, v2

    .line 145
    const/4 v2, 0x0

    .line 147
    .local v2, "mac":Ljavax/crypto/Mac;
    :try_start_e
    invoke-static {v3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    move-object v2, v3

    .line 148
    invoke-virtual {v2, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 149
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 150
    .local v3, "text":[B
    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_25} :catch_26

    return-object v4

    .line 151
    .end local v3    # "text":[B
    :catch_26
    move-exception v3

    .line 152
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    .end local v3    # "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    return-object v3
.end method

.method private getAuthorizationSign(Ljava/lang/String;Lcom/tapsdk/moment/AccessToken;)Ljava/lang/String;
    .registers 19
    .param p1, "originUrl"    # Ljava/lang/String;
    .param p2, "accessToken"    # Lcom/tapsdk/moment/AccessToken;

    .line 113
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    sget-boolean v2, Lcom/tapsdk/moment/TapMoment;->isCN:Z

    if-eqz v2, :cond_b

    const-string v2, "tds-moment.taptap-api.com"

    goto :goto_d

    :cond_b
    const-string v2, "moment.intl.tapapis.com"

    .line 114
    .local v2, "host":Ljava/lang/String;
    :goto_d
    const/16 v3, 0x1bb

    .line 115
    .local v3, "port":I
    const/4 v4, 0x5

    invoke-static {v4}, Lcom/tapsdk/moment/Utils;->randomStr(I)Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, "nonce":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 117
    .local v5, "currentTime":J
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 118
    .local v7, "url":Ljava/lang/String;
    iget-object v8, v1, Lcom/tapsdk/moment/AccessToken;->kid:Ljava/lang/String;

    .line 119
    .local v8, "kid":Ljava/lang/String;
    iget-object v9, v1, Lcom/tapsdk/moment/AccessToken;->mac_key:Ljava/lang/String;

    .line 120
    .local v9, "mac_key":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v10, "signatureBaseArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    const-string v11, "GET"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 129
    .local v11, "origin":Ljava/lang/String;
    const-string v13, "["

    invoke-virtual {v11, v13, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 130
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ", "

    const-string v14, "\n"

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 131
    .local v12, "signatrueBaseString":Ljava/lang/String;
    move-object/from16 v13, p0

    invoke-direct {v13, v12, v9}, Lcom/tapsdk/moment/NoticeHandler;->computeSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 132
    .local v14, "signNature":Ljava/lang/String;
    if-eqz v14, :cond_d5

    .line 133
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MAC id=\""

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, "\",ts=\""

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, "\",nonce=\""

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, "\",mac=\""

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, "\""

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 135
    :cond_d5
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lcom/tapsdk/moment/NoticeHandler$NoticeListener;)Lcom/tapsdk/moment/NoticeHandler;
    .registers 2
    .param p0, "noticeListener"    # Lcom/tapsdk/moment/NoticeHandler$NoticeListener;

    .line 41
    sget-object v0, Lcom/tapsdk/moment/NoticeHandler;->noticeHandler:Lcom/tapsdk/moment/NoticeHandler;

    if-nez v0, :cond_b

    .line 42
    new-instance v0, Lcom/tapsdk/moment/NoticeHandler;

    invoke-direct {v0, p0}, Lcom/tapsdk/moment/NoticeHandler;-><init>(Lcom/tapsdk/moment/NoticeHandler$NoticeListener;)V

    sput-object v0, Lcom/tapsdk/moment/NoticeHandler;->noticeHandler:Lcom/tapsdk/moment/NoticeHandler;

    .line 44
    :cond_b
    sget-object v0, Lcom/tapsdk/moment/NoticeHandler;->noticeHandler:Lcom/tapsdk/moment/NoticeHandler;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized startObserverNotice(Ljava/lang/String;Lcom/tapsdk/moment/AccessToken;)V
    .registers 14
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "accessToken"    # Lcom/tapsdk/moment/AccessToken;

    monitor-enter p0

    .line 48
    :try_start_1
    iget-object v0, p0, Lcom/tapsdk/moment/NoticeHandler;->noticeListener:Lcom/tapsdk/moment/NoticeHandler$NoticeListener;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12e

    if-nez v0, :cond_7

    .line 49
    monitor-exit p0

    return-void

    .line 51
    :cond_7
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 52
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/tapsdk/moment/NoticeHandler;->lastSendTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3c

    cmp-long v2, v2, v4

    if-lez v2, :cond_106

    .line 53
    const-string v2, ""
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_12e

    .line 55
    .local v2, "encodeXua":Ljava/lang/String;
    :try_start_1a
    sget-boolean v3, Lcom/tapsdk/moment/TapMoment;->isCN:Z

    if-eqz v3, :cond_21

    const-string v3, "itkMoments"

    goto :goto_23

    .end local p0    # "this":Lcom/tapsdk/moment/NoticeHandler;
    :cond_21
    const-string v3, "itkMomentsIntl"

    .line 56
    .local v3, "PN":Ljava/lang/String;
    :goto_23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&X-UA="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "V=1&PN="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&VN_CODE="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x9d2a61

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&VN="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "1.3.0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&LANG="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 57
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&LOC="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 58
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    .line 56
    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_8c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1a .. :try_end_8c} :catch_8e
    .catchall {:try_start_1a .. :try_end_8c} :catchall_12e

    move-object v2, v4

    .line 61
    .end local v3    # "PN":Ljava/lang/String;
    goto :goto_92

    .line 59
    :catch_8e
    move-exception v3

    .line 60
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_8f
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 63
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_92
    invoke-static {}, Lcom/tds/common/net/util/HostReplaceUtil;->getInstance()Lcom/tds/common/net/util/HostReplaceUtil;

    move-result-object v3

    sget-boolean v4, Lcom/tapsdk/moment/TapMoment;->isCN:Z

    if-eqz v4, :cond_9d

    const-string v4, "https://tds-moment.taptap-api.com/"

    goto :goto_9f

    :cond_9d
    const-string v4, "https://moment.intl.tapapis.com/"

    .line 64
    :goto_9f
    invoke-virtual {v3, v4}, Lcom/tds/common/net/util/HostReplaceUtil;->getReplacedHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "host":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "api/feed/v6/reminder-with-user?client_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, "url":Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v5, "heads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v4, p2}, Lcom/tapsdk/moment/NoticeHandler;->getAuthorizationSign(Ljava/lang/String;Lcom/tapsdk/moment/AccessToken;)Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, "auth":Ljava/lang/String;
    if-eqz v6, :cond_ce

    .line 69
    const-string v7, "authorization"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_ce
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 72
    .local v7, "queries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/tds/common/net/Skynet;->getInstance()Lcom/tds/common/net/Skynet;

    move-result-object v8

    const-string v9, "TdsMoment"

    invoke-virtual {v8, v9}, Lcom/tds/common/net/Skynet;->getTdsApiClient(Ljava/lang/String;)Lcom/tds/common/net/TdsApiClient;

    move-result-object v8

    new-instance v9, Lcom/tapsdk/moment/NoticeHandler$3;

    invoke-direct {v9, p0}, Lcom/tapsdk/moment/NoticeHandler$3;-><init>(Lcom/tapsdk/moment/NoticeHandler;)V

    invoke-virtual {v8, v9, v4, v7, v5}, Lcom/tds/common/net/TdsApiClient;->getAsync(Lcom/tds/common/net/json/TypeRef;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/tds/common/reactor/Observable;

    move-result-object v8

    .line 74
    invoke-static {}, Lcom/tds/common/reactor/schedulers/Schedulers;->newThread()Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/tds/common/reactor/Observable;->subscribeOn(Lcom/tds/common/reactor/schedulers/Scheduler;)Lcom/tds/common/reactor/Observable;

    move-result-object v8

    .line 75
    invoke-static {}, Lcom/tds/common/reactor/rxandroid/schedulers/AndroidSchedulers;->mainThread()Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/tds/common/reactor/Observable;->observeOn(Lcom/tds/common/reactor/schedulers/Scheduler;)Lcom/tds/common/reactor/Observable;

    move-result-object v8

    new-instance v9, Lcom/tapsdk/moment/NoticeHandler$1;

    invoke-direct {v9, p0}, Lcom/tapsdk/moment/NoticeHandler$1;-><init>(Lcom/tapsdk/moment/NoticeHandler;)V

    new-instance v10, Lcom/tapsdk/moment/NoticeHandler$2;

    invoke-direct {v10, p0}, Lcom/tapsdk/moment/NoticeHandler$2;-><init>(Lcom/tapsdk/moment/NoticeHandler;)V

    .line 76
    invoke-virtual {v8, v9, v10}, Lcom/tds/common/reactor/Observable;->subscribe(Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action1;)Lcom/tds/common/reactor/Subscription;

    .line 101
    iput-wide v0, p0, Lcom/tapsdk/moment/NoticeHandler;->lastSendTime:J

    .line 102
    .end local v2    # "encodeXua":Ljava/lang/String;
    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "heads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "auth":Ljava/lang/String;
    .end local v7    # "queries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_12c

    .line 103
    :cond_106
    iget-boolean v2, p0, Lcom/tapsdk/moment/NoticeHandler;->lastSuccess:Z

    if-eqz v2, :cond_125

    .line 104
    iget-object v2, p0, Lcom/tapsdk/moment/NoticeHandler;->noticeListener:Lcom/tapsdk/moment/NoticeHandler$NoticeListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/tapsdk/moment/NoticeHandler;->noticeNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tapsdk/moment/NoticeHandler$NoticeListener;->onGetNoticeSuccess(Ljava/lang/String;)V

    goto :goto_12c

    .line 106
    :cond_125
    iget-object v2, p0, Lcom/tapsdk/moment/NoticeHandler;->noticeListener:Lcom/tapsdk/moment/NoticeHandler$NoticeListener;

    const-string v3, "no data"

    invoke-interface {v2, v3}, Lcom/tapsdk/moment/NoticeHandler$NoticeListener;->onGetNoticeFail(Ljava/lang/String;)V
    :try_end_12c
    .catchall {:try_start_8f .. :try_end_12c} :catchall_12e

    .line 110
    :goto_12c
    monitor-exit p0

    return-void

    .line 47
    .end local v0    # "currentTime":J
    .end local p1    # "clientId":Ljava/lang/String;
    .end local p2    # "accessToken":Lcom/tapsdk/moment/AccessToken;
    :catchall_12e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
