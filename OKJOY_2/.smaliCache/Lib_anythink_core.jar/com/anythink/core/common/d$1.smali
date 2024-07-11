.class final Lcom/anythink/core/common/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/anythink/core/common/g;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/anythink/core/common/d;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/d;Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/common/g;Ljava/lang/String;)V
    .registers 6

    .line 198
    iput-object p1, p0, Lcom/anythink/core/common/d$1;->e:Lcom/anythink/core/common/d;

    iput-object p2, p0, Lcom/anythink/core/common/d$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/core/common/d$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/core/common/d$1;->c:Lcom/anythink/core/common/g;

    iput-object p5, p0, Lcom/anythink/core/common/d$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 20

    .line 201
    move-object/from16 v9, p0

    iget-object v10, v9, Lcom/anythink/core/common/d$1;->e:Lcom/anythink/core/common/d;

    monitor-enter v10

    .line 202
    :try_start_5
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    iget-object v1, v9, Lcom/anythink/core/common/d$1;->a:Landroid/content/Context;

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/g;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/core/common/b/g;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, v9, Lcom/anythink/core/common/d$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/common/g/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 207
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22a

    .line 208
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22a

    .line 209
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22a

    iget-object v0, v9, Lcom/anythink/core/common/d$1;->b:Ljava/lang/String;

    .line 210
    nop

    .line 2038
    const/4 v2, 0x1

    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_58

    goto :goto_5a

    :cond_58
    move v0, v1

    goto :goto_5b

    :cond_5a
    :goto_5a
    move v0, v2

    .line 210
    :goto_5b
    if-eqz v0, :cond_5f

    goto/16 :goto_22a

    .line 228
    :cond_5f
    iget-object v0, v9, Lcom/anythink/core/common/d$1;->e:Lcom/anythink/core/common/d;

    invoke-virtual {v0}, Lcom/anythink/core/common/d;->f()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 229
    const-string v0, "2005"

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 230
    iget-object v1, v9, Lcom/anythink/core/common/d$1;->e:Lcom/anythink/core/common/d;

    iget-object v2, v9, Lcom/anythink/core/common/d$1;->c:Lcom/anythink/core/common/g;

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/d;->a(Lcom/anythink/core/common/g;Lcom/anythink/core/api/AdError;)V

    .line 231
    monitor-exit v10

    return-void

    .line 234
    :cond_7a
    iget-object v0, v9, Lcom/anythink/core/common/d$1;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 235
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v13

    .line 236
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->k()Ljava/lang/String;

    move-result-object v14

    .line 237
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->l()Ljava/lang/String;

    move-result-object v6

    .line 238
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    iget-object v3, v9, Lcom/anythink/core/common/d$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/anythink/core/common/b/g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 240
    invoke-static {v5}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v0

    iget-object v3, v9, Lcom/anythink/core/common/d$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/anythink/core/c/d;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v12

    .line 242
    if-eqz v12, :cond_b3

    invoke-virtual {v12}, Lcom/anythink/core/c/c;->v()Ljava/lang/String;

    move-result-object v0

    goto :goto_b5

    :cond_b3
    const-string v0, ""

    :goto_b5
    move-object v8, v0

    .line 244
    iget-object v0, v9, Lcom/anythink/core/common/d$1;->d:Ljava/lang/String;

    iget-object v3, v9, Lcom/anythink/core/common/d$1;->b:Ljava/lang/String;

    iget-object v11, v9, Lcom/anythink/core/common/d$1;->c:Lcom/anythink/core/common/g;

    iget-boolean v11, v11, Lcom/anythink/core/common/g;->d:Z

    if-eqz v11, :cond_c2

    move v11, v2

    goto :goto_c3

    :cond_c2
    move v11, v1

    :goto_c3
    invoke-static {v0, v4, v3, v12, v11}, Lcom/anythink/core/common/g/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;I)Lcom/anythink/core/common/d/d;

    move-result-object v3

    .line 248
    if-nez v12, :cond_f2

    iget-object v0, v9, Lcom/anythink/core/common/d$1;->c:Lcom/anythink/core/common/g;

    iget-object v0, v0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/api/ATMediationRequestInfo;

    if-eqz v0, :cond_f2

    .line 249
    sget-object v0, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    const-string v11, "request default adsource for splash."

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, v9, Lcom/anythink/core/common/d$1;->e:Lcom/anythink/core/common/d;

    iget-object v11, v9, Lcom/anythink/core/common/d$1;->b:Ljava/lang/String;

    iget-object v15, v9, Lcom/anythink/core/common/d$1;->c:Lcom/anythink/core/common/g;

    invoke-virtual {v0, v11, v4, v15}, Lcom/anythink/core/common/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/g;)Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 251
    iget-object v0, v9, Lcom/anythink/core/common/d$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v11

    const/4 v12, 0x0

    iget-object v15, v9, Lcom/anythink/core/common/d$1;->b:Ljava/lang/String;

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/anythink/core/c/d;->a(Lcom/anythink/core/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/d$a;)V

    .line 252
    monitor-exit v10

    return-void

    .line 258
    :cond_f2
    iget-object v0, v9, Lcom/anythink/core/common/d$1;->e:Lcom/anythink/core/common/d;

    iget v0, v0, Lcom/anythink/core/common/d;->f:I

    if-ne v0, v2, :cond_13d

    iget-object v0, v9, Lcom/anythink/core/common/d$1;->e:Lcom/anythink/core/common/d;

    invoke-virtual {v0}, Lcom/anythink/core/common/d;->c()Z

    move-result v0

    if-nez v0, :cond_13d

    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v0

    iget-object v11, v9, Lcom/anythink/core/common/d$1;->a:Landroid/content/Context;

    iget-object v15, v9, Lcom/anythink/core/common/d$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v11, v15}, Lcom/anythink/core/common/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/core/common/d/b;

    move-result-object v0

    if-eqz v0, :cond_13d

    .line 259
    invoke-static {}, Lcom/anythink/core/common/p;->a()Lcom/anythink/core/common/p;

    move-result-object v0

    iget-object v2, v9, Lcom/anythink/core/common/d$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lcom/anythink/core/common/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, v9, Lcom/anythink/core/common/d$1;->e:Lcom/anythink/core/common/d;

    iget-object v2, v9, Lcom/anythink/core/common/d$1;->c:Lcom/anythink/core/common/g;

    invoke-virtual {v0, v2}, Lcom/anythink/core/common/d;->a(Lcom/anythink/core/common/g;)V

    .line 261
    invoke-virtual {v3, v1}, Lcom/anythink/core/common/d/d;->b(Z)V

    .line 262
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Lcom/anythink/core/common/d/d;->q(I)V

    .line 263
    invoke-static {v5}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 264
    invoke-static {v5}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v0

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v3}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 265
    iget-object v0, v9, Lcom/anythink/core/common/d$1;->e:Lcom/anythink/core/common/d;

    iput-boolean v1, v0, Lcom/anythink/core/common/d;->g:Z

    .line 266
    monitor-exit v10

    return-void

    .line 270
    :cond_13d
    if-eqz v12, :cond_18f

    iget-object v0, v9, Lcom/anythink/core/common/d$1;->e:Lcom/anythink/core/common/d;

    invoke-static {v0}, Lcom/anythink/core/common/d;->a(Lcom/anythink/core/common/d;)Z

    move-result v0

    if-eqz v0, :cond_18f

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    iget-object v0, v9, Lcom/anythink/core/common/d$1;->e:Lcom/anythink/core/common/d;

    invoke-static {v0}, Lcom/anythink/core/common/d;->b(Lcom/anythink/core/common/d;)J

    move-result-wide v17

    sub-long v15, v15, v17

    .line 272
    const-wide/16 v17, 0x0

    cmp-long v0, v15, v17

    if-lez v0, :cond_18f

    invoke-virtual {v12}, Lcom/anythink/core/c/c;->L()J

    move-result-wide v17

    cmp-long v0, v15, v17

    if-gez v0, :cond_18f

    .line 273
    const-string v0, "2008"

    const-string v4, ""

    const-string v5, ""

    invoke-static {v0, v4, v5}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 274
    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/anythink/core/common/d/d;->q(I)V

    .line 275
    iget-object v4, v9, Lcom/anythink/core/common/d$1;->e:Lcom/anythink/core/common/d;

    invoke-static {v4}, Lcom/anythink/core/common/d;->c(Lcom/anythink/core/common/d;)Z

    move-result v4

    if-nez v4, :cond_178

    move v1, v2

    .line 276
    :cond_178
    iget-object v4, v9, Lcom/anythink/core/common/d$1;->e:Lcom/anythink/core/common/d;

    new-instance v5, Lcom/anythink/core/common/c;

    invoke-virtual {v0}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lcom/anythink/core/common/c;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    iget-object v0, v9, Lcom/anythink/core/common/d$1;->c:Lcom/anythink/core/common/g;

    invoke-static {v4, v1, v3, v5, v0}, Lcom/anythink/core/common/d;->a(Lcom/anythink/core/common/d;ZLcom/anythink/core/common/d/d;Ljava/lang/Throwable;Lcom/anythink/core/common/g;)V

    .line 277
    iget-object v0, v9, Lcom/anythink/core/common/d$1;->e:Lcom/anythink/core/common/d;

    invoke-static {v0, v2}, Lcom/anythink/core/common/d;->a(Lcom/anythink/core/common/d;Z)Z

    .line 278
    monitor-exit v10

    return-void

    .line 283
    :cond_18f
    iget-object v0, v9, Lcom/anythink/core/common/d$1;->e:Lcom/anythink/core/common/d;

    invoke-static {v0}, Lcom/anythink/core/common/d;->d(Lcom/anythink/core/common/d;)Z

    .line 284
    iget-object v0, v9, Lcom/anythink/core/common/d$1;->e:Lcom/anythink/core/common/d;

    invoke-static {v0}, Lcom/anythink/core/common/d;->e(Lcom/anythink/core/common/d;)J

    .line 285
    iget-object v0, v9, Lcom/anythink/core/common/d$1;->e:Lcom/anythink/core/common/d;

    invoke-static {v0, v1}, Lcom/anythink/core/common/d;->a(Lcom/anythink/core/common/d;Z)Z

    .line 288
    if-eqz v12, :cond_1cd

    invoke-static {}, Lcom/anythink/core/a/b;->a()Lcom/anythink/core/a/b;

    move-result-object v0

    iget-object v1, v9, Lcom/anythink/core/common/d$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v5, v1, v12}, Lcom/anythink/core/a/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/c/c;)Z

    move-result v0

    if-eqz v0, :cond_1cd

    .line 289
    const-string v0, "2009"

    const-string v1, ""

    const-string v4, ""

    invoke-static {v0, v1, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 290
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Lcom/anythink/core/common/d/d;->q(I)V

    .line 291
    iget-object v1, v9, Lcom/anythink/core/common/d$1;->e:Lcom/anythink/core/common/d;

    new-instance v4, Lcom/anythink/core/common/c;

    invoke-virtual {v0}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/anythink/core/common/c;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    iget-object v0, v9, Lcom/anythink/core/common/d$1;->c:Lcom/anythink/core/common/g;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/anythink/core/common/d;->a(Lcom/anythink/core/common/d;ZLcom/anythink/core/common/d/d;Ljava/lang/Throwable;Lcom/anythink/core/common/g;)V

    .line 292
    monitor-exit v10

    return-void

    .line 295
    :cond_1cd
    iget-object v0, v9, Lcom/anythink/core/common/d$1;->e:Lcom/anythink/core/common/d;

    invoke-virtual {v0}, Lcom/anythink/core/common/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1f5

    .line 296
    const-string v0, "2005"

    const-string v1, ""

    const-string v4, ""

    invoke-static {v0, v1, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 297
    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Lcom/anythink/core/common/d/d;->q(I)V

    .line 299
    iget-object v1, v9, Lcom/anythink/core/common/d$1;->e:Lcom/anythink/core/common/d;

    new-instance v4, Lcom/anythink/core/common/c;

    invoke-virtual {v0}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/anythink/core/common/c;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    iget-object v0, v9, Lcom/anythink/core/common/d$1;->c:Lcom/anythink/core/common/g;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/anythink/core/common/d;->a(Lcom/anythink/core/common/d;ZLcom/anythink/core/common/d/d;Ljava/lang/Throwable;Lcom/anythink/core/common/g;)V

    .line 300
    monitor-exit v10

    return-void

    .line 303
    :cond_1f5
    iget-object v0, v9, Lcom/anythink/core/common/d$1;->e:Lcom/anythink/core/common/d;

    iput-boolean v2, v0, Lcom/anythink/core/common/d;->g:Z

    .line 306
    iget-object v0, v9, Lcom/anythink/core/common/d$1;->e:Lcom/anythink/core/common/d;

    iget-object v0, v0, Lcom/anythink/core/common/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_205
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_214

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/f;

    .line 2174
    iput-boolean v2, v1, Lcom/anythink/core/common/f;->G:Z

    .line 308
    goto :goto_205

    .line 310
    :cond_214
    iget-object v0, v9, Lcom/anythink/core/common/d$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v11

    iget-object v15, v9, Lcom/anythink/core/common/d$1;->b:Ljava/lang/String;

    new-instance v16, Lcom/anythink/core/common/d$1$2;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/anythink/core/common/d$1$2;-><init>(Lcom/anythink/core/common/d$1;Lcom/anythink/core/common/d/d;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v11 .. v16}, Lcom/anythink/core/c/d;->a(Lcom/anythink/core/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/d$a;)V

    .line 384
    monitor-exit v10

    return-void

    .line 211
    :cond_22a
    :goto_22a
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v2, Lcom/anythink/core/common/d$1$1;

    invoke-direct {v2, v9, v4}, Lcom/anythink/core/common/d$1$1;-><init>(Lcom/anythink/core/common/d$1;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 220
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->p()Z

    move-result v0

    if-eqz v0, :cond_280

    .line 221
    sget-object v0, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Please check these params in your code (AppId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", AppKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/g;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", PlacementId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Lcom/anythink/core/common/d$1;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_280
    iget-object v0, v9, Lcom/anythink/core/common/d$1;->e:Lcom/anythink/core/common/d;

    iput-boolean v1, v0, Lcom/anythink/core/common/d;->g:Z

    .line 224
    monitor-exit v10

    return-void

    .line 384
    :catchall_286
    move-exception v0

    monitor-exit v10
    :try_end_288
    .catchall {:try_start_5 .. :try_end_288} :catchall_286

    throw v0
.end method
