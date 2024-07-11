.class public final Lcom/anythink/basead/a/h;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/anythink/basead/c/b;)Ljava/lang/String;
    .registers 4

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/anythink/basead/c/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\{__DOWN_X__\\}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/anythink/basead/c/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 336
    const-string v1, "\\{__DOWN_Y__\\}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/anythink/basead/c/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    const-string v1, "\\{__UP_X__\\}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/anythink/basead/c/b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    const-string v1, "\\{__UP_Y__\\}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/anythink/basead/c/b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    const-string v1, "\\{__RE_DOWN_X__\\}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/anythink/basead/c/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    const-string v1, "\\{__RE_DOWN_Y__\\}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/anythink/basead/c/b;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    const-string v1, "\\{__RE_UP_X__\\}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Lcom/anythink/basead/c/b;->h:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 342
    const-string v0, "\\{__RE_UP_Y__\\}"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 344
    return-object p0
.end method

.method private static a(Ljava/lang/String;Lcom/anythink/basead/c/c;)Ljava/lang/String;
    .registers 3

    .line 330
    iget-object v0, p1, Lcom/anythink/basead/c/c;->a:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string p1, ""

    goto :goto_9

    :cond_7
    iget-object p1, p1, Lcom/anythink/basead/c/c;->a:Ljava/lang/String;

    :goto_9
    const-string v0, "\\{__CLICK_ID__\\}"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 331
    return-object p0
.end method

.method protected static a(Ljava/lang/String;Lcom/anythink/basead/c/h;J)Ljava/lang/String;
    .registers 9

    .line 271
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    .line 272
    return-object v1

    .line 276
    :cond_9
    iget-object v0, p1, Lcom/anythink/basead/c/h;->g:Lcom/anythink/basead/c/b;

    if-eqz v0, :cond_13

    .line 277
    iget-object v0, p1, Lcom/anythink/basead/c/h;->g:Lcom/anythink/basead/c/b;

    invoke-static {p0, v0}, Lcom/anythink/basead/a/h;->a(Ljava/lang/String;Lcom/anythink/basead/c/b;)Ljava/lang/String;

    move-result-object p0

    .line 280
    :cond_13
    iget-object v0, p1, Lcom/anythink/basead/c/h;->h:Lcom/anythink/basead/c/i;

    if-eqz v0, :cond_1d

    .line 281
    iget-object v0, p1, Lcom/anythink/basead/c/h;->h:Lcom/anythink/basead/c/i;

    invoke-static {p0, v0}, Lcom/anythink/basead/a/h;->a(Ljava/lang/String;Lcom/anythink/basead/c/i;)Ljava/lang/String;

    move-result-object p0

    .line 284
    :cond_1d
    iget-object v0, p1, Lcom/anythink/basead/c/h;->i:Lcom/anythink/basead/c/c;

    if-eqz v0, :cond_27

    .line 285
    iget-object v0, p1, Lcom/anythink/basead/c/h;->i:Lcom/anythink/basead/c/c;

    invoke-static {p0, v0}, Lcom/anythink/basead/a/h;->a(Ljava/lang/String;Lcom/anythink/basead/c/c;)Ljava/lang/String;

    move-result-object p0

    .line 288
    :cond_27
    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    .line 291
    iget v0, p1, Lcom/anythink/basead/c/h;->c:I

    if-nez v0, :cond_32

    const-string v0, "__REQ_WIDTH__"

    goto :goto_41

    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/anythink/basead/c/h;->c:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_41
    const-string v4, "\\{__REQ_WIDTH__\\}"

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 292
    iget v0, p1, Lcom/anythink/basead/c/h;->d:I

    if-nez v0, :cond_4e

    const-string v0, "__REQ_HEIGHT__"

    goto :goto_5d

    :cond_4e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/anythink/basead/c/h;->d:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5d
    const-string v4, "\\{__REQ_HEIGHT__\\}"

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/anythink/basead/c/h;->e:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    const-string v4, "\\{__WIDTH__\\}"

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Lcom/anythink/basead/c/h;->f:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 294
    const-string v0, "\\{__HEIGHT__\\}"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 295
    const-string v0, "\\{__TS__\\}"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 296
    const-string v0, "\\{__TS_MSEC__\\}"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 297
    const-string v0, "\\{__END_TS__\\}"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 298
    const-string p2, "\\{__END_TS_MSEC__\\}"

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 299
    const-string p1, "\\{__PLAY_SEC__\\}"

    const-string p2, "0"

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 304
    const-string p1, "\\{"

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\}"

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 305
    return-object p0
.end method

