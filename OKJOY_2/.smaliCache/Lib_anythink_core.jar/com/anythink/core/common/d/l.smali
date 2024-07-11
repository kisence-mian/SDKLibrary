.class public final Lcom/anythink/core/common/d/l;
.super Lcom/anythink/core/common/d/k;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:J

.field public f:J

.field public g:Z

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 30
    invoke-direct/range {p0 .. p7}, Lcom/anythink/core/common/d/k;-><init>(ZDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/anythink/core/common/d/l;
    .registers 11

    .line 74
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 75
    const-string p0, "is_success"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    move v3, v1

    .line 76
    const-string p0, "bid_id"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 77
    const-string p0, "price"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 78
    const-string p0, "nurl"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 79
    const-string p0, "lurl"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 80
    const-string p0, "err_msg"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 82
    new-instance p0, Lcom/anythink/core/common/d/l;

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/anythink/core/common/d/l;-><init>(ZDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "cur"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/l;->b:Ljava/lang/String;

    .line 84
    const-string v1, "unit_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/l;->c:Ljava/lang/String;

    .line 85
    const-string v1, "nw_firm_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/anythink/core/common/d/l;->d:I

    .line 86
    const-string v1, "err_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/anythink/core/common/d/l;->a:I

    .line 87
    const-string v1, "expire"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/anythink/core/common/d/l;->e:J

    .line 88
    const-string v1, "out_data_time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/anythink/core/common/d/l;->f:J

    .line 89
    const-string v1, "is_send_winurl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/anythink/core/common/d/l;->g:Z

    .line 90
    const-string v1, "offer_data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/d/l;->h:Ljava/lang/String;
    :try_end_75
    .catchall {:try_start_0 .. :try_end_75} :catchall_76

    .line 91
    return-object p0

    .line 92
    :catchall_76
    move-exception p0

    .line 97
    const/4 p0, 0x0

    return-object p0
.end method

.method private c()V
    .registers 4

    .line 38
    iget-boolean v0, p0, Lcom/anythink/core/common/d/l;->g:Z

    if-eqz v0, :cond_5

    .line 39
    return-void

    .line 41
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/d/l;->g:Z

    .line 42
    iget-object v0, p0, Lcom/anythink/core/common/d/l;->winNoticeUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 43
    new-instance v0, Lcom/anythink/core/common/e/e;

    iget-object v1, p0, Lcom/anythink/core/common/d/l;->winNoticeUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/anythink/core/common/e/e;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/e/e;->a(ILcom/anythink/core/common/e/g;)V

    .line 45
    :cond_1c
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 5

    .line 34
    iget-wide v0, p0, Lcom/anythink/core/common/d/l;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 5

    .line 48
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 50
    :try_start_5
    const-string v1, "bid_id"

    iget-object v2, p0, Lcom/anythink/core/common/d/l;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v1, "cur"

    iget-object v2, p0, Lcom/anythink/core/common/d/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v1, "price"

    iget-wide v2, p0, Lcom/anythink/core/common/d/l;->price:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 53
    const-string v1, "nurl"

    iget-object v2, p0, Lcom/anythink/core/common/d/l;->winNoticeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v1, "lurl"

    iget-object v2, p0, Lcom/anythink/core/common/d/l;->loseNoticeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v1, "unit_id"

    iget-object v2, p0, Lcom/anythink/core/common/d/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v1, "nw_firm_id"

    iget v2, p0, Lcom/anythink/core/common/d/l;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    const-string v1, "is_success"

    iget-boolean v2, p0, Lcom/anythink/core/common/d/l;->isSuccess:Z

    if-eqz v2, :cond_3e

    const/4 v2, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x0

    :goto_3f
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 58
    const-string v1, "err_code"

    iget v2, p0, Lcom/anythink/core/common/d/l;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 59
    const-string v1, "err_msg"

    iget-object v2, p0, Lcom/anythink/core/common/d/l;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v1, "expire"

    iget-wide v2, p0, Lcom/anythink/core/common/d/l;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 61
    const-string v1, "out_data_time"

    iget-wide v2, p0, Lcom/anythink/core/common/d/l;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 62
    const-string v1, "is_send_winurl"

    iget-boolean v2, p0, Lcom/anythink/core/common/d/l;->g:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 63
    const-string v1, "offer_data"

    iget-object v2, p0, Lcom/anythink/core/common/d/l;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6c
    .catchall {:try_start_5 .. :try_end_6c} :catchall_6d

    .line 66
    goto :goto_6e

    .line 64
    :catchall_6d
    move-exception v1

    .line 68
    :goto_6e
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
