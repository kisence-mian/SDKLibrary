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
    .registers 8

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->l:I

    .line 155
    iput-wide p1, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->a:J

    .line 156
    iput-object p3, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->b:Lcom/bytedance/sdk/a/b/y;

    .line 157
    iput-object p4, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->c:Lcom/bytedance/sdk/a/b/aa;

    .line 159
    if-eqz p4, :cond_7a

    .line 160
    invoke-virtual {p4}, Lcom/bytedance/sdk/a/b/aa;->l()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->i:J

    .line 161
    invoke-virtual {p4}, Lcom/bytedance/sdk/a/b/aa;->m()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->j:J

    .line 162
    invoke-virtual {p4}, Lcom/bytedance/sdk/a/b/aa;->g()Lcom/bytedance/sdk/a/b/r;

    move-result-object p1

    .line 163
    const/4 p2, 0x0

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/r;->a()I

    move-result p3

    :goto_23
    if-ge p2, p3, :cond_7a

    .line 164
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/a/b/r;->a(I)Ljava/lang/String;

    move-result-object p4

    .line 165
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/a/b/r;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 166
    const-string v2, "Date"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 167
    invoke-static {v1}, Lcom/bytedance/sdk/a/b/a/c/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->d:Ljava/util/Date;

    .line 168
    iput-object v1, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->e:Ljava/lang/String;

    goto :goto_77

    .line 169
    :cond_3e
    const-string v2, "Expires"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 170
    invoke-static {v1}, Lcom/bytedance/sdk/a/b/a/c/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->h:Ljava/util/Date;

    goto :goto_77

    .line 171
    :cond_4d
    const-string v2, "Last-Modified"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 172
    invoke-static {v1}, Lcom/bytedance/sdk/a/b/a/c/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->f:Ljava/util/Date;

    .line 173
    iput-object v1, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->g:Ljava/lang/String;

    goto :goto_77

    .line 174
    :cond_5e
    const-string v2, "ETag"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 175
    iput-object v1, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->k:Ljava/lang/String;

    goto :goto_77

    .line 176
    :cond_69
    const-string v2, "Age"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_77

    .line 177
    invoke-static {v1, v0}, Lcom/bytedance/sdk/a/b/a/c/e;->b(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->l:I

    .line 163
    :cond_77
    :goto_77
    add-int/lit8 p2, p2, 0x1

    goto :goto_23

    .line 181
    :cond_7a
    return-void
.end method

.method private static a(Lcom/bytedance/sdk/a/b/y;)Z
    .registers 2

    .line 342
    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/b/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/b/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method private b()Lcom/bytedance/sdk/a/b/a/a/c;
    .registers 14

    .line 202
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->c:Lcom/bytedance/sdk/a/b/aa;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 203
    new-instance v0, Lcom/bytedance/sdk/a/b/a/a/c;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->b:Lcom/bytedance/sdk/a/b/y;

    invoke-direct {v0, v2, v1}, Lcom/bytedance/sdk/a/b/a/a/c;-><init>(Lcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/aa;)V

    return-object v0

    .line 207
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->b:Lcom/bytedance/sdk/a/b/y;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/y;->g()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->c:Lcom/bytedance/sdk/a/b/aa;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->f()Lcom/bytedance/sdk/a/b/q;

    move-result-object v0

    if-nez v0, :cond_25

    .line 208
    new-instance v0, Lcom/bytedance/sdk/a/b/a/a/c;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->b:Lcom/bytedance/sdk/a/b/y;

    invoke-direct {v0, v2, v1}, Lcom/bytedance/sdk/a/b/a/a/c;-><init>(Lcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/aa;)V

    return-object v0

    .line 214
    :cond_25
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->c:Lcom/bytedance/sdk/a/b/aa;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->b:Lcom/bytedance/sdk/a/b/y;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/a/b/a/a/c;->a(Lcom/bytedance/sdk/a/b/aa;Lcom/bytedance/sdk/a/b/y;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 215
    new-instance v0, Lcom/bytedance/sdk/a/b/a/a/c;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->b:Lcom/bytedance/sdk/a/b/y;

    invoke-direct {v0, v2, v1}, Lcom/bytedance/sdk/a/b/a/a/c;-><init>(Lcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/aa;)V

    return-object v0

    .line 218
    :cond_37
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->b:Lcom/bytedance/sdk/a/b/y;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/y;->f()Lcom/bytedance/sdk/a/b/d;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/d;->a()Z

    move-result v2

    if-nez v2, :cond_130

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->b:Lcom/bytedance/sdk/a/b/y;

    invoke-static {v2}, Lcom/bytedance/sdk/a/b/a/a/c$a;->a(Lcom/bytedance/sdk/a/b/y;)Z

    move-result v2

    if-eqz v2, :cond_4d

    goto/16 :goto_130

    .line 223
    :cond_4d
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->c:Lcom/bytedance/sdk/a/b/aa;

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/aa;->k()Lcom/bytedance/sdk/a/b/d;

    move-result-object v2

    .line 224
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/d;->j()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 225
    new-instance v0, Lcom/bytedance/sdk/a/b/a/a/c;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->c:Lcom/bytedance/sdk/a/b/aa;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/a/b/a/a/c;-><init>(Lcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/aa;)V

    return-object v0

    .line 228
    :cond_61
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/a/c$a;->d()J

    move-result-wide v3

    .line 229
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/a/c$a;->c()J

    move-result-wide v5

    .line 231
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/d;->c()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_7f

    .line 232
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/d;->c()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v7, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 235
    :cond_7f
    nop

    .line 236
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/d;->h()I

    move-result v7

    const-wide/16 v9, 0x0

    if-eq v7, v8, :cond_94

    .line 237
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/d;->h()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v7, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    goto :goto_95

    .line 236
    :cond_94
    move-wide v11, v9

    .line 240
    :goto_95
    nop

    .line 241
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/d;->f()Z

    move-result v7

    if-nez v7, :cond_ad

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/d;->g()I

    move-result v7

    if-eq v7, v8, :cond_ad

    .line 242
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/d;->g()I

    move-result v0

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    .line 245
    :cond_ad
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/d;->a()Z

    move-result v0

    if-nez v0, :cond_e6

    add-long/2addr v11, v3

    add-long/2addr v9, v5

    cmp-long v0, v11, v9

    if-gez v0, :cond_e6

    .line 246
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->c:Lcom/bytedance/sdk/a/b/aa;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->i()Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 247
    cmp-long v2, v11, v5

    const-string v5, "Warning"

    if-ltz v2, :cond_ca

    .line 248
    const-string v2, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v0, v5, v2}, Lcom/bytedance/sdk/a/b/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/aa$a;

    .line 250
    :cond_ca
    const-wide/32 v6, 0x5265c00

    .line 251
    cmp-long v2, v3, v6

    if-lez v2, :cond_dc

    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/a/c$a;->e()Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 252
    const-string v2, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v0, v5, v2}, Lcom/bytedance/sdk/a/b/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/aa$a;

    .line 254
    :cond_dc
    new-instance v2, Lcom/bytedance/sdk/a/b/a/a/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa$a;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/bytedance/sdk/a/b/a/a/c;-><init>(Lcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/aa;)V

    return-object v2

    .line 261
    :cond_e6
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->k:Ljava/lang/String;

    const-string v2, "If-Modified-Since"

    if-eqz v0, :cond_f0

    .line 262
    nop

    .line 263
    const-string v2, "If-None-Match"

    goto :goto_ff

    .line 264
    :cond_f0
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->f:Ljava/util/Date;

    if-eqz v0, :cond_f8

    .line 265
    nop

    .line 266
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->g:Ljava/lang/String;

    goto :goto_ff

    .line 267
    :cond_f8
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->d:Ljava/util/Date;

    if-eqz v0, :cond_128

    .line 268
    nop

    .line 269
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->e:Ljava/lang/String;

    .line 274
    :goto_ff
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->b:Lcom/bytedance/sdk/a/b/y;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/y;->c()Lcom/bytedance/sdk/a/b/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/r;->c()Lcom/bytedance/sdk/a/b/r$a;

    move-result-object v1

    .line 275
    sget-object v3, Lcom/bytedance/sdk/a/b/a/a;->a:Lcom/bytedance/sdk/a/b/a/a;

    invoke-virtual {v3, v1, v2, v0}, Lcom/bytedance/sdk/a/b/a/a;->a(Lcom/bytedance/sdk/a/b/r$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->b:Lcom/bytedance/sdk/a/b/y;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/y;->e()Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v0

    .line 278
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/r$a;->a()Lcom/bytedance/sdk/a/b/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/y$a;->a(Lcom/bytedance/sdk/a/b/r;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/y$a;->d()Lcom/bytedance/sdk/a/b/y;

    move-result-object v0

    .line 280
    new-instance v1, Lcom/bytedance/sdk/a/b/a/a/c;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->c:Lcom/bytedance/sdk/a/b/aa;

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/a/b/a/a/c;-><init>(Lcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/aa;)V

    return-object v1

    .line 271
    :cond_128
    new-instance v0, Lcom/bytedance/sdk/a/b/a/a/c;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->b:Lcom/bytedance/sdk/a/b/y;

    invoke-direct {v0, v2, v1}, Lcom/bytedance/sdk/a/b/a/a/c;-><init>(Lcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/aa;)V

    return-object v0

    .line 220
    :cond_130
    :goto_130
    new-instance v0, Lcom/bytedance/sdk/a/b/a/a/c;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->b:Lcom/bytedance/sdk/a/b/y;

    invoke-direct {v0, v2, v1}, Lcom/bytedance/sdk/a/b/a/a/c;-><init>(Lcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/aa;)V

    return-object v0
.end method

.method private c()J
    .registers 8

    .line 288
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->c:Lcom/bytedance/sdk/a/b/aa;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->k()Lcom/bytedance/sdk/a/b/d;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/d;->c()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_19

    .line 290
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/d;->c()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    .line 291
    :cond_19
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->h:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_37

    .line 292
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->d:Ljava/util/Date;

    if-eqz v0, :cond_28

    .line 293
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_2a

    :cond_28
    iget-wide v3, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->j:J

    .line 295
    :goto_2a
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->h:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 296
    cmp-long v0, v5, v1

    if-lez v0, :cond_36

    move-wide v1, v5

    :cond_36
    return-wide v1

    .line 297
    :cond_37
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->f:Ljava/util/Date;

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->c:Lcom/bytedance/sdk/a/b/aa;

    .line 298
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/y;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/s;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_66

    .line 303
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->d:Ljava/util/Date;

    if-eqz v0, :cond_54

    .line 304
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_56

    :cond_54
    iget-wide v3, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->i:J

    .line 306
    :goto_56
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->f:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 307
    cmp-long v0, v3, v1

    if-lez v0, :cond_65

    const-wide/16 v0, 0xa

    div-long v1, v3, v0

    :cond_65
    return-wide v1

    .line 309
    :cond_66
    return-wide v1
.end method

.method private d()J
    .registers 10

    .line 317
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->d:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_12

    iget-wide v3, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->j:J

    .line 318
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_13

    :cond_12
    nop

    .line 320
    :goto_13
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->l:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_26

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->l:I

    int-to-long v3, v3

    .line 321
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_27

    :cond_26
    nop

    .line 323
    :goto_27
    iget-wide v3, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->j:J

    iget-wide v5, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->i:J

    sub-long v5, v3, v5

    .line 324
    iget-wide v7, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->a:J

    sub-long/2addr v7, v3

    .line 325
    add-long/2addr v1, v5

    add-long/2addr v1, v7

    return-wide v1
.end method

.method private e()Z
    .registers 3

    .line 333
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->c:Lcom/bytedance/sdk/a/b/aa;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->k()Lcom/bytedance/sdk/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/d;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->h:Ljava/util/Date;

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/a/b/a/a/c;
    .registers 3

    .line 187
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/a/c$a;->b()Lcom/bytedance/sdk/a/b/a/a/c;

    move-result-object v0

    .line 189
    iget-object v1, v0, Lcom/bytedance/sdk/a/b/a/a/c;->a:Lcom/bytedance/sdk/a/b/y;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/a/c$a;->b:Lcom/bytedance/sdk/a/b/y;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/y;->f()Lcom/bytedance/sdk/a/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/d;->i()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 191
    new-instance v0, Lcom/bytedance/sdk/a/b/a/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/bytedance/sdk/a/b/a/a/c;-><init>(Lcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/aa;)V

    return-object v0

    .line 194
    :cond_1b
    return-object v0
.end method
