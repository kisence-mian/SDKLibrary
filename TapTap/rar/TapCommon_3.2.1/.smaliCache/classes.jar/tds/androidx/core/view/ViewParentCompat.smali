.class public final Ltds/androidx/core/view/ViewParentCompat;
.super Ljava/lang/Object;
.source "ViewParentCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewParentCompat"

.field private static sTempNestedScrollConsumed:[I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTempNestedScrollConsumed()[I
    .registers 3

    .line 498
    sget-object v0, Ltds/androidx/core/view/ViewParentCompat;->sTempNestedScrollConsumed:[I

    if-nez v0, :cond_a

    .line 499
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Ltds/androidx/core/view/ViewParentCompat;->sTempNestedScrollConsumed:[I

    goto :goto_10

    .line 501
    :cond_a
    const/4 v1, 0x0

    aput v1, v0, v1

    .line 502
    const/4 v2, 0x1

    aput v1, v0, v2

    .line 504
    :goto_10
    sget-object v0, Ltds/androidx/core/view/ViewParentCompat;->sTempNestedScrollConsumed:[I

    return-object v0
.end method

.method public static notifySubtreeAccessibilityStateChanged(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .registers 6
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Landroid/view/View;
    .param p3, "changeType"    # I

    .line 492
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_9

    .line 493
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V

    .line 495
    :cond_9
    return-void
.end method

.method public static onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .registers 8
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 424
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2b

    .line 426
    :try_start_6
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/ViewParent;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/AbstractMethodError; {:try_start_6 .. :try_end_a} :catch_b

    return v0

    .line 427
    :catch_b
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/AbstractMethodError;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewParent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not implement interface method onNestedFling"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ViewParentCompat"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 430
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    goto :goto_37

    .line 431
    :cond_2b
    instance-of v0, p0, Ltds/androidx/core/view/NestedScrollingParent;

    if-eqz v0, :cond_37

    .line 432
    move-object v0, p0

    check-cast v0, Ltds/androidx/core/view/NestedScrollingParent;

    invoke-interface {v0, p1, p2, p3, p4}, Ltds/androidx/core/view/NestedScrollingParent;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result v0

    return v0

    .line 435
    :cond_37
    :goto_37
    const/4 v0, 0x0

    return v0
.end method

.method public static onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .registers 7
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .line 461
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2b

    .line 463
    :try_start_6
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/AbstractMethodError; {:try_start_6 .. :try_end_a} :catch_b

    return v0

    .line 464
    :catch_b
    move-exception v0

    .line 465
    .local v0, "e":Ljava/lang/AbstractMethodError;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewParent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not implement interface method onNestedPreFling"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ViewParentCompat"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 467
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    goto :goto_37

    .line 468
    :cond_2b
    instance-of v0, p0, Ltds/androidx/core/view/NestedScrollingParent;

    if-eqz v0, :cond_37

    .line 469
    move-object v0, p0

    check-cast v0, Ltds/androidx/core/view/NestedScrollingParent;

    invoke-interface {v0, p1, p2, p3}, Ltds/androidx/core/view/NestedScrollingParent;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result v0

    return v0

    .line 472
    :cond_37
    :goto_37
    const/4 v0, 0x0

    return v0
.end method

.method public static onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    .registers 11
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .line 178
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Ltds/androidx/core/view/ViewParentCompat;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    .line 179
    return-void
.end method

.method public static onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[II)V
    .registers 13
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I
    .param p5, "type"    # I

    .line 384
    instance-of v0, p0, Ltds/androidx/core/view/NestedScrollingParent2;

    if-eqz v0, :cond_10

    .line 386
    move-object v1, p0

    check-cast v1, Ltds/androidx/core/view/NestedScrollingParent2;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Ltds/androidx/core/view/NestedScrollingParent2;->onNestedPreScroll(Landroid/view/View;II[II)V

    goto :goto_46

    .line 387
    :cond_10
    if-nez p5, :cond_46

    .line 389
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3c

    .line 391
    :try_start_18
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/ViewParent;->onNestedPreScroll(Landroid/view/View;II[I)V
    :try_end_1b
    .catch Ljava/lang/AbstractMethodError; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 395
    :goto_1b
    goto :goto_46

    .line 392
    :catch_1c
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/AbstractMethodError;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewParent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not implement interface method onNestedPreScroll"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ViewParentCompat"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    goto :goto_1b

    .line 396
    :cond_3c
    instance-of v0, p0, Ltds/androidx/core/view/NestedScrollingParent;

    if-eqz v0, :cond_46

    .line 397
    move-object v0, p0

    check-cast v0, Ltds/androidx/core/view/NestedScrollingParent;

    invoke-interface {v0, p1, p2, p3, p4}, Ltds/androidx/core/view/NestedScrollingParent;->onNestedPreScroll(Landroid/view/View;II[I)V

    .line 400
    :cond_46
    :goto_46
    return-void
.end method

.method public static onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    .registers 14
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .line 132
    nop

    .line 133
    invoke-static {}, Ltds/androidx/core/view/ViewParentCompat;->getTempNestedScrollConsumed()[I

    move-result-object v7

    .line 132
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Ltds/androidx/core/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V

    .line 134
    return-void
.end method

.method public static onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII)V
    .registers 15
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I
    .param p6, "type"    # I

    .line 160
    nop

    .line 161
    invoke-static {}, Ltds/androidx/core/view/ViewParentCompat;->getTempNestedScrollConsumed()[I

    move-result-object v7

    .line 160
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Ltds/androidx/core/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V

    .line 162
    return-void
.end method

.method public static onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V
    .registers 18
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I
    .param p6, "type"    # I
    .param p7, "consumed"    # [I

    .line 329
    move-object v1, p0

    instance-of v0, v1, Ltds/androidx/core/view/NestedScrollingParent3;

    if-eqz v0, :cond_16

    .line 330
    move-object v2, v1

    check-cast v2, Ltds/androidx/core/view/NestedScrollingParent3;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Ltds/androidx/core/view/NestedScrollingParent3;->onNestedScroll(Landroid/view/View;IIIII[I)V

    goto/16 :goto_71

    .line 336
    :cond_16
    const/4 v0, 0x0

    aget v2, p7, v0

    add-int/2addr v2, p4

    aput v2, p7, v0

    .line 337
    const/4 v0, 0x1

    aget v2, p7, v0

    add-int/2addr v2, p5

    aput v2, p7, v0

    .line 339
    instance-of v0, v1, Ltds/androidx/core/view/NestedScrollingParent2;

    if-eqz v0, :cond_34

    .line 340
    move-object v3, v1

    check-cast v3, Ltds/androidx/core/view/NestedScrollingParent2;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Ltds/androidx/core/view/NestedScrollingParent2;->onNestedScroll(Landroid/view/View;IIIII)V

    goto :goto_71

    .line 342
    :cond_34
    if-nez p6, :cond_71

    .line 344
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_62

    .line 346
    :try_start_3c
    invoke-interface/range {p0 .. p5}, Landroid/view/ViewParent;->onNestedScroll(Landroid/view/View;IIII)V
    :try_end_3f
    .catch Ljava/lang/AbstractMethodError; {:try_start_3c .. :try_end_3f} :catch_40

    .line 351
    :goto_3f
    goto :goto_71

    .line 348
    :catch_40
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 349
    .local v0, "e":Ljava/lang/AbstractMethodError;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ViewParent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not implement interface method onNestedScroll"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ViewParentCompat"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    goto :goto_3f

    .line 352
    :cond_62
    instance-of v0, v1, Ltds/androidx/core/view/NestedScrollingParent;

    if-eqz v0, :cond_71

    .line 353
    move-object v3, v1

    check-cast v3, Ltds/androidx/core/view/NestedScrollingParent;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Ltds/androidx/core/view/NestedScrollingParent;->onNestedScroll(Landroid/view/View;IIII)V

    .line 358
    :cond_71
    :goto_71
    return-void
.end method

.method public static onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .registers 5
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 102
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Ltds/androidx/core/view/ViewParentCompat;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    .line 103
    return-void
.end method

.method public static onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V
    .registers 8
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I
    .param p4, "type"    # I

    .line 248
    instance-of v0, p0, Ltds/androidx/core/view/NestedScrollingParent2;

    if-eqz v0, :cond_b

    .line 250
    move-object v0, p0

    check-cast v0, Ltds/androidx/core/view/NestedScrollingParent2;

    invoke-interface {v0, p1, p2, p3, p4}, Ltds/androidx/core/view/NestedScrollingParent2;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    goto :goto_41

    .line 252
    :cond_b
    if-nez p4, :cond_41

    .line 254
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_37

    .line 256
    :try_start_13
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    :try_end_16
    .catch Ljava/lang/AbstractMethodError; {:try_start_13 .. :try_end_16} :catch_17

    .line 260
    :goto_16
    goto :goto_41

    .line 257
    :catch_17
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/AbstractMethodError;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewParent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not implement interface method onNestedScrollAccepted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ViewParentCompat"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    goto :goto_16

    .line 261
    :cond_37
    instance-of v0, p0, Ltds/androidx/core/view/NestedScrollingParent;

    if-eqz v0, :cond_41

    .line 262
    move-object v0, p0

    check-cast v0, Ltds/androidx/core/view/NestedScrollingParent;

    invoke-interface {v0, p1, p2, p3}, Ltds/androidx/core/view/NestedScrollingParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 266
    :cond_41
    :goto_41
    return-void
.end method

.method public static onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .registers 5
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 85
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Ltds/androidx/core/view/ViewParentCompat;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public static onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z
    .registers 8
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I
    .param p4, "type"    # I

    .line 207
    instance-of v0, p0, Ltds/androidx/core/view/NestedScrollingParent2;

    if-eqz v0, :cond_c

    .line 209
    move-object v0, p0

    check-cast v0, Ltds/androidx/core/view/NestedScrollingParent2;

    invoke-interface {v0, p1, p2, p3, p4}, Ltds/androidx/core/view/NestedScrollingParent2;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    return v0

    .line 211
    :cond_c
    if-nez p4, :cond_45

    .line 213
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_39

    .line 215
    :try_start_14
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result v0
    :try_end_18
    .catch Ljava/lang/AbstractMethodError; {:try_start_14 .. :try_end_18} :catch_19

    return v0

    .line 216
    :catch_19
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/AbstractMethodError;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewParent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not implement interface method onStartNestedScroll"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ViewParentCompat"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    goto :goto_45

    .line 220
    :cond_39
    instance-of v0, p0, Ltds/androidx/core/view/NestedScrollingParent;

    if-eqz v0, :cond_45

    .line 221
    move-object v0, p0

    check-cast v0, Ltds/androidx/core/view/NestedScrollingParent;

    invoke-interface {v0, p1, p2, p3}, Ltds/androidx/core/view/NestedScrollingParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0

    .line 225
    :cond_45
    :goto_45
    const/4 v0, 0x0

    return v0
.end method

.method public static onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V
    .registers 3
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "target"    # Landroid/view/View;

    .line 114
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ltds/androidx/core/view/ViewParentCompat;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;I)V

    .line 115
    return-void
.end method

.method public static onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;I)V
    .registers 6
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "type"    # I

    .line 282
    instance-of v0, p0, Ltds/androidx/core/view/NestedScrollingParent2;

    if-eqz v0, :cond_b

    .line 284
    move-object v0, p0

    check-cast v0, Ltds/androidx/core/view/NestedScrollingParent2;

    invoke-interface {v0, p1, p2}, Ltds/androidx/core/view/NestedScrollingParent2;->onStopNestedScroll(Landroid/view/View;I)V

    goto :goto_41

    .line 285
    :cond_b
    if-nez p2, :cond_41

    .line 287
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_37

    .line 289
    :try_start_13
    invoke-interface {p0, p1}, Landroid/view/ViewParent;->onStopNestedScroll(Landroid/view/View;)V
    :try_end_16
    .catch Ljava/lang/AbstractMethodError; {:try_start_13 .. :try_end_16} :catch_17

    .line 293
    :goto_16
    goto :goto_41

    .line 290
    :catch_17
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/AbstractMethodError;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewParent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not implement interface method onStopNestedScroll"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ViewParentCompat"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    goto :goto_16

    .line 294
    :cond_37
    instance-of v0, p0, Ltds/androidx/core/view/NestedScrollingParent;

    if-eqz v0, :cond_41

    .line 295
    move-object v0, p0

    check-cast v0, Ltds/androidx/core/view/NestedScrollingParent;

    invoke-interface {v0, p1}, Ltds/androidx/core/view/NestedScrollingParent;->onStopNestedScroll(Landroid/view/View;)V

    .line 298
    :cond_41
    :goto_41
    return-void
.end method

.method public static requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    invoke-interface {p0, p1, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method
