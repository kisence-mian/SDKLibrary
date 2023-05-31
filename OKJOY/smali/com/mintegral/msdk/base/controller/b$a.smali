.class final Lcom/mintegral/msdk/base/controller/b$a;
.super Ljava/util/TimerTask;
.source "SDKController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/base/controller/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/base/controller/b;


# direct methods
.method private constructor <init>(Lcom/mintegral/msdk/base/controller/b;)V
    .registers 2

    .prologue
    .line 384
    iput-object p1, p0, Lcom/mintegral/msdk/base/controller/b$a;->a:Lcom/mintegral/msdk/base/controller/b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mintegral/msdk/base/controller/b;B)V
    .registers 3

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/controller/b$a;-><init>(Lcom/mintegral/msdk/base/controller/b;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 23

    .prologue
    .line 388
    :try_start_0
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v2

    .line 389
    if-nez v2, :cond_1f

    .line 390
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v2

    .line 391
    const-string v3, "SDKController"

    const-string v4, "PBTask \u83b7\u53d6\u9ed8\u8ba4\u7684appsetting"

    invoke-static {v3, v4}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    move-object v9, v2

    .line 393
    invoke-virtual {v9}, Lcom/mintegral/msdk/c/a;->G()I

    move-result v12

    .line 394
    if-lez v12, :cond_31

    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v2, "authority_app_progress"

    invoke-static {v2}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 395
    :cond_31
    const-string v2, "SDKController"

    const-string v3, "PBTask pmax \uff1d0 return"

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :goto_38
    return-void

    .line 398
    :cond_39
    invoke-virtual {v9}, Lcom/mintegral/msdk/c/a;->F()Ljava/util/List;

    move-result-object v13

    .line 399
    invoke-static {}, Lcom/mintegral/msdk/base/utils/k;->d()Ljava/util/List;

    move-result-object v14

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mintegral/msdk/base/controller/b$a;->a:Lcom/mintegral/msdk/base/controller/b;

    invoke-static {v2}, Lcom/mintegral/msdk/base/controller/b;->b(Lcom/mintegral/msdk/base/controller/b;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/base/b/p;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/p;

    move-result-object v15

    .line 402
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 404
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 406
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 408
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 409
    const-string v2, "SDKController"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "task permission:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v8, Lcom/mintegral/msdk/base/common/a;->u:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    sget-boolean v2, Lcom/mintegral/msdk/base/common/a;->u:Z

    if-eqz v2, :cond_c5

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mintegral/msdk/base/controller/b$a;->a:Lcom/mintegral/msdk/base/controller/b;

    invoke-static {v2}, Lcom/mintegral/msdk/base/controller/b;->b(Lcom/mintegral/msdk/base/controller/b;)Landroid/content/Context;

    move-result-object v2

    const-string v7, "activity"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 412
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 413
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_c5

    .line 414
    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 415
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_c5
    const/4 v8, 0x0

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mintegral/msdk/base/controller/b$a;->a:Lcom/mintegral/msdk/base/controller/b;

    invoke-static {v2}, Lcom/mintegral/msdk/base/controller/b;->b(Lcom/mintegral/msdk/base/controller/b;)Landroid/content/Context;

    move-result-object v2

    const-string v7, "pb_first_report"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v2, v7, v10}, Lcom/mintegral/msdk/base/utils/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 420
    if-eqz v2, :cond_e5

    instance-of v7, v2, Ljava/lang/Boolean;

    if-eqz v7, :cond_e5

    .line 421
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 425
    :cond_e5
    const-wide/16 v10, 0x0

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mintegral/msdk/base/controller/b$a;->a:Lcom/mintegral/msdk/base/controller/b;

    invoke-static {v2}, Lcom/mintegral/msdk/base/controller/b;->b(Lcom/mintegral/msdk/base/controller/b;)Landroid/content/Context;

    move-result-object v2

    const-string v7, "pb_pre_report_time"

    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v7, v0}, Lcom/mintegral/msdk/base/utils/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 427
    if-eqz v2, :cond_109

    instance-of v7, v2, Ljava/lang/Long;

    if-eqz v7, :cond_109

    .line 428
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 430
    :cond_109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 431
    sub-long v18, v16, v10

    const-wide/32 v20, 0x5265c00

    cmp-long v2, v18, v20

    if-lez v2, :cond_22e

    .line 432
    const-string v2, "SDKController"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v18, "\u8d85\u8fc724\u5c0f\u65f6 curTime:"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v18, "  preReportTime:"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v18, " \u8d85\u8fc7\u7684\u65f6\u95f4\u5206\uff1a"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v10, v16, v10

    const-wide/32 v16, 0xea60

    div-long v10, v10, v16

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " full\u91cd\u65b0\u4e0a\u62a5"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const/4 v2, 0x1

    move v7, v2

    .line 437
    :goto_155
    invoke-virtual {v15}, Lcom/mintegral/msdk/base/b/p;->d()Ljava/util/List;

    move-result-object v10

    .line 438
    const-string v11, "SDKController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v16, "full\u6570\u7ec4\u662f\u5426\u8d85\u65f6isExpire:"

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v16, "  firstReport:"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v16, " dbPBList:"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-nez v10, :cond_232

    const-string v2, "null"

    :goto_180
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    if-nez v8, :cond_199

    if-nez v7, :cond_199

    if-eqz v10, :cond_199

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_285

    .line 440
    :cond_199
    if-eqz v14, :cond_1a1

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1a7

    :cond_1a1
    invoke-virtual {v9}, Lcom/mintegral/msdk/c/a;->I()I

    move-result v2

    if-nez v2, :cond_26b

    .line 441
    :cond_1a7
    const-string v2, "SDKController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PBTask \u9996\u6b21 realActivePbList.size:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const/4 v2, 0x0

    move v4, v2

    :goto_1c1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_1ef

    .line 443
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v12, :cond_23c

    .line 444
    const-string v2, "SDKController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PBTask \u9996\u6b21 fulllist \u4e0d\u80fd\u8d85\u8fc7pmax break first\uff1dtrue size:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pmax:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :cond_1ef
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_262

    .line 454
    invoke-virtual {v15}, Lcom/mintegral/msdk/base/b/p;->c()V

    .line 455
    invoke-static {}, Lcom/mintegral/msdk/base/utils/k;->e()Ljava/lang/String;

    move-result-object v7

    .line 457
    invoke-virtual {v15, v14, v7}, Lcom/mintegral/msdk/base/b/p;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mintegral/msdk/base/controller/b$a;->a:Lcom/mintegral/msdk/base/controller/b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v8}, Lcom/mintegral/msdk/base/controller/b;->a(Lcom/mintegral/msdk/base/controller/b;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)V

    .line 459
    const-string v2, "SDKController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PBTask \u9996\u6b21\u63d2\u5165full insertOrUpdate size\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_220
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_220} :catch_222

    goto/16 :goto_38

    .line 519
    :catch_222
    move-exception v2

    .line 520
    const-string v3, "SDKController"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 435
    :cond_22e
    const/4 v2, 0x0

    move v7, v2

    goto/16 :goto_155

    .line 438
    :cond_232
    :try_start_232
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_180

    .line 447
    :cond_23c
    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mintegral/msdk/base/entity/m;

    .line 448
    if-eqz v2, :cond_25d

    iget-object v5, v2, Lcom/mintegral/msdk/base/entity/m;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25d

    iget-object v5, v2, Lcom/mintegral/msdk/base/entity/m;->a:Ljava/lang/String;

    invoke-static {v13, v5}, Lcom/mintegral/msdk/base/controller/b;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_25d

    .line 449
    const-string v5, "1"

    iput-object v5, v2, Lcom/mintegral/msdk/base/entity/m;->c:Ljava/lang/String;

    .line 450
    iget-object v2, v2, Lcom/mintegral/msdk/base/entity/m;->a:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_25d
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_1c1

    .line 461
    :cond_262
    const-string v2, "SDKController"

    const-string v3, "PBTask \u9996\u6b21\u63d2\u5165full active pb \u4e3a 0"

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 464
    :cond_26b
    const-string v2, "SDKController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " PBTask \u9996\u6b21full \u4f46\u662factive pb\u4e3a0 \u6216\u8005pctrlfull\u4e3a0 pctrlfull:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/mintegral/msdk/c/a;->I()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 467
    :cond_285
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mintegral/msdk/base/entity/m;

    iget-object v7, v2, Lcom/mintegral/msdk/base/entity/m;->b:Ljava/lang/String;

    .line 468
    invoke-virtual {v9}, Lcom/mintegral/msdk/c/a;->I()I

    move-result v2

    .line 469
    invoke-virtual {v9}, Lcom/mintegral/msdk/c/a;->K()I

    move-result v11

    .line 470
    invoke-virtual {v9}, Lcom/mintegral/msdk/c/a;->M()I

    move-result v9

    .line 471
    const-string v16, "SDKController"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "PBTask \u975e\u9996\u6b21 pctrlFull:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "  pctrlAdd:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "  pctrlDele:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " dbPBList.size:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " uuid:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v2, v0, :cond_324

    .line 474
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2ec
    :goto_2ec
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_324

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mintegral/msdk/base/entity/m;

    .line 475
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v0, v12, :cond_3bc

    .line 476
    const-string v2, "SDKController"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "PBTask \u975e\u9996\u6b21 fulllist \u4e0d\u80fd\u8d85\u8fc7pmax break size:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " pmax:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :cond_324
    if-eqz v14, :cond_460

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_460

    .line 488
    const-string v2, "SDKController"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v16, "PBTask \u975e\u9996\u6b21 realActivePbList.size:"

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const/4 v2, 0x1

    if-ne v11, v2, :cond_40e

    .line 491
    invoke-static {v10}, Lcom/mintegral/msdk/base/entity/m;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 492
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_353
    :goto_353
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mintegral/msdk/base/entity/m;

    .line 493
    if-eqz v2, :cond_353

    iget-object v0, v2, Lcom/mintegral/msdk/base/entity/m;->a:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_353

    iget-object v0, v2, Lcom/mintegral/msdk/base/entity/m;->a:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Lcom/mintegral/msdk/base/controller/b;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_353

    iget-object v0, v2, Lcom/mintegral/msdk/base/entity/m;->a:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_353

    .line 494
    const-string v16, "1"

    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/mintegral/msdk/base/entity/m;->c:Ljava/lang/String;

    .line 495
    iget-object v0, v2, Lcom/mintegral/msdk/base/entity/m;->a:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    invoke-virtual {v15, v2, v7}, Lcom/mintegral/msdk/base/b/p;->a(Lcom/mintegral/msdk/base/entity/m;Ljava/lang/String;)J

    .line 497
    const-string v16, "SDKController"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "PBTask \u975e\u9996\u6b21 add insertOrUpdate pb\uff1a"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/mintegral/msdk/base/entity/m;->a:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, " uuid:"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_353

    .line 479
    :cond_3bc
    if-eqz v2, :cond_2ec

    const-string v17, "0"

    iget-object v0, v2, Lcom/mintegral/msdk/base/entity/m;->c:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2ec

    iget-object v0, v2, Lcom/mintegral/msdk/base/entity/m;->a:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2ec

    iget-object v0, v2, Lcom/mintegral/msdk/base/entity/m;->a:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/mintegral/msdk/base/controller/b;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2ec

    .line 480
    const-string v17, "1"

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/mintegral/msdk/base/entity/m;->c:Ljava/lang/String;

    .line 481
    iget-object v0, v2, Lcom/mintegral/msdk/base/entity/m;->a:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    invoke-virtual {v15, v2, v7}, Lcom/mintegral/msdk/base/b/p;->a(Lcom/mintegral/msdk/base/entity/m;Ljava/lang/String;)J

    .line 483
    const-string v17, "SDKController"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "PBTask \u975e\u9996\u6b21 full insertOrUpdate pb\uff1a"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/mintegral/msdk/base/entity/m;->a:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2ec

    .line 501
    :cond_40e
    const/4 v2, 0x1

    if-ne v9, v2, :cond_460

    .line 503
    invoke-static {v14}, Lcom/mintegral/msdk/base/entity/m;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 504
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_419
    :goto_419
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_460

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mintegral/msdk/base/entity/m;

    .line 505
    if-eqz v2, :cond_419

    iget-object v11, v2, Lcom/mintegral/msdk/base/entity/m;->a:Ljava/lang/String;

    invoke-static {v11}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_419

    iget-object v11, v2, Lcom/mintegral/msdk/base/entity/m;->a:Ljava/lang/String;

    invoke-static {v13, v11}, Lcom/mintegral/msdk/base/controller/b;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_419

    iget-object v11, v2, Lcom/mintegral/msdk/base/entity/m;->a:Ljava/lang/String;

    invoke-interface {v9, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_419

    .line 506
    iget-object v11, v2, Lcom/mintegral/msdk/base/entity/m;->a:Ljava/lang/String;

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    iget-object v11, v2, Lcom/mintegral/msdk/base/entity/m;->a:Ljava/lang/String;

    invoke-virtual {v15, v11}, Lcom/mintegral/msdk/base/b/p;->a(Ljava/lang/String;)V

    .line 508
    const-string v11, "SDKController"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "PBTask \u975e\u9996\u6b21 dele deleteByPKG pb\uff1a"

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/mintegral/msdk/base/entity/m;->a:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_419

    .line 513
    :cond_460
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_47b

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_47b

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_47b

    .line 514
    const-string v2, "SDKController"

    const-string v3, "PBTask \u975e\u9996\u6b21 \u4e0d\u4e0a\u62a5 \u96c6\u5408\u5927\u5c0f\u90fd\u4e3a0"

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 516
    :cond_47b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mintegral/msdk/base/controller/b$a;->a:Lcom/mintegral/msdk/base/controller/b;

    invoke-static/range {v2 .. v8}, Lcom/mintegral/msdk/base/controller/b;->a(Lcom/mintegral/msdk/base/controller/b;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)V
    :try_end_482
    .catch Ljava/lang/Throwable; {:try_start_232 .. :try_end_482} :catch_222

    goto/16 :goto_38
.end method