.method private static a(Ljava/lang/String;Lcom/anythink/basead/c/i;)Ljava/lang/String;
    .registers 8

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/anythink/basead/c/i;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\{__VIDEO_TIME__\\}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/anythink/basead/c/i;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    const-string v1, "\\{__BEGIN_TIME__\\}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/anythink/basead/c/i;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    const-string v1, "\\{__END_TIME__\\}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/anythink/basead/c/i;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    const-string v1, "\\{__PLAY_FIRST_FRAME__\\}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/anythink/basead/c/i;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    const-string v1, "\\{__PLAY_LAST_FRAME__\\}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/anythink/basead/c/i;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    const-string v1, "\\{__SCENE__\\}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/anythink/basead/c/i;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    const-string v1, "\\{__TYPE__\\}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/anythink/basead/c/i;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    const-string v1, "\\{__BEHAVIOR__\\}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/anythink/basead/c/i;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    const-string v1, "\\{__STATUS__\\}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/anythink/basead/c/i;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    const-string v1, "\\{__PLAY_SEC__\\}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p1, Lcom/anythink/basead/c/i;->f:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    const-string v2, "\\{__TS__\\}"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p1, Lcom/anythink/basead/c/i;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    const-string v2, "\\{__TS_MSEC__\\}"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p1, Lcom/anythink/basead/c/i;->g:J

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    const-string v2, "\\{__END_TS__\\}"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p1, Lcom/anythink/basead/c/i;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    const-string v2, "\\{__END_TS_MSEC__\\}"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/anythink/basead/c/i;->h:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Lcom/anythink/basead/c/i;->h:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 324
    const-string v0, "\\{__PLAY_MSEC__\\}"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 325
    return-object p0
.end method

