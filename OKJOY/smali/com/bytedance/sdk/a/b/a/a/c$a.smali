.class public Lcom/bytedance/sdk/a/b/a/a/c$a;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:J

.field final b:Lcom/bytedance/sdk/a/b/y;

.field final c:Lcom/bytedance/sdk/a/b/aa;

.field private d:Ljava/util/Date;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Date;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Date;

.field private i:J

.field private j:J

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>(JLcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/aa;)V
    .registers 12

    .prologue
    const/4 v6, -0x1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput v6, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->l:I

    .line 155
    iput-wide p1, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->a:J

    .line 156
    iput-object p3, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->b:Lcom/bytedance/sdk/a/b/y;

    .line 157
    iput-object p4, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->c:Lcom/bytedance/sdk/a/b/aa;

    .line 159
    if-eqz p4, :cond_7a

    .line 160
    invoke-virtual {p4}, Lcom/bytedance/sdk/a/b/aa;->k()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->i:J

    .line 161
    invoke-virtual {p4}, Lcom/bytedance/sdk/a/b/aa;->l()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->j:J

    .line 162
    invoke-virtual {p4}, Lcom/bytedance/sdk/a/b/aa;->f()Lcom/bytedance/sdk/a/b/r;

    move-result-object v1

    .line 163
    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/r;->a()I

    move-result v2

    :goto_23
    if-ge v0, v2, :cond_7a

    .line 164
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/a/b/r;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/a/b/r;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 166
    const-string v5, "Date"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 167
    invoke-static {v4}, Lcom/bytedance/sdk/a/b/a/c/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->d:Ljava/util/Date;

    .line 168
    iput-object v4, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->e:Ljava/lang/String;

    .line 163
    :cond_3d
    :goto_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 169
    :cond_40
    const-string v5, "Expires"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 170
    invoke-static {v4}, Lcom/bytedance/sdk/a/b/a/c/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->h:Ljava/util/Date;

    goto :goto_3d

    .line 171
    :cond_4f
    const-string v5, "Last-Modified"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 172
    invoke-static {v4}, Lcom/bytedance/sdk/a/b/a/c/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->f:Ljava/util/Date;

    .line 173
    iput-object v4, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->g:Ljava/lang/String;

    goto :goto_3d

    .line 174
    :cond_60
    const-string v5, "ETag"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 175
    iput-object v4, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->k:Ljava/lang/String;

    goto :goto_3d

    .line 176
    :cond_6b
    const-string v5, "Age"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 177
    invoke-static {v4, v6}, Lcom/bytedance/sdk/a/b/a/c/e;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->l:I

    goto :goto_3d

    .line 181
    :cond_7a
    return-void
.end method

