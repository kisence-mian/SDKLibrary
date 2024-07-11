.class public Landroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;
.super Landroidx/media/app/NotificationCompat$MediaStyle;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoratedMediaCustomViewStyle"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 379
    invoke-direct {p0}, Landroidx/media/app/NotificationCompat$MediaStyle;-><init>()V

    .line 380
    return-void
.end method

.method private setBackgroundColor(Landroid/widget/RemoteViews;)V
    .registers 5
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .line 496
    iget-object v0, p0, Landroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getColor()I

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 497
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getColor()I

    move-result v0

    goto :goto_1d

    :cond_f
    iget-object v0, p0, Landroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 498
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/media/R$color;->notification_material_background_media_default_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1d
    nop

    .line 500
    .local v0, "color":I
    sget v1, Landroidx/media/R$id;->status_bar_latest_event_content:I

    const-string v2, "setBackgroundColor"

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 501
    return-void
.end method


# virtual methods
.method public apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .registers 4
    .param p1, "builder"    # Landroidx/core/app/NotificationBuilderWithBuilderAccessor;

    .line 388
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_17

    .line 389
    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    invoke-direct {v1}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;-><init>()V

    .line 390
    invoke-virtual {p0, v1}, Landroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->fillInMediaStyle(Landroid/app/Notification$MediaStyle;)Landroid/app/Notification$MediaStyle;

    move-result-object v1

    .line 389
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_1a

    .line 392
    :cond_17
    invoke-super {p0, p1}, Landroidx/media/app/NotificationCompat$MediaStyle;->apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V

    .line 394
    :goto_1a
    return-void
.end method

.method getBigContentViewLayoutResource(I)I
    .registers 3
    .param p1, "actionCount"    # I

    .line 465
    const/4 v0, 0x3

    if-gt p1, v0, :cond_6

    sget v0, Landroidx/media/R$layout;->notification_template_big_media_narrow_custom:I

    goto :goto_8

    :cond_6
    sget v0, Landroidx/media/R$layout;->notification_template_big_media_custom:I

    :goto_8
    return v0
.end method

.method getContentViewLayoutResource()I
    .registers 2

    .line 433
    iget-object v0, p0, Landroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_b

    sget v0, Landroidx/media/R$layout;->notification_template_media_custom:I

    goto :goto_f

    .line 435
    :cond_b
    invoke-super {p0}, Landroidx/media/app/NotificationCompat$MediaStyle;->getContentViewLayoutResource()I

    move-result v0

    :goto_f
    return v0
.end method

.method public makeBigContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .registers 6
    .param p1, "builder"    # Landroidx/core/app/NotificationBuilderWithBuilderAccessor;

    .line 444
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_8

    .line 446
    return-object v1

    .line 448
    :cond_8
    iget-object v0, p0, Landroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 449
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_1d

    :cond_17
    iget-object v0, p0, Landroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 450
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    :goto_1d
    nop

    .line 451
    .local v0, "innerView":Landroid/widget/RemoteViews;
    if-nez v0, :cond_21

    .line 453
    return-object v1

    .line 455
    :cond_21
    invoke-virtual {p0}, Landroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->generateBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 456
    .local v1, "bigContentView":Landroid/widget/RemoteViews;
    invoke-virtual {p0, v1, v0}, Landroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 457
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_31

    .line 458
    invoke-direct {p0, v1}, Landroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->setBackgroundColor(Landroid/widget/RemoteViews;)V

    .line 460
    :cond_31
    return-object v1
.end method

.method public makeContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .registers 8
    .param p1, "builder"    # Landroidx/core/app/NotificationBuilderWithBuilderAccessor;

    .line 402
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_8

    .line 404
    return-object v1

    .line 406
    :cond_8
    iget-object v0, p0, Landroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 407
    .local v0, "hasContentView":Z
    :goto_15
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_3f

    .line 411
    if-nez v0, :cond_28

    iget-object v4, p0, Landroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 412
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;

    move-result-object v4

    if-eqz v4, :cond_26

    goto :goto_28

    :cond_26
    const/4 v2, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    nop

    .line 413
    .local v2, "createCustomContent":Z
    :goto_29
    if-eqz v2, :cond_3e

    .line 414
    invoke-virtual {p0}, Landroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->generateContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 415
    .local v1, "contentView":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_3a

    .line 416
    iget-object v3, p0, Landroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 418
    :cond_3a
    invoke-direct {p0, v1}, Landroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->setBackgroundColor(Landroid/widget/RemoteViews;)V

    .line 419
    return-object v1

    .line 421
    .end local v1    # "contentView":Landroid/widget/RemoteViews;
    .end local v2    # "createCustomContent":Z
    :cond_3e
    goto :goto_4f

    .line 422
    :cond_3f
    invoke-virtual {p0}, Landroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->generateContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    .line 423
    .local v2, "contentView":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_4f

    .line 424
    iget-object v1, p0, Landroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Landroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 425
    return-object v2

    .line 428
    .end local v2    # "contentView":Landroid/widget/RemoteViews;
    :cond_4f
    :goto_4f
    return-object v1
.end method

.method public makeHeadsUpContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .registers 6
    .param p1, "builder"    # Landroidx/core/app/NotificationBuilderWithBuilderAccessor;

    .line 476
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_8

    .line 478
    return-object v1

    .line 480
    :cond_8
    iget-object v0, p0, Landroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 481
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_1d

    :cond_17
    iget-object v0, p0, Landroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 482
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    :goto_1d
    nop

    .line 483
    .local v0, "innerView":Landroid/widget/RemoteViews;
    if-nez v0, :cond_21

    .line 485
    return-object v1

    .line 487
    :cond_21
    invoke-virtual {p0}, Landroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->generateBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 488
    .local v1, "headsUpContentView":Landroid/widget/RemoteViews;
    invoke-virtual {p0, v1, v0}, Landroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 489
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_31

    .line 490
    invoke-direct {p0, v1}, Landroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->setBackgroundColor(Landroid/widget/RemoteViews;)V

    .line 492
    :cond_31
    return-object v1
.end method
