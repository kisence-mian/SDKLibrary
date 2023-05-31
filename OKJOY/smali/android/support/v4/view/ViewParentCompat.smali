.class public final Landroid/support/v4/view/ViewParentCompat;
.super Ljava/lang/Object;
.source "ViewParentCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewParentCompat"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifySubtreeAccessibilityStateChanged(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .registers 6
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Landroid/view/View;
    .param p3, "changeType"    # I

    .prologue
    .line 447
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_9

    .line 448
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V

    .line 450
    :cond_9
    return-void
.end method

.method public static onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .registers 9
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 379
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_32

    .line 381
    :try_start_6
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/ViewParent;->onNestedFling(Landroid/view/View;FFZ)Z
    :try_end_9
    .catch Ljava/lang/AbstractMethodError; {:try_start_6 .. :try_end_9} :catch_b

    move-result v1

    .line 390
    .end local p0    # "parent":Landroid/view/ViewParent;
    :goto_a
    return v1

    .line 382
    .restart local p0    # "parent":Landroid/view/ViewParent;
    :catch_b
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v1, "ViewParentCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ViewParent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not implement interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "method onNestedFling"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_30
    const/4 v1, 0x0

    goto :goto_a

    .line 386
    :cond_32
    instance-of v1, p0, Landroid/support/v4/view/NestedScrollingParent;

    if-eqz v1, :cond_30

    .line 387
    check-cast p0, Landroid/support/v4/view/NestedScrollingParent;

    .end local p0    # "parent":Landroid/view/ViewParent;
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingParent;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result v1

    goto :goto_a
.end method

.method public static onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .registers 8
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 416
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_32

    .line 418
    :try_start_6
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->onNestedPreFling(Landroid/view/View;FF)Z
    :try_end_9
    .catch Ljava/lang/AbstractMethodError; {:try_start_6 .. :try_end_9} :catch_b

    move-result v1

    .line 427
    .end local p0    # "parent":Landroid/view/ViewParent;
    :goto_a
    return v1

    .line 419
    .restart local p0    # "parent":Landroid/view/ViewParent;
    :catch_b
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v1, "ViewParentCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ViewParent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not implement interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "method onNestedPreFling"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_30
    const/4 v1, 0x0

    goto :goto_a

    .line 423
    :cond_32
    instance-of v1, p0, Landroid/support/v4/view/NestedScrollingParent;

    if-eqz v1, :cond_30

    .line 424
    check-cast p0, Landroid/support/v4/view/NestedScrollingParent;

    .end local p0    # "parent":Landroid/view/ViewParent;
    invoke-interface {p0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParent;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result v1

    goto :goto_a
.end method

.method public static onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    .registers 11
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    .line 147
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/ViewParentCompat;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    .line 148
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

    .prologue
    .line 339
    instance-of v0, p0, Landroid/support/v4/view/NestedScrollingParent2;

    if-eqz v0, :cond_10

    move-object v0, p0

    .line 341
    check-cast v0, Landroid/support/v4/view/NestedScrollingParent2;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingParent2;->onNestedPreScroll(Landroid/view/View;II[II)V

    .line 355
    .end local p0    # "parent":Landroid/view/ViewParent;
    :cond_f
    :goto_f
    return-void

    .line 342
    .restart local p0    # "parent":Landroid/view/ViewParent;
    :cond_10
    if-nez p5, :cond_f

    .line 344
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_42

    .line 346
    :try_start_18
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/ViewParent;->onNestedPreScroll(Landroid/view/View;II[I)V
    :try_end_1b
    .catch Ljava/lang/AbstractMethodError; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_f

    .line 347
    :catch_1c
    move-exception v6

    .line 348
    .local v6, "e":Ljava/lang/AbstractMethodError;
    const-string v0, "ViewParentCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewParent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not implement interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "method onNestedPreScroll"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 351
    .end local v6    # "e":Ljava/lang/AbstractMethodError;
    :cond_42
    instance-of v0, p0, Landroid/support/v4/view/NestedScrollingParent;

    if-eqz v0, :cond_f

    .line 352
    check-cast p0, Landroid/support/v4/view/NestedScrollingParent;

    .end local p0    # "parent":Landroid/view/ViewParent;
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingParent;->onNestedPreScroll(Landroid/view/View;II[I)V

    goto :goto_f
.end method

.method public static onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    .registers 13
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 129
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Landroid/support/v4/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII)V

    .line 131
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

    .prologue
    .line 294
    instance-of v0, p0, Landroid/support/v4/view/NestedScrollingParent2;

    if-eqz v0, :cond_11

    move-object v0, p0

    .line 296
    check-cast v0, Landroid/support/v4/view/NestedScrollingParent2;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/support/v4/view/NestedScrollingParent2;->onNestedScroll(Landroid/view/View;IIIII)V

    .line 313
    :cond_10
    :goto_10
    return-void

    .line 298
    :cond_11
    if-nez p6, :cond_10

    .line 300
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_43

    .line 302
    :try_start_19
    invoke-interface/range {p0 .. p5}, Landroid/view/ViewParent;->onNestedScroll(Landroid/view/View;IIII)V
    :try_end_1c
    .catch Ljava/lang/AbstractMethodError; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_10

    .line 304
    :catch_1d
    move-exception v7

    .line 305
    .local v7, "e":Ljava/lang/AbstractMethodError;
    const-string v0, "ViewParentCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewParent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not implement interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "method onNestedScroll"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 308
    .end local v7    # "e":Ljava/lang/AbstractMethodError;
    :cond_43
    instance-of v0, p0, Landroid/support/v4/view/NestedScrollingParent;

    if-eqz v0, :cond_10

    move-object v0, p0

    .line 309
    check-cast v0, Landroid/support/v4/view/NestedScrollingParent;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingParent;->onNestedScroll(Landroid/view/View;IIII)V

    goto :goto_10
.end method

.method public static onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .registers 5
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/support/v4/view/ViewParentCompat;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    .line 100
    return-void
.end method

.method public static onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V
    .registers 9
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I
    .param p4, "type"    # I

    .prologue
    .line 217
    instance-of v1, p0, Landroid/support/v4/view/NestedScrollingParent2;

    if-eqz v1, :cond_a

    .line 219
    check-cast p0, Landroid/support/v4/view/NestedScrollingParent2;

    .end local p0    # "parent":Landroid/view/ViewParent;
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingParent2;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 235
    :cond_9
    :goto_9
    return-void

    .line 221
    .restart local p0    # "parent":Landroid/view/ViewParent;
    :cond_a
    if-nez p4, :cond_9

    .line 223
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3c

    .line 225
    :try_start_12
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    :try_end_15
    .catch Ljava/lang/AbstractMethodError; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_9

    .line 226
    :catch_16
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v1, "ViewParentCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ViewParent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not implement interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "method onNestedScrollAccepted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 230
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_3c
    instance-of v1, p0, Landroid/support/v4/view/NestedScrollingParent;

    if-eqz v1, :cond_9

    .line 231
    check-cast p0, Landroid/support/v4/view/NestedScrollingParent;

    .end local p0    # "parent":Landroid/view/ViewParent;
    invoke-interface {p0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    goto :goto_9
.end method

.method public static onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .registers 5
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/support/v4/view/ViewParentCompat;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public static onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z
    .registers 9
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I
    .param p4, "type"    # I

    .prologue
    .line 176
    instance-of v1, p0, Landroid/support/v4/view/NestedScrollingParent2;

    if-eqz v1, :cond_b

    .line 178
    check-cast p0, Landroid/support/v4/view/NestedScrollingParent2;

    .end local p0    # "parent":Landroid/view/ViewParent;
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingParent2;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result v1

    .line 194
    :goto_a
    return v1

    .line 180
    .restart local p0    # "parent":Landroid/view/ViewParent;
    :cond_b
    if-nez p4, :cond_3d

    .line 182
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3f

    .line 184
    :try_start_13
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    :try_end_16
    .catch Ljava/lang/AbstractMethodError; {:try_start_13 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_a

    .line 185
    :catch_18
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v1, "ViewParentCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ViewParent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not implement interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "method onStartNestedScroll"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_3d
    const/4 v1, 0x0

    goto :goto_a

    .line 189
    :cond_3f
    instance-of v1, p0, Landroid/support/v4/view/NestedScrollingParent;

    if-eqz v1, :cond_3d

    .line 190
    check-cast p0, Landroid/support/v4/view/NestedScrollingParent;

    .end local p0    # "parent":Landroid/view/ViewParent;
    invoke-interface {p0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result v1

    goto :goto_a
.end method

.method public static onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V
    .registers 3
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/support/v4/view/ViewParentCompat;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;I)V

    .line 112
    return-void
.end method

.method public static onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;I)V
    .registers 7
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    .line 251
    instance-of v1, p0, Landroid/support/v4/view/NestedScrollingParent2;

    if-eqz v1, :cond_a

    .line 253
    check-cast p0, Landroid/support/v4/view/NestedScrollingParent2;

    .end local p0    # "parent":Landroid/view/ViewParent;
    invoke-interface {p0, p1, p2}, Landroid/support/v4/view/NestedScrollingParent2;->onStopNestedScroll(Landroid/view/View;I)V

    .line 267
    :cond_9
    :goto_9
    return-void

    .line 254
    .restart local p0    # "parent":Landroid/view/ViewParent;
    :cond_a
    if-nez p2, :cond_9

    .line 256
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3c

    .line 258
    :try_start_12
    invoke-interface {p0, p1}, Landroid/view/ViewParent;->onStopNestedScroll(Landroid/view/View;)V
    :try_end_15
    .catch Ljava/lang/AbstractMethodError; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_9

    .line 259
    :catch_16
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v1, "ViewParentCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ViewParent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not implement interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "method onStopNestedScroll"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 263
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_3c
    instance-of v1, p0, Landroid/support/v4/view/NestedScrollingParent;

    if-eqz v1, :cond_9

    .line 264
    check-cast p0, Landroid/support/v4/view/NestedScrollingParent;

    .end local p0    # "parent":Landroid/view/ViewParent;
    invoke-interface {p0, p1}, Landroid/support/v4/view/NestedScrollingParent;->onStopNestedScroll(Landroid/view/View;)V

    goto :goto_9
.end method

.method public static requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 63
    invoke-interface {p0, p1, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method
