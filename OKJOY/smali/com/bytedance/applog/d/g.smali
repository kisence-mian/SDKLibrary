.class public Lcom/bytedance/applog/d/g;
.super Lcom/bytedance/applog/d/a;
.source "SourceFile"


# instance fields
.field public h:[B

.field i:I

.field public j:I

.field private k:Lorg/json/JSONArray;

.field private l:Lorg/json/JSONArray;

.field private m:Lcom/bytedance/applog/d/f;

.field private n:Lorg/json/JSONArray;

.field private o:Lcom/bytedance/applog/d/j;

.field private p:Lorg/json/JSONObject;

.field private q:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/bytedance/applog/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lcom/bytedance/applog/d/a;
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

    iput-wide v0, p0, Lcom/bytedance/applog/d/g;->a:J

    .line 111
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/applog/d/g;->h:[B

    .line 112
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/applog/d/g;->i:I

    .line 113
    iput-object v2, p0, Lcom/bytedance/applog/d/g;->p:Lorg/json/JSONObject;

    .line 114
    iput-object v2, p0, Lcom/bytedance/applog/d/g;->m:Lcom/bytedance/applog/d/f;

    .line 115
    iput-object v2, p0, Lcom/bytedance/applog/d/g;->o:Lcom/bytedance/applog/d/j;

    .line 116
    iput-object v2, p0, Lcom/bytedance/applog/d/g;->n:Lorg/json/JSONArray;

    .line 117
    iput-object v2, p0, Lcom/bytedance/applog/d/g;->k:Lorg/json/JSONArray;

    .line 118
    iput-object v2, p0, Lcom/bytedance/applog/d/g;->l:Lorg/json/JSONArray;

    .line 119
    iput-object v2, p0, Lcom/bytedance/applog/d/g;->q:Lorg/json/JSONArray;

    .line 120
    return-object p0
.end method

.method a(JLorg/json/JSONObject;Lcom/bytedance/applog/d/f;Lcom/bytedance/applog/d/j;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .registers 13

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/bytedance/applog/d/g;->a:J

    .line 82
    iput-object p3, p0, Lcom/bytedance/applog/d/g;->p:Lorg/json/JSONObject;

    .line 83
    iput-object p4, p0, Lcom/bytedance/applog/d/g;->m:Lcom/bytedance/applog/d/f;

    .line 84
    iput-object p5, p0, Lcom/bytedance/applog/d/g;->o:Lcom/bytedance/applog/d/j;

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

    iput-object v0, p0, Lcom/bytedance/applog/d/g;->n:Lorg/json/JSONArray;

    .line 92
    :goto_1f
    iput-object p7, p0, Lcom/bytedance/applog/d/g;->k:Lorg/json/JSONArray;

    .line 93
    iput-object p8, p0, Lcom/bytedance/applog/d/g;->l:Lorg/json/JSONArray;

    .line 94
    iput-object p9, p0, Lcom/bytedance/applog/d/g;->q:Lorg/json/JSONArray;

    .line 95
    return-void

    .line 90
    :cond_26
    iput-object p6, p0, Lcom/bytedance/applog/d/g;->n:Lorg/json/JSONArray;

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
    invoke-virtual {p0}, Lcom/bytedance/applog/d/g;->i()[B

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
    .line 208
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    .line 209
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

.method protected b(Lorg/json/JSONObject;)Lcom/bytedance/applog/d/a;
    .registers 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 288
    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    .line 289
    return-object v0
.end method

.method protected b()Lorg/json/JSONObject;
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 213
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 214
    const-string v0, "magic_tag"

    const-string v2, "ss_app_log"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    const-string v0, "header"

    iget-object v2, p0, Lcom/bytedance/applog/d/g;->p:Lorg/json/JSONObject;

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    const-string v0, "time_sync"

    sget-object v2, Lcom/bytedance/applog/c/a;->a:Lorg/json/JSONObject;

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    iget-object v0, p0, Lcom/bytedance/applog/d/g;->m:Lcom/bytedance/applog/d/f;

    if-eqz v0, :cond_32

    .line 219
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 220
    iget-object v2, p0, Lcom/bytedance/applog/d/g;->m:Lcom/bytedance/applog/d/f;

    invoke-virtual {v2}, Lcom/bytedance/applog/d/f;->f()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 221
    const-string v2, "launch"

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    :cond_32
    iget-object v0, p0, Lcom/bytedance/applog/d/g;->o:Lcom/bytedance/applog/d/j;

    if-eqz v0, :cond_9e

    .line 225
    iget-object v0, p0, Lcom/bytedance/applog/d/g;->o:Lcom/bytedance/applog/d/j;

    invoke-virtual {v0}, Lcom/bytedance/applog/d/j;->f()Lorg/json/JSONObject;

    move-result-object v3

    .line 229
    iget-object v0, p0, Lcom/bytedance/applog/d/g;->n:Lorg/json/JSONArray;

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/bytedance/applog/d/g;->n:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 230
    :goto_46
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move v2, v1

    .line 231
    :goto_4c
    if-ge v2, v0, :cond_8a

    .line 232
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 233
    new-instance v7, Lorg/json/JSONObject;

    new-instance v8, Lorg/json/JSONObject;

    iget-object v9, p0, Lcom/bytedance/applog/d/g;->n:Lorg/json/JSONArray;

    .line 234
    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "params"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 235
    const-string v8, "page_key"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v1, v8}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 236
    const/4 v8, 0x1

    const-string v9, "duration"

    invoke-virtual {v7, v9, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    add-int/lit16 v7, v7, 0x3e7

    div-int/lit16 v7, v7, 0x3e8

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 237
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    :cond_88
    move v0, v1

    .line 229
    goto :goto_46

    .line 239
    :cond_8a
    if-lez v0, :cond_91

    .line 240
    const-string v0, "activites"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    :cond_91
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 245
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 246
    const-string v2, "terminate"

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    :cond_9e
    iget-object v0, p0, Lcom/bytedance/applog/d/g;->k:Lorg/json/JSONArray;

    if-eqz v0, :cond_144

    iget-object v0, p0, Lcom/bytedance/applog/d/g;->k:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    move v4, v0

    .line 250
    :goto_a9
    if-lez v4, :cond_b2

    .line 251
    const-string v0, "event"

    iget-object v2, p0, Lcom/bytedance/applog/d/g;->k:Lorg/json/JSONArray;

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    :cond_b2
    iget-object v0, p0, Lcom/bytedance/applog/d/g;->n:Lorg/json/JSONArray;

    if-eqz v0, :cond_147

    iget-object v0, p0, Lcom/bytedance/applog/d/g;->n:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 255
    :goto_bc
    iget-object v2, p0, Lcom/bytedance/applog/d/g;->l:Lorg/json/JSONArray;

    if-nez v2, :cond_14a

    .line 256
    iget-object v2, p0, Lcom/bytedance/applog/d/g;->n:Lorg/json/JSONArray;

    iput-object v2, p0, Lcom/bytedance/applog/d/g;->l:Lorg/json/JSONArray;

    .line 263
    :cond_c4
    iget-object v2, p0, Lcom/bytedance/applog/d/g;->l:Lorg/json/JSONArray;

    if-eqz v2, :cond_15d

    iget-object v2, p0, Lcom/bytedance/applog/d/g;->l:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    move v3, v2

    .line 264
    :goto_cf
    if-lez v3, :cond_d8

    .line 265
    const-string v2, "event_v3"

    iget-object v6, p0, Lcom/bytedance/applog/d/g;->l:Lorg/json/JSONArray;

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    :cond_d8
    iget-object v2, p0, Lcom/bytedance/applog/d/g;->q:Lorg/json/JSONArray;

    if-eqz v2, :cond_160

    iget-object v1, p0, Lcom/bytedance/applog/d/g;->q:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    move v2, v1

    .line 270
    :goto_e3
    if-lez v2, :cond_ec

    .line 271
    const-string v1, "log_data"

    iget-object v6, p0, Lcom/bytedance/applog/d/g;->q:Lorg/json/JSONArray;

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    :cond_ec
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v1, "wP {"

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/bytedance/applog/d/g;->m:Lcom/bytedance/applog/d/f;

    if-eqz v1, :cond_162

    iget-object v1, p0, Lcom/bytedance/applog/d/g;->m:Lcom/bytedance/applog/d/f;

    :goto_f9
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    const-string v1, ", "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v1, p0, Lcom/bytedance/applog/d/g;->o:Lcom/bytedance/applog/d/j;

    if-eqz v1, :cond_165

    iget-object v1, p0, Lcom/bytedance/applog/d/g;->o:Lcom/bytedance/applog/d/j;

    :goto_108
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    const-string v1, ", p: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    const-string v0, ", v1: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    const-string v0, ", v3: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const-string v0, ", m: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/applog/util/i;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    return-object v5

    :cond_144
    move v4, v1

    .line 249
    goto/16 :goto_a9

    :cond_147
    move v0, v1

    .line 254
    goto/16 :goto_bc

    .line 257
    :cond_14a
    if-lez v0, :cond_c4

    move v2, v1

    .line 258
    :goto_14d
    if-ge v2, v0, :cond_c4

    .line 259
    iget-object v3, p0, Lcom/bytedance/applog/d/g;->l:Lorg/json/JSONArray;

    iget-object v6, p0, Lcom/bytedance/applog/d/g;->n:Lorg/json/JSONArray;

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 258
    add-int/lit8 v2, v2, 0x1

    goto :goto_14d

    :cond_15d
    move v3, v1

    .line 263
    goto/16 :goto_cf

    :cond_160
    move v2, v1

    .line 269
    goto :goto_e3

    .line 275
    :cond_162
    const-string v1, "la"

    goto :goto_f9

    .line 276
    :cond_165
    const-string v1, "te"

    goto :goto_108
.end method

.method d()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 295
    const-string v0, "pack"

    return-object v0
.end method

.method public i()[B
    .registers 5

    .prologue
    .line 138
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x2000

    invoke-direct {v3, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 139
    const/4 v2, 0x0

    .line 141
    :try_start_8
    invoke-virtual {p0}, Lcom/bytedance/applog/d/g;->f()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getEncryptAndCompress()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 143
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1b} :catch_49
    .catchall {:try_start_8 .. :try_end_1b} :catchall_59

    .line 144
    :try_start_1b
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_24} :catch_68
    .catchall {:try_start_1b .. :try_end_24} :catchall_65

    .line 151
    :goto_24
    if-eqz v1, :cond_29

    .line 153
    :try_start_26
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_44

    .line 159
    :cond_29
    :goto_29
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 160
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getEncryptAndCompress()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 161
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/bytedance/applog/util/TTEncryptUtils;->a([BI)[B

    move-result-object v0

    .line 163
    :cond_38
    return-object v0

    .line 146
    :cond_39
    :try_start_39
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_42} :catch_49
    .catchall {:try_start_39 .. :try_end_42} :catchall_59

    move-object v1, v2

    goto :goto_24

    .line 154
    :catch_44
    move-exception v0

    .line 155
    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_29

    .line 148
    :catch_49
    move-exception v0

    move-object v1, v2

    .line 149
    :goto_4b
    :try_start_4b
    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_65

    .line 151
    if-eqz v1, :cond_29

    .line 153
    :try_start_50
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    goto :goto_29

    .line 154
    :catch_54
    move-exception v0

    .line 155
    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_29

    .line 151
    :catchall_59
    move-exception v0

    :goto_5a
    if-eqz v2, :cond_5f

    .line 153
    :try_start_5c
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    .line 156
    :cond_5f
    :goto_5f
    throw v0

    .line 154
    :catch_60
    move-exception v1

    .line 155
    invoke-static {v1}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_5f

    .line 151
    :catchall_65
    move-exception v0

    move-object v2, v1

    goto :goto_5a

    .line 148
    :catch_68
    move-exception v0

    goto :goto_4b
.end method

.method public j()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 171
    .line 174
    :try_start_1
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getEncryptAndCompress()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 175
    iget-object v1, p0, Lcom/bytedance/applog/d/g;->h:[B

    iget-object v2, p0, Lcom/bytedance/applog/d/g;->h:[B

    array-length v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/applog/util/TTEncryptUtils;->b([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/applog/d/g;->h:[B

    .line 176
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/bytedance/applog/d/g;->h:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1e} :catch_4a
    .catchall {:try_start_1 .. :try_end_1e} :catchall_5f

    .line 180
    :goto_1e
    const/16 v1, 0x2000

    :try_start_20
    new-array v1, v1, [B

    .line 182
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_27} :catch_7e
    .catchall {:try_start_20 .. :try_end_27} :catchall_78

    .line 183
    :goto_27
    :try_start_27
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4e

    .line 184
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_32} :catch_33
    .catchall {:try_start_27 .. :try_end_32} :catchall_7c

    goto :goto_27

    .line 187
    :catch_33
    move-exception v1

    .line 188
    :goto_34
    :try_start_34
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_7c

    .line 190
    if-eqz v3, :cond_3c

    .line 192
    :try_start_39
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_70

    .line 196
    :cond_3c
    :goto_3c
    if-eqz v2, :cond_41

    .line 198
    :try_start_3e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_72

    .line 203
    :cond_41
    :goto_41
    return-object v0

    .line 178
    :cond_42
    :try_start_42
    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/bytedance/applog/d/g;->h:[B

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_49} :catch_4a
    .catchall {:try_start_42 .. :try_end_49} :catchall_5f

    goto :goto_1e

    .line 187
    :catch_4a
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_34

    .line 186
    :cond_4e
    :try_start_4e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_33
    .catchall {:try_start_4e .. :try_end_51} :catchall_7c

    move-result-object v0

    .line 190
    if-eqz v3, :cond_57

    .line 192
    :try_start_54
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_6e

    .line 196
    :cond_57
    :goto_57
    if-eqz v2, :cond_41

    .line 198
    :try_start_59
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_41

    .line 199
    :catch_5d
    move-exception v1

    goto :goto_41

    .line 190
    :catchall_5f
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_63
    if-eqz v3, :cond_68

    .line 192
    :try_start_65
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_74

    .line 196
    :cond_68
    :goto_68
    if-eqz v2, :cond_6d

    .line 198
    :try_start_6a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_76

    .line 200
    :cond_6d
    :goto_6d
    throw v0

    .line 193
    :catch_6e
    move-exception v1

    goto :goto_57

    :catch_70
    move-exception v1

    goto :goto_3c

    .line 199
    :catch_72
    move-exception v1

    goto :goto_41

    .line 193
    :catch_74
    move-exception v1

    goto :goto_68

    .line 199
    :catch_76
    move-exception v1

    goto :goto_6d

    .line 190
    :catchall_78
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_63

    :catchall_7c
    move-exception v0

    goto :goto_63

    .line 187
    :catch_7e
    move-exception v1

    move-object v2, v0

    goto :goto_34
.end method