.method private static a(ILcom/anythink/basead/c/h;Lcom/anythink/core/common/d/u;Lcom/anythink/core/common/d/w;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/anythink/basead/c/h;",
            "Lcom/anythink/core/common/d/u;",
            "Lcom/anythink/core/common/d/w;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 163
    nop

    .line 164
    packed-switch p0, :pswitch_data_c0

    :pswitch_4
    const-string p3, ""

    goto/16 :goto_a9

    .line 255
    :pswitch_8
    invoke-virtual {p3}, Lcom/anythink/core/common/d/w;->aj()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_a9

    .line 252
    :pswitch_e
    invoke-virtual {p3}, Lcom/anythink/core/common/d/w;->ai()Ljava/lang/String;

    move-result-object p3

    .line 253
    goto/16 :goto_a9

    .line 249
    :pswitch_14
    invoke-virtual {p3}, Lcom/anythink/core/common/d/w;->ag()Ljava/lang/String;

    move-result-object p3

    .line 250
    goto/16 :goto_a9

    .line 246
    :pswitch_1a
    invoke-virtual {p3}, Lcom/anythink/core/common/d/w;->ah()Ljava/lang/String;

    move-result-object p3

    .line 247
    goto/16 :goto_a9

    .line 242
    :pswitch_20
    invoke-virtual {p3}, Lcom/anythink/core/common/d/w;->af()Ljava/lang/String;

    move-result-object p3

    .line 243
    goto/16 :goto_a9

    .line 239
    :pswitch_26
    invoke-virtual {p3}, Lcom/anythink/core/common/d/w;->ae()Ljava/lang/String;

    move-result-object p3

    .line 240
    goto/16 :goto_a9

    .line 236
    :pswitch_2c
    invoke-virtual {p3}, Lcom/anythink/core/common/d/w;->ad()Ljava/lang/String;

    move-result-object p3

    .line 237
    goto/16 :goto_a9

    .line 233
    :pswitch_32
    invoke-virtual {p3}, Lcom/anythink/core/common/d/w;->ac()Ljava/lang/String;

    move-result-object p3

    .line 234
    goto/16 :goto_a9

    .line 230
    :pswitch_38
    invoke-virtual {p3}, Lcom/anythink/core/common/d/w;->ab()Ljava/lang/String;

    move-result-object p3

    .line 231
    goto/16 :goto_a9

    .line 211
    :pswitch_3e
    invoke-virtual {p3}, Lcom/anythink/core/common/d/w;->N()Ljava/lang/String;

    move-result-object p3

    .line 212
    goto/16 :goto_a9

    .line 227
    :pswitch_44
    invoke-virtual {p3}, Lcom/anythink/core/common/d/w;->aa()Ljava/lang/String;

    move-result-object p3

    .line 228
    goto/16 :goto_a9

    .line 208
    :pswitch_4a
    invoke-virtual {p3}, Lcom/anythink/core/common/d/w;->M()Ljava/lang/String;

    move-result-object p3

    .line 209
    goto :goto_a9

    .line 205
    :pswitch_4f
    invoke-virtual {p3}, Lcom/anythink/core/common/d/w;->L()Ljava/lang/String;

    move-result-object p3

    .line 206
    goto :goto_a9

    .line 224
    :pswitch_54
    invoke-virtual {p3}, Lcom/anythink/core/common/d/w;->Z()Ljava/lang/String;

    move-result-object p3

    .line 225
    goto :goto_a9

    .line 221
    :pswitch_59
    invoke-virtual {p3}, Lcom/anythink/core/common/d/w;->Y()Ljava/lang/String;

    move-result-object p3

    .line 222
    goto :goto_a9

    .line 218
    :pswitch_5e
    invoke-virtual {p3}, Lcom/anythink/core/common/d/w;->X()Ljava/lang/String;

    move-result-object p3

    .line 219
    goto :goto_a9

    .line 214
    :pswitch_63
    invoke-virtual {p3}, Lcom/anythink/core/common/d/w;->G()Ljava/lang/String;

    move-result-object p3

    .line 215
    goto :goto_a9

    .line 202
    :pswitch_68
    invoke-virtual {p3}, Lcom/anythink/core/common/d/w;->I()Ljava/lang/String;

    move-result-object p3

    .line 203
    goto :goto_a9

    .line 199
    :pswitch_6d
    invoke-virtual {p3}, Lcom/anythink/core/common/d/w;->H()Ljava/lang/String;

    move-result-object p3

    .line 200
    goto :goto_a9

    .line 196
    :pswitch_72
    invoke-virtual {p3}, Lcom/anythink/core/common/d/w;->F()Ljava/lang/String;

    move-result-object p3

    .line 197
    goto :goto_a9

    .line 193
    :pswitch_77
    invoke-virtual {p3}, Lcom/anythink/core/common/d/w;->x()Ljava/lang/String;

    move-result-object p3

    .line 194
    goto :goto_a9

    .line 190
    :pswitch_7c
    invoke-virtual {p3}, Lcom/anythink/core/common/d/w;->z()Ljava/lang/String;

    move-result-object p3

    .line 191
    goto :goto_a9

    .line 187
    :pswitch_81
    invoke-virtual {p3}, Lcom/anythink/core/common/d/w;->y()Ljava/lang/String;

    move-result-object p3

    .line 188
    goto :goto_a9

    .line 184
    :pswitch_86
    invoke-virtual {p3}, Lcom/anythink/core/common/d/w;->K()Ljava/lang/String;

    move-result-object p3

    .line 185
    goto :goto_a9

    .line 181
    :pswitch_8b
    invoke-virtual {p3}, Lcom/anythink/core/common/d/w;->J()Ljava/lang/String;

    move-result-object p3

    .line 182
    goto :goto_a9

    .line 178
    :pswitch_90
    invoke-virtual {p3}, Lcom/anythink/core/common/d/w;->E()Ljava/lang/String;

    move-result-object p3

    .line 179
    goto :goto_a9

    .line 175
    :pswitch_95
    invoke-virtual {p3}, Lcom/anythink/core/common/d/w;->D()Ljava/lang/String;

    move-result-object p3

    .line 176
    goto :goto_a9

    .line 172
    :pswitch_9a
    invoke-virtual {p3}, Lcom/anythink/core/common/d/w;->C()Ljava/lang/String;

    move-result-object p3

    .line 173
    goto :goto_a9

    .line 169
    :pswitch_9f
    invoke-virtual {p3}, Lcom/anythink/core/common/d/w;->B()Ljava/lang/String;

    move-result-object p3

    .line 170
    goto :goto_a9

    .line 166
    :pswitch_a4
    invoke-virtual {p3}, Lcom/anythink/core/common/d/w;->A()Ljava/lang/String;

    move-result-object p3

    .line 167
    nop

    .line 261
    :goto_a9
    invoke-static {p3}, Lcom/anythink/basead/a/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 262
    return-void

    .line 265
    :cond_b0
    new-instance v0, Lcom/anythink/basead/h/f;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/anythink/basead/h/f;-><init>(ILcom/anythink/core/common/d/u;Ljava/lang/String;Ljava/util/Map;)V

    .line 266
    iget-object p0, p1, Lcom/anythink/basead/c/h;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/anythink/basead/h/f;->b(Ljava/lang/String;)V

    .line 267
    const/4 p0, 0x0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/anythink/basead/h/f;->a(ILcom/anythink/core/common/e/g;)V

    .line 268
    return-void

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_a4
        :pswitch_9f
        :pswitch_9a
        :pswitch_95
        :pswitch_90
        :pswitch_8b
        :pswitch_86
        :pswitch_81
        :pswitch_7c
        :pswitch_77
        :pswitch_72
        :pswitch_6d
        :pswitch_68
        :pswitch_63
        :pswitch_5e
        :pswitch_59
        :pswitch_54
        :pswitch_4f
        :pswitch_4a
        :pswitch_44
        :pswitch_3e
        :pswitch_4
        :pswitch_38
        :pswitch_32
        :pswitch_2c
        :pswitch_26
        :pswitch_20
        :pswitch_1a
        :pswitch_14
        :pswitch_e
        :pswitch_8
    .end packed-switch
.end method

.method protected static a(ILcom/anythink/core/common/d/u;Lcom/anythink/basead/c/h;)V
    .registers 14

    .line 29
    invoke-virtual {p1}, Lcom/anythink/core/common/d/u;->y()Lcom/anythink/core/common/d/w;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->a()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v1}, Lcom/anythink/core/common/g/h;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 34
    nop

    .line 1041
    nop

    .line 1043
    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch p0, :pswitch_data_1b2

    :pswitch_13
    goto/16 :goto_d2

    .line 1138
    :pswitch_15
    :try_start_15
    iget-object v4, p2, Lcom/anythink/basead/c/h;->h:Lcom/anythink/basead/c/i;

    .line 1139
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->w()Ljava/util/Map;

    move-result-object v5

    .line 1140
    if-eqz v4, :cond_d2

    if-eqz v5, :cond_d2

    .line 1141
    iget v4, v4, Lcom/anythink/basead/c/i;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    goto/16 :goto_d3

    .line 1135
    :pswitch_2d
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->v()[Ljava/lang/String;

    move-result-object v4

    .line 1136
    goto/16 :goto_d3

    .line 1132
    :pswitch_33
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->u()[Ljava/lang/String;

    move-result-object v4

    .line 1133
    goto/16 :goto_d3

    .line 1129
    :pswitch_39
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->s()[Ljava/lang/String;

    move-result-object v4

    .line 1130
    goto/16 :goto_d3

    .line 1126
    :pswitch_3f
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->t()[Ljava/lang/String;

    move-result-object v4

    .line 1127
    goto/16 :goto_d3

    .line 1121
    :pswitch_45
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->W()[Ljava/lang/String;

    move-result-object v4

    .line 1122
    goto/16 :goto_d3

    .line 1118
    :pswitch_4b
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->V()[Ljava/lang/String;

    move-result-object v4

    .line 1119
    goto/16 :goto_d3

    .line 1115
    :pswitch_51
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->U()[Ljava/lang/String;

    move-result-object v4

    .line 1116
    goto/16 :goto_d3

    .line 1112
    :pswitch_57
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->T()[Ljava/lang/String;

    move-result-object v4

    .line 1113
    goto/16 :goto_d3

    .line 1109
    :pswitch_5d
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->S()[Ljava/lang/String;

    move-result-object v4

    .line 1110
    goto/16 :goto_d3

    .line 1090
    :pswitch_63
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->r()[Ljava/lang/String;

    move-result-object v4

    .line 1091
    goto/16 :goto_d3

    .line 1106
    :pswitch_69
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->R()[Ljava/lang/String;

    move-result-object v4

    .line 1107
    goto/16 :goto_d3

    .line 1087
    :pswitch_6f
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->q()[Ljava/lang/String;

    move-result-object v4

    .line 1088
    goto/16 :goto_d3

    .line 1084
    :pswitch_75
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->p()[Ljava/lang/String;

    move-result-object v4

    .line 1085
    goto/16 :goto_d3

    .line 1103
    :pswitch_7b
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->Q()[Ljava/lang/String;

    move-result-object v4

    .line 1104
    goto :goto_d3

    .line 1100
    :pswitch_80
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->P()[Ljava/lang/String;

    move-result-object v4

    .line 1101
    goto :goto_d3

    .line 1097
    :pswitch_85
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->O()[Ljava/lang/String;

    move-result-object v4

    .line 1098
    goto :goto_d3

    .line 1093
    :pswitch_8a
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->k()[Ljava/lang/String;

    move-result-object v4

    .line 1094
    goto :goto_d3

    .line 1081
    :pswitch_8f
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->m()[Ljava/lang/String;

    move-result-object v4

    .line 1082
    goto :goto_d3

    .line 1078
    :pswitch_94
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->l()[Ljava/lang/String;

    move-result-object v4

    .line 1079
    goto :goto_d3

    .line 1075
    :pswitch_99
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->j()[Ljava/lang/String;

    move-result-object v4

    .line 1076
    goto :goto_d3

    .line 1072
    :pswitch_9e
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->b()[Ljava/lang/String;

    move-result-object v4

    .line 1073
    goto :goto_d3

    .line 1069
    :pswitch_a3
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->d()[Ljava/lang/String;

    move-result-object v4

    .line 1070
    goto :goto_d3

    .line 1066
    :pswitch_a8
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->c()[Ljava/lang/String;

    move-result-object v4

    .line 1067
    goto :goto_d3

    .line 1063
    :pswitch_ad
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->o()[Ljava/lang/String;

    move-result-object v4

    .line 1064
    goto :goto_d3

    .line 1060
    :pswitch_b2
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->n()[Ljava/lang/String;

    move-result-object v4

    .line 1061
    goto :goto_d3

    .line 1057
    :pswitch_b7
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->i()[Ljava/lang/String;

    move-result-object v4

    .line 1058
    goto :goto_d3

    .line 1054
    :pswitch_bc
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->h()[Ljava/lang/String;

    move-result-object v4

    .line 1055
    goto :goto_d3

    .line 1051
    :pswitch_c1
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->g()[Ljava/lang/String;

    move-result-object v4

    .line 1052
    goto :goto_d3

    .line 1048
    :pswitch_c6
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->f()[Ljava/lang/String;

    move-result-object v4

    .line 1049
    goto :goto_d3

    .line 1045
    :pswitch_cb
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->e()[Ljava/lang/String;

    move-result-object v4

    .line 1046
    goto :goto_d3

    .line 1157
    :catchall_d0
    move-exception v4

    goto :goto_ee

    .line 1146
    :cond_d2
    :goto_d2
    move-object v4, v3

    :goto_d3
    if-eqz v4, :cond_f2

    .line 1147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1148
    array-length v7, v4

    move v8, v2

    :goto_db
    if-ge v8, v7, :cond_f2

    aget-object v9, v4, v8

    .line 1151
    invoke-static {v9, p2, v5, v6}, Lcom/anythink/basead/a/h;->a(Ljava/lang/String;Lcom/anythink/basead/c/h;J)Ljava/lang/String;

    move-result-object v9

    .line 1153
    new-instance v10, Lcom/anythink/basead/h/e;

    invoke-direct {v10, p0, v9, p1, v1}, Lcom/anythink/basead/h/e;-><init>(ILjava/lang/String;Lcom/anythink/core/common/d/u;Ljava/util/Map;)V

    invoke-virtual {v10, v2, v3}, Lcom/anythink/basead/h/e;->a(ILcom/anythink/core/common/e/g;)V
    :try_end_eb
    .catchall {:try_start_15 .. :try_end_eb} :catchall_d0

    .line 1148
    add-int/lit8 v8, v8, 0x1

    goto :goto_db

    .line 1157
    :goto_ee
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f3

    .line 1158
    :cond_f2
    nop

    .line 36
    :goto_f3
    nop

    .line 1163
    nop

    .line 1164
    packed-switch p0, :pswitch_data_1f6

    :pswitch_f8
    const-string v0, ""

    goto/16 :goto_19d

    .line 1255
    :pswitch_fc
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->aj()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_19d

    .line 1252
    :pswitch_102
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->ai()Ljava/lang/String;

    move-result-object v0

    .line 1253
    goto/16 :goto_19d

    .line 1249
    :pswitch_108
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->ag()Ljava/lang/String;

    move-result-object v0

    .line 1250
    goto/16 :goto_19d

    .line 1246
    :pswitch_10e
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->ah()Ljava/lang/String;

    move-result-object v0

    .line 1247
    goto/16 :goto_19d

    .line 1242
    :pswitch_114
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->af()Ljava/lang/String;

    move-result-object v0

    .line 1243
    goto/16 :goto_19d

    .line 1239
    :pswitch_11a
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->ae()Ljava/lang/String;

    move-result-object v0

    .line 1240
    goto/16 :goto_19d

    .line 1236
    :pswitch_120
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->ad()Ljava/lang/String;

    move-result-object v0

    .line 1237
    goto/16 :goto_19d

    .line 1233
    :pswitch_126
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->ac()Ljava/lang/String;

    move-result-object v0

    .line 1234
    goto/16 :goto_19d

    .line 1230
    :pswitch_12c
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->ab()Ljava/lang/String;

    move-result-object v0

    .line 1231
    goto/16 :goto_19d

    .line 1211
    :pswitch_132
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->N()Ljava/lang/String;

    move-result-object v0

    .line 1212
    goto/16 :goto_19d

    .line 1227
    :pswitch_138
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->aa()Ljava/lang/String;

    move-result-object v0

    .line 1228
    goto/16 :goto_19d

    .line 1208
    :pswitch_13e
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->M()Ljava/lang/String;

    move-result-object v0

    .line 1209
    goto :goto_19d

    .line 1205
    :pswitch_143
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->L()Ljava/lang/String;

    move-result-object v0

    .line 1206
    goto :goto_19d

    .line 1224
    :pswitch_148
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->Z()Ljava/lang/String;

    move-result-object v0

    .line 1225
    goto :goto_19d

    .line 1221
    :pswitch_14d
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->Y()Ljava/lang/String;

    move-result-object v0

    .line 1222
    goto :goto_19d

    .line 1218
    :pswitch_152
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->X()Ljava/lang/String;

    move-result-object v0

    .line 1219
    goto :goto_19d

    .line 1214
    :pswitch_157
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->G()Ljava/lang/String;

    move-result-object v0

    .line 1215
    goto :goto_19d

    .line 1202
    :pswitch_15c
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->I()Ljava/lang/String;

    move-result-object v0

    .line 1203
    goto :goto_19d

    .line 1199
    :pswitch_161
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->H()Ljava/lang/String;

    move-result-object v0

    .line 1200
    goto :goto_19d

    .line 1196
    :pswitch_166
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->F()Ljava/lang/String;

    move-result-object v0

    .line 1197
    goto :goto_19d

    .line 1193
    :pswitch_16b
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->x()Ljava/lang/String;

    move-result-object v0

    .line 1194
    goto :goto_19d

    .line 1190
    :pswitch_170
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->z()Ljava/lang/String;

    move-result-object v0

    .line 1191
    goto :goto_19d

    .line 1187
    :pswitch_175
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->y()Ljava/lang/String;

    move-result-object v0

    .line 1188
    goto :goto_19d

    .line 1184
    :pswitch_17a
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->K()Ljava/lang/String;

    move-result-object v0

    .line 1185
    goto :goto_19d

    .line 1181
    :pswitch_17f
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->J()Ljava/lang/String;

    move-result-object v0

    .line 1182
    goto :goto_19d

    .line 1178
    :pswitch_184
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->E()Ljava/lang/String;

    move-result-object v0

    .line 1179
    goto :goto_19d

    .line 1175
    :pswitch_189
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->D()Ljava/lang/String;

    move-result-object v0

    .line 1176
    goto :goto_19d

    .line 1172
    :pswitch_18e
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->C()Ljava/lang/String;

    move-result-object v0

    .line 1173
    goto :goto_19d

    .line 1169
    :pswitch_193
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->B()Ljava/lang/String;

    move-result-object v0

    .line 1170
    goto :goto_19d

    .line 1166
    :pswitch_198
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->A()Ljava/lang/String;

    move-result-object v0

    .line 1167
    nop

    .line 1261
    :goto_19d
    invoke-static {v0}, Lcom/anythink/basead/a/h;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b0

    .line 1265
    new-instance v4, Lcom/anythink/basead/h/f;

    invoke-direct {v4, p0, p1, v0, v1}, Lcom/anythink/basead/h/f;-><init>(ILcom/anythink/core/common/d/u;Ljava/lang/String;Ljava/util/Map;)V

    .line 1266
    iget-object p0, p2, Lcom/anythink/basead/c/h;->b:Ljava/lang/String;

    invoke-virtual {v4, p0}, Lcom/anythink/basead/h/f;->b(Ljava/lang/String;)V

    .line 1267
    invoke-virtual {v4, v2, v3}, Lcom/anythink/basead/h/f;->a(ILcom/anythink/core/common/e/g;)V

    .line 37
    :cond_1b0
    return-void

    nop

    :pswitch_data_1b2
    .packed-switch 0x1
        :pswitch_cb
        :pswitch_c6
        :pswitch_c1
        :pswitch_bc
        :pswitch_b7
        :pswitch_b2
        :pswitch_ad
        :pswitch_a8
        :pswitch_a3
        :pswitch_9e
        :pswitch_99
        :pswitch_94
        :pswitch_8f
        :pswitch_8a
        :pswitch_85
        :pswitch_80
        :pswitch_7b
        :pswitch_75
        :pswitch_6f
        :pswitch_69
        :pswitch_63
        :pswitch_13
        :pswitch_5d
        :pswitch_57
        :pswitch_51
        :pswitch_4b
        :pswitch_45
        :pswitch_3f
        :pswitch_39
        :pswitch_33
        :pswitch_2d
        :pswitch_15
    .end packed-switch

    :pswitch_data_1f6
    .packed-switch 0x1
        :pswitch_198
        :pswitch_193
        :pswitch_18e
        :pswitch_189
        :pswitch_184
        :pswitch_17f
        :pswitch_17a
        :pswitch_175
        :pswitch_170
        :pswitch_16b
        :pswitch_166
        :pswitch_161
        :pswitch_15c
        :pswitch_157
        :pswitch_152
        :pswitch_14d
        :pswitch_148
        :pswitch_143
        :pswitch_13e
        :pswitch_138
        :pswitch_132
        :pswitch_f8
        :pswitch_12c
        :pswitch_126
        :pswitch_120
        :pswitch_11a
        :pswitch_114
        :pswitch_10e
        :pswitch_108
        :pswitch_102
        :pswitch_fc
    .end packed-switch
.end method

.method private static a(ILcom/anythink/core/common/d/u;Lcom/anythink/core/common/d/w;Ljava/util/Map;Lcom/anythink/basead/c/h;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/anythink/core/common/d/u;",
            "Lcom/anythink/core/common/d/w;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/basead/c/h;",
            ")V"
        }
    .end annotation

    .line 41
    nop

    .line 43
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_e6

    :pswitch_5
    goto/16 :goto_c4

    .line 138
    :pswitch_7
    :try_start_7
    iget-object v1, p4, Lcom/anythink/basead/c/h;->h:Lcom/anythink/basead/c/i;

    .line 139
    invoke-virtual {p2}, Lcom/anythink/core/common/d/w;->w()Ljava/util/Map;

    move-result-object p2

    .line 140
    if-eqz v1, :cond_c4

    if-eqz p2, :cond_c4

    .line 141
    iget v1, v1, Lcom/anythink/basead/c/i;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    goto/16 :goto_c5

    .line 135
    :pswitch_1f
    invoke-virtual {p2}, Lcom/anythink/core/common/d/w;->v()[Ljava/lang/String;

    move-result-object p2

    .line 136
    goto/16 :goto_c5

    .line 132
    :pswitch_25
    invoke-virtual {p2}, Lcom/anythink/core/common/d/w;->u()[Ljava/lang/String;

    move-result-object p2

    .line 133
    goto/16 :goto_c5

    .line 129
    :pswitch_2b
    invoke-virtual {p2}, Lcom/anythink/core/common/d/w;->s()[Ljava/lang/String;

    move-result-object p2

    .line 130
    goto/16 :goto_c5

    .line 126
    :pswitch_31
    invoke-virtual {p2}, Lcom/anythink/core/common/d/w;->t()[Ljava/lang/String;

    move-result-object p2

    .line 127
    goto/16 :goto_c5

    .line 121
    :pswitch_37
    invoke-virtual {p2}, Lcom/anythink/core/common/d/w;->W()[Ljava/lang/String;

    move-result-object p2

    .line 122
    goto/16 :goto_c5

    .line 118
    :pswitch_3d
    invoke-virtual {p2}, Lcom/anythink/core/common/d/w;->V()[Ljava/lang/String;

    move-result-object p2

    .line 119
    goto/16 :goto_c5

    .line 115
    :pswitch_43
    invoke-virtual {p2}, Lcom/anythink/core/common/d/w;->U()[Ljava/lang/String;

    move-result-object p2

    .line 116
    goto/16 :goto_c5

    .line 112
    :pswitch_49
    invoke-virtual {p2}, Lcom/anythink/core/common/d/w;->T()[Ljava/lang/String;

    move-result-object p2

    .line 113
    goto/16 :goto_c5

    .line 109
    :pswitch_4f
    invoke-virtual {p2}, Lcom/anythink/core/common/d/w;->S()[Ljava/lang/String;

    move-result-object p2

    .line 110
    goto/16 :goto_c5

    .line 90
    :pswitch_55
    invoke-virtual {p2}, Lcom/anythink/core/common/d/w;->r()[Ljava/lang/String;

    move-result-object p2

    .line 91
    goto/16 :goto_c5

    .line 106
    :pswitch_5b
    invoke-virtual {p2}, Lcom/anythink/core/common/d/w;->R()[Ljava/lang/String;

    move-result-object p2

    .line 107
    goto/16 :goto_c5

    .line 87
    :pswitch_61
    invoke-virtual {p2}, Lcom/anythink/core/common/d/w;->q()[Ljava/lang/String;

    move-result-object p2

    .line 88
    goto/16 :goto_c5

    .line 84
    :pswitch_67
    invoke-virtual {p2}, Lcom/anythink/core/common/d/w;->p()[Ljava/lang/String;

    move-result-object p2

    .line 85
    goto/16 :goto_c5

    .line 103
    :pswitch_6d
    invoke-virtual {p2}, Lcom/anythink/core/common/d/w;->Q()[Ljava/lang/String;

    move-result-object p2

    .line 104
    goto :goto_c5

    .line 100
    :pswitch_72
    invoke-virtual {p2}, Lcom/anythink/core/common/d/w;->P()[Ljava/lang/String;

    move-result-object p2

    .line 101
    goto :goto_c5

    .line 97
    :pswitch_77
    invoke-virtual {p2}, Lcom/anythink/core/common/d/w;->O()[Ljava/lang/String;

    move-result-object p2

    .line 98
    goto :goto_c5

    .line 93
    :pswitch_7c
    invoke-virtual {p2}, Lcom/anythink/core/common/d/w;->k()[Ljava/lang/String;

    move-result-object p2

    .line 94
    goto :goto_c5

    .line 81
    :pswitch_81
    invoke-virtual {p2}, Lcom/anythink/core/common/d/w;->m()[Ljava/lang/String;

    move-result-object p2

    .line 82
    goto :goto_c5

    .line 78
    :pswitch_86
    invoke-virtual {p2}, Lcom/anythink/core/common/d/w;->l()[Ljava/lang/String;

    move-result-object p2

    .line 79
    goto :goto_c5

    .line 75
    :pswitch_8b
    invoke-virtual {p2}, Lcom/anythink/core/common/d/w;->j()[Ljava/lang/String;

    move-result-object p2

    .line 76
    goto :goto_c5

    .line 72
    :pswitch_90
    invoke-virtual {p2}, Lcom/anythink/core/common/d/w;->b()[Ljava/lang/String;

    move-result-object p2

    .line 73
    goto :goto_c5

    .line 69
    :pswitch_95
    invoke-virtual {p2}, Lcom/anythink/core/common/d/w;->d()[Ljava/lang/String;

    move-result-object p2

    .line 70
    goto :goto_c5

    .line 66
    :pswitch_9a
    invoke-virtual {p2}, Lcom/anythink/core/common/d/w;->c()[Ljava/lang/String;

    move-result-object p2

    .line 67
    goto :goto_c5

    .line 63
    :pswitch_9f
    invoke-virtual {p2}, Lcom/anythink/core/common/d/w;->o()[Ljava/lang/String;

    move-result-object p2

    .line 64
    goto :goto_c5

    .line 60
    :pswitch_a4
    invoke-virtual {p2}, Lcom/anythink/core/common/d/w;->n()[Ljava/lang/String;

    move-result-object p2

    .line 61
    goto :goto_c5

    .line 57
    :pswitch_a9
    invoke-virtual {p2}, Lcom/anythink/core/common/d/w;->i()[Ljava/lang/String;

    move-result-object p2

    .line 58
    goto :goto_c5

    .line 54
    :pswitch_ae
    invoke-virtual {p2}, Lcom/anythink/core/common/d/w;->h()[Ljava/lang/String;

    move-result-object p2

    .line 55
    goto :goto_c5

    .line 51
    :pswitch_b3
    invoke-virtual {p2}, Lcom/anythink/core/common/d/w;->g()[Ljava/lang/String;

    move-result-object p2

    .line 52
    goto :goto_c5

    .line 48
    :pswitch_b8
    invoke-virtual {p2}, Lcom/anythink/core/common/d/w;->f()[Ljava/lang/String;

    move-result-object p2

    .line 49
    goto :goto_c5

    .line 45
    :pswitch_bd
    invoke-virtual {p2}, Lcom/anythink/core/common/d/w;->e()[Ljava/lang/String;

    move-result-object p2

    .line 46
    goto :goto_c5

    .line 157
    :catchall_c2
    move-exception p0

    goto :goto_e1

    .line 146
    :cond_c4
    :goto_c4
    move-object p2, v0

    :goto_c5
    if-eqz p2, :cond_e5

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 148
    array-length v3, p2

    const/4 v4, 0x0

    move v5, v4

    :goto_ce
    if-ge v5, v3, :cond_e5

    aget-object v6, p2, v5

    .line 151
    invoke-static {v6, p4, v1, v2}, Lcom/anythink/basead/a/h;->a(Ljava/lang/String;Lcom/anythink/basead/c/h;J)Ljava/lang/String;

    move-result-object v6

    .line 153
    new-instance v7, Lcom/anythink/basead/h/e;

    invoke-direct {v7, p0, v6, p1, p3}, Lcom/anythink/basead/h/e;-><init>(ILjava/lang/String;Lcom/anythink/core/common/d/u;Ljava/util/Map;)V

    invoke-virtual {v7, v4, v0}, Lcom/anythink/basead/h/e;->a(ILcom/anythink/core/common/e/g;)V
    :try_end_de
    .catchall {:try_start_7 .. :try_end_de} :catchall_c2

    .line 148
    add-int/lit8 v5, v5, 0x1

    goto :goto_ce

    .line 157
    :goto_e1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    return-void

    .line 158
    :cond_e5
    return-void

    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_bd
        :pswitch_b8
        :pswitch_b3
        :pswitch_ae
        :pswitch_a9
        :pswitch_a4
        :pswitch_9f
        :pswitch_9a
        :pswitch_95
        :pswitch_90
        :pswitch_8b
        :pswitch_86
        :pswitch_81
        :pswitch_7c
        :pswitch_77
        :pswitch_72
        :pswitch_6d
        :pswitch_67
        :pswitch_61
        :pswitch_5b
        :pswitch_55
        :pswitch_5
        :pswitch_4f
        :pswitch_49
        :pswitch_43
        :pswitch_3d
        :pswitch_37
        :pswitch_31
        :pswitch_2b
        :pswitch_25
        :pswitch_1f
        :pswitch_7
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 3

    .line 348
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 349
    return v1

    .line 352
    :cond_8
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result p0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_16

    if-lez p0, :cond_15

    .line 354
    const/4 p0, 0x0

    return p0

    .line 358
    :cond_15
    goto :goto_17

    .line 356
    :catchall_16
    move-exception p0

    .line 359
    :goto_17
    return v1
.end method
