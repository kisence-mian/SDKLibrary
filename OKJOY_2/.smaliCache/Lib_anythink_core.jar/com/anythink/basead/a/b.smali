.class public final Lcom/anythink/basead/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/a/b$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1


# instance fields
.field c:Lcom/anythink/core/common/d/h;

.field d:Z

.field e:Z

.field f:Landroid/content/Context;

.field g:Z

.field h:Lcom/anythink/core/common/d/i;

.field private final i:Ljava/lang/String;

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;)V
    .registers 8

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/a/b;->i:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/basead/a/b;->j:I

    .line 46
    const/4 v1, 0x1

    iput v1, p0, Lcom/anythink/basead/a/b;->k:I

    .line 47
    const/4 v2, 0x2

    iput v2, p0, Lcom/anythink/basead/a/b;->l:I

    .line 49
    const/16 v3, 0xa

    iput v3, p0, Lcom/anythink/basead/a/b;->m:I

    .line 50
    iput v1, p0, Lcom/anythink/basead/a/b;->n:I

    .line 51
    iput v2, p0, Lcom/anythink/basead/a/b;->o:I

    .line 52
    const/4 v2, 0x3

    iput v2, p0, Lcom/anythink/basead/a/b;->p:I

    .line 53
    const/4 v2, 0x4

    iput v2, p0, Lcom/anythink/basead/a/b;->q:I

    .line 67
    iput-object p3, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    .line 68
    iput-object p2, p0, Lcom/anythink/basead/a/b;->h:Lcom/anythink/core/common/d/i;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/a/b;->f:Landroid/content/Context;

    .line 70
    iget-object p1, p2, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    .line 1161
    nop

    .line 1162
    instance-of p2, p3, Lcom/anythink/core/common/d/f;

    if-eqz p2, :cond_43

    .line 1163
    instance-of p2, p1, Lcom/anythink/core/common/d/v;

    if-eqz p2, :cond_50

    .line 1164
    check-cast p1, Lcom/anythink/core/common/d/v;

    invoke-virtual {p1}, Lcom/anythink/core/common/d/v;->r()I

    move-result p1

    if-ne p1, v1, :cond_50

    move v0, v1

    goto :goto_50

    .line 1166
    :cond_43
    instance-of p1, p3, Lcom/anythink/core/common/d/p;

    if-eqz p1, :cond_50

    .line 1167
    check-cast p3, Lcom/anythink/core/common/d/p;

    invoke-virtual {p3}, Lcom/anythink/core/common/d/p;->y()I

    move-result p1

    if-ne p1, v1, :cond_50

    move v0, v1

    .line 1169
    :cond_50
    :goto_50
    nop

    .line 70
    iput-boolean v0, p0, Lcom/anythink/basead/a/b;->g:Z

    .line 71
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    .line 332
    nop

    .line 333
    nop

    .line 334
    const/4 v0, 0x0

    move-object v2, p1

    move v1, v0

    :goto_5
    const/16 v3, 0xa

    const-string v4, ""

    if-ge v1, v3, :cond_b9

    .line 335
    const/4 v3, 0x0

    .line 337
    :try_start_c
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_17} :catch_91
    .catchall {:try_start_c .. :try_end_17} :catchall_8f

    .line 340
    :try_start_17
    const-string v3, "GET"

    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 344
    const/16 v3, 0x7530

    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 345
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 346
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 347
    const/16 v6, 0x12e

    if-ne v3, v6, :cond_58

    .line 348
    const-string v6, "Location"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-static {v2}, Lcom/anythink/basead/a/g;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_57

    const-string v6, ".apk"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_57

    const-string v6, "http"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4c

    goto :goto_57

    .line 353
    :cond_4c
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_4f} :catch_8b
    .catchall {:try_start_17 .. :try_end_4f} :catchall_88

    .line 369
    if-eqz v5, :cond_54

    .line 370
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 334
    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 351
    :cond_57
    :goto_57
    const/4 v0, 0x1

    .line 358
    :cond_58
    if-nez v0, :cond_81

    const/16 v0, 0xc8

    if-ne v3, v0, :cond_5f

    goto :goto_81

    .line 363
    :cond_5f
    :try_start_5f
    iget-object v0, p0, Lcom/anythink/basead/a/b;->h:Lcom/anythink/core/common/d/i;

    iget-object v6, v0, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/h;->e()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/h;->b()I

    move-result v8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    move-object v9, p1

    move-object v10, v2

    invoke-static/range {v6 .. v12}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_7a} :catch_8b
    .catchall {:try_start_5f .. :try_end_7a} :catchall_88

    .line 364
    nop

    .line 369
    if-eqz v5, :cond_80

    .line 370
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 364
    :cond_80
    return-object v4

    .line 359
    :cond_81
    :goto_81
    nop

    .line 369
    if-eqz v5, :cond_87

    .line 370
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 359
    :cond_87
    return-object v2

    .line 369
    :catchall_88
    move-exception p1

    move-object v3, v5

    goto :goto_b3

    .line 365
    :catch_8b
    move-exception v0

    move-object v9, v2

    move-object v3, v5

    goto :goto_93

    .line 369
    :catchall_8f
    move-exception p1

    goto :goto_b3

    .line 365
    :catch_91
    move-exception v0

    move-object v9, v2

    .line 366
    :goto_93
    :try_start_93
    iget-object v1, p0, Lcom/anythink/basead/a/b;->h:Lcom/anythink/core/common/d/i;

    iget-object v5, v1, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/h;->e()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/h;->b()I

    move-result v7

    const-string v10, ""

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    move-object v8, p1

    invoke-static/range {v5 .. v11}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ad
    .catchall {:try_start_93 .. :try_end_ad} :catchall_8f

    .line 369
    if-eqz v3, :cond_b9

    .line 370
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_b9

    .line 369
    :goto_b3
    if-eqz v3, :cond_b8

    .line 370
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 372
    :cond_b8
    throw p1

    .line 374
    :cond_b9
    :goto_b9
    return-object v4
