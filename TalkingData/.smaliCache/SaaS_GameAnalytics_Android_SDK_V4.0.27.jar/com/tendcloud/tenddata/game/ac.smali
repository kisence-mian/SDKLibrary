.class public final Lcom/tendcloud/tenddata/game/ac;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static a:Lcom/tendcloud/tenddata/game/ao;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-class v0, Lcom/tendcloud/tenddata/game/ac;

    monitor-enter v0

    .line 101
    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 102
    sget-object v2, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v2, p0}, Lcom/tendcloud/tenddata/game/ao;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_f

    monitor-exit v0

    return-object p0

    .line 103
    :catchall_f
    move-exception p0

    .line 104
    :try_start_10
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_15

    .line 105
    monitor-exit v0

    return-object v1

    .line 100
    :catchall_15
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(DLjava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 5

    .line 550
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 551
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tendcloud/tenddata/game/ao;->a(DLjava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 554
    goto :goto_f

    .line 552
    :catchall_b
    move-exception p0

    .line 553
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 555
    :goto_f
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V
    .registers 3

    .line 145
    :try_start_0
    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 146
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->a(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    .line 149
    goto :goto_d

    .line 147
    :catchall_9
    move-exception p0

    .line 148
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 150
    :goto_d
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 5

    .line 130
    :try_start_0
    invoke-static {p0, p3}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 131
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tendcloud/tenddata/game/ao;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    .line 134
    goto :goto_d

    .line 132
    :catchall_9
    move-exception p0

    .line 133
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 135
    :goto_d
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V
    .registers 4

    const-class v0, Lcom/tendcloud/tenddata/game/ac;

    monitor-enter v0

    .line 27
    :try_start_3
    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 28
    sget-object v1, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v1, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_c

    .line 31
    goto :goto_10

    .line 29
    :catchall_c
    move-exception p0

    .line 30
    :try_start_d
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    .line 32
    :goto_10
    monitor-exit v0

    return-void

    .line 26
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 4

    .line 211
    const-string v0, ""

    invoke-static {p0, p1, v0, p2}, Lcom/tendcloud/tenddata/game/ac;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    .line 212
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 6

    const-class v0, Lcom/tendcloud/tenddata/game/ac;

    monitor-enter v0

    .line 43
    :try_start_3
    invoke-static {p0, p3}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 44
    sget-object v1, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/tendcloud/tenddata/game/ao;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_c

    .line 47
    goto :goto_10

    .line 45
    :catchall_c
    move-exception p0

    .line 46
    :try_start_d
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    .line 48
    :goto_10
    monitor-exit v0

    return-void

    .line 42
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/game/a;)V
    .registers 11

    .line 241
    :try_start_0
    invoke-static {p0, p4}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 242
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/tendcloud/tenddata/game/ao;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    .line 245
    goto :goto_12

    .line 243
    :catchall_e
    move-exception p0

    .line 244
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 246
    :goto_12
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/game/a;)V
    .registers 5

    .line 228
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/tendcloud/tenddata/game/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/game/a;)V

    .line 229
    return-void
.end method

