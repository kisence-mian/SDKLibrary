.class Lcom/tds/common/log/LogHandler;
.super Landroid/os/Handler;
.source "LogHandler.java"


# static fields
.field public static final DELAY_MILLIS:I = 0x1388

.field private static final LOG_DELAY:I = 0x2

.field private static final LOG_TYPE:I = 0x1

.field public static final MESSAGES_EXCEED:I = 0x7d0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field messageListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tds/common/log/entities/LogMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field queries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field tdsApiClient:Lcom/tds/common/net/TdsApiClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const-class v0, Lcom/tds/common/log/LogHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tds/common/log/LogHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 6
    .param p1, "looper"    # Landroid/os/Looper;

    .line 40
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tds/common/log/LogHandler;->messageListMap:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tds/common/log/LogHandler;->queries:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tds/common/log/LogHandler;->headers:Ljava/util/Map;

    .line 41
    invoke-static {}, Lcom/tds/common/net/TdsHttp;->newClientBuilder()Lcom/tds/common/net/TdsHttp$Client$Builder;

    move-result-object v0

    .line 42
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tds/common/net/TdsHttp$Client$Builder;->trustAllCerts(Z)Lcom/tds/common/net/TdsHttp$Client$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/tds/common/net/TdsHttp$Client$Builder;->build()Lcom/tds/common/net/TdsHttp$Client;

    move-result-object v0

    .line 44
    .local v0, "client":Lcom/tds/common/net/TdsHttp$Client;
    new-instance v1, Lcom/tds/common/net/TdsApiClient$Builder;

    invoke-direct {v1}, Lcom/tds/common/net/TdsApiClient$Builder;-><init>()V

    .line 45
    invoke-virtual {v1, v0}, Lcom/tds/common/net/TdsApiClient$Builder;->tdsClient(Lcom/tds/common/net/TdsHttp$Client;)Lcom/tds/common/net/TdsApiClient$Builder;

    move-result-object v1

    .line 46
    const-string v2, "http://tap-android-logs.cn-beijing.log.aliyuncs.com/logstores/tds-sdk-logs/track"

    invoke-virtual {v1, v2}, Lcom/tds/common/net/TdsApiClient$Builder;->baseUrl(Ljava/lang/String;)Lcom/tds/common/net/TdsApiClient$Builder;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/tds/common/net/TdsApiClient$Builder;->build()Lcom/tds/common/net/TdsApiClient;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/common/log/LogHandler;->tdsApiClient:Lcom/tds/common/net/TdsApiClient;

    .line 48
    iget-object v1, p0, Lcom/tds/common/log/LogHandler;->headers:Ljava/util/Map;

    const-string v2, "x-log-apiversion"

    const-string v3, "0.6.0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v1, p0, Lcom/tds/common/log/LogHandler;->headers:Ljava/util/Map;

    const-string v2, "x-log-bodyrawsize"

    const-string v3, "3145728"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v1, p0, Lcom/tds/common/log/LogHandler;->headers:Ljava/util/Map;

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method private checkAbnormal(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tds/common/log/entities/LogMessage;",
            ">;)Z"
        }
    .end annotation

    .line 84
    .local p1, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/log/entities/LogMessage;>;"
    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private checkShouldUpload()Z
    .registers 4

    .line 77
    iget-object v0, p0, Lcom/tds/common/log/LogHandler;->messageListMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 78
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/tds/common/log/entities/LogMessage;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_24

    const/4 v0, 0x1

    return v0

    .line 79
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/tds/common/log/entities/LogMessage;>;>;"
    :cond_24
    goto :goto_a

    .line 80
    :cond_25
    const/4 v0, 0x0

    return v0
.end method