.end method

.method private a(ILcom/anythink/basead/c/h;Lcom/anythink/basead/a/b$a;)V
    .registers 9

    .line 197
    iget-object v0, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/h;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/h;->p()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_11
    move-object v0, v1

    :goto_12
    iget-object v2, p0, Lcom/anythink/basead/a/b;->h:Lcom/anythink/core/common/d/i;

    iget-object v2, v2, Lcom/anythink/core/common/d/i;->d:Ljava/lang/String;

    if-nez v2, :cond_1a

    move-object v2, v1

    goto :goto_1e

    :cond_1a
    iget-object v2, p0, Lcom/anythink/basead/a/b;->h:Lcom/anythink/core/common/d/i;

    iget-object v2, v2, Lcom/anythink/core/common/d/i;->d:Ljava/lang/String;

    :goto_1e
    const-string v3, "\\{req_id\\}"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, p2, v2, v3}, Lcom/anythink/basead/a/h;->a(Ljava/lang/String;Lcom/anythink/basead/c/h;J)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-direct {p0}, Lcom/anythink/basead/a/b;->c()Z

    move-result v2

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    .line 215
    invoke-virtual {v2}, Lcom/anythink/core/common/d/h;->s()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_41

    .line 216
    new-instance v2, Lcom/anythink/basead/c/e;

    invoke-direct {v2, v1, v1, v1}, Lcom/anythink/basead/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 218
    :cond_41
    new-instance v2, Lcom/anythink/basead/c/e;

    invoke-direct {v2, v0, v1, v1}, Lcom/anythink/basead/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :goto_46
    invoke-direct {p0, v2}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/c/e;)V

    .line 223
    const/4 v3, 0x1

    .line 225
    nop

    .line 227
    iget-object v4, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {v4}, Lcom/anythink/core/common/d/h;->s()I

    move-result v4

    packed-switch v4, :pswitch_data_f2

    .line 290
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 291
    iget-object v1, v2, Lcom/anythink/basead/c/e;->a:Ljava/lang/String;

    goto/16 :goto_ee

    .line 250
    :pswitch_5e
    invoke-direct {p0}, Lcom/anythink/basead/a/b;->c()Z

    move-result v1

    if-eqz v1, :cond_7e

    iget-object v1, v2, Lcom/anythink/basead/c/e;->a:Ljava/lang/String;

    .line 251
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 252
    iget-object v1, p0, Lcom/anythink/basead/a/b;->h:Lcom/anythink/core/common/d/i;

    iget-object v3, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-static {v1, v3, v0}, Lcom/anythink/basead/e/b/a/a;->a(Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_7e

    .line 254
    iget-object v1, v0, Lcom/anythink/basead/c/e;->a:Ljava/lang/String;

    iput-object v1, v2, Lcom/anythink/basead/c/e;->a:Ljava/lang/String;

    .line 255
    iget-object v0, v0, Lcom/anythink/basead/c/e;->c:Ljava/lang/String;

    iput-object v0, v2, Lcom/anythink/basead/c/e;->c:Ljava/lang/String;

    .line 260
    :cond_7e
    iget-object v0, v2, Lcom/anythink/basead/c/e;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    iput-object v0, v2, Lcom/anythink/basead/c/e;->b:Ljava/lang/String;

    .line 262
    invoke-direct {p0, v2}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/c/e;)V

    .line 264
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 265
    iget-object v0, v2, Lcom/anythink/basead/c/e;->a:Ljava/lang/String;

    .line 267
    :cond_91
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;ILcom/anythink/basead/c/h;Lcom/anythink/basead/a/b$a;)V

    .line 269
    return-void

    .line 231
    :pswitch_95
    invoke-direct {p0}, Lcom/anythink/basead/a/b;->c()Z

    move-result v3

    if-eqz v3, :cond_b6

    iget-object v3, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    .line 232
    invoke-virtual {v3}, Lcom/anythink/core/common/d/h;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b6

    .line 233
    invoke-direct {p0, v0}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {v1}, Lcom/anythink/basead/e/b/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    iput-object v1, v2, Lcom/anythink/basead/c/e;->b:Ljava/lang/String;

    .line 237
    iput-object v0, v2, Lcom/anythink/basead/c/e;->c:Ljava/lang/String;

    .line 238
    invoke-direct {p0, v2}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/c/e;)V

    .line 242
    :cond_b6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 243
    iget-object v1, v2, Lcom/anythink/basead/c/e;->a:Ljava/lang/String;

    .line 246
    :cond_be
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;ILcom/anythink/basead/c/h;Lcom/anythink/basead/a/b$a;)V

    .line 247
    return-void

    .line 271
    :pswitch_c2
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_ce

    .line 272
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;ILcom/anythink/basead/c/h;Lcom/anythink/basead/a/b$a;)V

    .line 273
    return-void

    .line 276
    :cond_ce
    iget-boolean v1, p0, Lcom/anythink/basead/a/b;->g:Z

    if-eqz v1, :cond_dc

    .line 277
    iget-object v1, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/h;->n()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;ILcom/anythink/basead/c/h;Lcom/anythink/basead/a/b$a;)V

    .line 278
    const/4 v3, 0x0

    .line 281
    :cond_dc
    invoke-direct {p0, v0}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    if-eqz v3, :cond_f1

    .line 283
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 284
    iget-object v0, v2, Lcom/anythink/basead/c/e;->a:Ljava/lang/String;

    .line 286
    :cond_ea
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;ILcom/anythink/basead/c/h;Lcom/anythink/basead/a/b$a;)V

    return-void

    .line 293
    :cond_ee
    :goto_ee
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;ILcom/anythink/basead/c/h;Lcom/anythink/basead/a/b$a;)V

    .line 297
    :cond_f1
    return-void

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_c2
        :pswitch_95
        :pswitch_95
        :pswitch_5e
    .end packed-switch
