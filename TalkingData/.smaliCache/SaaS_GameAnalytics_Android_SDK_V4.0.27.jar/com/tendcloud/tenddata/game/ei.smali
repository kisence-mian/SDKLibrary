.class public Lcom/tendcloud/tenddata/game/ei;
.super Lcom/tendcloud/tenddata/game/ea;
.source "td"


# instance fields
.field private a:Lcom/tendcloud/tenddata/game/ci;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tendcloud/tenddata/game/ek;)V
    .registers 12

    .line 23
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/ea;-><init>()V

    .line 20
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ei;->c:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/tendcloud/tenddata/game/ej;->$SwitchMap$com$talkingdata$sdk$saf$datamodel$network$TDNetworkType:[I

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/ek;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, ":"

    const-string v1, "proxy"

    const/4 v2, 0x0

    const-string v3, "available"

    const-string v4, "current"

    const-string v5, "connected"

    const-string v6, "type"

    const-string v7, "scannable"

    packed-switch p1, :pswitch_data_1d6

    goto/16 :goto_1d5

    .line 103
    :pswitch_29
    :try_start_29
    sget-object p1, Lcom/tendcloud/tenddata/game/ek;->c:Lcom/tendcloud/tenddata/game/ek;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/ek;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v6, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_34

    .line 108
    goto/16 :goto_1d5

    .line 104
    :catchall_34
    move-exception p1

    .line 109
    goto/16 :goto_1d5

    .line 85
    :pswitch_37
    :try_start_37
    sget-object p1, Lcom/tendcloud/tenddata/game/ek;->b:Lcom/tendcloud/tenddata/game/ek;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/ek;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v6, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    sget-object p1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bb;->f(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    sget-object p1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bb;->i(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v5, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    sget-object p1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bb;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 89
    sget-object p1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/tendcloud/tenddata/game/bb;->a(Landroid/content/Context;Z)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    :cond_6b
    invoke-static {}, Lcom/tendcloud/tenddata/game/bb;->a()Z

    move-result p1

    if-eqz p1, :cond_91

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    :cond_91
    sget-object p1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bb;->v(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, v7, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9a
    .catchall {:try_start_37 .. :try_end_9a} :catchall_9c

    .line 99
    goto/16 :goto_1d5

    .line 95
    :catchall_9c
    move-exception p1

    .line 100
    goto/16 :goto_1d5

    .line 27
    :pswitch_9f
    sget-object p1, Lcom/tendcloud/tenddata/game/ek;->a:Lcom/tendcloud/tenddata/game/ek;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/ek;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v6, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    sget-object p1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bb;->e(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    sget-object p1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bb;->h(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1a0

    .line 30
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v5, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    invoke-static {}, Lcom/tendcloud/tenddata/game/cq;->a()Lcom/tendcloud/tenddata/game/cq;

    move-result-object p1

    invoke-static {}, Lcom/tendcloud/tenddata/game/em;->a()Lcom/tendcloud/tenddata/game/em;

    move-result-object v2

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/em;->a:Lorg/json/JSONObject;

    invoke-static {}, Lcom/tendcloud/tenddata/game/em;->a()Lcom/tendcloud/tenddata/game/em;

    move-result-object v3

    iget-object v3, v3, Lcom/tendcloud/tenddata/game/em;->b:Lorg/json/JSONObject;

    const-string v5, "WiFi"

    invoke-virtual {p1, v5, v2, v3}, Lcom/tendcloud/tenddata/game/cq;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p1

    .line 32
    if-eqz p1, :cond_f4

    .line 33
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/bb;->y(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {p0, v4, v2}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_f9

    .line 35
    invoke-static {}, Lcom/tendcloud/tenddata/game/em;->a()Lcom/tendcloud/tenddata/game/em;

    move-result-object v2

    invoke-virtual {v2, v5, p1}, Lcom/tendcloud/tenddata/game/em;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_f9

    .line 38
    :cond_f4
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/ei;->b:Lorg/json/JSONObject;

    invoke-virtual {p0, v4, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 40
    :cond_f9
    :goto_f9
    sget-object p1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bb;->z(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p1

    .line 41
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ei;->a(Lorg/json/JSONArray;)Lcom/tendcloud/tenddata/game/ci;

    move-result-object v2

    .line 42
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ei;->a:Lcom/tendcloud/tenddata/game/ci;

    if-nez v3, :cond_10d

    .line 43
    invoke-virtual {p0, v7, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    iput-object v2, p0, Lcom/tendcloud/tenddata/game/ei;->a:Lcom/tendcloud/tenddata/game/ci;

    goto :goto_135

    .line 46
    :cond_10d
    new-instance v3, Lcom/tendcloud/tenddata/game/cj;

    invoke-direct {v3}, Lcom/tendcloud/tenddata/game/cj;-><init>()V

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ei;->a:Lcom/tendcloud/tenddata/game/ci;

    invoke-virtual {v3, v4, v2}, Lcom/tendcloud/tenddata/game/cj;->a(Lcom/tendcloud/tenddata/game/ci;Lcom/tendcloud/tenddata/game/ci;)D

    move-result-wide v3

    .line 47
    const-wide v8, 0x3fe999999999999aL    # 0.8

    cmpl-double v6, v3, v8

    if-lez v6, :cond_126

    .line 48
    const/4 p1, 0x0

    invoke-virtual {p0, v7, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_135

    .line 50
    :cond_126
    invoke-virtual {p0, v7, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    iput-object v2, p0, Lcom/tendcloud/tenddata/game/ei;->a:Lcom/tendcloud/tenddata/game/ci;

    .line 52
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ei;->c:Ljava/lang/String;

    .line 55
    :goto_135
    invoke-static {}, Lcom/tendcloud/tenddata/game/cq;->a()Lcom/tendcloud/tenddata/game/cq;

    move-result-object p1

    invoke-static {}, Lcom/tendcloud/tenddata/game/em;->a()Lcom/tendcloud/tenddata/game/em;

    move-result-object v2

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/em;->a:Lorg/json/JSONObject;

    invoke-static {}, Lcom/tendcloud/tenddata/game/em;->a()Lcom/tendcloud/tenddata/game/em;

    move-result-object v3

    iget-object v3, v3, Lcom/tendcloud/tenddata/game/em;->b:Lorg/json/JSONObject;

    invoke-virtual {p1, v5, v2, v3}, Lcom/tendcloud/tenddata/game/cq;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p1

    .line 56
    const-string v2, "configured"

    if-eqz p1, :cond_164

    .line 57
    sget-object v3, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/bb;->x(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_169

    .line 59
    invoke-static {}, Lcom/tendcloud/tenddata/game/em;->a()Lcom/tendcloud/tenddata/game/em;

    move-result-object v2

    invoke-virtual {v2, v5, p1}, Lcom/tendcloud/tenddata/game/em;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_169

    .line 62
    :cond_164
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/ei;->b:Lorg/json/JSONObject;

    invoke-virtual {p0, v2, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 65
    :cond_169
    :goto_169
    invoke-static {}, Lcom/tendcloud/tenddata/game/cq;->a()Lcom/tendcloud/tenddata/game/cq;

    move-result-object p1

    invoke-static {}, Lcom/tendcloud/tenddata/game/em;->a()Lcom/tendcloud/tenddata/game/em;

    move-result-object v2

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/em;->a:Lorg/json/JSONObject;

    invoke-static {}, Lcom/tendcloud/tenddata/game/em;->a()Lcom/tendcloud/tenddata/game/em;

    move-result-object v3

    iget-object v3, v3, Lcom/tendcloud/tenddata/game/em;->b:Lorg/json/JSONObject;

    const-string v4, "IP"

    invoke-virtual {p1, v4, v2, v3}, Lcom/tendcloud/tenddata/game/cq;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p1

    .line 66
    const-string v2, "ip"

    if-eqz p1, :cond_19a

    .line 67
    sget-object v3, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/bb;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_19f

    .line 69
    invoke-static {}, Lcom/tendcloud/tenddata/game/em;->a()Lcom/tendcloud/tenddata/game/em;

    move-result-object v2

    invoke-virtual {v2, v4, p1}, Lcom/tendcloud/tenddata/game/em;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_19f

    .line 72
    :cond_19a
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/ei;->b:Lorg/json/JSONObject;

    invoke-virtual {p0, v2, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 74
    :cond_19f
    :goto_19f
    goto :goto_1a7

    .line 75
    :cond_1a0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v5, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    :goto_1a7
    invoke-static {}, Lcom/tendcloud/tenddata/game/bb;->a()Z

    move-result p1

    if-eqz p1, :cond_1cd

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    :cond_1cd
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/ei;->c:Ljava/lang/String;

    const-string v0, "scannableFingerId"

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    nop

    .line 114
    :goto_1d5
    return-void

    :pswitch_data_1d6
    .packed-switch 0x1
        :pswitch_9f
        :pswitch_37
        :pswitch_29
    .end packed-switch
.end method

.method private static a(Lorg/json/JSONArray;)Lcom/tendcloud/tenddata/game/ci;
    .registers 11

    .line 116
    nop

    .line 117
    if-eqz p0, :cond_42

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 121
    :try_start_f
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 122
    new-instance v9, Lcom/tendcloud/tenddata/game/ce;

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "level"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/tendcloud/tenddata/game/ce;-><init>(Ljava/lang/String;Ljava/lang/String;BBB)V

    .line 123
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_f .. :try_end_31} :catchall_32

    .line 126
    goto :goto_36

    .line 124
    :catchall_32
    move-exception v2

    .line 125
    invoke-static {v2}, Lcom/tendcloud/tenddata/game/ar;->eForInternal(Ljava/lang/Throwable;)V

    .line 119
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 128
    :cond_39
    new-instance p0, Lcom/tendcloud/tenddata/game/ci;

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/ci;-><init>()V

    .line 129
    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/ci;->setBsslist(Ljava/util/List;)V

    goto :goto_43

    .line 117
    :cond_42
    const/4 p0, 0x0

    .line 131
    :goto_43
    return-object p0
.end method