.method private doUploadLog()V
    .registers 12

    .line 119
    iget-object v0, p0, Lcom/tds/common/log/LogHandler;->messageListMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 120
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/tds/common/log/entities/LogMessage;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_62

    .line 121
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 122
    .local v2, "logMessagesList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/log/entities/LogMessage;>;"
    :goto_22
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_62

    .line 123
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tds/common/log/entities/LogMessage;

    iget-object v4, v4, Lcom/tds/common/log/entities/LogMessage;->logConfig:Lcom/tds/common/log/entities/LogConfig;

    .line 124
    .local v4, "logConfig":Lcom/tds/common/log/entities/LogConfig;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    iget v6, v4, Lcom/tds/common/log/entities/LogConfig;->groupSize:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 126
    .local v5, "dealSize":I
    :try_start_3b
    invoke-direct {p0, v2}, Lcom/tds/common/log/LogHandler;->checkAbnormal(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_42

    return-void

    .line 127
    :cond_42
    invoke-interface {v2, v3, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 128
    .local v3, "dealLogMessageList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/log/entities/LogMessage;>;"
    iget-object v6, p0, Lcom/tds/common/log/LogHandler;->tdsApiClient:Lcom/tds/common/net/TdsApiClient;

    const-string v7, ""

    iget-object v8, p0, Lcom/tds/common/log/LogHandler;->queries:Ljava/util/Map;

    iget-object v9, p0, Lcom/tds/common/log/LogHandler;->headers:Ljava/util/Map;

    invoke-direct {p0, v3}, Lcom/tds/common/log/LogHandler;->makeUploadJsonObject(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/tds/common/net/TdsApiClient;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 129
    invoke-interface {v2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_58} :catch_5a

    .line 135
    nop

    .line 136
    .end local v3    # "dealLogMessageList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/log/entities/LogMessage;>;"
    .end local v4    # "logConfig":Lcom/tds/common/log/entities/LogConfig;
    .end local v5    # "dealSize":I
    goto :goto_22

    .line 130
    .restart local v4    # "logConfig":Lcom/tds/common/log/entities/LogConfig;
    .restart local v5    # "dealSize":I
    :catch_5a
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/tds/common/log/LogHandler;->sendLogMessageDelayed()V

    .line 133
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    return-void

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/tds/common/log/entities/LogMessage;>;>;"
    .end local v2    # "logMessagesList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/log/entities/LogMessage;>;"
    .end local v4    # "logConfig":Lcom/tds/common/log/entities/LogConfig;
    .end local v5    # "dealSize":I
    :cond_62
    goto :goto_a

    .line 139
    :cond_63
    return-void
.end method

.method private doUploadLog(Lcom/tds/common/log/entities/LogMessage;)V
    .registers 10
    .param p1, "logMessage"    # Lcom/tds/common/log/entities/LogMessage;

    .line 88
    iget-object v0, p1, Lcom/tds/common/log/entities/LogMessage;->logConfig:Lcom/tds/common/log/entities/LogConfig;

    .line 90
    .local v0, "logConfig":Lcom/tds/common/log/entities/LogConfig;
    iget-object v1, p0, Lcom/tds/common/log/LogHandler;->messageListMap:Ljava/util/Map;

    iget-object v2, v0, Lcom/tds/common/log/entities/LogConfig;->sdkName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 91
    iget-object v1, p0, Lcom/tds/common/log/LogHandler;->messageListMap:Ljava/util/Map;

    iget-object v2, v0, Lcom/tds/common/log/entities/LogConfig;->sdkName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .local v1, "logMessagesList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/log/entities/LogMessage;>;"
    goto :goto_23

    .line 93
    .end local v1    # "logMessagesList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/log/entities/LogMessage;>;"
    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .restart local v1    # "logMessagesList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/log/entities/LogMessage;>;"
    iget-object v2, p0, Lcom/tds/common/log/LogHandler;->messageListMap:Ljava/util/Map;

    iget-object v3, v0, Lcom/tds/common/log/entities/LogConfig;->sdkName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :goto_23
    if-eqz v1, :cond_63

    .line 97
    invoke-direct {p0, v1}, Lcom/tds/common/log/LogHandler;->checkAbnormal(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2c

    return-void

    .line 99
    :cond_2c
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget v3, v0, Lcom/tds/common/log/entities/LogConfig;->groupSize:I

    if-lt v2, v3, :cond_5a

    .line 102
    const/4 v2, 0x0

    :try_start_38
    iget v3, v0, Lcom/tds/common/log/entities/LogConfig;->groupSize:I

    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 103
    .local v2, "dealLogMessageList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/log/entities/LogMessage;>;"
    iget-object v3, p0, Lcom/tds/common/log/LogHandler;->tdsApiClient:Lcom/tds/common/net/TdsApiClient;

    const-string v4, ""

    iget-object v5, p0, Lcom/tds/common/log/LogHandler;->queries:Ljava/util/Map;

    iget-object v6, p0, Lcom/tds/common/log/LogHandler;->headers:Ljava/util/Map;

    invoke-direct {p0, v2}, Lcom/tds/common/log/LogHandler;->makeUploadJsonObject(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/tds/common/net/TdsApiClient;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 104
    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_50} :catch_52

    .line 110
    nop

    .end local v2    # "dealLogMessageList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/log/entities/LogMessage;>;"
    goto :goto_5a

    .line 105
    :catch_52
    move-exception v2

    .line 107
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/tds/common/log/LogHandler;->sendLogMessageDelayed()V

    .line 108
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    return-void

    .line 112
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5a
    :goto_5a
    invoke-direct {p0}, Lcom/tds/common/log/LogHandler;->checkShouldUpload()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 113
    invoke-virtual {p0}, Lcom/tds/common/log/LogHandler;->sendLogMessageDelayed()V

    .line 116
    :cond_63
    return-void
.end method

.method private makeUploadJsonObject(Ljava/util/List;)Lorg/json/JSONObject;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tds/common/log/entities/LogMessage;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 142
    .local p1, "logMessageList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/log/entities/LogMessage;>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 143
    .local v0, "result":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 144
    .local v1, "logArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a6

    .line 145
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tds/common/log/entities/LogMessage;

    .line 146
    .local v3, "logMessage":Lcom/tds/common/log/entities/LogMessage;
    iget-object v4, v3, Lcom/tds/common/log/entities/LogMessage;->logConfig:Lcom/tds/common/log/entities/LogConfig;

    .line 147
    .local v4, "logConfig":Lcom/tds/common/log/entities/LogConfig;
    if-nez v2, :cond_6b

    .line 148
    iget-object v5, v4, Lcom/tds/common/log/entities/LogConfig;->sdkName:Ljava/lang/String;

    const-string v6, "__topic__"

    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    iget-object v5, v4, Lcom/tds/common/log/entities/LogConfig;->source:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_31

    iget-object v5, v4, Lcom/tds/common/log/entities/LogConfig;->source:Ljava/lang/String;

    const-string v6, "__source__"

    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    :cond_31
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 151
    .local v5, "tags":Lorg/json/JSONObject;
    iget-object v6, v4, Lcom/tds/common/log/entities/LogConfig;->tagsMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_40
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_66

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 152
    .local v7, "tagEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_65

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    .end local v7    # "tagEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_65
    goto :goto_40

    .line 155
    :cond_66
    const-string v6, "__tags__"

    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    .end local v5    # "tags":Lorg/json/JSONObject;
    :cond_6b
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 158
    .local v5, "log":Lorg/json/JSONObject;
    iget-object v6, v3, Lcom/tds/common/log/entities/LogMessage;->message:Ljava/lang/String;

    const-string v7, "message"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    iget-object v6, v3, Lcom/tds/common/log/entities/LogMessage;->customTag:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_86

    iget-object v6, v3, Lcom/tds/common/log/entities/LogMessage;->customTag:Ljava/lang/String;

    const-string v7, "logTag"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    :cond_86
    const-string v6, "logType"

    const-string v7, "Debug"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    iget v6, v4, Lcom/tds/common/log/entities/LogConfig;->sdkVersionCode:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "SDK_VERSION_CODE"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    iget-object v6, v4, Lcom/tds/common/log/entities/LogConfig;->sdkVersionName:Ljava/lang/String;

    const-string v7, "SDK_VERSION_NAME"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 144
    .end local v3    # "logMessage":Lcom/tds/common/log/entities/LogMessage;
    .end local v4    # "logConfig":Lcom/tds/common/log/entities/LogConfig;
    .end local v5    # "log":Lorg/json/JSONObject;
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b

    .line 165
    .end local v2    # "i":I
    :cond_a6
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_b1

    const-string v2, "__logs__"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    :cond_b1
    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b

    return-void

    .line 56
    :cond_b
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1e

    .line 57
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/tds/common/log/entities/LogMessage;

    if-nez v0, :cond_16

    return-void

    .line 58
    :cond_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tds/common/log/entities/LogMessage;

    .line 59
    .local v0, "logMessage":Lcom/tds/common/log/entities/LogMessage;
    invoke-direct {p0, v0}, Lcom/tds/common/log/LogHandler;->doUploadLog(Lcom/tds/common/log/entities/LogMessage;)V

    .line 60
    .end local v0    # "logMessage":Lcom/tds/common/log/entities/LogMessage;
    goto :goto_21

    .line 61
    :cond_1e
    invoke-direct {p0}, Lcom/tds/common/log/LogHandler;->doUploadLog()V

    .line 63
    :goto_21
    return-void
.end method

.method public sendLogMessage(Lcom/tds/common/log/entities/LogConfig;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "logConfig"    # Lcom/tds/common/log/entities/LogConfig;
    .param p2, "logMessage"    # Ljava/lang/String;
    .param p3, "customTag"    # Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/tds/common/log/entities/LogMessage;

    invoke-direct {v0, p1, p2, p3}, Lcom/tds/common/log/entities/LogMessage;-><init>(Lcom/tds/common/log/entities/LogConfig;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .local v0, "tdsLog":Lcom/tds/common/log/entities/LogMessage;
    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 68
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p0, v1}, Lcom/tds/common/log/LogHandler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    return-void
.end method

.method public sendLogMessageDelayed()V
    .registers 4

    .line 72
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 73
    .local v0, "msg":Landroid/os/Message;
    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/tds/common/log/LogHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 74
    return-void
.end method
