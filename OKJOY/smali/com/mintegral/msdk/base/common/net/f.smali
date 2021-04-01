.class public final Lcom/mintegral/msdk/base/common/net/f;
.super Lcom/mintegral/msdk/base/common/f/a;
.source "CommonHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/base/common/net/f$a;,
        Lcom/mintegral/msdk/base/common/net/f$d;,
        Lcom/mintegral/msdk/base/common/net/f$c;,
        Lcom/mintegral/msdk/base/common/net/f$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lorg/apache/http/client/methods/HttpRequestBase;

.field private c:Lcom/mintegral/msdk/base/common/net/g;

.field private d:Lcom/mintegral/msdk/base/common/net/k;

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Thread;

.field private g:Z

.field private k:Lcom/mintegral/msdk/base/common/net/h;

.field private l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;Lcom/mintegral/msdk/base/common/net/g;IIIZ)V
    .registers 9

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/f/a;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/net/f;->e:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/net/f;->l:Ljava/lang/ref/WeakReference;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/net/h;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/net/h;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/net/f;->k:Lcom/mintegral/msdk/base/common/net/h;

    .line 79
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/f;->k:Lcom/mintegral/msdk/base/common/net/h;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/common/net/h;->a()V

    .line 80
    iput-object p2, p0, Lcom/mintegral/msdk/base/common/net/f;->b:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 81
    iput-object p3, p0, Lcom/mintegral/msdk/base/common/net/f;->c:Lcom/mintegral/msdk/base/common/net/g;

    .line 82
    iput p4, p0, Lcom/mintegral/msdk/base/common/net/f;->a:I

    .line 83
    new-instance v0, Lcom/mintegral/msdk/base/common/net/k;

    invoke-direct {v0, p5, p6}, Lcom/mintegral/msdk/base/common/net/k;-><init>(II)V

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/net/f;->d:Lcom/mintegral/msdk/base/common/net/k;

    .line 85
    iput-boolean p7, p0, Lcom/mintegral/msdk/base/common/net/f;->g:Z

    .line 87
    return-void
.end method

