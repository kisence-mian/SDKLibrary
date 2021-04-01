.class public abstract Lcom/mintegral/msdk/base/common/net/d;
.super Ljava/lang/Object;
.source "CommonBaseResponseHandler.java"

# interfaces
.implements Lcom/mintegral/msdk/base/common/net/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/base/common/net/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mintegral/msdk/base/common/net/g;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/mintegral/msdk/base/common/net/d$a;

.field private c:J

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 83
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/base/common/net/d;-><init>(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 93
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/net/d;->d:Ljava/lang/String;

    .line 97
    :goto_d
    return-void

    .line 95
    :cond_e
    iput-object p1, p0, Lcom/mintegral/msdk/base/common/net/d;->d:Ljava/lang/String;

    goto :goto_d
.end method

.method private varargs a(I[Ljava/lang/Object;)Landroid/os/Message;
    .registers 4

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/mintegral/msdk/base/common/net/d;->a:Z

    if-eqz v0, :cond_f

    .line 271
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/d;->b:Lcom/mintegral/msdk/base/common/net/d$a;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 275
    :goto_a
    iput p1, v0, Landroid/os/Message;->what:I

    .line 276
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 277
    return-object v0

    .line 273
    :cond_f
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    goto :goto_a
.end method

.method private a(Landroid/os/Message;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 209
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 211
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_50

    .line 244
    :goto_b
    :pswitch_b
    return-void

    .line 213
    :pswitch_c
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/common/net/d;->a()V

    goto :goto_b

    .line 216
    :pswitch_10
    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/common/net/d;->a(Ljava/lang/Object;)V

    goto :goto_b

    .line 219
    :pswitch_16
    aget-object v1, v0, v2

    if-eqz v1, :cond_24

    .line 220
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/common/net/d;->a(Ljava/lang/String;)V

    goto :goto_b

    .line 222
    :cond_24
    const-string v0, "network error  msg is null"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/common/net/d;->a(Ljava/lang/String;)V

    goto :goto_b

    .line 229
    :pswitch_2a
    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    goto :goto_b

    .line 235
    :pswitch_32
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    goto :goto_b

    .line 238
    :pswitch_41
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    goto :goto_b

    .line 211
    :pswitch_data_50
    .packed-switch 0x64
        :pswitch_c
        :pswitch_10
        :pswitch_16
        :pswitch_b
        :pswitch_2a
        :pswitch_b
        :pswitch_41
        :pswitch_32
    .end packed-switch
.end method

.method static synthetic a(Lcom/mintegral/msdk/base/common/net/d;Landroid/os/Message;)V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/common/net/d;->a(Landroid/os/Message;)V

    return-void
.end method

.method private b(Landroid/os/Message;)V
    .registers 3

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/mintegral/msdk/base/common/net/d;->a:Z

    if-nez v0, :cond_8

    .line 253
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/common/net/d;->a(Landroid/os/Message;)V

    .line 259
    :cond_7
    :goto_7
    return-void

    .line 254
    :cond_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 255
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 257
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/d;->b:Lcom/mintegral/msdk/base/common/net/d$a;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/base/common/net/d$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7
.end method


# virtual methods
.method protected a(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 407
    const-string v0, ""

    .line 409
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/mintegral/msdk/base/common/net/d;->c(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_24

    move-result-object v2

    .line 410
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_3e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_3c

    .line 418
    :goto_c
    return-object v0

    .line 412
    :catch_d
    move-exception v2

    :goto_e
    const-string v2, "BaseResponseHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wrong json  : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 413
    goto :goto_c

    .line 416
    :catch_24
    move-exception v2

    move-object v2, v0

    :goto_26
    const-string v0, "BaseResponseHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wrong json : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 418
    goto :goto_c

    .line 416
    :catch_3c
    move-exception v0

    goto :goto_26

    .line 412
    :catch_3e
    move-exception v0

    move-object v0, v2

    goto :goto_e
.end method

.method public a()V
    .registers 1

    .prologue
    .line 104
    return-void
.end method

.method public final a(II)V
    .registers 7

    .prologue
    .line 321
    if-lez p2, :cond_31

    if-ltz p1, :cond_31

    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mintegral/msdk/base/common/net/d;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_31

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mintegral/msdk/base/common/net/d;->c:J

    .line 325
    const/16 v0, 0x6a

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 327
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 328
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 325
    invoke-direct {p0, v0, v1}, Lcom/mintegral/msdk/base/common/net/d;->a(I[Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/base/common/net/d;->b(Landroid/os/Message;)V

    .line 331
    :cond_31
    return-void
.end method

.method public final a(ILjava/lang/Exception;)V
    .registers 7

    .prologue
    .line 310
    const/16 v0, 0x68

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 311
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 310
    invoke-direct {p0, v0, v1}, Lcom/mintegral/msdk/base/common/net/d;->a(I[Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/base/common/net/d;->b(Landroid/os/Message;)V

    .line 312
    return-void
.end method

.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public final a([Lorg/apache/http/Header;Ljava/lang/Object;)V
    .registers 6

    .prologue
    .line 293
    const/16 v0, 0x65

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/mintegral/msdk/base/common/net/d;->a(I[Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/base/common/net/d;->b(Landroid/os/Message;)V

    .line 295
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 288
    const/16 v0, 0x64

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/mintegral/msdk/base/common/net/d;->a(I[Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/base/common/net/d;->b(Landroid/os/Message;)V

    .line 289
    return-void
.end method

.method protected final c(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    const-string v0, ""

    .line 389
    if-eqz p1, :cond_a

    .line 390
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/d;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    :cond_a
    return-object v0
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 305
    const/16 v0, 0x67

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/mintegral/msdk/base/common/net/d;->a(I[Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/base/common/net/d;->b(Landroid/os/Message;)V

    .line 306
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 299
    const/16 v0, 0x66

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/mintegral/msdk/base/common/net/d;->a(I[Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/base/common/net/d;->b(Landroid/os/Message;)V

    .line 301
    return-void
.end method

.method protected final d(Lorg/apache/http/HttpEntity;)Lorg/json/JSONArray;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/mintegral/msdk/base/common/net/d;->c(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final d()V
    .registers 3

    .prologue
    .line 316
    const/16 v0, 0x69

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/mintegral/msdk/base/common/net/d;->a(I[Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/base/common/net/d;->b(Landroid/os/Message;)V

    .line 317
    return-void
.end method

.method final e()V
    .registers 2

    .prologue
    .line 362
    new-instance v0, Lcom/mintegral/msdk/base/common/net/d$a;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/common/net/d$a;-><init>(Lcom/mintegral/msdk/base/common/net/d;)V

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/net/d;->b:Lcom/mintegral/msdk/base/common/net/d$a;

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/base/common/net/d;->a:Z

    .line 364
    return-void
.end method
