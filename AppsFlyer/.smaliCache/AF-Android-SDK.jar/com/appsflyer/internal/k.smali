.class public Lcom/appsflyer/internal/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final valueOf:Lcom/appsflyer/internal/bh;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/bh;)V
    .registers 2

    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1021
    iput-object p1, p0, Lcom/appsflyer/internal/k;->valueOf:Lcom/appsflyer/internal/bh;

    .line 1022
    return-void
.end method

.method public static AFInAppEventParameterName(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 113
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 114
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 115
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 116
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_24

    .line 117
    check-cast v3, Lorg/json/JSONArray;

    invoke-static {v3}, Lcom/appsflyer/internal/k;->values(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    goto :goto_2e

    .line 118
    :cond_24
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_2e

    .line 119
    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/appsflyer/internal/k;->AFInAppEventParameterName(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    .line 121
    :cond_2e
    :goto_2e
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    goto :goto_9

    .line 123
    :cond_32
    return-object v0
.end method

.method private static AFInAppEventType(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 62
    if-nez p0, :cond_5

    .line 63
    sget-object p0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    return-object p0

    .line 65
    :cond_5
    instance-of v0, p0, Lorg/json/JSONArray;

    if-nez v0, :cond_99

    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_f

    goto/16 :goto_99

    .line 68
    :cond_f
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 69
    return-object p0

    .line 72
    :cond_18
    :try_start_18
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_3a

    .line 73
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 74
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 75
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/internal/k;->AFInAppEventType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_27

    .line 77
    :cond_39
    return-object v0

    .line 78
    :cond_3a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 79
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 80
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 81
    const/4 v2, 0x0

    :goto_4e
    if-ge v2, v0, :cond_5e

    .line 82
    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/internal/k;->AFInAppEventType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 84
    :cond_5e
    return-object v1

    .line 86
    :cond_5f
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_6a

    .line 88
    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lcom/appsflyer/internal/k;->values(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_69} :catch_95

    return-object p0

    .line 90
    :cond_6a
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_94

    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_94

    instance-of v0, p0, Ljava/lang/Character;

    if-nez v0, :cond_94

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_94

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_94

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_94

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_94

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_94

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_8f

    goto :goto_94

    .line 103
    :cond_8f
    :try_start_8f
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_93} :catch_95

    return-object p0

    .line 99
    :cond_94
    :goto_94
    return-object p0

    .line 104
    :catch_95
    move-exception p0

    .line 107
    sget-object p0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    return-object p0

    .line 66
    :cond_99
    :goto_99
    return-object p0
.end method

.method private static values(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 129
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 130
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_1b

    .line 131
    check-cast v2, Lorg/json/JSONArray;

    invoke-static {v2}, Lcom/appsflyer/internal/k;->values(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    goto :goto_25

    .line 132
    :cond_1b
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_25

    .line 133
    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/appsflyer/internal/k;->AFInAppEventParameterName(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 135
    :cond_25
    :goto_25
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 137
    :cond_2b
    return-object v0
.end method

.method public static values(Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 23
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 24
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/internal/k;->AFInAppEventType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 27
    :try_start_21
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_2a} :catch_2b

    .line 30
    goto :goto_d

    .line 28
    :catch_2b
    move-exception v1

    .line 31
    goto :goto_d

    .line 32
    :cond_2d
    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 4028
    invoke-virtual {p0}, Lcom/appsflyer/internal/k;->values()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 4029
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 4030
    :cond_9
    return-void
.end method

.method public values()Ljava/net/HttpURLConnection;
    .registers 19

    .line 1035
    move-object/from16 v1, p0

    const-string v2, ""

    iget-object v0, v1, Lcom/appsflyer/internal/k;->valueOf:Lcom/appsflyer/internal/bh;

    .line 2081
    iget-object v3, v0, Lcom/appsflyer/internal/h;->onInstallConversionFailureNative:Ljava/lang/String;

    .line 1035
    nop

    .line 1036
    iget-object v0, v1, Lcom/appsflyer/internal/k;->valueOf:Lcom/appsflyer/internal/bh;

    invoke-virtual {v0}, Lcom/appsflyer/internal/bh;->AFLogger$LogLevel()Ljava/lang/String;

    move-result-object v0

    .line 1037
    iget-object v4, v1, Lcom/appsflyer/internal/k;->valueOf:Lcom/appsflyer/internal/bh;

    invoke-virtual {v4}, Lcom/appsflyer/internal/bh;->AppsFlyer2dXConversionCallback()Z

    move-result v4

    .line 1038
    iget-object v5, v1, Lcom/appsflyer/internal/k;->valueOf:Lcom/appsflyer/internal/bh;

    invoke-virtual {v5}, Lcom/appsflyer/internal/bh;->init()Z

    move-result v5

    .line 1039
    iget-object v6, v1, Lcom/appsflyer/internal/k;->valueOf:Lcom/appsflyer/internal/bh;

    invoke-virtual {v6}, Lcom/appsflyer/internal/bh;->getLevel()Z

    move-result v6

    .line 1040
    iget-object v7, v1, Lcom/appsflyer/internal/k;->valueOf:Lcom/appsflyer/internal/bh;

    invoke-virtual {v7}, Lcom/appsflyer/internal/h;->AFKeystoreWrapper()Z

    move-result v7

    .line 1041
    nop

    .line 1042
    nop

    .line 1043
    nop

    .line 1044
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 1046
    const/4 v9, 0x0

    if-eqz v4, :cond_32

    .line 1047
    return-object v9

    .line 1050
    :cond_32
    const/4 v4, 0x1

    const/4 v10, 0x0

    :try_start_34
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1051
    if-eqz v6, :cond_89

    .line 1052
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v12

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2190
    const-string v14, "server_request"

    new-array v15, v4, [Ljava/lang/String;

    aput-object v0, v15, v10

    invoke-virtual {v12, v14, v13, v15}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1053
    const-string v12, "UTF-8"

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    array-length v12, v12

    .line 1054
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "call = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "; size = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " byte"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-le v12, v4, :cond_73

    const-string v12, "s"

    goto :goto_74

    :cond_73
    move-object v12, v2

    :goto_74
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; body = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/an;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 1058
    :cond_89
    const-string v0, "AppsFlyer"

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1059
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/net/HttpURLConnection;
    :try_end_99
    .catchall {:try_start_34 .. :try_end_99} :catchall_177

    .line 1060
    const/16 v0, 0x7530

    :try_start_9b
    invoke-virtual {v12, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 1061
    invoke-virtual {v12, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 1062
    const-string v0, "POST"

    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {v12, v4}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 1064
    invoke-virtual {v12, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 1065
    const-string v0, "Content-Type"

    if-eqz v7, :cond_b3

    const-string v13, "application/octet-stream"

    goto :goto_b5

    :cond_b3
    const-string v13, "application/json"

    :goto_b5
    invoke-virtual {v12, v0, v13}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    invoke-virtual {v12}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 1068
    if-eqz v7, :cond_137

    iget-object v7, v1, Lcom/appsflyer/internal/k;->valueOf:Lcom/appsflyer/internal/bh;

    .line 3132
    iget-object v7, v7, Lcom/appsflyer/internal/h;->AFLogger$LogLevel:Ljava/lang/String;
    :try_end_c2
    .catchall {:try_start_9b .. :try_end_c2} :catchall_174

    .line 1068
    :try_start_c2
    new-array v13, v4, [Ljava/lang/Object;

    aput-object v7, v13, v10

    invoke-static {v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x18

    invoke-static {v10}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v14

    const/4 v15, 0x0

    const v16, 0xdf4b

    cmpl-float v14, v14, v15

    add-int v14, v14, v16

    int-to-char v14, v14

    invoke-static {v10, v10}, Landroid/view/View;->getDefaultSize(II)I

    move-result v15

    add-int/lit8 v15, v15, 0x18

    invoke-static {v7, v14, v15}, Lcom/appsflyer/internal/b;->values(ICI)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    const-string v14, "AFKeystoreWrapper"

    new-array v15, v4, [Ljava/lang/Class;

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v10

    invoke-virtual {v7, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v9, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_f5
    .catchall {:try_start_c2 .. :try_end_f5} :catchall_12f

    :try_start_f5
    new-array v9, v4, [Ljava/lang/Object;

    aput-object v8, v9, v10

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x18

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    sub-int v13, v16, v13

    int-to-char v13, v13

    invoke-static {v10}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v14

    rsub-int/lit8 v14, v14, 0x17

    invoke-static {v8, v13, v14}, Lcom/appsflyer/internal/b;->values(ICI)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    const-string v13, "values"

    new-array v14, v4, [Ljava/lang/Class;

    const-class v15, [B

    aput-object v15, v14, v10

    invoke-virtual {v8, v13, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, [B
    :try_end_125
    .catchall {:try_start_f5 .. :try_end_125} :catchall_126

    goto :goto_137

    :catchall_126
    move-exception v0

    :try_start_127
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_12e

    :goto_12d
    throw v5

    :cond_12e
    throw v0

    :catchall_12f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_12e

    goto :goto_12d

    :cond_137
    :goto_137
    invoke-virtual {v0, v8}, Ljava/io/OutputStream;->write([B)V

    .line 1069
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1070
    invoke-virtual {v12}, Ljava/net/URLConnection;->connect()V

    .line 1072
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 1073
    if-eqz v5, :cond_14d

    .line 1074
    invoke-static {}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName()Lcom/appsflyer/internal/af;

    invoke-static {v12}, Lcom/appsflyer/internal/af;->AFInAppEventType(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v2

    .line 1076
    :cond_14d
    if-eqz v6, :cond_167

    .line 1077
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v5

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3194
    const-string v7, "server_response"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    aput-object v2, v8, v4

    invoke-virtual {v5, v7, v6, v8}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1080
    :cond_167
    const/16 v5, 0xc8

    if-ne v0, v5, :cond_172

    .line 1081
    const-string v0, "Status 200 ok"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V
    :try_end_170
    .catchall {:try_start_127 .. :try_end_170} :catchall_174

    const/4 v4, 0x0

    goto :goto_186

    .line 1083
    :cond_172
    nop

    .line 1088
    goto :goto_186

    .line 1085
    :catchall_174
    move-exception v0

    move-object v9, v12

    goto :goto_178

    :catchall_177
    move-exception v0

    .line 1086
    :goto_178
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Error while calling "

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1087
    move-object v12, v9

    .line 1089
    :goto_186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Connection "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_192

    const-string v3, "error"

    goto :goto_194

    :cond_192
    const-string v3, "call succeeded"

    :goto_194
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 1090
    return-object v12
.end method
