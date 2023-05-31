.class public Lcom/bytedance/sdk/openadsdk/core/h/d;
.super Ljava/lang/Object;
.source "DnsItem.java"


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Lorg/json/JSONArray;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field e:J

.field volatile f:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/d;->d:Ljava/util/List;

    .line 27
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/h/d;
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 30
    if-nez p0, :cond_6

    .line 49
    :goto_5
    return-object v0

    .line 34
    :cond_6
    :try_start_6
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/h/d;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/h/d;-><init>()V

    .line 35
    const-string v2, "host"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a(Ljava/lang/String;)V

    .line 36
    const-string v2, "ttl"

    const/16 v3, 0x3c

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a(I)V

    .line 37
    const-string v2, "ips"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a(Lorg/json/JSONArray;)V

    .line 38
    const-string v2, " statsdnstime"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a(Z)V

    .line 39
    const-string v2, "starttime"

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 40
    cmp-long v4, v2, v6

    if-lez v4, :cond_43

    .line 41
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a(J)V

    :goto_41
    move-object v0, v1

    .line 46
    goto :goto_5

    .line 43
    :cond_43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a(J)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_4a} :catch_4b

    goto :goto_41

    .line 47
    :catch_4b
    move-exception v1

    goto :goto_5
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 65
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/d;->b:I

    .line 66
    return-void
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/d;->e:J

    .line 114
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/d;->a:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .registers 5

    .prologue
    .line 73
    if-nez p1, :cond_3

    .line 87
    :cond_2
    return-void

    .line 76
    :cond_3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/d;->c:Lorg/json/JSONArray;

    .line 77
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 80
    :try_start_c
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->l(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 82
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/d;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1f} :catch_22

    .line 77
    :cond_1f
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 84
    :catch_22
    move-exception v1

    goto :goto_1f
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/d;->f:Z

    .line 122
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/d;->b:I

    return v0
.end method

.method public c()Lorg/json/JSONArray;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/d;->c:Lorg/json/JSONArray;

    return-object v0
.end method

.method public d()Z
    .registers 5

    .prologue
    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 90
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/h/d;->f()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/h/d;->b()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    .line 91
    const/4 v0, 0x1

    .line 93
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public e()Ljava/lang/String;
    .registers 5

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/d;->d:Ljava/util/List;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/d;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_e

    .line 105
    :cond_d
    :goto_d
    return-object v0

    .line 101
    :cond_e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 102
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    int-to-double v0, v0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 103
    if-gez v0, :cond_23

    const/4 v0, 0x0

    .line 104
    :cond_23
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/d;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_d
.end method

.method public f()J
    .registers 3

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/d;->e:J

    return-wide v0
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/d;->f:Z

    return v0
.end method

.method public h()Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 125
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 127
    :try_start_5
    const-string v1, "host"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v1, "ttl"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/h/d;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 129
    const-string v1, "ips"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/h/d;->c()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string v1, "starttime"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/h/d;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 131
    const-string v1, "statsdnstime"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/h/d;->g()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_32} :catch_33

    .line 134
    :goto_32
    return-object v0

    .line 132
    :catch_33
    move-exception v1

    goto :goto_32
.end method
