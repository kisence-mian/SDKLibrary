.class public final Lcom/tapjoy/internal/hr;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/tapjoy/internal/ev;)Ljava/lang/String;
    .registers 4

    .line 70
    new-instance v0, Lcom/tapjoy/internal/bc;

    invoke-direct {v0}, Lcom/tapjoy/internal/bc;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/bc;->c()Lcom/tapjoy/internal/bc;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/tapjoy/internal/ev;->e:Ljava/lang/String;

    if-eqz v1, :cond_18

    .line 72
    const-string v1, "pkg_ver"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ev;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 74
    :cond_18
    iget-object v1, p0, Lcom/tapjoy/internal/ev;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_27

    .line 75
    const-string v1, "pkg_rev"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ev;->f:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 77
    :cond_27
    iget-object v1, p0, Lcom/tapjoy/internal/ev;->g:Ljava/lang/String;

    if-eqz v1, :cond_36

    .line 78
    const-string v1, "data_ver"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ev;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 80
    :cond_36
    iget-object v1, p0, Lcom/tapjoy/internal/ev;->h:Ljava/lang/String;

    if-eqz v1, :cond_45

    .line 81
    const-string v1, "installer"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ev;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 83
    :cond_45
    iget-object v1, p0, Lcom/tapjoy/internal/ev;->i:Ljava/lang/String;

    if-eqz v1, :cond_54

    .line 84
    const-string v1, "store"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object p0, p0, Lcom/tapjoy/internal/ev;->i:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 86
    :cond_54
    invoke-virtual {v0}, Lcom/tapjoy/internal/bc;->d()Lcom/tapjoy/internal/bc;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tapjoy/internal/bc;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/tapjoy/internal/ew;ZZZ)Ljava/lang/String;
    .registers 11

    .line 273
    new-instance v0, Lcom/tapjoy/internal/bc;

    invoke-direct {v0}, Lcom/tapjoy/internal/bc;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/bc;->c()Lcom/tapjoy/internal/bc;

    move-result-object v0

    .line 274
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/ew;->n:Lcom/tapjoy/internal/ez;

    invoke-static {v2}, Lcom/tapjoy/internal/hr;->a(Lcom/tapjoy/internal/ez;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    .line 275
    const-string v2, "name"

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    iget-object v3, p0, Lcom/tapjoy/internal/ew;->o:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    .line 277
    const-string v3, "time"

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 278
    iget-object v3, p0, Lcom/tapjoy/internal/ew;->q:Ljava/lang/Long;

    const-string v4, "systime"

    if-eqz v3, :cond_3f

    .line 279
    iget-object v3, p0, Lcom/tapjoy/internal/ew;->p:Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 280
    invoke-virtual {v0, v4}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/internal/ew;->q:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    goto :goto_73

    .line 281
    :cond_3f
    invoke-static {}, Lcom/tapjoy/internal/u;->c()Z

    move-result v3

    if-eqz v3, :cond_6e

    iget-object v3, p0, Lcom/tapjoy/internal/ew;->r:Ljava/lang/String;

    if-eqz v3, :cond_6e

    iget-object v3, p0, Lcom/tapjoy/internal/ew;->s:Ljava/lang/Long;

    if-eqz v3, :cond_6e

    sget-object v3, Lcom/tapjoy/internal/he;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/tapjoy/internal/ew;->r:Ljava/lang/String;

    .line 282
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 283
    iget-object v3, p0, Lcom/tapjoy/internal/ew;->s:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/tapjoy/internal/u;->a(J)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/tapjoy/internal/bc;->a(J)Lcom/tapjoy/internal/bc;

    .line 284
    invoke-virtual {v0, v4}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/internal/ew;->p:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    goto :goto_73

    .line 286
    :cond_6e
    iget-object v3, p0, Lcom/tapjoy/internal/ew;->p:Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 289
    :goto_73
    iget-object v3, p0, Lcom/tapjoy/internal/ew;->t:Ljava/lang/Long;

    if-eqz v3, :cond_82

    .line 290
    const-string v3, "duration"

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/internal/ew;->t:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 293
    :cond_82
    if-nez p1, :cond_9c

    iget-object p1, p0, Lcom/tapjoy/internal/ew;->u:Lcom/tapjoy/internal/fb;

    if-eqz p1, :cond_9c

    .line 294
    const-string p1, "info"

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    new-instance v3, Lcom/tapjoy/internal/bh;

    iget-object v4, p0, Lcom/tapjoy/internal/ew;->u:Lcom/tapjoy/internal/fb;

    invoke-static {v4}, Lcom/tapjoy/internal/hr;->a(Lcom/tapjoy/internal/fb;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/tapjoy/internal/bh;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/tapjoy/internal/bc;->a(Lcom/tapjoy/internal/bg;)Lcom/tapjoy/internal/bc;

    .line 296
    :cond_9c
    if-nez p2, :cond_b6

    iget-object p1, p0, Lcom/tapjoy/internal/ew;->v:Lcom/tapjoy/internal/ev;

    if-eqz p1, :cond_b6

    .line 297
    const-string p1, "app"

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    new-instance p2, Lcom/tapjoy/internal/bh;

    iget-object v3, p0, Lcom/tapjoy/internal/ew;->v:Lcom/tapjoy/internal/ev;

    invoke-static {v3}, Lcom/tapjoy/internal/hr;->a(Lcom/tapjoy/internal/ev;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Lcom/tapjoy/internal/bh;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/bc;->a(Lcom/tapjoy/internal/bg;)Lcom/tapjoy/internal/bc;

    .line 299
    :cond_b6
    if-nez p3, :cond_d0

    iget-object p1, p0, Lcom/tapjoy/internal/ew;->w:Lcom/tapjoy/internal/fi;

    if-eqz p1, :cond_d0

    .line 300
    const-string p1, "user"

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    new-instance p2, Lcom/tapjoy/internal/bh;

    iget-object p3, p0, Lcom/tapjoy/internal/ew;->w:Lcom/tapjoy/internal/fi;

    invoke-static {p3, p0}, Lcom/tapjoy/internal/hr;->a(Lcom/tapjoy/internal/fi;Lcom/tapjoy/internal/ew;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/tapjoy/internal/bh;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/bc;->a(Lcom/tapjoy/internal/bg;)Lcom/tapjoy/internal/bc;

    .line 303
    :cond_d0
    iget-object p1, p0, Lcom/tapjoy/internal/ew;->y:Ljava/lang/Integer;

    if-eqz p1, :cond_df

    .line 304
    const-string p1, "event_seq"

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object p2, p0, Lcom/tapjoy/internal/ew;->y:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 306
    :cond_df
    iget-object p1, p0, Lcom/tapjoy/internal/ew;->z:Lcom/tapjoy/internal/ey;

    const-string p2, "category"

    if-eqz p1, :cond_12b

    .line 307
    const-string p1, "event_prev"

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    new-instance p3, Lcom/tapjoy/internal/bh;

    iget-object v3, p0, Lcom/tapjoy/internal/ew;->z:Lcom/tapjoy/internal/ey;

    .line 1258
    new-instance v4, Lcom/tapjoy/internal/bc;

    invoke-direct {v4}, Lcom/tapjoy/internal/bc;-><init>()V

    invoke-virtual {v4}, Lcom/tapjoy/internal/bc;->c()Lcom/tapjoy/internal/bc;

    move-result-object v4

    .line 1259
    invoke-virtual {v4, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object v4, v3, Lcom/tapjoy/internal/ey;->e:Lcom/tapjoy/internal/ez;

    invoke-static {v4}, Lcom/tapjoy/internal/hr;->a(Lcom/tapjoy/internal/ez;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    .line 1260
    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object v2, v3, Lcom/tapjoy/internal/ey;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    .line 1261
    iget-object v2, v3, Lcom/tapjoy/internal/ey;->g:Ljava/lang/String;

    if-eqz v2, :cond_11d

    .line 1262
    invoke-virtual {v1, p2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v2

    iget-object v3, v3, Lcom/tapjoy/internal/ey;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 1264
    :cond_11d
    invoke-virtual {v1}, Lcom/tapjoy/internal/bc;->d()Lcom/tapjoy/internal/bc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/bc;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-direct {p3, v1}, Lcom/tapjoy/internal/bh;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/tapjoy/internal/bc;->a(Lcom/tapjoy/internal/bg;)Lcom/tapjoy/internal/bc;

    .line 311
    :cond_12b
    iget-object p1, p0, Lcom/tapjoy/internal/ew;->A:Lcom/tapjoy/internal/fe;

    if-eqz p1, :cond_21f

    .line 312
    const-string p1, "purchase"

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    new-instance p3, Lcom/tapjoy/internal/bh;

    iget-object v1, p0, Lcom/tapjoy/internal/ew;->A:Lcom/tapjoy/internal/fe;

    .line 2213
    new-instance v2, Lcom/tapjoy/internal/bc;

    invoke-direct {v2}, Lcom/tapjoy/internal/bc;-><init>()V

    invoke-virtual {v2}, Lcom/tapjoy/internal/bc;->c()Lcom/tapjoy/internal/bc;

    move-result-object v2

    .line 2214
    const-string v3, "product_id"

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v2

    iget-object v3, v1, Lcom/tapjoy/internal/fe;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v2

    .line 2215
    iget-object v3, v1, Lcom/tapjoy/internal/fe;->i:Ljava/lang/Integer;

    if-eqz v3, :cond_15d

    .line 2216
    const-string v3, "product_quantity"

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v3

    iget-object v4, v1, Lcom/tapjoy/internal/fe;->i:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 2218
    :cond_15d
    iget-object v3, v1, Lcom/tapjoy/internal/fe;->j:Ljava/lang/Double;

    if-eqz v3, :cond_16c

    .line 2219
    const-string v3, "product_price"

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v3

    iget-object v4, v1, Lcom/tapjoy/internal/fe;->j:Ljava/lang/Double;

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 2221
    :cond_16c
    iget-object v3, v1, Lcom/tapjoy/internal/fe;->k:Ljava/lang/String;

    if-eqz v3, :cond_17b

    .line 2222
    const-string v3, "product_price_currency"

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v3

    iget-object v4, v1, Lcom/tapjoy/internal/fe;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 2224
    :cond_17b
    iget-object v3, v1, Lcom/tapjoy/internal/fe;->s:Ljava/lang/String;

    if-eqz v3, :cond_18a

    .line 2225
    const-string v3, "currency_price"

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v3

    iget-object v4, v1, Lcom/tapjoy/internal/fe;->s:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 2227
    :cond_18a
    iget-object v3, v1, Lcom/tapjoy/internal/fe;->l:Ljava/lang/String;

    if-eqz v3, :cond_199

    .line 2228
    const-string v3, "product_type"

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v3

    iget-object v4, v1, Lcom/tapjoy/internal/fe;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 2230
    :cond_199
    iget-object v3, v1, Lcom/tapjoy/internal/fe;->m:Ljava/lang/String;

    if-eqz v3, :cond_1a8

    .line 2231
    const-string v3, "product_title"

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v3

    iget-object v4, v1, Lcom/tapjoy/internal/fe;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 2233
    :cond_1a8
    iget-object v3, v1, Lcom/tapjoy/internal/fe;->n:Ljava/lang/String;

    if-eqz v3, :cond_1b7

    .line 2234
    const-string v3, "product_description"

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v3

    iget-object v4, v1, Lcom/tapjoy/internal/fe;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 2236
    :cond_1b7
    iget-object v3, v1, Lcom/tapjoy/internal/fe;->o:Ljava/lang/String;

    if-eqz v3, :cond_1c6

    .line 2237
    const-string v3, "transaction_id"

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v3

    iget-object v4, v1, Lcom/tapjoy/internal/fe;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 2239
    :cond_1c6
    iget-object v3, v1, Lcom/tapjoy/internal/fe;->p:Ljava/lang/Integer;

    if-eqz v3, :cond_1d5

    .line 2240
    const-string v3, "transaction_state"

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v3

    iget-object v4, v1, Lcom/tapjoy/internal/fe;->p:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 2242
    :cond_1d5
    iget-object v3, v1, Lcom/tapjoy/internal/fe;->q:Ljava/lang/Long;

    if-eqz v3, :cond_1e4

    .line 2243
    const-string v3, "transaction_date"

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v3

    iget-object v4, v1, Lcom/tapjoy/internal/fe;->q:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 2245
    :cond_1e4
    iget-object v3, v1, Lcom/tapjoy/internal/fe;->r:Ljava/lang/String;

    if-eqz v3, :cond_1f3

    .line 2246
    const-string v3, "campaign_id"

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v3

    iget-object v4, v1, Lcom/tapjoy/internal/fe;->r:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 2248
    :cond_1f3
    iget-object v3, v1, Lcom/tapjoy/internal/fe;->t:Ljava/lang/String;

    if-eqz v3, :cond_202

    .line 2249
    const-string v3, "receipt"

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v3

    iget-object v4, v1, Lcom/tapjoy/internal/fe;->t:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 2251
    :cond_202
    iget-object v3, v1, Lcom/tapjoy/internal/fe;->u:Ljava/lang/String;

    if-eqz v3, :cond_211

    .line 2252
    const-string v3, "signature"

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v3

    iget-object v1, v1, Lcom/tapjoy/internal/fe;->u:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 2254
    :cond_211
    invoke-virtual {v2}, Lcom/tapjoy/internal/bc;->d()Lcom/tapjoy/internal/bc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/bc;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-direct {p3, v1}, Lcom/tapjoy/internal/bh;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/tapjoy/internal/bc;->a(Lcom/tapjoy/internal/bg;)Lcom/tapjoy/internal/bc;

    .line 316
    :cond_21f
    iget-object p1, p0, Lcom/tapjoy/internal/ew;->B:Ljava/lang/String;

    if-eqz p1, :cond_22e

    .line 317
    const-string p1, "exception"

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object p3, p0, Lcom/tapjoy/internal/ew;->B:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 322
    :cond_22e
    :try_start_22e
    iget-object p1, p0, Lcom/tapjoy/internal/ew;->D:Lcom/tapjoy/internal/fd;
    :try_end_230
    .catch Ljava/io/IOException; {:try_start_22e .. :try_end_230} :catch_284

    const-string p3, "meta"

    if-eqz p1, :cond_271

    .line 323
    :try_start_234
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 324
    iget-object v1, p0, Lcom/tapjoy/internal/ew;->C:Ljava/lang/String;

    if-eqz v1, :cond_246

    .line 325
    iget-object v1, p0, Lcom/tapjoy/internal/ew;->C:Ljava/lang/String;

    invoke-static {v1}, Lcom/tapjoy/internal/bi;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bi;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/bi;->a(Ljava/util/Map;)V

    .line 327
    :cond_246
    iget-object v1, p0, Lcom/tapjoy/internal/ew;->D:Lcom/tapjoy/internal/fd;

    .line 328
    iget-object v2, v1, Lcom/tapjoy/internal/fd;->d:Ljava/lang/String;

    if-eqz v2, :cond_253

    .line 329
    const-string v2, "fq7_change"

    iget-object v3, v1, Lcom/tapjoy/internal/fd;->d:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_253
    iget-object v2, v1, Lcom/tapjoy/internal/fd;->e:Ljava/lang/String;

    if-eqz v2, :cond_25e

    .line 332
    const-string v2, "fq30_change"

    iget-object v3, v1, Lcom/tapjoy/internal/fd;->e:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_25e
    iget-object v2, v1, Lcom/tapjoy/internal/fd;->f:Ljava/lang/String;

    if-eqz v2, :cond_269

    .line 335
    const-string v2, "push_id"

    iget-object v1, v1, Lcom/tapjoy/internal/fd;->f:Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_269
    invoke-virtual {v0, p3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/util/Map;)Lcom/tapjoy/internal/bc;

    .line 338
    goto :goto_285

    :cond_271
    iget-object p1, p0, Lcom/tapjoy/internal/ew;->C:Ljava/lang/String;

    if-eqz p1, :cond_283

    .line 339
    invoke-virtual {v0, p3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    new-instance p3, Lcom/tapjoy/internal/bh;

    iget-object v1, p0, Lcom/tapjoy/internal/ew;->C:Ljava/lang/String;

    invoke-direct {p3, v1}, Lcom/tapjoy/internal/bh;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/tapjoy/internal/bc;->a(Lcom/tapjoy/internal/bg;)Lcom/tapjoy/internal/bc;
    :try_end_283
    .catch Ljava/io/IOException; {:try_start_234 .. :try_end_283} :catch_284

    .line 342
    :cond_283
    goto :goto_285

    .line 341
    :catch_284
    move-exception p1

    .line 345
    :goto_285
    iget-object p1, p0, Lcom/tapjoy/internal/ew;->I:Ljava/lang/String;

    if-eqz p1, :cond_299

    .line 346
    const-string p1, "dimensions"

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    new-instance p3, Lcom/tapjoy/internal/bh;

    iget-object v1, p0, Lcom/tapjoy/internal/ew;->I:Ljava/lang/String;

    invoke-direct {p3, v1}, Lcom/tapjoy/internal/bh;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/tapjoy/internal/bc;->a(Lcom/tapjoy/internal/bg;)Lcom/tapjoy/internal/bc;

    .line 348
    :cond_299
    iget-object p1, p0, Lcom/tapjoy/internal/ew;->J:Ljava/lang/Integer;

    if-eqz p1, :cond_2a8

    .line 349
    const-string p1, "count"

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object p3, p0, Lcom/tapjoy/internal/ew;->J:Ljava/lang/Integer;

    invoke-virtual {p1, p3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 351
    :cond_2a8
    iget-object p1, p0, Lcom/tapjoy/internal/ew;->K:Ljava/lang/Long;

    if-eqz p1, :cond_2b7

    .line 352
    const-string p1, "first_time"

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object p3, p0, Lcom/tapjoy/internal/ew;->K:Ljava/lang/Long;

    invoke-virtual {p1, p3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 354
    :cond_2b7
    iget-object p1, p0, Lcom/tapjoy/internal/ew;->L:Ljava/lang/Long;

    if-eqz p1, :cond_2c6

    .line 355
    const-string p1, "last_time"

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object p3, p0, Lcom/tapjoy/internal/ew;->L:Ljava/lang/Long;

    invoke-virtual {p1, p3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 359
    :cond_2c6
    iget-object p1, p0, Lcom/tapjoy/internal/ew;->E:Ljava/lang/String;

    if-eqz p1, :cond_2d3

    .line 360
    invoke-virtual {v0, p2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object p2, p0, Lcom/tapjoy/internal/ew;->E:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 362
    :cond_2d3
    iget-object p1, p0, Lcom/tapjoy/internal/ew;->F:Ljava/lang/String;

    if-eqz p1, :cond_2e2

    .line 363
    const-string p1, "p1"

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object p2, p0, Lcom/tapjoy/internal/ew;->F:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 365
    :cond_2e2
    iget-object p1, p0, Lcom/tapjoy/internal/ew;->G:Ljava/lang/String;

    if-eqz p1, :cond_2f1

    .line 366
    const-string p1, "p2"

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object p2, p0, Lcom/tapjoy/internal/ew;->G:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 368
    :cond_2f1
    iget-object p1, p0, Lcom/tapjoy/internal/ew;->H:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_323

    .line 369
    const-string p1, "values"

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/internal/bc;->c()Lcom/tapjoy/internal/bc;

    .line 370
    iget-object p0, p0, Lcom/tapjoy/internal/ew;->H:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_308
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_320

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/internal/fa;

    .line 371
    iget-object p2, p1, Lcom/tapjoy/internal/fa;->e:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p2

    iget-object p1, p1, Lcom/tapjoy/internal/fa;->f:Ljava/lang/Long;

    invoke-virtual {p2, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 372
    goto :goto_308

    .line 373
    :cond_320
    invoke-virtual {v0}, Lcom/tapjoy/internal/bc;->d()Lcom/tapjoy/internal/bc;

    .line 376
    :cond_323
    invoke-virtual {v0}, Lcom/tapjoy/internal/bc;->d()Lcom/tapjoy/internal/bc;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tapjoy/internal/bc;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/tapjoy/internal/ex;)Ljava/lang/String;
    .registers 11

    .line 380
    new-instance v0, Lcom/tapjoy/internal/bc;

    invoke-direct {v0}, Lcom/tapjoy/internal/bc;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/bc;->a()Lcom/tapjoy/internal/bc;

    move-result-object v0

    .line 381
    nop

    .line 382
    nop

    .line 383
    nop

    .line 387
    iget-object p0, p0, Lcom/tapjoy/internal/ex;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tapjoy/internal/ew;

    .line 388
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_30

    iget-object v7, v4, Lcom/tapjoy/internal/ew;->u:Lcom/tapjoy/internal/fb;

    invoke-virtual {v1, v7}, Lcom/tapjoy/internal/fb;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2e

    goto :goto_30

    .line 392
    :cond_2e
    const/4 v7, 0x1

    goto :goto_34

    .line 389
    :cond_30
    :goto_30
    nop

    .line 390
    iget-object v1, v4, Lcom/tapjoy/internal/ew;->u:Lcom/tapjoy/internal/fb;

    const/4 v7, 0x0

    .line 394
    :goto_34
    if-eqz v2, :cond_41

    iget-object v8, v4, Lcom/tapjoy/internal/ew;->v:Lcom/tapjoy/internal/ev;

    invoke-virtual {v2, v8}, Lcom/tapjoy/internal/ev;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3f

    goto :goto_41

    .line 398
    :cond_3f
    const/4 v8, 0x1

    goto :goto_45

    .line 395
    :cond_41
    :goto_41
    nop

    .line 396
    iget-object v2, v4, Lcom/tapjoy/internal/ew;->v:Lcom/tapjoy/internal/ev;

    const/4 v8, 0x0

    .line 400
    :goto_45
    if-eqz v3, :cond_51

    iget-object v9, v4, Lcom/tapjoy/internal/ew;->w:Lcom/tapjoy/internal/fi;

    invoke-virtual {v3, v9}, Lcom/tapjoy/internal/fi;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_50

    goto :goto_51

    .line 404
    :cond_50
    goto :goto_55

    .line 401
    :cond_51
    :goto_51
    nop

    .line 402
    iget-object v3, v4, Lcom/tapjoy/internal/ew;->w:Lcom/tapjoy/internal/fi;

    const/4 v5, 0x0

    .line 406
    :goto_55
    new-instance v6, Lcom/tapjoy/internal/bh;

    invoke-static {v4, v7, v8, v5}, Lcom/tapjoy/internal/hr;->a(Lcom/tapjoy/internal/ew;ZZZ)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/tapjoy/internal/bh;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/tapjoy/internal/bc;->a(Lcom/tapjoy/internal/bg;)Lcom/tapjoy/internal/bc;

    .line 408
    goto :goto_15

    .line 409
    :cond_62
    invoke-virtual {v0}, Lcom/tapjoy/internal/bc;->b()Lcom/tapjoy/internal/bc;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tapjoy/internal/bc;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/tapjoy/internal/ez;)Ljava/lang/String;
    .registers 2

    .line 413
    sget-object v0, Lcom/tapjoy/internal/hr$1;->a:[I

    invoke-virtual {p0}, Lcom/tapjoy/internal/ez;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_1e

    .line 423
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    .line 421
    :pswitch_11
    const-string p0, "usages"

    return-object p0

    .line 419
    :pswitch_14
    const-string p0, "custom"

    return-object p0

    .line 417
    :pswitch_17
    const-string p0, "campaign"

    return-object p0

    .line 415
    :pswitch_1a
    const-string p0, "app"

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method

.method public static a(Lcom/tapjoy/internal/fb;)Ljava/lang/String;
    .registers 4

    .line 30
    new-instance v0, Lcom/tapjoy/internal/bc;

    invoke-direct {v0}, Lcom/tapjoy/internal/bc;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/bc;->c()Lcom/tapjoy/internal/bc;

    move-result-object v0

    .line 31
    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fb;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    .line 32
    const-string v1, "os_name"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fb;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    .line 33
    const-string v1, "os_ver"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fb;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    .line 34
    const-string v1, "device_id"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fb;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    .line 35
    const-string v1, "device_maker"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fb;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    .line 36
    const-string v1, "device_model"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fb;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    .line 37
    const-string v1, "pkg_id"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fb;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    .line 38
    const-string v1, "pkg_sign"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fb;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    .line 39
    const-string v1, "locale"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fb;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    .line 40
    const-string v1, "timezone"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fb;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/tapjoy/internal/fb;->m:Ljava/lang/Integer;

    if-eqz v1, :cond_90

    .line 43
    const-string v1, "display_d"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fb;->m:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 45
    :cond_90
    iget-object v1, p0, Lcom/tapjoy/internal/fb;->n:Ljava/lang/Integer;

    if-eqz v1, :cond_9f

    .line 46
    const-string v1, "display_w"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fb;->n:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 48
    :cond_9f
    iget-object v1, p0, Lcom/tapjoy/internal/fb;->o:Ljava/lang/Integer;

    if-eqz v1, :cond_ae

    .line 49
    const-string v1, "display_h"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fb;->o:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 51
    :cond_ae
    iget-object v1, p0, Lcom/tapjoy/internal/fb;->g:Ljava/lang/String;

    if-eqz v1, :cond_bd

    .line 52
    const-string v1, "mac"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fb;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 54
    :cond_bd
    iget-object v1, p0, Lcom/tapjoy/internal/fb;->u:Ljava/lang/String;

    if-eqz v1, :cond_cc

    .line 55
    const-string v1, "country_sim"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fb;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 57
    :cond_cc
    iget-object v1, p0, Lcom/tapjoy/internal/fb;->v:Ljava/lang/String;

    if-eqz v1, :cond_db

    .line 58
    const-string v1, "country_net"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fb;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 60
    :cond_db
    iget-object v1, p0, Lcom/tapjoy/internal/fb;->w:Ljava/lang/String;

    if-eqz v1, :cond_ea

    .line 61
    const-string v1, "imei"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fb;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 63
    :cond_ea
    iget-object v1, p0, Lcom/tapjoy/internal/fb;->x:Ljava/lang/String;

    if-eqz v1, :cond_f9

    .line 64
    const-string v1, "android_id"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object p0, p0, Lcom/tapjoy/internal/fb;->x:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 66
    :cond_f9
    invoke-virtual {v0}, Lcom/tapjoy/internal/bc;->d()Lcom/tapjoy/internal/bc;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tapjoy/internal/bc;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/tapjoy/internal/fi;)Ljava/lang/String;
    .registers 2

    .line 90
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tapjoy/internal/hr;->a(Lcom/tapjoy/internal/fi;Lcom/tapjoy/internal/ew;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/tapjoy/internal/fi;Lcom/tapjoy/internal/ew;)Ljava/lang/String;
    .registers 8

    .line 93
    new-instance v0, Lcom/tapjoy/internal/bc;

    invoke-direct {v0}, Lcom/tapjoy/internal/bc;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/bc;->c()Lcom/tapjoy/internal/bc;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/tapjoy/internal/fi;->s:Ljava/lang/Long;

    if-eqz v1, :cond_18

    .line 95
    const-string v1, "installed"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->s:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 97
    :cond_18
    iget-object v1, p0, Lcom/tapjoy/internal/fi;->t:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 98
    const-string v1, "referrer"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 101
    :cond_27
    iget-object v1, p0, Lcom/tapjoy/internal/fi;->G:Ljava/lang/String;

    const-string v2, "idfa_optout"

    const-string v3, "idfa"

    const-wide/16 v4, 0x1

    if-eqz v1, :cond_4e

    .line 102
    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->G:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 103
    iget-object p1, p0, Lcom/tapjoy/internal/fi;->H:Ljava/lang/Boolean;

    if-eqz p1, :cond_78

    iget-object p1, p0, Lcom/tapjoy/internal/fi;->H:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_78

    .line 104
    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Lcom/tapjoy/internal/bc;->a(J)Lcom/tapjoy/internal/bc;

    goto :goto_78

    .line 106
    :cond_4e
    if-eqz p1, :cond_78

    iget-object v1, p1, Lcom/tapjoy/internal/ew;->r:Ljava/lang/String;

    if-eqz v1, :cond_78

    sget-object v1, Lcom/tapjoy/internal/he;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/tapjoy/internal/ew;->r:Ljava/lang/String;

    .line 107
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_78

    .line 108
    invoke-static {}, Lcom/tapjoy/internal/hp;->b()Ljava/lang/String;

    move-result-object p1

    .line 109
    if-eqz p1, :cond_78

    .line 110
    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 111
    invoke-static {}, Lcom/tapjoy/internal/hp;->c()Z

    move-result p1

    if-eqz p1, :cond_78

    .line 112
    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Lcom/tapjoy/internal/bc;->a(J)Lcom/tapjoy/internal/bc;

    .line 117
    :cond_78
    :goto_78
    iget-object p1, p0, Lcom/tapjoy/internal/fi;->u:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz p1, :cond_91

    .line 118
    const-string p1, "fq7"

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->u:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lcom/tapjoy/internal/bc;->a(J)Lcom/tapjoy/internal/bc;

    .line 120
    :cond_91
    iget-object p1, p0, Lcom/tapjoy/internal/fi;->v:Ljava/lang/Integer;

    if-eqz p1, :cond_a9

    .line 121
    const-string p1, "fq30"

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->v:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Lcom/tapjoy/internal/bc;->a(J)Lcom/tapjoy/internal/bc;

    .line 124
    :cond_a9
    iget-object p1, p0, Lcom/tapjoy/internal/fi;->w:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_fe

    .line 125
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 126
    iget-object v1, p0, Lcom/tapjoy/internal/fi;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/ff;

    .line 127
    iget-object v3, v2, Lcom/tapjoy/internal/ff;->h:Ljava/lang/Long;

    if-eqz v3, :cond_d7

    .line 128
    iget-object v2, v2, Lcom/tapjoy/internal/ff;->f:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_d7
    goto :goto_c2

    .line 131
    :cond_d8
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_fe

    .line 132
    const-string v1, "push"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/bc;->a()Lcom/tapjoy/internal/bc;

    .line 133
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_eb
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_fb

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 134
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 135
    goto :goto_eb

    .line 136
    :cond_fb
    invoke-virtual {v0}, Lcom/tapjoy/internal/bc;->b()Lcom/tapjoy/internal/bc;

    .line 140
    :cond_fe
    const-string p1, "session"

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/internal/bc;->c()Lcom/tapjoy/internal/bc;

    .line 142
    iget-object p1, p0, Lcom/tapjoy/internal/fi;->x:Ljava/lang/Integer;

    const-string v1, "total_count"

    if-eqz p1, :cond_116

    .line 143
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->x:Ljava/lang/Integer;

    invoke-virtual {p1, v2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 145
    :cond_116
    iget-object p1, p0, Lcom/tapjoy/internal/fi;->y:Ljava/lang/Long;

    if-eqz p1, :cond_125

    .line 146
    const-string p1, "total_length"

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->y:Ljava/lang/Long;

    invoke-virtual {p1, v2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 148
    :cond_125
    iget-object p1, p0, Lcom/tapjoy/internal/fi;->z:Ljava/lang/Long;

    const-string v2, "last_at"

    if-eqz p1, :cond_134

    .line 149
    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v3, p0, Lcom/tapjoy/internal/fi;->z:Ljava/lang/Long;

    invoke-virtual {p1, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 151
    :cond_134
    iget-object p1, p0, Lcom/tapjoy/internal/fi;->A:Ljava/lang/Long;

    if-eqz p1, :cond_143

    .line 152
    const-string p1, "last_length"

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v3, p0, Lcom/tapjoy/internal/fi;->A:Ljava/lang/Long;

    invoke-virtual {p1, v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 155
    :cond_143
    invoke-virtual {v0}, Lcom/tapjoy/internal/bc;->d()Lcom/tapjoy/internal/bc;

    .line 157
    const-string p1, "purchase"

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/internal/bc;->c()Lcom/tapjoy/internal/bc;

    .line 159
    iget-object p1, p0, Lcom/tapjoy/internal/fi;->B:Ljava/lang/String;

    if-eqz p1, :cond_15e

    .line 160
    const-string p1, "currency"

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v3, p0, Lcom/tapjoy/internal/fi;->B:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 162
    :cond_15e
    iget-object p1, p0, Lcom/tapjoy/internal/fi;->C:Ljava/lang/Integer;

    if-eqz p1, :cond_16b

    .line 163
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->C:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 165
    :cond_16b
    iget-object p1, p0, Lcom/tapjoy/internal/fi;->D:Ljava/lang/Double;

    if-eqz p1, :cond_17a

    .line 166
    const-string p1, "total_price"

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->D:Ljava/lang/Double;

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 168
    :cond_17a
    iget-object p1, p0, Lcom/tapjoy/internal/fi;->E:Ljava/lang/Long;

    if-eqz p1, :cond_187

    .line 169
    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->E:Ljava/lang/Long;

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 171
    :cond_187
    iget-object p1, p0, Lcom/tapjoy/internal/fi;->F:Ljava/lang/Double;

    if-eqz p1, :cond_196

    .line 172
    const-string p1, "last_price"

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->F:Ljava/lang/Double;

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 175
    :cond_196
    invoke-virtual {v0}, Lcom/tapjoy/internal/bc;->d()Lcom/tapjoy/internal/bc;

    .line 177
    iget-object p1, p0, Lcom/tapjoy/internal/fi;->I:Ljava/lang/String;

    if-eqz p1, :cond_1a8

    .line 178
    const-string p1, "user_id"

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->I:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 180
    :cond_1a8
    iget-object p1, p0, Lcom/tapjoy/internal/fi;->J:Ljava/lang/Integer;

    if-eqz p1, :cond_1b7

    .line 181
    const-string p1, "user_level"

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->J:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 183
    :cond_1b7
    iget-object p1, p0, Lcom/tapjoy/internal/fi;->K:Ljava/lang/Integer;

    if-eqz p1, :cond_1c6

    .line 184
    const-string p1, "friend_count"

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->K:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bc;

    .line 186
    :cond_1c6
    iget-object p1, p0, Lcom/tapjoy/internal/fi;->L:Ljava/lang/String;

    if-eqz p1, :cond_1d5

    .line 187
    const-string p1, "uv1"

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->L:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 189
    :cond_1d5
    iget-object p1, p0, Lcom/tapjoy/internal/fi;->M:Ljava/lang/String;

    if-eqz p1, :cond_1e4

    .line 190
    const-string p1, "uv2"

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->M:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 192
    :cond_1e4
    iget-object p1, p0, Lcom/tapjoy/internal/fi;->N:Ljava/lang/String;

    if-eqz p1, :cond_1f3

    .line 193
    const-string p1, "uv3"

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->N:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 195
    :cond_1f3
    iget-object p1, p0, Lcom/tapjoy/internal/fi;->O:Ljava/lang/String;

    if-eqz p1, :cond_202

    .line 196
    const-string p1, "uv4"

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->O:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 198
    :cond_202
    iget-object p1, p0, Lcom/tapjoy/internal/fi;->P:Ljava/lang/String;

    if-eqz p1, :cond_211

    .line 199
    const-string p1, "uv5"

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->P:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/bc;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    .line 201
    :cond_211
    iget-object p1, p0, Lcom/tapjoy/internal/fi;->Q:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_224

    .line 202
    const-string p1, "tags"

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p1

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->Q:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/bc;->a(Ljava/util/Collection;)Lcom/tapjoy/internal/bc;

    .line 205
    :cond_224
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/tapjoy/internal/fi;->R:Ljava/lang/Boolean;

    invoke-virtual {p1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_237

    .line 206
    const-string p0, "push_optout"

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bc;

    move-result-object p0

    invoke-virtual {p0, v4, v5}, Lcom/tapjoy/internal/bc;->a(J)Lcom/tapjoy/internal/bc;

    .line 209
    :cond_237
    invoke-virtual {v0}, Lcom/tapjoy/internal/bc;->d()Lcom/tapjoy/internal/bc;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tapjoy/internal/bc;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
