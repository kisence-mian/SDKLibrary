.class final Lcom/tendcloud/tenddata/game/dn;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 340
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bb;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 341
    return-void

    .line 343
    :cond_9
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bb;->i(Landroid/content/Context;)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_8f

    const/4 v1, 0x3

    const/4 v2, 0x6

    const-string v3, "TD_app_pefercen_profile"

    const/4 v4, 0x0

    const-string v5, "http://i.tddmp.com/a/"

    if-eqz v0, :cond_4f

    .line 347
    :try_start_18
    invoke-static {}, Lcom/tendcloud/tenddata/game/dm;->b()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tendcloud/tenddata/game/au;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-static {v0, v4}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/lang/String;Z)Ljava/lang/String;

    .line 351
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 352
    sget-object v6, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v7, "TD_sdk_last_send_time_mobile_data"

    .line 353
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v8

    mul-int/lit16 v8, v8, 0x3e8

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v8, v0

    int-to-long v8, v8

    .line 352
    invoke-static {v6, v3, v7, v8, v9}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 362
    :cond_4f
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bb;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 366
    invoke-static {}, Lcom/tendcloud/tenddata/game/dm;->c()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v5}, Lcom/tendcloud/tenddata/game/au;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-static {v0, v4}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/lang/String;Z)Ljava/lang/String;

    .line 370
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 371
    sget-object v4, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v5, "TD_sdk_last_send_time_wifi"

    .line 372
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v2, v0

    int-to-long v0, v2

    .line 371
    invoke-static {v4, v3, v5, v0, v1}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_8e
    .catchall {:try_start_18 .. :try_end_8e} :catchall_8f

    .line 385
    :cond_8e
    goto :goto_90

    .line 381
    :catchall_8f
    move-exception v0

    .line 386
    :goto_90
    return-void
.end method
