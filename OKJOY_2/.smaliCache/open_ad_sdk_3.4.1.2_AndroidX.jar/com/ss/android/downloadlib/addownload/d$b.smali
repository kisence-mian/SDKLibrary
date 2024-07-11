.class Lcom/ss/android/downloadlib/addownload/d$b;
.super Ljava/lang/Object;
.source "ChunkCalculatorFactory.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/addownload/d;
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
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/d$b;->b:Ljava/util/ArrayList;

    .line 207
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/d$b;->a(Lorg/json/JSONObject;)V

    .line 208
    return-void
.end method

.method private a(I)I
    .registers 6

    .line 282
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/d$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_22

    .line 283
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/d$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 284
    aget v3, v2, v3

    if-lt p1, v3, :cond_1f

    const/4 v3, 0x2

    aget v3, v2, v3

    if-ge p1, v3, :cond_1f

    .line 285
    aget p1, v2, v0

    return p1

    .line 282
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 288
    :cond_22
    return v3
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 4

    .line 211
    const-string v0, "is_open_exp"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ss/android/downloadlib/addownload/d$b;->a:I

    .line 212
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/d$b;->b(Lorg/json/JSONObject;)V

    .line 213
    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .registers 14

    .line 234
    if-eqz p1, :cond_a3

    const-string v0, "download_chunk_config"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_a3

    .line 238
    :cond_c
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 239
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 240
    return-void

    .line 242
    :cond_1b
    const/4 v0, 0x0

    .line 244
    :try_start_1c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_21} :catch_23

    .line 247
    move-object v0, v1

    goto :goto_27

    .line 245
    :catch_23
    move-exception p1

    .line 246
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 248
    :goto_27
    if-nez v0, :cond_2a

    .line 249
    return-void

    .line 251
    :cond_2a
    const/4 p1, 0x5

    new-array v1, p1, [Ljava/lang/String;

    .line 252
    new-array v2, p1, [[Ljava/lang/String;

    .line 253
    const-string v3, "download_chunk_1"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 254
    const-string v3, "download_chunk_2"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v1, v5

    .line 255
    const-string v3, "download_chunk_3"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x3

    aput-object v3, v1, v6

    .line 256
    const/4 v3, 0x4

    const-string v7, "download_chunk_4"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    .line 257
    move v0, v4

    :goto_54
    if-ge v0, p1, :cond_a2

    .line 258
    aget-object v3, v1, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 259
    goto :goto_9f

    .line 262
    :cond_5f
    :try_start_5f
    aget-object v3, v1, v0

    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_6a

    .line 265
    goto :goto_6e

    .line 263
    :catchall_6a
    move-exception v3

    .line 264
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 266
    :goto_6e
    const/4 v3, 0x0

    move v7, v3

    :goto_70
    aget-object v8, v2, v0

    array-length v8, v8

    sub-int/2addr v8, v4

    if-ge v7, v8, :cond_9f

    .line 267
    nop

    .line 268
    nop

    .line 270
    :try_start_78
    aget-object v8, v2, v0

    aget-object v8, v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 271
    aget-object v9, v2, v0

    add-int/lit8 v10, v7, 0x1

    aget-object v9, v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 273
    iget-object v10, p0, Lcom/ss/android/downloadlib/addownload/d$b;->b:Ljava/util/ArrayList;

    new-array v11, v6, [I

    aput v0, v11, v3

    aput v8, v11, v4

    aput v9, v11, v5

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_97
    .catchall {:try_start_78 .. :try_end_97} :catchall_98

    .line 276
    goto :goto_9c

    .line 274
    :catchall_98
    move-exception v8

    .line 275
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 266
    :goto_9c
    add-int/lit8 v7, v7, 0x2

    goto :goto_70

    .line 257
    :cond_9f
    :goto_9f
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    .line 279
    :cond_a2
    return-void

    .line 235
    :cond_a3
    :goto_a3
    return-void
.end method


# virtual methods
.method public a(J)I
    .registers 5

    .line 217
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/d$b;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/downloadlib/addownload/d$b;->b(J)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 218
    const-wide/32 v0, 0x100000

    div-long/2addr p1, v0

    long-to-int p1, p1

    .line 219
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/d$b;->a(I)I

    move-result p1

    return p1

    .line 221
    :cond_16
    const/4 p1, 0x1

    return p1
.end method

.method public a()Z
    .registers 4

    .line 230
    iget v0, p0, Lcom/ss/android/downloadlib/addownload/d$b;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x3

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_a
    return v1
.end method

.method protected b(J)Z
    .registers 3

    .line 226
    const/4 p1, 0x1

    return p1
.end method