.method private e()Lcom/mintegral/msdk/base/common/net/f$d;
    .registers 22

    .prologue
    .line 96
    new-instance v14, Lcom/mintegral/msdk/base/common/net/f$a;

    invoke-direct {v14}, Lcom/mintegral/msdk/base/common/net/f$a;-><init>()V

    .line 100
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 102
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mintegral/msdk/base/common/net/f;->f:Ljava/lang/Thread;

    .line 104
    new-instance v5, Lcom/mintegral/msdk/base/common/net/f$d;

    invoke-direct {v5}, Lcom/mintegral/msdk/base/common/net/f$d;-><init>()V

    .line 107
    invoke-direct/range {p0 .. p0}, Lcom/mintegral/msdk/base/common/net/f;->f()Z

    move-result v2

    if-nez v2, :cond_21

    .line 108
    const/4 v2, -0x2

    iput v2, v5, Lcom/mintegral/msdk/base/common/net/f$d;->a:I

    move-object v2, v5

    .line 289
    :goto_20
    return-object v2

    .line 111
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mintegral/msdk/base/common/net/f;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mintegral/msdk/base/common/net/f;->c:Lcom/mintegral/msdk/base/common/net/g;

    invoke-interface {v2}, Lcom/mintegral/msdk/base/common/net/g;->b()V

    .line 114
    :cond_32
    const-string v2, "CommonHttpRequest"

    const-string v3, "request is started"

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mintegral/msdk/base/common/net/f;->d:Lcom/mintegral/msdk/base/common/net/k;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/common/net/k;->a()V

    .line 119
    const/4 v3, 0x0

    .line 121
    const/4 v2, 0x1

    move-wide v6, v12

    .line 122
    :cond_43
    :goto_43
    if-eqz v2, :cond_3a2

    .line 123
    const-string v11, ""

    .line 124
    const/4 v9, 0x0

    .line 126
    const/4 v8, 0x0

    .line 128
    :try_start_49
    new-instance v10, Lcom/mintegral/msdk/base/common/net/i;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/base/common/net/f;->b:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/mintegral/msdk/base/common/net/f;->a:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mintegral/msdk/base/common/net/f;->k:Lcom/mintegral/msdk/base/common/net/h;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/mintegral/msdk/base/common/net/h;->c()Lcom/mintegral/msdk/base/common/net/j;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v10, v4, v15, v0}, Lcom/mintegral/msdk/base/common/net/i;-><init>(Ljava/lang/String;ILcom/mintegral/msdk/base/common/net/j;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_6a} :catch_42f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_49 .. :try_end_6a} :catch_414
    .catchall {:try_start_49 .. :try_end_6a} :catchall_3d0

    .line 130
    :try_start_6a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/base/common/net/f;->b:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v14, Lcom/mintegral/msdk/base/common/net/f$a;->a:Ljava/lang/String;

    .line 132
    new-instance v4, Lcom/mintegral/msdk/base/common/net/f$b;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v9}, Lcom/mintegral/msdk/base/common/net/f$b;-><init>(Lcom/mintegral/msdk/base/common/net/f;B)V

    invoke-virtual {v10, v4}, Lcom/mintegral/msdk/base/common/net/i;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 133
    new-instance v9, Lcom/mintegral/msdk/base/common/net/f$c;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v4}, Lcom/mintegral/msdk/base/common/net/f$c;-><init>(Lcom/mintegral/msdk/base/common/net/f;B)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_8b} :catch_433
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6a .. :try_end_8b} :catch_419
    .catchall {:try_start_6a .. :try_end_8b} :catchall_3d9

    .line 134
    :try_start_8b
    invoke-virtual {v10, v9}, Lcom/mintegral/msdk/base/common/net/i;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_438
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8b .. :try_end_8e} :catch_41d
    .catchall {:try_start_8b .. :try_end_8e} :catchall_3e2

    .line 139
    :try_start_8e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/base/common/net/f;->b:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v10, v4}, Lcom/mintegral/msdk/base/common/net/i;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_95} :catch_d6
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_95} :catch_438
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8e .. :try_end_95} :catch_41d
    .catchall {:try_start_8e .. :try_end_95} :catchall_3e2

    move-result-object v4

    move-object/from16 v20, v4

    move-object v4, v11

    move-object/from16 v11, v20

    .line 144
    :goto_9b
    if-eqz v11, :cond_30d

    .line 146
    :try_start_9d
    invoke-direct/range {p0 .. p0}, Lcom/mintegral/msdk/base/common/net/f;->f()Z

    move-result v8

    if-nez v8, :cond_f6

    .line 148
    const/4 v8, -0x2

    iput v8, v5, Lcom/mintegral/msdk/base/common/net/f$d;->a:I
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a6} :catch_1f7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9d .. :try_end_a6} :catch_2ba
    .catchall {:try_start_9d .. :try_end_a6} :catchall_3cb

    .line 254
    invoke-virtual {v9}, Lcom/mintegral/msdk/base/common/net/f$c;->a()Lcom/mintegral/msdk/base/common/net/f$c$a;

    move-result-object v6

    if-eqz v6, :cond_b3

    .line 255
    invoke-virtual {v9}, Lcom/mintegral/msdk/base/common/net/f$c;->a()Lcom/mintegral/msdk/base/common/net/f$c$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mintegral/msdk/base/common/net/f$c$a;->a()V

    .line 259
    :cond_b3
    invoke-virtual {v10}, Lcom/mintegral/msdk/base/common/net/i;->a()V

    .line 263
    if-eqz v2, :cond_ba

    if-nez v3, :cond_3a2

    .line 268
    :cond_ba
    if-nez v2, :cond_e2

    invoke-direct/range {p0 .. p0}, Lcom/mintegral/msdk/base/common/net/f;->f()Z

    move-result v2

    if-eqz v2, :cond_e2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mintegral/msdk/base/common/net/f;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_e2

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mintegral/msdk/base/common/net/f;->c:Lcom/mintegral/msdk/base/common/net/g;

    invoke-interface {v2, v4}, Lcom/mintegral/msdk/base/common/net/g;->c(Ljava/lang/String;)V

    :cond_d3
    :goto_d3
    move-object v2, v5

    .line 149
    goto/16 :goto_20

    .line 141
    :catch_d6
    move-exception v4

    :try_start_d7
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_da} :catch_438
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d7 .. :try_end_da} :catch_41d
    .catchall {:try_start_d7 .. :try_end_da} :catchall_3e2

    move-result-object v11

    .line 142
    const/4 v4, 0x0

    move-object/from16 v20, v4

    move-object v4, v11

    move-object/from16 v11, v20

    goto :goto_9b

    .line 270
    :cond_e2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mintegral/msdk/base/common/net/f;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_d3

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mintegral/msdk/base/common/net/f;->c:Lcom/mintegral/msdk/base/common/net/g;

    const-string v3, "http content is null"

    invoke-interface {v2, v3}, Lcom/mintegral/msdk/base/common/net/g;->c(Ljava/lang/String;)V

    goto :goto_d3

    .line 152
    :cond_f6
    :try_start_f6
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 155
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    sub-long v16, v16, v6

    const-wide/32 v18, 0xf4240

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/mintegral/msdk/base/common/net/f$a;->b:J

    .line 157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 159
    const-string v15, "CommonHttpRequest"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "request status code "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/16 v15, 0xc8

    if-eq v8, v15, :cond_12f

    const/16 v15, 0xce

    if-ne v8, v15, :cond_2ef

    .line 162
    :cond_12f
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v15

    .line 163
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v16

    .line 165
    if-eqz v16, :cond_1e2

    .line 166
    iput-object v15, v5, Lcom/mintegral/msdk/base/common/net/f$d;->b:[Lorg/apache/http/Header;
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_13b} :catch_1f7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f6 .. :try_end_13b} :catch_2ba
    .catchall {:try_start_f6 .. :try_end_13b} :catchall_3cb

    .line 168
    :try_start_13b
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mintegral/msdk/base/common/net/f;->c:Lcom/mintegral/msdk/base/common/net/g;

    move-object/from16 v0, v16

    invoke-interface {v8, v0}, Lcom/mintegral/msdk/base/common/net/g;->b(Lorg/apache/http/HttpEntity;)Ljava/lang/Object;
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_144} :catch_1db
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13b .. :try_end_144} :catch_2ba
    .catchall {:try_start_13b .. :try_end_144} :catchall_3cb

    move-result-object v8

    .line 173
    :goto_145
    :try_start_145
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/mintegral/msdk/base/common/net/f$a;->c:J

    .line 174
    iget-wide v0, v14, Lcom/mintegral/msdk/base/common/net/f$a;->c:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v3, v16, v18

    if-gez v3, :cond_441

    .line 175
    const-string v3, "Content-Length"

    invoke-interface {v11, v3}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    .line 176
    if-eqz v3, :cond_1e0

    array-length v11, v3

    if-lez v11, :cond_1e0

    .line 177
    const/4 v11, 0x0

    aget-object v3, v3, v11

    .line 178
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 179
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1e0

    .line 180
    const-string v16, "[0-9]+"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_176} :catch_424
    .catch Ljava/lang/OutOfMemoryError; {:try_start_145 .. :try_end_176} :catch_40e
    .catchall {:try_start_145 .. :try_end_176} :catchall_357

    move-result v11

    .line 181
    if-eqz v11, :cond_1e0

    .line 183
    :try_start_179
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/mintegral/msdk/base/common/net/f$a;->c:J
    :try_end_188
    .catch Ljava/lang/Exception; {:try_start_179 .. :try_end_188} :catch_1df
    .catch Ljava/lang/OutOfMemoryError; {:try_start_179 .. :try_end_188} :catch_40e
    .catchall {:try_start_179 .. :try_end_188} :catchall_357

    move-object v3, v8

    .line 195
    :goto_189
    :try_start_189
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    sub-long v16, v16, v6

    const-wide/32 v18, 0xf4240

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/mintegral/msdk/base/common/net/f$a;->d:J

    .line 196
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    sub-long v16, v16, v12

    const-wide/32 v18, 0xf4240

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/mintegral/msdk/base/common/net/f$a;->e:J

    .line 202
    if-nez v3, :cond_1e5

    .line 204
    const-string v4, "http contentResult is null"
    :try_end_1ab
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_1ab} :catch_1f7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_189 .. :try_end_1ab} :catch_2ba
    .catchall {:try_start_189 .. :try_end_1ab} :catchall_3cb

    .line 205
    const/4 v2, 0x0

    .line 254
    :goto_1ac
    invoke-virtual {v9}, Lcom/mintegral/msdk/base/common/net/f$c;->a()Lcom/mintegral/msdk/base/common/net/f$c$a;

    move-result-object v8

    if-eqz v8, :cond_1b9

    .line 255
    invoke-virtual {v9}, Lcom/mintegral/msdk/base/common/net/f$c;->a()Lcom/mintegral/msdk/base/common/net/f$c$a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mintegral/msdk/base/common/net/f$c$a;->a()V

    .line 259
    :cond_1b9
    invoke-virtual {v10}, Lcom/mintegral/msdk/base/common/net/i;->a()V

    .line 263
    if-eqz v2, :cond_1c0

    if-nez v3, :cond_3a2

    .line 268
    :cond_1c0
    if-nez v2, :cond_318

    invoke-direct/range {p0 .. p0}, Lcom/mintegral/msdk/base/common/net/f;->f()Z

    move-result v8

    if-eqz v8, :cond_318

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mintegral/msdk/base/common/net/f;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_318

    .line 269
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mintegral/msdk/base/common/net/f;->c:Lcom/mintegral/msdk/base/common/net/g;

    invoke-interface {v8, v4}, Lcom/mintegral/msdk/base/common/net/g;->c(Ljava/lang/String;)V

    goto/16 :goto_43

    :catch_1db
    move-exception v8

    move-object v8, v3

    goto/16 :goto_145

    :catch_1df
    move-exception v3

    :cond_1e0
    move-object v3, v8

    .line 189
    goto :goto_189

    .line 191
    :cond_1e2
    const/4 v8, 0x0

    move-object v3, v8

    goto :goto_189

    .line 207
    :cond_1e5
    :try_start_1e5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mintegral/msdk/base/common/net/f;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2af

    .line 208
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mintegral/msdk/base/common/net/f;->c:Lcom/mintegral/msdk/base/common/net/g;

    invoke-interface {v8, v15, v3}, Lcom/mintegral/msdk/base/common/net/g;->a([Lorg/apache/http/Header;Ljava/lang/Object;)V
    :try_end_1f6
    .catch Ljava/lang/Exception; {:try_start_1e5 .. :try_end_1f6} :catch_1f7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1e5 .. :try_end_1f6} :catch_2ba
    .catchall {:try_start_1e5 .. :try_end_1f6} :catchall_3cb

    goto :goto_1ac

    .line 226
    :catch_1f7
    move-exception v8

    move-object/from16 v20, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v4

    move-object/from16 v4, v20

    .line 227
    :goto_1ff
    :try_start_1ff
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mintegral/msdk/base/common/net/f;->d:Lcom/mintegral/msdk/base/common/net/k;

    invoke-virtual {v11, v4}, Lcom/mintegral/msdk/base/common/net/k;->a(Ljava/lang/Exception;)Lcom/mintegral/msdk/base/common/net/k$a;

    move-result-object v15

    .line 228
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_20a
    .catchall {:try_start_1ff .. :try_end_20a} :catchall_3f3

    move-result-object v11

    .line 229
    :try_start_20b
    iget-boolean v10, v15, Lcom/mintegral/msdk/base/common/net/k$a;->b:Z
    :try_end_20d
    .catchall {:try_start_20b .. :try_end_20d} :catchall_3fe

    .line 232
    if-nez v10, :cond_43e

    :try_start_20f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mintegral/msdk/base/common/net/f;->g:Z

    if-eqz v2, :cond_43e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mintegral/msdk/base/common/net/f;->b:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 234
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v2

    .line 235
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-static {v2}, Lcom/mintegral/msdk/base/common/net/i;->a(Ljava/lang/String;)I

    move-result v2

    sget v16, Lcom/mintegral/msdk/base/common/net/i$a;->b:I

    move/from16 v0, v16

    if-ne v2, v0, :cond_43e

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mintegral/msdk/base/common/net/f;->b:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    .line 238
    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 239
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "http"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mintegral/msdk/base/common/net/f;->b:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object/from16 v16, v0

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V
    :try_end_25f
    .catchall {:try_start_20f .. :try_end_25f} :catchall_408

    .line 241
    const/4 v10, 0x1

    move v2, v10

    .line 245
    :goto_261
    if-eqz v2, :cond_27c

    :try_start_263
    invoke-direct/range {p0 .. p0}, Lcom/mintegral/msdk/base/common/net/f;->f()Z

    move-result v10

    if-eqz v10, :cond_27c

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mintegral/msdk/base/common/net/f;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_27c

    .line 246
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mintegral/msdk/base/common/net/f;->c:Lcom/mintegral/msdk/base/common/net/g;

    iget v15, v15, Lcom/mintegral/msdk/base/common/net/k$a;->c:I

    invoke-interface {v10, v15, v4}, Lcom/mintegral/msdk/base/common/net/g;->a(ILjava/lang/Exception;)V
    :try_end_27c
    .catchall {:try_start_263 .. :try_end_27c} :catchall_3fe

    .line 253
    :cond_27c
    if-eqz v8, :cond_28b

    .line 254
    invoke-virtual {v8}, Lcom/mintegral/msdk/base/common/net/f$c;->a()Lcom/mintegral/msdk/base/common/net/f$c$a;

    move-result-object v4

    if-eqz v4, :cond_28b

    .line 255
    invoke-virtual {v8}, Lcom/mintegral/msdk/base/common/net/f$c;->a()Lcom/mintegral/msdk/base/common/net/f$c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/common/net/f$c$a;->a()V

    .line 258
    :cond_28b
    if-eqz v9, :cond_290

    .line 259
    invoke-virtual {v9}, Lcom/mintegral/msdk/base/common/net/i;->a()V

    .line 263
    :cond_290
    if-eqz v2, :cond_294

    if-nez v3, :cond_3a2

    .line 268
    :cond_294
    if-nez v2, :cond_32d

    invoke-direct/range {p0 .. p0}, Lcom/mintegral/msdk/base/common/net/f;->f()Z

    move-result v4

    if-eqz v4, :cond_32d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/base/common/net/f;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_32d

    .line 269
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/base/common/net/f;->c:Lcom/mintegral/msdk/base/common/net/g;

    invoke-interface {v4, v11}, Lcom/mintegral/msdk/base/common/net/g;->c(Ljava/lang/String;)V

    goto/16 :goto_43

    .line 211
    :cond_2af
    :try_start_2af
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mintegral/msdk/base/common/net/f;->c:Lcom/mintegral/msdk/base/common/net/g;

    const-string v11, "contentResult and context are null"

    invoke-interface {v8, v11}, Lcom/mintegral/msdk/base/common/net/g;->c(Ljava/lang/String;)V
    :try_end_2b8
    .catch Ljava/lang/Exception; {:try_start_2af .. :try_end_2b8} :catch_1f7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2af .. :try_end_2b8} :catch_2ba
    .catchall {:try_start_2af .. :try_end_2b8} :catchall_3cb

    goto/16 :goto_1ac

    .line 250
    :catch_2ba
    move-exception v8

    move-object v11, v4

    move-object v4, v8

    :goto_2bd
    :try_start_2bd
    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;
    :try_end_2c0
    .catchall {:try_start_2bd .. :try_end_2c0} :catchall_3e2

    move-result-object v4

    .line 251
    const/4 v2, 0x0

    .line 253
    if-eqz v9, :cond_2d1

    .line 254
    invoke-virtual {v9}, Lcom/mintegral/msdk/base/common/net/f$c;->a()Lcom/mintegral/msdk/base/common/net/f$c$a;

    move-result-object v8

    if-eqz v8, :cond_2d1

    .line 255
    invoke-virtual {v9}, Lcom/mintegral/msdk/base/common/net/f$c;->a()Lcom/mintegral/msdk/base/common/net/f$c$a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mintegral/msdk/base/common/net/f$c$a;->a()V

    .line 258
    :cond_2d1
    if-eqz v10, :cond_2d6

    .line 259
    invoke-virtual {v10}, Lcom/mintegral/msdk/base/common/net/i;->a()V

    .line 268
    :cond_2d6
    invoke-direct/range {p0 .. p0}, Lcom/mintegral/msdk/base/common/net/f;->f()Z

    move-result v8

    if-eqz v8, :cond_342

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mintegral/msdk/base/common/net/f;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_342

    .line 269
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mintegral/msdk/base/common/net/f;->c:Lcom/mintegral/msdk/base/common/net/g;

    invoke-interface {v8, v4}, Lcom/mintegral/msdk/base/common/net/g;->c(Ljava/lang/String;)V

    goto/16 :goto_43

    .line 216
    :cond_2ef
    :try_start_2ef
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v15, "http code error:"

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2fd
    .catch Ljava/lang/Exception; {:try_start_2ef .. :try_end_2fd} :catch_1f7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2ef .. :try_end_2fd} :catch_2ba
    .catchall {:try_start_2ef .. :try_end_2fd} :catchall_3cb

    move-result-object v8

    .line 217
    :try_start_2fe
    new-instance v4, Ljava/net/ConnectException;

    invoke-direct {v4}, Ljava/net/ConnectException;-><init>()V

    throw v4
    :try_end_304
    .catch Ljava/lang/Exception; {:try_start_2fe .. :try_end_304} :catch_304
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2fe .. :try_end_304} :catch_420
    .catchall {:try_start_2fe .. :try_end_304} :catchall_3ea

    .line 226
    :catch_304
    move-exception v4

    move-object/from16 v20, v9

    move-object v9, v10

    move-object v10, v8

    move-object/from16 v8, v20

    goto/16 :goto_1ff

    .line 221
    :cond_30d
    :try_start_30d
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_315

    .line 222
    const-string v4, "http respon is null"
    :try_end_315
    .catch Ljava/lang/Exception; {:try_start_30d .. :try_end_315} :catch_1f7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_30d .. :try_end_315} :catch_2ba
    .catchall {:try_start_30d .. :try_end_315} :catchall_3cb

    .line 224
    :cond_315
    const/4 v2, 0x0

    goto/16 :goto_1ac

    .line 270
    :cond_318
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/base/common/net/f;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_43

    .line 271
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/base/common/net/f;->c:Lcom/mintegral/msdk/base/common/net/g;

    const-string v8, "http content is null"

    invoke-interface {v4, v8}, Lcom/mintegral/msdk/base/common/net/g;->c(Ljava/lang/String;)V

    goto/16 :goto_43

    .line 270
    :cond_32d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/base/common/net/f;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_43

    .line 271
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/base/common/net/f;->c:Lcom/mintegral/msdk/base/common/net/g;

    const-string v8, "http content is null"

    invoke-interface {v4, v8}, Lcom/mintegral/msdk/base/common/net/g;->c(Ljava/lang/String;)V

    goto/16 :goto_43

    .line 270
    :cond_342
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/base/common/net/f;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_43

    .line 271
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/base/common/net/f;->c:Lcom/mintegral/msdk/base/common/net/g;

    const-string v8, "http content is null"

    invoke-interface {v4, v8}, Lcom/mintegral/msdk/base/common/net/g;->c(Ljava/lang/String;)V

    goto/16 :goto_43

    .line 253
    :catchall_357
    move-exception v3

    move-object v11, v4

    move v4, v2

    move-object v2, v3

    move-object v3, v8

    :goto_35c
    if-eqz v9, :cond_36b

    .line 254
    invoke-virtual {v9}, Lcom/mintegral/msdk/base/common/net/f$c;->a()Lcom/mintegral/msdk/base/common/net/f$c$a;

    move-result-object v6

    if-eqz v6, :cond_36b

    .line 255
    invoke-virtual {v9}, Lcom/mintegral/msdk/base/common/net/f$c;->a()Lcom/mintegral/msdk/base/common/net/f$c$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mintegral/msdk/base/common/net/f$c$a;->a()V

    .line 258
    :cond_36b
    if-eqz v10, :cond_370

    .line 259
    invoke-virtual {v10}, Lcom/mintegral/msdk/base/common/net/i;->a()V

    .line 263
    :cond_370
    if-eqz v4, :cond_374

    if-nez v3, :cond_3a2

    .line 268
    :cond_374
    if-nez v4, :cond_38e

    invoke-direct/range {p0 .. p0}, Lcom/mintegral/msdk/base/common/net/f;->f()Z

    move-result v3

    if-eqz v3, :cond_38e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mintegral/msdk/base/common/net/f;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_38e

    .line 269
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mintegral/msdk/base/common/net/f;->c:Lcom/mintegral/msdk/base/common/net/g;

    invoke-interface {v3, v11}, Lcom/mintegral/msdk/base/common/net/g;->c(Ljava/lang/String;)V

    .line 271
    :cond_38d
    :goto_38d
    throw v2

    .line 270
    :cond_38e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mintegral/msdk/base/common/net/f;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_38d

    .line 271
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mintegral/msdk/base/common/net/f;->c:Lcom/mintegral/msdk/base/common/net/g;

    const-string v4, "http content is null"

    invoke-interface {v3, v4}, Lcom/mintegral/msdk/base/common/net/g;->c(Ljava/lang/String;)V

    goto :goto_38d

    .line 277
    :cond_3a2
    invoke-direct/range {p0 .. p0}, Lcom/mintegral/msdk/base/common/net/f;->f()Z

    move-result v2

    if-nez v2, :cond_3ae

    .line 278
    const/4 v2, -0x2

    iput v2, v5, Lcom/mintegral/msdk/base/common/net/f$d;->a:I

    move-object v2, v5

    .line 279
    goto/16 :goto_20

    .line 281
    :cond_3ae
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mintegral/msdk/base/common/net/f;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3bf

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mintegral/msdk/base/common/net/f;->c:Lcom/mintegral/msdk/base/common/net/g;

    invoke-interface {v2}, Lcom/mintegral/msdk/base/common/net/g;->c()V

    .line 284
    :cond_3bf
    const-string v2, "CommonHttpRequest"

    const-string v4, "request is finished"

    invoke-static {v2, v4}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iput-object v3, v5, Lcom/mintegral/msdk/base/common/net/f$d;->c:Ljava/lang/Object;

    move-object v2, v5

    .line 289
    goto/16 :goto_20

    .line 253
    :catchall_3cb
    move-exception v6

    move-object v11, v4

    move v4, v2

    move-object v2, v6

    goto :goto_35c

    :catchall_3d0
    move-exception v4

    move-object v10, v9

    move-object v9, v8

    move-object/from16 v20, v4

    move v4, v2

    move-object/from16 v2, v20

    goto :goto_35c

    :catchall_3d9
    move-exception v4

    move-object v9, v8

    move-object/from16 v20, v4

    move v4, v2

    move-object/from16 v2, v20

    goto/16 :goto_35c

    :catchall_3e2
    move-exception v4

    move-object/from16 v20, v4

    move v4, v2

    move-object/from16 v2, v20

    goto/16 :goto_35c

    :catchall_3ea
    move-exception v4

    move-object v11, v8

    move/from16 v20, v2

    move-object v2, v4

    move/from16 v4, v20

    goto/16 :goto_35c

    :catchall_3f3
    move-exception v4

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move/from16 v20, v2

    move-object v2, v4

    move/from16 v4, v20

    goto/16 :goto_35c

    :catchall_3fe
    move-exception v4

    move-object v10, v9

    move-object v9, v8

    move-object/from16 v20, v4

    move v4, v2

    move-object/from16 v2, v20

    goto/16 :goto_35c

    :catchall_408
    move-exception v2

    move v4, v10

    move-object v10, v9

    move-object v9, v8

    goto/16 :goto_35c

    .line 250
    :catch_40e
    move-exception v3

    move-object v11, v4

    move-object v4, v3

    move-object v3, v8

    goto/16 :goto_2bd

    :catch_414
    move-exception v4

    move-object v10, v9

    move-object v9, v8

    goto/16 :goto_2bd

    :catch_419
    move-exception v4

    move-object v9, v8

    goto/16 :goto_2bd

    :catch_41d
    move-exception v4

    goto/16 :goto_2bd

    :catch_420
    move-exception v4

    move-object v11, v8

    goto/16 :goto_2bd

    .line 226
    :catch_424
    move-exception v3

    move-object/from16 v20, v3

    move-object v3, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v4

    move-object/from16 v4, v20

    goto/16 :goto_1ff

    :catch_42f
    move-exception v4

    move-object v10, v11

    goto/16 :goto_1ff

    :catch_433
    move-exception v4

    move-object v9, v10

    move-object v10, v11

    goto/16 :goto_1ff

    :catch_438
    move-exception v4

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    goto/16 :goto_1ff

    :cond_43e
    move v2, v10

    goto/16 :goto_261

    :cond_441
    move-object v3, v8

    goto/16 :goto_189