.method private static a(Lcom/bytedance/sdk/a/b/y;)Z
    .registers 2

    .prologue
    .line 342
    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/b/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/b/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private b()Lcom/bytedance/sdk/a/b/a/a/c;
    .registers 15

    .prologue
    const-wide/16 v4, 0x0

    const/4 v13, -0x1

    const/4 v12, 0x0

    .line 202
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->c:Lcom/bytedance/sdk/a/b/aa;

    if-nez v0, :cond_10

    .line 203
    new-instance v0, Lcom/bytedance/sdk/a/b/a/a/c;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->b:Lcom/bytedance/sdk/a/b/y;

    invoke-direct {v0, v1, v12}, Lcom/bytedance/sdk/a/b/a/a/c;-><init>(Lcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/aa;)V

    .line 280
    :goto_f
    return-object v0

    .line 207
    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->b:Lcom/bytedance/sdk/a/b/y;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/y;->g()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->c:Lcom/bytedance/sdk/a/b/aa;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->e()Lcom/bytedance/sdk/a/b/q;

    move-result-object v0

    if-nez v0, :cond_28

    .line 208
    new-instance v0, Lcom/bytedance/sdk/a/b/a/a/c;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->b:Lcom/bytedance/sdk/a/b/y;

    invoke-direct {v0, v1, v12}, Lcom/bytedance/sdk/a/b/a/a/c;-><init>(Lcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/aa;)V

    goto :goto_f

    .line 214
    :cond_28
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->c:Lcom/bytedance/sdk/a/b/aa;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->b:Lcom/bytedance/sdk/a/b/y;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/a/a/c;->a(Lcom/bytedance/sdk/a/b/aa;Lcom/bytedance/sdk/a/b/y;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 215
    new-instance v0, Lcom/bytedance/sdk/a/b/a/a/c;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->b:Lcom/bytedance/sdk/a/b/y;

    invoke-direct {v0, v1, v12}, Lcom/bytedance/sdk/a/b/a/a/c;-><init>(Lcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/aa;)V

    goto :goto_f

    .line 218
    :cond_3a
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->b:Lcom/bytedance/sdk/a/b/y;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/y;->f()Lcom/bytedance/sdk/a/b/d;

    move-result-object v6

    .line 219
    invoke-virtual {v6}, Lcom/bytedance/sdk/a/b/d;->a()Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->b:Lcom/bytedance/sdk/a/b/y;

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/a/c$a;->a(Lcom/bytedance/sdk/a/b/y;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 220
    :cond_4e
    new-instance v0, Lcom/bytedance/sdk/a/b/a/a/c;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->b:Lcom/bytedance/sdk/a/b/y;

    invoke-direct {v0, v1, v12}, Lcom/bytedance/sdk/a/b/a/a/c;-><init>(Lcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/aa;)V

    goto :goto_f

    .line 223
    :cond_56
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->c:Lcom/bytedance/sdk/a/b/aa;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->j()Lcom/bytedance/sdk/a/b/d;

    move-result-object v7

    .line 224
    invoke-virtual {v7}, Lcom/bytedance/sdk/a/b/d;->j()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 225
    new-instance v0, Lcom/bytedance/sdk/a/b/a/a/c;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->c:Lcom/bytedance/sdk/a/b/aa;

    invoke-direct {v0, v12, v1}, Lcom/bytedance/sdk/a/b/a/a/c;-><init>(Lcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/aa;)V

    goto :goto_f

    .line 228
    :cond_6a
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/a/c$a;->d()J

    move-result-wide v8

    .line 229
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/a/c$a;->c()J

    move-result-wide v0

    .line 231
    invoke-virtual {v6}, Lcom/bytedance/sdk/a/b/d;->c()I

    move-result v2

    if-eq v2, v13, :cond_87

    .line 232
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lcom/bytedance/sdk/a/b/d;->c()I

    move-result v3

    int-to-long v10, v3

    invoke-virtual {v2, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 236
    :cond_87
    invoke-virtual {v6}, Lcom/bytedance/sdk/a/b/d;->h()I

    move-result v2

    if-eq v2, v13, :cond_13a

    .line 237
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lcom/bytedance/sdk/a/b/d;->h()I

    move-result v3

    int-to-long v10, v3

    invoke-virtual {v2, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 241
    :goto_98
    invoke-virtual {v7}, Lcom/bytedance/sdk/a/b/d;->f()Z

    move-result v10

    if-nez v10, :cond_af

    invoke-virtual {v6}, Lcom/bytedance/sdk/a/b/d;->g()I

    move-result v10

    if-eq v10, v13, :cond_af

    .line 242
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lcom/bytedance/sdk/a/b/d;->g()I

    move-result v5

    int-to-long v10, v5

    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 245
    :cond_af
    invoke-virtual {v7}, Lcom/bytedance/sdk/a/b/d;->a()Z

    move-result v6

    if-nez v6, :cond_ed

    add-long v6, v8, v2

    add-long/2addr v4, v0

    cmp-long v4, v6, v4

    if-gez v4, :cond_ed

    .line 246
    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->c:Lcom/bytedance/sdk/a/b/aa;

    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/aa;->h()Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v4

    .line 247
    add-long/2addr v2, v8

    cmp-long v0, v2, v0

    if-ltz v0, :cond_ce

    .line 248
    const-string v0, "Warning"

    const-string v1, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v4, v0, v1}, Lcom/bytedance/sdk/a/b/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/aa$a;

    .line 250
    :cond_ce
    const-wide/32 v0, 0x5265c00

    .line 251
    cmp-long v0, v8, v0

    if-lez v0, :cond_e2

    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/a/c$a;->e()Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 252
    const-string v0, "Warning"

    const-string v1, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v4, v0, v1}, Lcom/bytedance/sdk/a/b/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/aa$a;

    .line 254
    :cond_e2
    new-instance v0, Lcom/bytedance/sdk/a/b/a/a/c;

    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/aa$a;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object v1

    invoke-direct {v0, v12, v1}, Lcom/bytedance/sdk/a/b/a/a/c;-><init>(Lcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/aa;)V

    goto/16 :goto_f

    .line 261
    :cond_ed
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->k:Ljava/lang/String;

    if-eqz v0, :cond_11f

    .line 262
    const-string v1, "If-None-Match"

    .line 263
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->k:Ljava/lang/String;

    .line 274
    :goto_f5
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->b:Lcom/bytedance/sdk/a/b/y;

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/y;->c()Lcom/bytedance/sdk/a/b/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/r;->b()Lcom/bytedance/sdk/a/b/r$a;

    move-result-object v2

    .line 275
    sget-object v3, Lcom/bytedance/sdk/a/b/a/a;->a:Lcom/bytedance/sdk/a/b/a/a;

    invoke-virtual {v3, v2, v1, v0}, Lcom/bytedance/sdk/a/b/a/a;->a(Lcom/bytedance/sdk/a/b/r$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->b:Lcom/bytedance/sdk/a/b/y;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/y;->e()Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v0

    .line 278
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/r$a;->a()Lcom/bytedance/sdk/a/b/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/y$a;->a(Lcom/bytedance/sdk/a/b/r;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/y$a;->d()Lcom/bytedance/sdk/a/b/y;

    move-result-object v1

    .line 280
    new-instance v0, Lcom/bytedance/sdk/a/b/a/a/c;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->c:Lcom/bytedance/sdk/a/b/aa;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/a/b/a/a/c;-><init>(Lcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/aa;)V

    goto/16 :goto_f

    .line 264
    :cond_11f
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->f:Ljava/util/Date;

    if-eqz v0, :cond_128

    .line 265
    const-string v1, "If-Modified-Since"

    .line 266
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->g:Ljava/lang/String;

    goto :goto_f5

    .line 267
    :cond_128
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->d:Ljava/util/Date;

    if-eqz v0, :cond_131

    .line 268
    const-string v1, "If-Modified-Since"

    .line 269
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->e:Ljava/lang/String;

    goto :goto_f5

    .line 271
    :cond_131
    new-instance v0, Lcom/bytedance/sdk/a/b/a/a/c;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->b:Lcom/bytedance/sdk/a/b/y;

    invoke-direct {v0, v1, v12}, Lcom/bytedance/sdk/a/b/a/a/c;-><init>(Lcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/aa;)V

    goto/16 :goto_f

    :cond_13a
    move-wide v2, v4

    goto/16 :goto_98
.end method

.method private c()J
    .registers 7

    .prologue
    const-wide/16 v2, 0x0

    .line 288
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->c:Lcom/bytedance/sdk/a/b/aa;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->j()Lcom/bytedance/sdk/a/b/d;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/d;->c()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1b

    .line 290
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/d;->c()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 309
    :cond_1a
    :goto_1a
    return-wide v2

    .line 291
    :cond_1b
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->h:Ljava/util/Date;

    if-eqz v0, :cond_3c

    .line 292
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->d:Ljava/util/Date;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->d:Ljava/util/Date;

    .line 293
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 295
    :goto_29
    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->h:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v4, v0

    .line 296
    cmp-long v4, v0, v2

    if-lez v4, :cond_3a

    :goto_35
    move-wide v2, v0

    goto :goto_1a

    .line 293
    :cond_37
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->j:J

    goto :goto_29

    :cond_3a
    move-wide v0, v2

    .line 296
    goto :goto_35

    .line 297
    :cond_3c
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->f:Ljava/util/Date;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->c:Lcom/bytedance/sdk/a/b/aa;

    .line 298
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/y;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/s;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 303
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->d:Ljava/util/Date;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->d:Ljava/util/Date;

    .line 304
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 306
    :goto_5a
    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->f:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 307
    cmp-long v4, v0, v2

    if-lez v4, :cond_1a

    const-wide/16 v2, 0xa

    div-long v2, v0, v2

    goto :goto_1a

    .line 304
    :cond_6a
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->i:J

    goto :goto_5a
.end method

.method private d()J
    .registers 9

    .prologue
    const-wide/16 v0, 0x0

    .line 317
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->d:Ljava/util/Date;

    if-eqz v2, :cond_13

    iget-wide v2, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->j:J

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->d:Ljava/util/Date;

    .line 318
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 320
    :cond_13
    iget v2, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->l:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_25

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->l:I

    int-to-long v4, v3

    .line 321
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 323
    :cond_25
    iget-wide v2, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->j:J

    iget-wide v4, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->i:J

    sub-long/2addr v2, v4

    .line 324
    iget-wide v4, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->a:J

    iget-wide v6, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->j:J

    sub-long/2addr v4, v6

    .line 325
    add-long/2addr v0, v2

    add-long/2addr v0, v4

    return-wide v0
.end method

.method private e()Z
    .registers 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->c:Lcom/bytedance/sdk/a/b/aa;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->j()Lcom/bytedance/sdk/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/d;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->h:Ljava/util/Date;

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/a/b/a/a/c;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 187
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/a/c$a;->b()Lcom/bytedance/sdk/a/b/a/a/c;

    move-result-object v0

    .line 189
    iget-object v1, v0, Lcom/bytedance/sdk/a/b/a/a/c;->a:Lcom/bytedance/sdk/a/b/y;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->b:Lcom/bytedance/sdk/a/b/y;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/y;->f()Lcom/bytedance/sdk/a/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/d;->i()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 191
    new-instance v0, Lcom/bytedance/sdk/a/b/a/a/c;

    invoke-direct {v0, v2, v2}, Lcom/bytedance/sdk/a/b/a/a/c;-><init>(Lcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/aa;)V

    .line 194
    :cond_1a
    return-object v0
.end method
