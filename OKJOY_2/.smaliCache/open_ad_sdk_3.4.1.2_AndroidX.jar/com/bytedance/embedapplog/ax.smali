.class public Lcom/bytedance/embedapplog/ax;
.super Lcom/bytedance/embedapplog/aq;
.source "SourceFile"


# instance fields
.field public h:[B

.field i:I

.field public j:I

.field private k:Lorg/json/JSONArray;

.field private l:Lorg/json/JSONArray;

.field private m:Lcom/bytedance/embedapplog/aw;

.field private n:Lorg/json/JSONArray;

.field private o:Lcom/bytedance/embedapplog/ba;

.field private p:Lorg/json/JSONObject;

.field private q:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/bytedance/embedapplog/aq;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lcom/bytedance/embedapplog/aq;
    .registers 4

    .line 110
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/ax;->a:J

    .line 111
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/ax;->h:[B

    .line 112
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/embedapplog/ax;->i:I

    .line 113
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/embedapplog/ax;->p:Lorg/json/JSONObject;

    .line 114
    iput-object p1, p0, Lcom/bytedance/embedapplog/ax;->m:Lcom/bytedance/embedapplog/aw;

    .line 115
    iput-object p1, p0, Lcom/bytedance/embedapplog/ax;->o:Lcom/bytedance/embedapplog/ba;

    .line 116
    iput-object p1, p0, Lcom/bytedance/embedapplog/ax;->n:Lorg/json/JSONArray;

    .line 117
    iput-object p1, p0, Lcom/bytedance/embedapplog/ax;->k:Lorg/json/JSONArray;

    .line 118
    iput-object p1, p0, Lcom/bytedance/embedapplog/ax;->l:Lorg/json/JSONArray;

    .line 119
    iput-object p1, p0, Lcom/bytedance/embedapplog/ax;->q:Lorg/json/JSONArray;

    .line 120
    return-object p0
.end method

.method a(JLorg/json/JSONObject;Lcom/bytedance/embedapplog/aw;Lcom/bytedance/embedapplog/ba;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .registers 10

    .line 81
    iput-wide p1, p0, Lcom/bytedance/embedapplog/ax;->a:J

    .line 82
    iput-object p3, p0, Lcom/bytedance/embedapplog/ax;->p:Lorg/json/JSONObject;

    .line 83
    iput-object p4, p0, Lcom/bytedance/embedapplog/ax;->m:Lcom/bytedance/embedapplog/aw;

    .line 84
    iput-object p5, p0, Lcom/bytedance/embedapplog/ax;->o:Lcom/bytedance/embedapplog/ba;

    .line 85
    const-string p1, "autoChina"

    const-string p2, "Base"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1e

    .line 86
    const-string p2, "base"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_1e

    .line 90
    :cond_1b
    iput-object p6, p0, Lcom/bytedance/embedapplog/ax;->n:Lorg/json/JSONArray;

    goto :goto_21

    .line 88
    :cond_1e
    :goto_1e
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/embedapplog/ax;->n:Lorg/json/JSONArray;

    .line 92
    :goto_21
    iput-object p7, p0, Lcom/bytedance/embedapplog/ax;->k:Lorg/json/JSONArray;

    .line 93
    iput-object p8, p0, Lcom/bytedance/embedapplog/ax;->l:Lorg/json/JSONArray;

    .line 94
    iput-object p9, p0, Lcom/bytedance/embedapplog/ax;->q:Lorg/json/JSONArray;

    .line 95
    return-void
.end method

.method protected a(Landroid/content/ContentValues;)V
    .registers 4

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "local_time_ms"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 127
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/ax;->f()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/embedapplog/AppLog;->toEncryptByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 129
    const-string v1, "_data"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 130
    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .registers 2

    .line 174
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 175
    return-void
.end method

.method protected a()[Ljava/lang/String;
    .registers 9

    .line 99
    const-string v0, "local_time_ms"

    const-string v1, "integer"

    const-string v2, "_data"

    const-string v3, "blob"

    const-string v4, "_fail"

    const-string v5, "integer"

    const-string v6, "_full"

    const-string v7, "integer"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lorg/json/JSONObject;)Lcom/bytedance/embedapplog/aq;
    .registers 2

    .line 254
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 255
    return-object p1
.end method

.method protected b()Lorg/json/JSONObject;
    .registers 11

    .line 179
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 180
    const-string v1, "magic_tag"

    const-string v2, "ss_app_log"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    iget-object v1, p0, Lcom/bytedance/embedapplog/ax;->p:Lorg/json/JSONObject;

    const-string v2, "header"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    sget-object v1, Lcom/bytedance/embedapplog/ao;->a:Lorg/json/JSONObject;

    const-string v2, "time_sync"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    iget-object v1, p0, Lcom/bytedance/embedapplog/ax;->m:Lcom/bytedance/embedapplog/aw;

    if-eqz v1, :cond_31

    .line 185
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 186
    iget-object v2, p0, Lcom/bytedance/embedapplog/ax;->m:Lcom/bytedance/embedapplog/aw;

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/aw;->f()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 187
    const-string v2, "launch"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    :cond_31
    iget-object v1, p0, Lcom/bytedance/embedapplog/ax;->o:Lcom/bytedance/embedapplog/ba;

    const/4 v2, 0x0

    if-eqz v1, :cond_9a

    .line 191
    invoke-virtual {v1}, Lcom/bytedance/embedapplog/ba;->f()Lorg/json/JSONObject;

    move-result-object v1

    .line 195
    iget-object v3, p0, Lcom/bytedance/embedapplog/ax;->n:Lorg/json/JSONArray;

    if-eqz v3, :cond_43

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    goto :goto_44

    :cond_43
    move v3, v2

    .line 196
    :goto_44
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 197
    move v5, v2

    :goto_4a
    if-ge v5, v3, :cond_86

    .line 198
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 199
    new-instance v7, Lorg/json/JSONObject;

    new-instance v8, Lorg/json/JSONObject;

    iget-object v9, p0, Lcom/bytedance/embedapplog/ax;->n:Lorg/json/JSONArray;

    .line 200
    invoke-virtual {v9, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "params"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 201
    const-string v8, "page_key"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v2, v8}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 202
    const-string v8, "duration"

    invoke-virtual {v7, v8, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    add-int/lit16 v7, v7, 0x3e7

    div-int/lit16 v7, v7, 0x3e8

    const/4 v8, 0x1

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 203
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 197
    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    .line 205
    :cond_86
    if-lez v3, :cond_8d

    .line 206
    const-string v3, "activites"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    :cond_8d
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 211
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 212
    const-string v1, "terminate"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    :cond_9a
    iget-object v1, p0, Lcom/bytedance/embedapplog/ax;->k:Lorg/json/JSONArray;

    if-eqz v1, :cond_a3

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    goto :goto_a4

    :cond_a3
    move v1, v2

    .line 216
    :goto_a4
    if-lez v1, :cond_ad

    .line 217
    iget-object v3, p0, Lcom/bytedance/embedapplog/ax;->k:Lorg/json/JSONArray;

    const-string v4, "event"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    :cond_ad
    iget-object v3, p0, Lcom/bytedance/embedapplog/ax;->n:Lorg/json/JSONArray;

    if-eqz v3, :cond_b6

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    goto :goto_b7

    :cond_b6
    move v3, v2

    .line 221
    :goto_b7
    iget-object v4, p0, Lcom/bytedance/embedapplog/ax;->l:Lorg/json/JSONArray;

    if-nez v4, :cond_c0

    .line 222
    iget-object v4, p0, Lcom/bytedance/embedapplog/ax;->n:Lorg/json/JSONArray;

    iput-object v4, p0, Lcom/bytedance/embedapplog/ax;->l:Lorg/json/JSONArray;

    goto :goto_d3

    .line 223
    :cond_c0
    if-lez v3, :cond_d3

    .line 224
    move v4, v2

    :goto_c3
    if-ge v4, v3, :cond_d3

    .line 225
    iget-object v5, p0, Lcom/bytedance/embedapplog/ax;->l:Lorg/json/JSONArray;

    iget-object v6, p0, Lcom/bytedance/embedapplog/ax;->n:Lorg/json/JSONArray;

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 224
    add-int/lit8 v4, v4, 0x1

    goto :goto_c3

    .line 229
    :cond_d3
    :goto_d3
    iget-object v4, p0, Lcom/bytedance/embedapplog/ax;->l:Lorg/json/JSONArray;

    if-eqz v4, :cond_dc

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    goto :goto_dd

    :cond_dc
    move v4, v2

    .line 230
    :goto_dd
    if-lez v4, :cond_e6

    .line 231
    iget-object v5, p0, Lcom/bytedance/embedapplog/ax;->l:Lorg/json/JSONArray;

    const-string v6, "event_v3"

    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    :cond_e6
    iget-object v5, p0, Lcom/bytedance/embedapplog/ax;->q:Lorg/json/JSONArray;

    if-eqz v5, :cond_ee

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 236
    :cond_ee
    if-lez v2, :cond_f7

    .line 237
    iget-object v5, p0, Lcom/bytedance/embedapplog/ax;->q:Lorg/json/JSONArray;

    const-string v6, "log_data"

    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    :cond_f7
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wP {"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    iget-object v6, p0, Lcom/bytedance/embedapplog/ax;->m:Lcom/bytedance/embedapplog/aw;

    if-eqz v6, :cond_103

    goto :goto_105

    :cond_103
    const-string v6, "la"

    :goto_105
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/embedapplog/ax;->o:Lcom/bytedance/embedapplog/ba;

    if-eqz v7, :cond_113

    goto :goto_115

    :cond_113
    const-string v7, "te"

    :goto_115
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    const-string v6, ", p: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    const-string v3, ", v1: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    const-string v1, ", v3: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const-string v1, ", m: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/bytedance/embedapplog/bo;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    return-object v0
.end method

.method d()Ljava/lang/String;
    .registers 2

    .line 261
    const-string v0, "pack"

    return-object v0
.end method