.end method

.method private f()Z
    .registers 4

    .prologue
    .line 299
    iget-object v1, p0, Lcom/mintegral/msdk/base/common/net/f;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 1066
    :goto_3
    :try_start_3
    iget v0, p0, Lcom/mintegral/msdk/base/common/f/a;->i:I

    .line 300
    sget v2, Lcom/mintegral/msdk/base/common/f/a$a;->c:I
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_1a

    if-ne v0, v2, :cond_11

    .line 302
    :try_start_9
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/f;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_e} :catch_f
    .catchall {:try_start_9 .. :try_end_e} :catchall_1a

    goto :goto_3

    .line 304
    :catch_f
    move-exception v0

    goto :goto_3

    .line 306
    :cond_11
    :try_start_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_1a

    .line 2066
    iget v0, p0, Lcom/mintegral/msdk/base/common/f/a;->i:I

    .line 308
    sget v1, Lcom/mintegral/msdk/base/common/f/a$a;->b:I

    if-ne v0, v1, :cond_1d

    const/4 v0, 0x1

    :goto_19
    return v0

    .line 306
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0

    .line 308
    :cond_1d
    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 422
    :try_start_0
    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/net/f;->e()Lcom/mintegral/msdk/base/common/net/f$d;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 428
    :goto_3
    return-void

    .line 423
    :catch_4
    move-exception v0

    .line 425
    const-string v1, "CommonHttpRequest"

    const-string v2, "unknow exception"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 432
    const-string v0, "CommonHttpRequest"

    const-string v1, "request is canceled"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/f;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 435
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/f;->c:Lcom/mintegral/msdk/base/common/net/g;

    invoke-interface {v0}, Lcom/mintegral/msdk/base/common/net/g;->d()V

    .line 438
    :cond_14
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/f;->f:Ljava/lang/Thread;

    if-eqz v0, :cond_1d

    .line 439
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/f;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 442
    :cond_1d
    iget-object v1, p0, Lcom/mintegral/msdk/base/common/net/f;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 443
    :try_start_20
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/f;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 444
    monitor-exit v1

    return-void

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_27

    throw v0
.end method