.end method

.method static synthetic a(Lcom/anythink/basead/a/b;ILcom/anythink/basead/c/h;Lcom/anythink/basead/a/b$a;)V
    .registers 9

    .line 39
    nop

    .line 2197
    iget-object v0, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/h;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/h;->p()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_12
    move-object v0, v1

    :goto_13
    iget-object v2, p0, Lcom/anythink/basead/a/b;->h:Lcom/anythink/core/common/d/i;

    iget-object v2, v2, Lcom/anythink/core/common/d/i;->d:Ljava/lang/String;

    if-nez v2, :cond_1b

    move-object v2, v1

    goto :goto_1f

    :cond_1b
    iget-object v2, p0, Lcom/anythink/basead/a/b;->h:Lcom/anythink/core/common/d/i;

    iget-object v2, v2, Lcom/anythink/core/common/d/i;->d:Ljava/lang/String;

    :goto_1f
    const-string v3, "\\{req_id\\}"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, p2, v2, v3}, Lcom/anythink/basead/a/h;->a(Ljava/lang/String;Lcom/anythink/basead/c/h;J)Ljava/lang/String;

    move-result-object v0

    .line 2214
    invoke-direct {p0}, Lcom/anythink/basead/a/b;->c()Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    .line 2215
    invoke-virtual {v2}, Lcom/anythink/core/common/d/h;->s()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_42

    .line 2216
    new-instance v2, Lcom/anythink/basead/c/e;

    invoke-direct {v2, v1, v1, v1}, Lcom/anythink/basead/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    .line 2218
    :cond_42
    new-instance v2, Lcom/anythink/basead/c/e;

    invoke-direct {v2, v0, v1, v1}, Lcom/anythink/basead/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2221
    :goto_47
    invoke-direct {p0, v2}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/c/e;)V

    .line 2223
    const/4 v3, 0x1

    .line 2225
    nop

    .line 2227
    iget-object v4, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {v4}, Lcom/anythink/core/common/d/h;->s()I

    move-result v4

    packed-switch v4, :pswitch_data_f4

    .line 2290
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 2291
    iget-object v1, v2, Lcom/anythink/basead/c/e;->a:Ljava/lang/String;

    goto/16 :goto_ef

    .line 2250
    :pswitch_5f
    invoke-direct {p0}, Lcom/anythink/basead/a/b;->c()Z

    move-result v1

    if-eqz v1, :cond_7f

    iget-object v1, v2, Lcom/anythink/basead/c/e;->a:Ljava/lang/String;

    .line 2251
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 2252
    iget-object v1, p0, Lcom/anythink/basead/a/b;->h:Lcom/anythink/core/common/d/i;

    iget-object v3, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-static {v1, v3, v0}, Lcom/anythink/basead/e/b/a/a;->a(Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object v0

    .line 2253
    if-eqz v0, :cond_7f

    .line 2254
    iget-object v1, v0, Lcom/anythink/basead/c/e;->a:Ljava/lang/String;

    iput-object v1, v2, Lcom/anythink/basead/c/e;->a:Ljava/lang/String;

    .line 2255
    iget-object v0, v0, Lcom/anythink/basead/c/e;->c:Ljava/lang/String;

    iput-object v0, v2, Lcom/anythink/basead/c/e;->c:Ljava/lang/String;

    .line 2260
    :cond_7f
    iget-object v0, v2, Lcom/anythink/basead/c/e;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2261
    iput-object v0, v2, Lcom/anythink/basead/c/e;->b:Ljava/lang/String;

    .line 2262
    invoke-direct {p0, v2}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/c/e;)V

    .line 2264
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 2265
    iget-object v0, v2, Lcom/anythink/basead/c/e;->a:Ljava/lang/String;

    .line 2267
    :cond_92
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;ILcom/anythink/basead/c/h;Lcom/anythink/basead/a/b$a;)V

    .line 2269
    return-void

    .line 2231
    :pswitch_96
    invoke-direct {p0}, Lcom/anythink/basead/a/b;->c()Z

    move-result v3

    if-eqz v3, :cond_b7

    iget-object v3, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    .line 2232
    invoke-virtual {v3}, Lcom/anythink/core/common/d/h;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b7

    .line 2233
    invoke-direct {p0, v0}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2235
    invoke-static {v1}, Lcom/anythink/basead/e/b/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2236
    iput-object v1, v2, Lcom/anythink/basead/c/e;->b:Ljava/lang/String;

    .line 2237
    iput-object v0, v2, Lcom/anythink/basead/c/e;->c:Ljava/lang/String;

    .line 2238
    invoke-direct {p0, v2}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/c/e;)V

    .line 2242
    :cond_b7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 2243
    iget-object v1, v2, Lcom/anythink/basead/c/e;->a:Ljava/lang/String;

    .line 2246
    :cond_bf
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;ILcom/anythink/basead/c/h;Lcom/anythink/basead/a/b$a;)V

    .line 2247
    return-void

    .line 2271
    :pswitch_c3
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_cf

    .line 2272
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;ILcom/anythink/basead/c/h;Lcom/anythink/basead/a/b$a;)V

    .line 2273
    return-void

    .line 2276
    :cond_cf
    iget-boolean v1, p0, Lcom/anythink/basead/a/b;->g:Z

    if-eqz v1, :cond_dd

    .line 2277
    iget-object v1, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/h;->n()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;ILcom/anythink/basead/c/h;Lcom/anythink/basead/a/b$a;)V

    .line 2278
    const/4 v3, 0x0

    .line 2281
    :cond_dd
    invoke-direct {p0, v0}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2282
    if-eqz v3, :cond_f2

    .line 2283
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 2284
    iget-object v0, v2, Lcom/anythink/basead/c/e;->a:Ljava/lang/String;

    .line 2286
    :cond_eb
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;ILcom/anythink/basead/c/h;Lcom/anythink/basead/a/b$a;)V

    return-void

    .line 2293
    :cond_ef
    :goto_ef
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/anythink/basead/a/b;->a(Ljava/lang/String;ILcom/anythink/basead/c/h;Lcom/anythink/basead/a/b$a;)V

    .line 39
    :cond_f2
    return-void

    nop

    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_c3
        :pswitch_96
        :pswitch_96
        :pswitch_5f
    .end packed-switch
