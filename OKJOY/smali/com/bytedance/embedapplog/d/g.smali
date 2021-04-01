.class public Lcom/bytedance/embedapplog/d/g;
.super Lcom/bytedance/embedapplog/d/a;
.source "SourceFile"


# instance fields
.field public h:[B

.field i:I

.field public j:I

.field private k:Lorg/json/JSONArray;

.field private l:Lorg/json/JSONArray;

.field private m:Lcom/bytedance/embedapplog/d/f;

.field private n:Lorg/json/JSONArray;

.field private o:Lcom/bytedance/embedapplog/d/j;

.field private p:Lorg/json/JSONObject;

.field private q:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/bytedance/embedapplog/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lcom/bytedance/embedapplog/d/a;
    .registers 5
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 110
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/d/g;->a:J

    .line 111
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/g;->h:[B

    .line 112
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/embedapplog/d/g;->i:I

    .line 113
    iput-object v2, p0, Lcom/bytedance/embedapplog/d/g;->p:Lorg/json/JSONObject;

    .line 114
    iput-object v2, p0, Lcom/bytedance/embedapplog/d/g;->m:Lcom/bytedance/embedapplog/d/f;

    .line 115
    iput-object v2, p0, Lcom/bytedance/embedapplog/d/g;->o:Lcom/bytedance/embedapplog/d/j;

    .line 116
    iput-object v2, p0, Lcom/bytedance/embedapplog/d/g;->n:Lorg/json/JSONArray;

    .line 117
    iput-object v2, p0, Lcom/bytedance/embedapplog/d/g;->k:Lorg/json/JSONArray;

    .line 118
    iput-object v2, p0, Lcom/bytedance/embedapplog/d/g;->l:Lorg/json/JSONArray;

    .line 119
    iput-object v2, p0, Lcom/bytedance/embedapplog/d/g;->q:Lorg/json/JSONArray;

    .line 120
    return-object p0
.end method

.method a(JLorg/json/JSONObject;Lcom/bytedance/embedapplog/d/f;Lcom/bytedance/embedapplog/d/j;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .registers 13

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/bytedance/embedapplog/d/g;->a:J

    .line 82
    iput-object p3, p0, Lcom/bytedance/embedapplog/d/g;->p:Lorg/json/JSONObject;

    .line 83
    iput-object p4, p0, Lcom/bytedance/embedapplog/d/g;->m:Lcom/bytedance/embedapplog/d/f;

    .line 84
    iput-object p5, p0, Lcom/bytedance/embedapplog/d/g;->o:Lcom/bytedance/embedapplog/d/j;

    .line 85
    const-string v0, "baseChina"

    const-string v1, "Base"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "baseChina"

    const-string v1, "base"

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 88
    :cond_1c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/g;->n:Lorg/json/JSONArray;

    .line 92
    :goto_1f
    iput-object p7, p0, Lcom/bytedance/embedapplog/d/g;->k:Lorg/json/JSONArray;

    .line 93
    iput-object p8, p0, Lcom/bytedance/embedapplog/d/g;->l:Lorg/json/JSONArray;

    .line 94
    iput-object p9, p0, Lcom/bytedance/embedapplog/d/g;->q:Lorg/json/JSONArray;

    .line 95
    return-void

    .line 90
    :cond_26
    iput-object p6, p0, Lcom/bytedance/embedapplog/d/g;->n:Lorg/json/JSONArray;

    goto :goto_1f
.end method

.method protected a(Landroid/content/ContentValues;)V
    .registers 6
    .param p1    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 125
    const-string v0, "local_time_ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 127
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/d/g;->f()Lorg/json/JSONObject;

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
    .registers 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    .line 175
    return-void
.end method

.method protected a()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 99
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "local_time_ms"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "integer"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "blob"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_fail"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "integer"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_full"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "integer"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected b(Lorg/json/JSONObject;)Lcom/bytedance/embedapplog/d/a;
    .registers 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 254
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    .line 255
    return-object v0
.end method

.method protected b()Lorg/json/JSONObject;
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 179
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 180
    const-string v0, "magic_tag"

    const-string v2, "ss_app_log"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    const-string v0, "header"

    iget-object v2, p0, Lcom/bytedance/embedapplog/d/g;->p:Lorg/json/JSONObject;

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    const-string v0, "time_sync"

    sget-object v2, Lcom/bytedance/embedapplog/c/a;->a:Lorg/json/JSONObject;

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    iget-object v0, p0, Lcom/bytedance/embedapplog/d/g;->m:Lcom/bytedance/embedapplog/d/f;

    if-eqz v0, :cond_32

    .line 185
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 186
    iget-object v2, p0, Lcom/bytedance/embedapplog/d/g;->m:Lcom/bytedance/embedapplog/d/f;

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/d/f;->f()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 187
    const-string v2, "launch"

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    :cond_32
    iget-object v0, p0, Lcom/bytedance/embedapplog/d/g;->o:Lcom/bytedance/embedapplog/d/j;

    if-eqz v0, :cond_9e

    .line 191
    iget-object v0, p0, Lcom/bytedance/embedapplog/d/g;->o:Lcom/bytedance/embedapplog/d/j;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/d/j;->f()Lorg/json/JSONObject;

    move-result-object v3

    .line 195
    iget-object v0, p0, Lcom/bytedance/embedapplog/d/g;->n:Lorg/json/JSONArray;

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/bytedance/embedapplog/d/g;->n:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 196
    :goto_46
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move v2, v1

    .line 197
    :goto_4c
    if-ge v2, v0, :cond_8a

    .line 198
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 199
    new-instance v7, Lorg/json/JSONObject;

    new-instance v8, Lorg/json/JSONObject;

    iget-object v9, p0, Lcom/bytedance/embedapplog/d/g;->n:Lorg/json/JSONArray;

    .line 200
    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

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

    invoke-virtual {v6, v1, v8}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 202
    const/4 v8, 0x1

    const-string v9, "duration"

    invoke-virtual {v7, v9, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    add-int/lit16 v7, v7, 0x3e7

    div-int/lit16 v7, v7, 0x3e8

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 203
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    :cond_88
    move v0, v1

    .line 195
    goto :goto_46

    .line 205
    :cond_8a
    if-lez v0, :cond_91

    .line 206
    const-string v0, "activites"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    :cond_91
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 211
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 212
    const-string v2, "terminate"

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    :cond_9e
    iget-object v0, p0, Lcom/bytedance/embedapplog/d/g;->k:Lorg/json/JSONArray;

    if-eqz v0, :cond_144

    iget-object v0, p0, Lcom/bytedance/embedapplog/d/g;->k:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    move v4, v0

    .line 216
    :goto_a9
    if-lez v4, :cond_b2

    .line 217
    const-string v0, "event"

    iget-object v2, p0, Lcom/bytedance/embedapplog/d/g;->k:Lorg/json/JSONArray;

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    :cond_b2
    iget-object v0, p0, Lcom/bytedance/embedapplog/d/g;->n:Lorg/json/JSONArray;

    if-eqz v0, :cond_147

    iget-object v0, p0, Lcom/bytedance/embedapplog/d/g;->n:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 221
    :goto_bc
    iget-object v2, p0, Lcom/bytedance/embedapplog/d/g;->l:Lorg/json/JSONArray;

    if-nez v2, :cond_14a

    .line 222
    iget-object v2, p0, Lcom/bytedance/embedapplog/d/g;->n:Lorg/json/JSONArray;

    iput-object v2, p0, Lcom/bytedance/embedapplog/d/g;->l:Lorg/json/JSONArray;

    .line 229
    :cond_c4
    iget-object v2, p0, Lcom/bytedance/embedapplog/d/g;->l:Lorg/json/JSONArray;

    if-eqz v2, :cond_15d

    iget-object v2, p0, Lcom/bytedance/embedapplog/d/g;->l:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    move v3, v2

    .line 230
    :goto_cf
    if-lez v3, :cond_d8

    .line 231
    const-string v2, "event_v3"

    iget-object v6, p0, Lcom/bytedance/embedapplog/d/g;->l:Lorg/json/JSONArray;

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    :cond_d8
    iget-object v2, p0, Lcom/bytedance/embedapplog/d/g;->q:Lorg/json/JSONArray;

    if-eqz v2, :cond_160

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/g;->q:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    move v2, v1

    .line 236
    :goto_e3
    if-lez v2, :cond_ec

    .line 237
    const-string v1, "log_data"

    iget-object v6, p0, Lcom/bytedance/embedapplog/d/g;->q:Lorg/json/JSONArray;

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    :cond_ec
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v1, "wP {"

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/bytedance/embedapplog/d/g;->m:Lcom/bytedance/embedapplog/d/f;

    if-eqz v1, :cond_162

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/g;->m:Lcom/bytedance/embedapplog/d/f;

    :goto_f9
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    const-string v1, ", "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/g;->o:Lcom/bytedance/embedapplog/d/j;

    if-eqz v1, :cond_165

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/g;->o:Lcom/bytedance/embedapplog/d/j;

    :goto_108
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    const-string v1, ", p: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    const-string v0, ", v1: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    const-string v0, ", v3: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const-string v0, ", m: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/util/h;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    return-object v5

    :cond_144
    move v4, v1

    .line 215
    goto/16 :goto_a9

    :cond_147
    move v0, v1

    .line 220
    goto/16 :goto_bc

    .line 223
    :cond_14a
    if-lez v0, :cond_c4

    move v2, v1

    .line 224
    :goto_14d
    if-ge v2, v0, :cond_c4

    .line 225
    iget-object v3, p0, Lcom/bytedance/embedapplog/d/g;->l:Lorg/json/JSONArray;

    iget-object v6, p0, Lcom/bytedance/embedapplog/d/g;->n:Lorg/json/JSONArray;

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_14d

    :cond_15d
    move v3, v1

    .line 229
    goto/16 :goto_cf

    :cond_160
    move v2, v1

    .line 235
    goto :goto_e3

    .line 241
    :cond_162
    const-string v1, "la"

    goto :goto_f9

    .line 242
    :cond_165
    const-string v1, "te"

    goto :goto_108
.end method

.method d()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 261
    const-string v0, "pack"

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 137
    .line 140
    :try_start_1
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getEncryptAndCompress()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 141
    iget-object v1, p0, Lcom/bytedance/embedapplog/d/g;->h:[B

    iget-object v2, p0, Lcom/bytedance/embedapplog/d/g;->h:[B

    array-length v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/embedapplog/util/TTEncryptUtils;->b([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/embedapplog/d/g;->h:[B

    .line 142
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/bytedance/embedapplog/d/g;->h:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1e} :catch_4a
    .catchall {:try_start_1 .. :try_end_1e} :catchall_5f

    .line 146
    :goto_1e
    const/16 v1, 0x2000

    :try_start_20
    new-array v1, v1, [B

    .line 148
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_27} :catch_7e
    .catchall {:try_start_20 .. :try_end_27} :catchall_78

    .line 149
    :goto_27
    :try_start_27
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4e

    .line 150
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_32} :catch_33
    .catchall {:try_start_27 .. :try_end_32} :catchall_7c

    goto :goto_27

    .line 153
    :catch_33
    move-exception v1

    .line 154
    :goto_34
    :try_start_34
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_7c

    .line 156
    if-eqz v3, :cond_3c

    .line 158
    :try_start_39
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_70

    .line 162
    :cond_3c
    :goto_3c
    if-eqz v2, :cond_41

    .line 164
    :try_start_3e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_72

    .line 169
    :cond_41
    :goto_41
    return-object v0

    .line 144
    :cond_42
    :try_start_42
    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/g;->h:[B

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_49} :catch_4a
    .catchall {:try_start_42 .. :try_end_49} :catchall_5f

    goto :goto_1e

    .line 153
    :catch_4a
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_34

    .line 152
    :cond_4e
    :try_start_4e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_33
    .catchall {:try_start_4e .. :try_end_51} :catchall_7c

    move-result-object v0

    .line 156
    if-eqz v3, :cond_57

    .line 158
    :try_start_54
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_6e

    .line 162
    :cond_57
    :goto_57
    if-eqz v2, :cond_41

    .line 164
    :try_start_59
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_41

    .line 165
    :catch_5d
    move-exception v1

    goto :goto_41

    .line 156
    :catchall_5f
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_63
    if-eqz v3, :cond_68

    .line 158
    :try_start_65
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_74

    .line 162
    :cond_68
    :goto_68
    if-eqz v2, :cond_6d

    .line 164
    :try_start_6a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_76

    .line 166
    :cond_6d
    :goto_6d
    throw v0

    .line 159
    :catch_6e
    move-exception v1

    goto :goto_57

    :catch_70
    move-exception v1

    goto :goto_3c

    .line 165
    :catch_72
    move-exception v1

    goto :goto_41

    .line 159
    :catch_74
    move-exception v1

    goto :goto_68

    .line 165
    :catch_76
    move-exception v1

    goto :goto_6d

    .line 156
    :catchall_78
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_63

    :catchall_7c
    move-exception v0

    goto :goto_63

    .line 153
    :catch_7e
    move-exception v1

    move-object v2, v0

    goto :goto_34
.end method
