.class public Lcom/mintegral/msdk/videocommon/e/a;
.super Ljava/lang/Object;
.source "RewardSetting.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/videocommon/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/mintegral/msdk/videocommon/e/a;
    .registers 10

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 114
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_63

    .line 116
    :try_start_7
    new-instance v1, Lcom/mintegral/msdk/videocommon/e/a;

    invoke-direct {v1}, Lcom/mintegral/msdk/videocommon/e/a;-><init>()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_b7

    .line 117
    :try_start_c
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 118
    const-string v0, "caplist"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 121
    if-eqz v3, :cond_6e

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_6e

    .line 122
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 123
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 124
    :cond_28
    :goto_28
    if-eqz v5, :cond_6c

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 125
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    const/16 v6, 0x3e8

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_28

    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_64

    if-nez v6, :cond_64

    .line 129
    const/16 v6, 0x3e8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_5b} :catch_5c

    goto :goto_28

    .line 157
    :catch_5c
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    :goto_60
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    :cond_63
    :goto_63
    return-object v0

    .line 131
    :cond_64
    :try_start_64
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    .line 1101
    :cond_6c
    iput-object v4, v1, Lcom/mintegral/msdk/videocommon/e/a;->a:Ljava/util/Map;

    .line 139
    :cond_6e
    const-string v0, "reward"

    .line 140
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 139
    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/b/d;->a(Lorg/json/JSONArray;)Ljava/util/Map;

    move-result-object v0

    .line 1109
    iput-object v0, v1, Lcom/mintegral/msdk/videocommon/e/a;->b:Ljava/util/Map;

    .line 143
    const-string v0, "getpf"

    const-wide/32 v4, 0xa8c0

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2042
    iput-wide v4, v1, Lcom/mintegral/msdk/videocommon/e/a;->c:J

    .line 145
    const-string v0, "ruct"

    const-wide/16 v4, 0x1518

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2050
    iput-wide v4, v1, Lcom/mintegral/msdk/videocommon/e/a;->d:J

    .line 147
    const-string v0, "plct"

    const-wide/16 v4, 0xe10

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2058
    iput-wide v4, v1, Lcom/mintegral/msdk/videocommon/e/a;->e:J

    .line 149
    const-string v0, "dlct"

    const-wide/16 v4, 0xe10

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2066
    iput-wide v4, v1, Lcom/mintegral/msdk/videocommon/e/a;->f:J

    .line 151
    const-string v0, "vcct"

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2074
    iput-wide v4, v1, Lcom/mintegral/msdk/videocommon/e/a;->g:J

    .line 153
    const-string v0, "current_time"

    .line 154
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2084
    iput-wide v2, v1, Lcom/mintegral/msdk/videocommon/e/a;->h:J
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_b5} :catch_5c

    move-object v0, v1

    .line 155
    goto :goto_63

    .line 157
    :catch_b7
    move-exception v1

    goto :goto_60
.end method


# virtual methods
.method public final a()J
    .registers 5

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/mintegral/msdk/videocommon/e/a;->c:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mintegral/msdk/videocommon/e/a;->a:Ljava/util/Map;

    .line 102
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 42
    const-wide/32 v0, 0xa8c0

    iput-wide v0, p0, Lcom/mintegral/msdk/videocommon/e/a;->c:J

    .line 43
    return-void
.end method

.method public final b(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/videocommon/b/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mintegral/msdk/videocommon/e/a;->b:Ljava/util/Map;

    .line 110
    return-void
.end method

.method public final c()J
    .registers 5

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/mintegral/msdk/videocommon/e/a;->d:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final d()V
    .registers 3

    .prologue
    .line 50
    const-wide/16 v0, 0x1518

    iput-wide v0, p0, Lcom/mintegral/msdk/videocommon/e/a;->d:J

    .line 51
    return-void
.end method

.method public final e()J
    .registers 5

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/mintegral/msdk/videocommon/e/a;->e:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final f()V
    .registers 3

    .prologue
    .line 58
    const-wide/16 v0, 0xe10

    iput-wide v0, p0, Lcom/mintegral/msdk/videocommon/e/a;->e:J

    .line 59
    return-void
.end method

.method public final g()J
    .registers 3

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/mintegral/msdk/videocommon/e/a;->f:J

    return-wide v0
.end method

.method public final h()V
    .registers 3

    .prologue
    .line 66
    const-wide/16 v0, 0xe10

    iput-wide v0, p0, Lcom/mintegral/msdk/videocommon/e/a;->f:J

    .line 67
    return-void
.end method

.method public final i()J
    .registers 3

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/mintegral/msdk/videocommon/e/a;->g:J

    return-wide v0
.end method

.method public final j()V
    .registers 3

    .prologue
    .line 74
    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lcom/mintegral/msdk/videocommon/e/a;->g:J

    .line 75
    return-void
.end method

.method public final k()J
    .registers 3

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/mintegral/msdk/videocommon/e/a;->h:J

    return-wide v0
.end method

.method public final l()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v3, 0x3e8

    .line 88
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/e/a;->a:Ljava/util/Map;

    if-nez v0, :cond_2e

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/e/a;->a:Ljava/util/Map;

    .line 90
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/e/a;->a:Ljava/util/Map;

    const-string v1, "1"

    .line 91
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 90
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/e/a;->a:Ljava/util/Map;

    const-string v1, "9"

    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 92
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/e/a;->a:Ljava/util/Map;

    const-string v1, "8"

    .line 95
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 94
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_2e
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/e/a;->a:Ljava/util/Map;

    return-object v0
.end method

.method public final m()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/videocommon/b/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/e/a;->b:Ljava/util/Map;

    return-object v0
.end method