.end method

.method private a(Lcom/anythink/basead/c/e;)V
    .registers 5

    .line 433
    invoke-static {}, Lcom/anythink/basead/a/c;->a()Lcom/anythink/basead/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/h;->b()I

    move-result v1

    iget-object v2, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {v2}, Lcom/anythink/core/common/d/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/anythink/basead/a/c;->a(ILjava/lang/String;Lcom/anythink/basead/c/e;)V

    .line 434
    return-void
.end method

.method private a(Ljava/lang/String;ILcom/anythink/basead/c/h;Lcom/anythink/basead/a/b$a;)V
    .registers 9

    .line 450
    iget-boolean v0, p0, Lcom/anythink/basead/a/b;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 451
    iput-boolean v1, p0, Lcom/anythink/basead/a/b;->d:Z

    .line 452
    iget-object p1, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 453
    :cond_1f
    if-eqz p4, :cond_24

    .line 454
    invoke-interface {p4, v1}, Lcom/anythink/basead/a/b$a;->a(Z)V

    .line 458
    :cond_24
    if-eqz p4, :cond_29

    .line 459
    invoke-interface {p4}, Lcom/anythink/basead/a/b$a;->b()V

    .line 461
    :cond_29
    return-void

    .line 465
    :cond_2a
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2e

    .line 466
    return-void

    .line 469
    :cond_2e
    if-nez p2, :cond_37

    .line 470
    invoke-direct {p0, p3, p4}, Lcom/anythink/basead/a/b;->c(Lcom/anythink/basead/c/h;Lcom/anythink/basead/a/b$a;)Z

    move-result p2

    if-eqz p2, :cond_37

    return-void

    .line 473
    :cond_37
    iget-object p2, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {p2}, Lcom/anythink/core/common/d/h;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4f

    iget-object p2, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {p2}, Lcom/anythink/core/common/d/h;->o()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_54

    .line 474
    :cond_4f
    if-eqz p4, :cond_54

    .line 475
    invoke-interface {p4, v1}, Lcom/anythink/basead/a/b$a;->a(Z)V

    .line 480
    :cond_54
    iget-object p2, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {p2}, Lcom/anythink/core/common/d/h;->q()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9a

    .line 481
    iget-object p2, p0, Lcom/anythink/basead/a/b;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {v2}, Lcom/anythink/core/common/d/h;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/anythink/basead/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    .line 482
    new-instance v2, Lcom/anythink/basead/c/c;

    invoke-direct {v2}, Lcom/anythink/basead/c/c;-><init>()V

    iput-object v2, p3, Lcom/anythink/basead/c/h;->i:Lcom/anythink/basead/c/c;

    .line 483
    invoke-direct {p0}, Lcom/anythink/basead/a/b;->b()Lcom/anythink/basead/c/e;

    move-result-object v2

    .line 484
    iget-object v3, p3, Lcom/anythink/basead/c/h;->i:Lcom/anythink/basead/c/c;

    if-eqz v2, :cond_7e

    iget-object v2, v2, Lcom/anythink/basead/c/e;->c:Ljava/lang/String;

    goto :goto_80

    :cond_7e
    const-string v2, ""

    :goto_80
    iput-object v2, v3, Lcom/anythink/basead/c/c;->a:Ljava/lang/String;

    .line 486
    if-eqz p2, :cond_93

    .line 487
    const/16 p1, 0x19

    iget-object p2, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-static {p1, p2, p3}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 488
    iput-boolean v1, p0, Lcom/anythink/basead/a/b;->d:Z

    .line 489
    if-eqz p4, :cond_92

    .line 490
    invoke-interface {p4}, Lcom/anythink/basead/a/b$a;->b()V

    .line 492
    :cond_92
    return-void

    .line 494
    :cond_93
    const/16 p2, 0x1a

    iget-object v2, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-static {p2, v2, p3}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 498
    :cond_9a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a6

    iget-object p1, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->n()Ljava/lang/String;

    move-result-object p1

    .line 500
    :cond_a6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c7

    .line 501
    sget-object p1, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    const-string p2, "Offer click result is null."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p1

    new-instance p2, Lcom/anythink/basead/a/b$2;

    invoke-direct {p2, p0}, Lcom/anythink/basead/a/b$2;-><init>(Lcom/anythink/basead/a/b;)V

    invoke-virtual {p1, p2}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 517
    iput-boolean v1, p0, Lcom/anythink/basead/a/b;->d:Z

    .line 518
    if-eqz p4, :cond_c6

    .line 519
    invoke-interface {p4}, Lcom/anythink/basead/a/b$a;->b()V

    .line 521
    :cond_c6
    return-void

    .line 524
    :cond_c7
    iget-object p2, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {p2}, Lcom/anythink/core/common/d/h;->s()I

    move-result p2

    const/4 p3, 0x2

    packed-switch p2, :pswitch_data_158

    .line 558
    iget-object p2, p0, Lcom/anythink/basead/a/b;->h:Lcom/anythink/core/common/d/i;

    iget-object p2, p2, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {p2}, Lcom/anythink/core/common/d/j;->a()I

    move-result p2

    if-ne p2, p3, :cond_14a

    .line 559
    new-instance p2, Lcom/anythink/basead/c/a;

    invoke-direct {p2}, Lcom/anythink/basead/c/a;-><init>()V

    .line 560
    iget-object p3, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    iput-object p3, p2, Lcom/anythink/basead/c/a;->c:Lcom/anythink/core/common/d/h;

    .line 561
    iget-object p3, p0, Lcom/anythink/basead/a/b;->h:Lcom/anythink/core/common/d/i;

    iput-object p3, p2, Lcom/anythink/basead/c/a;->g:Lcom/anythink/core/common/d/i;

    .line 562
    iput-object p1, p2, Lcom/anythink/basead/c/a;->f:Ljava/lang/String;

    .line 564
    iget-object p1, p0, Lcom/anythink/basead/a/b;->f:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->a(Landroid/content/Context;Lcom/anythink/basead/c/a;)V

    .line 565
    goto :goto_14f

    .line 547
    :pswitch_f0
    invoke-direct {p0, p1}, Lcom/anythink/basead/a/b;->b(Ljava/lang/String;)V

    .line 548
    goto :goto_14f

    .line 550
    :pswitch_f4
    new-instance p2, Lcom/anythink/basead/c/a;

    invoke-direct {p2}, Lcom/anythink/basead/c/a;-><init>()V

    .line 551
    iget-object p3, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    iput-object p3, p2, Lcom/anythink/basead/c/a;->c:Lcom/anythink/core/common/d/h;

    .line 552
    iget-object p3, p0, Lcom/anythink/basead/a/b;->h:Lcom/anythink/core/common/d/i;

    iput-object p3, p2, Lcom/anythink/basead/c/a;->g:Lcom/anythink/core/common/d/i;

    .line 553
    iput-object p1, p2, Lcom/anythink/basead/c/a;->f:Ljava/lang/String;

    .line 555
    iget-object p1, p0, Lcom/anythink/basead/a/b;->f:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->a(Landroid/content/Context;Lcom/anythink/basead/c/a;)V

    .line 556
    goto :goto_14f

    .line 543
    :pswitch_109
    iget-object p2, p0, Lcom/anythink/basead/a/b;->f:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/anythink/basead/a/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 545
    goto :goto_14f

    .line 526
    :pswitch_10f
    if-eqz p1, :cond_11a

    const-string p2, "http"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_11a

    goto :goto_11b

    :cond_11a
    move v0, v1

    .line 527
    :goto_11b
    iget-object p2, p0, Lcom/anythink/basead/a/b;->f:Landroid/content/Context;

    invoke-static {p2, p1, v0}, Lcom/anythink/basead/a/g;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p2

    .line 528
    if-nez p2, :cond_14f

    if-nez v0, :cond_14f

    .line 529
    iget-object p2, p0, Lcom/anythink/basead/a/b;->h:Lcom/anythink/core/common/d/i;

    iget-object p2, p2, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {p2}, Lcom/anythink/core/common/d/j;->a()I

    move-result p2

    if-ne p2, p3, :cond_144

    .line 530
    new-instance p2, Lcom/anythink/basead/c/a;

    invoke-direct {p2}, Lcom/anythink/basead/c/a;-><init>()V

    .line 531
    iget-object p3, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    iput-object p3, p2, Lcom/anythink/basead/c/a;->c:Lcom/anythink/core/common/d/h;

    .line 532
    iget-object p3, p0, Lcom/anythink/basead/a/b;->h:Lcom/anythink/core/common/d/i;

    iput-object p3, p2, Lcom/anythink/basead/c/a;->g:Lcom/anythink/core/common/d/i;

    .line 533
    iput-object p1, p2, Lcom/anythink/basead/c/a;->f:Ljava/lang/String;

    .line 535
    iget-object p1, p0, Lcom/anythink/basead/a/b;->f:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->a(Landroid/content/Context;Lcom/anythink/basead/c/a;)V

    .line 536
    goto :goto_14f

    .line 537
    :cond_144
    iget-object p2, p0, Lcom/anythink/basead/a/b;->f:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/anythink/basead/a/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_14f

    .line 566
    :cond_14a
    iget-object p2, p0, Lcom/anythink/basead/a/b;->f:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/anythink/basead/a/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 570
    :cond_14f
    :goto_14f
    iput-boolean v1, p0, Lcom/anythink/basead/a/b;->d:Z

    .line 571
    if-eqz p4, :cond_156

    .line 572
    invoke-interface {p4}, Lcom/anythink/basead/a/b$a;->b()V

    .line 575
    :cond_156
    return-void

    nop

    :pswitch_data_158
    .packed-switch 0x1
        :pswitch_10f
        :pswitch_109
        :pswitch_f4
        :pswitch_f0
    .end packed-switch
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 595
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 596
    if-eqz p1, :cond_14

    .line 597
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 598
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_15

    .line 599
    const/4 p0, 0x1

    return p0

    .line 603
    :cond_14
    goto :goto_19

    .line 602
    :catchall_15
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 604
    :goto_19
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Lcom/anythink/basead/a/b;Lcom/anythink/basead/c/h;Lcom/anythink/basead/a/b$a;)Z
    .registers 12

    .line 2122
    new-instance v0, Lcom/anythink/basead/c/c;

    invoke-direct {v0}, Lcom/anythink/basead/c/c;-><init>()V

    iput-object v0, p1, Lcom/anythink/basead/c/h;->i:Lcom/anythink/basead/c/c;

    .line 2123
    invoke-direct {p0}, Lcom/anythink/basead/a/b;->b()Lcom/anythink/basead/c/e;

    move-result-object v0

    .line 2124
    iget-object p1, p1, Lcom/anythink/basead/c/h;->i:Lcom/anythink/basead/c/c;

    const-string v1, ""

    if-eqz v0, :cond_14

    iget-object v0, v0, Lcom/anythink/basead/c/e;->c:Ljava/lang/String;

    goto :goto_15

    :cond_14
    move-object v0, v1

    :goto_15
    iput-object v0, p1, Lcom/anythink/basead/c/c;->a:Ljava/lang/String;

    .line 2125
    iget-object p1, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_7b

    .line 2127
    iget-object p1, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->d()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/anythink/basead/a/b;->h:Lcom/anythink/core/common/d/i;

    iget-object v2, v2, Lcom/anythink/core/common/d/i;->d:Ljava/lang/String;

    if-nez v2, :cond_31

    goto :goto_35

    :cond_31
    iget-object v1, p0, Lcom/anythink/basead/a/b;->h:Lcom/anythink/core/common/d/i;

    iget-object v1, v1, Lcom/anythink/core/common/d/i;->d:Ljava/lang/String;

    :goto_35
    const-string v2, "\\{req_id\\}"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2132
    iget-object p1, p0, Lcom/anythink/basead/a/b;->f:Landroid/content/Context;

    invoke-static {p1, v6, v0}, Lcom/anythink/basead/a/g;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_65

    .line 2133
    iget-object p1, p0, Lcom/anythink/basead/a/b;->h:Lcom/anythink/core/common/d/i;

    iget-object v3, p1, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->e()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->b()I

    move-result v5

    const/4 v8, 0x1

    const-string v7, "1"

    invoke-static/range {v3 .. v8}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 2134
    iput-boolean v0, p0, Lcom/anythink/basead/a/b;->d:Z

    .line 2135
    const/4 p0, 0x1

    if-eqz p2, :cond_64

    .line 2136
    invoke-interface {p2}, Lcom/anythink/basead/a/b$a;->b()V

    .line 2137
    invoke-interface {p2, p0}, Lcom/anythink/basead/a/b$a;->a(Z)V

    .line 2140
    :cond_64
    return p0

    .line 2142
    :cond_65
    iget-object p1, p0, Lcom/anythink/basead/a/b;->h:Lcom/anythink/core/common/d/i;

    iget-object v3, p1, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->e()Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {p0}, Lcom/anythink/core/common/d/h;->b()I

    move-result v5

    const/4 v8, 0x1

    const-string v7, "0"

    invoke-static/range {v3 .. v8}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 2145
    :cond_7b
    nop

    .line 39
    return v0