.method public static a(Lcom/tendcloud/tenddata/TDGAAccount$a;Lcom/tendcloud/tenddata/game/a;)V
    .registers 3

    .line 506
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 507
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->a(Lcom/tendcloud/tenddata/TDGAAccount$a;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 510
    goto :goto_f

    .line 508
    :catchall_b
    move-exception p0

    .line 509
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 511
    :goto_f
    return-void
.end method

.method public static a(Lcom/tendcloud/tenddata/TDGAAccount;IILjava/lang/String;JLcom/tendcloud/tenddata/game/a;)V
    .registers 16

    .line 490
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p6}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 491
    sget-object v1, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-object v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/tendcloud/tenddata/game/ao;->a(Lcom/tendcloud/tenddata/TDGAAccount;IILjava/lang/String;JLcom/tendcloud/tenddata/game/a;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    .line 494
    goto :goto_15

    .line 492
    :catchall_11
    move-exception p0

    .line 493
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 495
    :goto_15
    return-void
.end method

.method public static a(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V
    .registers 3

    .line 466
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 467
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->a(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 470
    goto :goto_f

    .line 468
    :catchall_b
    move-exception p0

    .line 469
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 471
    :goto_f
    return-void
.end method

.method public static a(Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;)V
    .registers 9

    .line 250
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 251
    sget-object v1, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v4, ""

    const/4 v5, 0x0

    move-object v3, p1

    move-object v6, p0

    invoke-interface/range {v1 .. v6}, Lcom/tendcloud/tenddata/game/ao;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    .line 254
    goto :goto_16

    .line 252
    :catchall_12
    move-exception p0

    .line 253
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 255
    :goto_16
    return-void
.end method

.method public static a(Lcom/tendcloud/tenddata/game/eo;Lcom/tendcloud/tenddata/game/a;)V
    .registers 3

    .line 441
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 442
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->a(Lcom/tendcloud/tenddata/game/eo;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 445
    goto :goto_f

    .line 443
    :catchall_b
    move-exception p0

    .line 444
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 447
    :goto_f
    return-void
.end method

.method public static a(Ljava/lang/String;IDLcom/tendcloud/tenddata/game/a;)V
    .registers 12

    .line 524
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p4}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 525
    sget-object v1, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/tendcloud/tenddata/game/ao;->a(Ljava/lang/String;IDLcom/tendcloud/tenddata/game/a;)V
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    .line 528
    goto :goto_13

    .line 526
    :catchall_f
    move-exception p0

    .line 527
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 529
    :goto_13
    return-void
.end method

.method public static a(Ljava/lang/String;ILcom/tendcloud/tenddata/game/a;)V
    .registers 4

    .line 532
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 533
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1, p2}, Lcom/tendcloud/tenddata/game/ao;->a(Ljava/lang/String;ILcom/tendcloud/tenddata/game/a;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 536
    goto :goto_f

    .line 534
    :catchall_b
    move-exception p0

    .line 535
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 537
    :goto_f
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 3

    .line 194
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 195
    sget-object p1, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {p1, p0}, Lcom/tendcloud/tenddata/game/ao;->removeGlobalKV(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 198
    goto :goto_f

    .line 196
    :catchall_b
    move-exception p0

    .line 197
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 202
    :goto_f
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/af$AccountType;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 5

    .line 328
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 329
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tendcloud/tenddata/game/ao;->b(Ljava/lang/String;Lcom/tendcloud/tenddata/game/af$AccountType;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 332
    goto :goto_f

    .line 330
    :catchall_b
    move-exception p0

    .line 331
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 333
    :goto_f
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/en;Lcom/tendcloud/tenddata/game/a;)V
    .registers 4

    .line 404
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 405
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1, p2}, Lcom/tendcloud/tenddata/game/ao;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/en;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 408
    goto :goto_f

    .line 406
    :catchall_b
    move-exception p0

    .line 407
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 409
    :goto_f
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Lcom/tendcloud/tenddata/game/a;)V
    .registers 4

    .line 176
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 177
    sget-object p2, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {p2, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 180
    goto :goto_f

    .line 178
    :catchall_b
    move-exception p0

    .line 179
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 185
    :goto_f
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;Lcom/tendcloud/tenddata/game/a;)V
    .registers 22

    .line 541
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    move-object/from16 v11, p9

    invoke-static {v0, v11}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 542
    sget-object v1, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v1 .. v11}, Lcom/tendcloud/tenddata/game/ao;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    .line 545
    goto :goto_1e

    .line 543
    :catchall_1a
    move-exception v0

    .line 544
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 546
    :goto_1e
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 14

    .line 364
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p5}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 365
    sget-object v1, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/tendcloud/tenddata/game/ao;->b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    .line 368
    goto :goto_15

    .line 366
    :catchall_11
    move-exception p0

    .line 367
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 369
    :goto_15
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/en;Lcom/tendcloud/tenddata/game/a;)V
    .registers 16

    .line 382
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p6}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 383
    sget-object v1, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/tendcloud/tenddata/game/ao;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/en;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    .line 386
    goto :goto_16

    .line 384
    :catchall_12
    move-exception p0

    .line 385
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 387
    :goto_16
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tendcloud/tenddata/game/a;)V
    .registers 18

    .line 391
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    move-object/from16 v9, p7

    invoke-static {v0, v9}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 392
    sget-object v1, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Lcom/tendcloud/tenddata/game/ao;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tendcloud/tenddata/game/a;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    .line 395
    goto :goto_1b

    .line 393
    :catchall_17
    move-exception v0

    .line 394
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 396
    :goto_1b
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/TDGAMission$a;JLcom/tendcloud/tenddata/game/a;)V
    .registers 16

    .line 514
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p6}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 515
    sget-object v1, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-object v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/tendcloud/tenddata/game/ao;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/TDGAMission$a;JLcom/tendcloud/tenddata/game/a;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    .line 518
    goto :goto_15

    .line 516
    :catchall_11
    move-exception p0

    .line 517
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 519
    :goto_15
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/en;Lcom/tendcloud/tenddata/game/a;)V
    .registers 5

    .line 373
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 374
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tendcloud/tenddata/game/ao;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/en;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 377
    goto :goto_f

    .line 375
    :catchall_b
    move-exception p0

    .line 376
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 378
    :goto_f
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/tendcloud/tenddata/game/a;)V
    .registers 14

    .line 423
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p5}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 424
    sget-object v1, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/tendcloud/tenddata/game/ao;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/tendcloud/tenddata/game/a;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    .line 427
    goto :goto_15

    .line 425
    :catchall_11
    move-exception p0

    .line 426
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 428
    :goto_15
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tendcloud/tenddata/game/a;)V
    .registers 12

    .line 432
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p4}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 433
    sget-object v1, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/tendcloud/tenddata/game/ao;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tendcloud/tenddata/game/a;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    .line 436
    goto :goto_14

    .line 434
    :catchall_10
    move-exception p0

    .line 435
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 437
    :goto_14
    return-void
