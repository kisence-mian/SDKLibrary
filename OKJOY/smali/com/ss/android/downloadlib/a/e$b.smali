.class Lcom/ss/android/downloadlib/a/e$b;
.super Ljava/lang/Object;
.source "ChunkCalculatorFactory.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/e$b;->b:Ljava/util/ArrayList;

    .line 202
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a/e$b;->a(Lorg/json/JSONObject;)V

    .line 203
    return-void
.end method

.method private a(I)I
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 265
    move v1, v2

    :goto_3
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    .line 266
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 267
    aget v4, v0, v3

    if-lt p1, v4, :cond_1f

    const/4 v4, 0x2

    aget v4, v0, v4

    if-ge p1, v4, :cond_1f

    .line 268
    aget v0, v0, v2

    .line 271
    :goto_1e
    return v0

    .line 265
    :cond_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_23
    move v0, v3

    .line 271
    goto :goto_1e
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 4

    .prologue
    .line 206
    const-string v0, "is_open_exp"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ss/android/downloadlib/a/e$b;->a:I

    .line 207
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a/e$b;->b(Lorg/json/JSONObject;)V

    .line 208
    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .registers 15

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v1, 0x0

    const/4 v10, 0x5

    const/4 v3, 0x1

    .line 229
    if-eqz p1, :cond_f

    const-string v0, "download_chunk_config"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 262
    :cond_f
    return-void

    .line 233
    :cond_10
    const-string v0, "download_chunk_config"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 234
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 237
    const/4 v2, 0x0

    .line 239
    :try_start_21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_26} :catch_5c

    .line 243
    :goto_26
    if-eqz v0, :cond_f

    .line 246
    new-array v4, v10, [Ljava/lang/String;

    .line 247
    new-array v5, v10, [[Ljava/lang/String;

    .line 248
    const-string v2, "download_chunk_1"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 249
    const-string v2, "download_chunk_2"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v11

    .line 250
    const-string v2, "download_chunk_3"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v12

    .line 251
    const/4 v2, 0x4

    const-string v6, "download_chunk_4"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    move v2, v3

    .line 252
    :goto_4e
    if-ge v2, v10, :cond_f

    .line 253
    aget-object v0, v4, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 252
    :cond_58
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4e

    .line 240
    :catch_5c
    move-exception v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    goto :goto_26

    .line 256
    :cond_62
    aget-object v0, v4, v2

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    move v0, v1

    .line 257
    :goto_6d
    aget-object v6, v5, v2

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_58

    .line 259
    iget-object v6, p0, Lcom/ss/android/downloadlib/a/e$b;->b:Ljava/util/ArrayList;

    new-array v7, v12, [I

    aput v2, v7, v1

    aget-object v8, v5, v2

    aget-object v8, v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v3

    aget-object v8, v5, v2

    add-int/lit8 v9, v0, 0x1

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v11

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    add-int/lit8 v0, v0, 0x2

    goto :goto_6d
.end method


# virtual methods
.method public a(J)I
    .registers 6

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/a/e$b;->a()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/downloadlib/a/e$b;->b(J)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 213
    const-wide/32 v0, 0x100000

    div-long v0, p1, v0

    long-to-int v0, v0

    .line 214
    invoke-direct {p0, v0}, Lcom/ss/android/downloadlib/a/e$b;->a(I)I

    move-result v0

    .line 216
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x1

    goto :goto_16
.end method

.method public a()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 225
    iget v1, p0, Lcom/ss/android/downloadlib/a/e$b;->a:I

    if-eq v1, v0, :cond_a

    iget v1, p0, Lcom/ss/android/downloadlib/a/e$b;->a:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected b(J)Z
    .registers 4

    .prologue
    .line 221
    const/4 v0, 0x1

    return v0
.end method