.end method

.method private b()Lcom/anythink/basead/c/e;
    .registers 4

    .line 440
    invoke-static {}, Lcom/anythink/basead/a/c;->a()Lcom/anythink/basead/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/h;->b()I

    move-result v1

    iget-object v2, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {v2}, Lcom/anythink/core/common/d/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/a/c;->a(ILjava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 6

    .line 583
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, ".apk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 584
    iget-object v0, p0, Lcom/anythink/basead/a/b;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/basead/a/b;->h:Lcom/anythink/core/common/d/i;

    iget-object v2, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-direct {p0}, Lcom/anythink/basead/a/b;->b()Lcom/anythink/basead/c/e;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, p1}, Lcom/anythink/basead/a/a;->a(Landroid/content/Context;Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;Lcom/anythink/basead/c/e;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 588
    :cond_1e
    iget-object v0, p0, Lcom/anythink/basead/a/b;->f:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/anythink/basead/a/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 590
    :cond_23
    return-void
.end method

.method static synthetic b(Lcom/anythink/basead/a/b;Lcom/anythink/basead/c/h;Lcom/anythink/basead/a/b$a;)Z
    .registers 3

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/anythink/basead/a/b;->c(Lcom/anythink/basead/c/h;Lcom/anythink/basead/a/b$a;)Z

    move-result p0

    return p0
.end method

.method private b(Lcom/anythink/basead/c/h;Lcom/anythink/basead/a/b$a;)Z
    .registers 12

    .line 122
    new-instance v0, Lcom/anythink/basead/c/c;

    invoke-direct {v0}, Lcom/anythink/basead/c/c;-><init>()V

    iput-object v0, p1, Lcom/anythink/basead/c/h;->i:Lcom/anythink/basead/c/c;

    .line 123
    invoke-direct {p0}, Lcom/anythink/basead/a/b;->b()Lcom/anythink/basead/c/e;

    move-result-object v0

    .line 124
    iget-object p1, p1, Lcom/anythink/basead/c/h;->i:Lcom/anythink/basead/c/c;

    const-string v1, ""

    if-eqz v0, :cond_14

    iget-object v0, v0, Lcom/anythink/basead/c/e;->c:Ljava/lang/String;

    goto :goto_15

    :cond_14
    move-object v0, v1

    :goto_15
    iput-object v0, p1, Lcom/anythink/basead/c/c;->a:Ljava/lang/String;

    .line 125
    iget-object p1, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_7b

    .line 127
    iget-object p1, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->d()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/anythink/basead/a/b;->h:Lcom/anythink/core/common/d/i;

    iget-object v2, v2, Lcom/anythink/core/common/d/i;->d:Ljava/lang/String;

    if-nez v2, :cond_31

    goto :goto_35

    :cond_31
    iget-object v1, p0, Lcom/anythink/basead/a/b;->h:Lcom/anythink/core/common/d/i;

    iget-object v1, v1, Lcom/anythink/core/common/d/i;->d:Ljava/lang/String;

    :goto_35
    const-string v2, "\\{req_id\\}"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 132
    iget-object p1, p0, Lcom/anythink/basead/a/b;->f:Landroid/content/Context;

    invoke-static {p1, v6, v0}, Lcom/anythink/basead/a/g;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_65

    .line 133
    iget-object p1, p0, Lcom/anythink/basead/a/b;->h:Lcom/anythink/core/common/d/i;

    iget-object v3, p1, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->e()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->b()I

    move-result v5

    const/4 v8, 0x1

    const-string v7, "1"

    invoke-static/range {v3 .. v8}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 134
    iput-boolean v0, p0, Lcom/anythink/basead/a/b;->d:Z

    .line 135
    const/4 p1, 0x1

    if-eqz p2, :cond_64

    .line 136
    invoke-interface {p2}, Lcom/anythink/basead/a/b$a;->b()V

    .line 137
    invoke-interface {p2, p1}, Lcom/anythink/basead/a/b$a;->a(Z)V

    .line 140
    :cond_64
    return p1

    .line 142
    :cond_65
    iget-object p1, p0, Lcom/anythink/basead/a/b;->h:Lcom/anythink/core/common/d/i;

    iget-object v3, p1, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->e()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->b()I

    move-result v5

    const/4 v8, 0x1

    const-string v7, "0"

    invoke-static/range {v3 .. v8}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 145
    :cond_7b
    return v0
.end method

.method private c()Z
    .registers 4

    .line 608
    iget-object v0, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/h;->c()I

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_1b

    iget-object v0, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    instance-of v2, v0, Lcom/anythink/core/common/d/t;

    if-eqz v2, :cond_19

    check-cast v0, Lcom/anythink/core/common/d/t;

    .line 609
    invoke-virtual {v0}, Lcom/anythink/core/common/d/t;->a()I

    move-result v0

    if-ne v0, v1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    .line 608
    return v0

    .line 609
    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    return v0
.end method

.method private c(Lcom/anythink/basead/c/h;Lcom/anythink/basead/a/b$a;)Z
    .registers 13

    .line 155
    new-instance v0, Lcom/anythink/basead/c/c;

    invoke-direct {v0}, Lcom/anythink/basead/c/c;-><init>()V

    iput-object v0, p1, Lcom/anythink/basead/c/h;->i:Lcom/anythink/basead/c/c;

    .line 156
    invoke-direct {p0}, Lcom/anythink/basead/a/b;->b()Lcom/anythink/basead/c/e;

    move-result-object v0

    .line 157
    iget-object v1, p1, Lcom/anythink/basead/c/h;->i:Lcom/anythink/basead/c/c;

    const-string v2, ""

    if-eqz v0, :cond_14

    iget-object v0, v0, Lcom/anythink/basead/c/e;->c:Ljava/lang/String;

    goto :goto_15

    :cond_14
    move-object v0, v2

    :goto_15
    iput-object v0, v1, Lcom/anythink/basead/c/c;->a:Ljava/lang/String;

    .line 158
    const/16 v0, 0x17

    iget-object v1, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-static {v0, v1, p1}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 160
    iget-object v0, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/h;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a6

    .line 162
    iget-object v0, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/h;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/anythink/basead/a/b;->h:Lcom/anythink/core/common/d/i;

    iget-object v3, v3, Lcom/anythink/core/common/d/i;->d:Ljava/lang/String;

    if-nez v3, :cond_38

    goto :goto_3c

    :cond_38
    iget-object v2, p0, Lcom/anythink/basead/a/b;->h:Lcom/anythink/core/common/d/i;

    iget-object v2, v2, Lcom/anythink/core/common/d/i;->d:Ljava/lang/String;

    :goto_3c
    const-string v3, "\\{req_id\\}"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 167
    iget-object v0, p0, Lcom/anythink/basead/a/b;->f:Landroid/content/Context;

    invoke-static {v0, v7, v1}, Lcom/anythink/basead/a/g;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 168
    iget-object v0, p0, Lcom/anythink/basead/a/b;->h:Lcom/anythink/core/common/d/i;

    iget-object v4, v0, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/h;->e()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/h;->b()I

    move-result v6

    const/4 v9, 0x0

    const-string v8, "1"

    invoke-static/range {v4 .. v9}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 169
    iput-boolean v1, p0, Lcom/anythink/basead/a/b;->d:Z

    .line 170
    const/4 v0, 0x1

    if-eqz p2, :cond_6b

    .line 171
    invoke-interface {p2}, Lcom/anythink/basead/a/b$a;->b()V

    .line 172
    invoke-interface {p2, v0}, Lcom/anythink/basead/a/b$a;->a(Z)V

    .line 174
    :cond_6b
    const/16 p2, 0x18

    iget-object v1, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-static {p2, v1, p1}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 175
    return v0

    .line 178
    :cond_73
    iget-object p2, p0, Lcom/anythink/basead/a/b;->f:Landroid/content/Context;

    iget-object v0, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/h;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/anythink/basead/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_89

    .line 179
    const/16 p2, 0x1c

    iget-object v0, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-static {p2, v0, p1}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    goto :goto_90

    .line 181
    :cond_89
    const/16 p2, 0x1d

    iget-object v0, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-static {p2, v0, p1}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 183
    :goto_90
    iget-object p1, p0, Lcom/anythink/basead/a/b;->h:Lcom/anythink/core/common/d/i;

    iget-object v4, p1, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->e()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/anythink/basead/a/b;->c:Lcom/anythink/core/common/d/h;

    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->b()I

    move-result v6

    const/4 v9, 0x0

    const-string v8, "0"

    invoke-static/range {v4 .. v9}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 186
    :cond_a6
    return v1
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 616
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/a/b;->e:Z

    .line 617
    return-void
.end method

.method public final a(Lcom/anythink/basead/c/h;Lcom/anythink/basead/a/b$a;)V
    .registers 5

    .line 81
    iget-boolean v0, p0, Lcom/anythink/basead/a/b;->d:Z

    if-eqz v0, :cond_5

    .line 82
    return-void

    .line 86
    :cond_5
    invoke-interface {p2}, Lcom/anythink/basead/a/b$a;->a()V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/a/b;->d:Z

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/basead/a/b;->e:Z

    .line 92
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/a/b$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/basead/a/b$1;-><init>(Lcom/anythink/basead/a/b;Lcom/anythink/basead/c/h;Lcom/anythink/basead/a/b$a;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method