.end method

.method public static a()Z
    .registers 1

    .line 72
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->a:Z

    return v0
.end method

.method public static b(Landroid/content/Context;)I
    .registers 1

    .line 290
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/aw;->b(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static b()Landroid/content/Context;
    .registers 1

    .line 109
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0}, Lcom/tendcloud/tenddata/game/ao;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;
    .registers 2

    .line 57
    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/game/ab;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V
    .registers 3

    .line 160
    :try_start_0
    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 161
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->b(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    .line 164
    goto :goto_d

    .line 162
    :catchall_9
    move-exception p0

    .line 163
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 165
    :goto_d
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 5

    .line 223
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/tendcloud/tenddata/game/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/game/a;)V

    .line 224
    return-void
.end method

.method public static b(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V
    .registers 3

    .line 474
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 475
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->b(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 478
    goto :goto_f

    .line 476
    :catchall_b
    move-exception p0

    .line 477
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 479
    :goto_f
    return-void
.end method

.method public static b(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 3

    .line 314
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 315
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 318
    goto :goto_f

    .line 316
    :catchall_b
    move-exception p0

    .line 317
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 319
    :goto_f
    return-void
.end method

.method public static b(Ljava/lang/String;Lcom/tendcloud/tenddata/game/af$AccountType;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 5

    .line 345
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 346
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tendcloud/tenddata/game/ao;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/af$AccountType;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 349
    goto :goto_f

    .line 347
    :catchall_b
    move-exception p0

    .line 348
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 350
    :goto_f
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 14

    .line 414
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p5}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 415
    sget-object v1, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/tendcloud/tenddata/game/ao;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    .line 418
    goto :goto_15

    .line 416
    :catchall_11
    move-exception p0

    .line 417
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 419
    :goto_15
    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;
    .registers 2

    .line 65
    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/game/ab;->b(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c()V
    .registers 1

    .line 114
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/tendcloud/tenddata/game/ar;->a:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_4

    .line 117
    goto :goto_8

    .line 115
    :catchall_4
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    :goto_8
    return-void
.end method

.method public static c(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V
    .registers 3

    .line 482
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 483
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->c(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 486
    goto :goto_f

    .line 484
    :catchall_b
    move-exception p0

    .line 485
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 487
    :goto_f
    return-void
.end method

.method public static c(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 3

    .line 337
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 338
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->b(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 341
    goto :goto_f

    .line 339
    :catchall_b
    move-exception p0

    .line 340
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 342
    :goto_f
    return-void
.end method

.method public static declared-synchronized d(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;
    .registers 4

    const-class v0, Lcom/tendcloud/tenddata/game/ac;

    monitor-enter v0

    .line 85
    :try_start_3
    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 86
    sget-object v1, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v1, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->b(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v0

    return-object p0

    .line 87
    :catchall_e
    move-exception p0

    .line 88
    :try_start_f
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_15

    .line 89
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    .line 84
    :catchall_15
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static d(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V
    .registers 3

    .line 498
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 499
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->d(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 502
    goto :goto_f

    .line 500
    :catchall_b
    move-exception p0

    .line 501
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 503
    :goto_f
    return-void
.end method

.method public static d(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 3

    .line 355
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 356
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->e(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 359
    goto :goto_f

    .line 357
    :catchall_b
    move-exception p0

    .line 358
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 360
    :goto_f
    return-void
.end method

.method private static declared-synchronized e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V
    .registers 2

    const-class p1, Lcom/tendcloud/tenddata/game/ac;

    monitor-enter p1

    .line 295
    if-eqz p0, :cond_b

    .line 296
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    .line 298
    :cond_b
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-nez p0, :cond_16

    .line 299
    const-string p0, "Init failed Context is null "

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_25

    .line 300
    monitor-exit p1

    return-void

    .line 302
    :cond_16
    :try_start_16
    sget-object p0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    if-nez p0, :cond_23

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 305
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->a()Lcom/tendcloud/tenddata/game/zz;

    move-result-object p0

    sput-object p0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_25

    .line 309
    :cond_23
    monitor-exit p1

    return-void

    .line 294
    :catchall_25
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public static e(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 3

    .line 452
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 453
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->d(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 456
    goto :goto_f

    .line 454
    :catchall_b
    move-exception p0

    .line 455
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 457
    :goto_f
    return-void
.end method

.method public static onKill(Lcom/tendcloud/tenddata/game/a;)V
    .registers 2

    .line 270
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 271
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0}, Lcom/tendcloud/tenddata/game/ao;->onKill(Lcom/tendcloud/tenddata/game/a;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 274
    goto :goto_f

    .line 272
    :catchall_b
    move-exception p0

    .line 273
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 275
    :goto_f
    return-void
.end method
