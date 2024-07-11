.class public Lcom/kwad/sdk/feed/a;
.super Ljava/lang/Object;


# direct methods
.method private static a(Landroid/content/Context;Lcom/kwad/sdk/feed/FeedType;)Lcom/kwad/sdk/feed/widget/base/a;
    .registers 4

    sget-object v0, Lcom/kwad/sdk/feed/a$1;->a:[I

    invoke-virtual {p1}, Lcom/kwad/sdk/feed/FeedType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_46

    goto :goto_43

    :pswitch_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSingleImageView type is unknown:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KSFeedFactory"

    invoke-static {p1, p0}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    :pswitch_25
    new-instance p1, Lcom/kwad/sdk/feed/widget/i;

    invoke-direct {p1, p0}, Lcom/kwad/sdk/feed/widget/i;-><init>(Landroid/content/Context;)V

    return-object p1

    :pswitch_2b
    new-instance p1, Lcom/kwad/sdk/feed/widget/h;

    invoke-direct {p1, p0}, Lcom/kwad/sdk/feed/widget/h;-><init>(Landroid/content/Context;)V

    return-object p1

    :pswitch_31
    new-instance p1, Lcom/kwad/sdk/feed/widget/e;

    invoke-direct {p1, p0}, Lcom/kwad/sdk/feed/widget/e;-><init>(Landroid/content/Context;)V

    return-object p1

    :pswitch_37
    new-instance p1, Lcom/kwad/sdk/feed/widget/c;

    invoke-direct {p1, p0}, Lcom/kwad/sdk/feed/widget/c;-><init>(Landroid/content/Context;)V

    return-object p1

    :pswitch_3d
    new-instance p1, Lcom/kwad/sdk/feed/widget/g;

    invoke-direct {p1, p0}, Lcom/kwad/sdk/feed/widget/g;-><init>(Landroid/content/Context;)V

    return-object p1

    :goto_43
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_37
        :pswitch_31
        :pswitch_2b
        :pswitch_25
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lcom/kwad/sdk/feed/FeedType;I)Lcom/kwad/sdk/feed/widget/base/a;
    .registers 4

    sget-object v0, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_TEXT_NEW:Lcom/kwad/sdk/feed/FeedType;

    if-ne p1, v0, :cond_a

    new-instance p1, Lcom/kwad/sdk/feed/widget/e;

    invoke-direct {p1, p0}, Lcom/kwad/sdk/feed/widget/e;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_a
    packed-switch p2, :pswitch_data_26

    const-string p0, "KSFeedFactory"

    const-string p1, "getNewFeedView materialType is unknown"

    invoke-static {p0, p1}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_16
    invoke-static {p0, p1}, Lcom/kwad/sdk/feed/a;->b(Landroid/content/Context;Lcom/kwad/sdk/feed/FeedType;)Lcom/kwad/sdk/feed/widget/base/a;

    move-result-object p0

    return-object p0

    :pswitch_1b
    invoke-static {p0, p1}, Lcom/kwad/sdk/feed/a;->a(Landroid/content/Context;Lcom/kwad/sdk/feed/FeedType;)Lcom/kwad/sdk/feed/widget/base/a;

    move-result-object p0

    return-object p0

    :pswitch_20
    invoke-static {p0, p1}, Lcom/kwad/sdk/feed/a;->c(Landroid/content/Context;Lcom/kwad/sdk/feed/FeedType;)Lcom/kwad/sdk/feed/widget/base/a;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1b
        :pswitch_16
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;Lcom/kwad/sdk/feed/FeedType;)Lcom/kwad/sdk/feed/widget/base/a;
    .registers 4

    sget-object v0, Lcom/kwad/sdk/feed/a$1;->a:[I

    invoke-virtual {p1}, Lcom/kwad/sdk/feed/FeedType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4c

    goto :goto_49

    :pswitch_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getVideoView type is unknown"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KSFeedFactory"

    invoke-static {p1, p0}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    :pswitch_25
    new-instance p1, Lcom/kwad/sdk/feed/widget/b;

    invoke-direct {p1, p0}, Lcom/kwad/sdk/feed/widget/b;-><init>(Landroid/content/Context;)V

    return-object p1

    :pswitch_2b
    new-instance p1, Lcom/kwad/sdk/feed/widget/i;

    invoke-direct {p1, p0}, Lcom/kwad/sdk/feed/widget/i;-><init>(Landroid/content/Context;)V

    return-object p1

    :pswitch_31
    new-instance p1, Lcom/kwad/sdk/feed/widget/h;

    invoke-direct {p1, p0}, Lcom/kwad/sdk/feed/widget/h;-><init>(Landroid/content/Context;)V

    return-object p1

    :pswitch_37
    new-instance p1, Lcom/kwad/sdk/feed/widget/e;

    invoke-direct {p1, p0}, Lcom/kwad/sdk/feed/widget/e;-><init>(Landroid/content/Context;)V

    return-object p1

    :pswitch_3d
    new-instance p1, Lcom/kwad/sdk/feed/widget/c;

    invoke-direct {p1, p0}, Lcom/kwad/sdk/feed/widget/c;-><init>(Landroid/content/Context;)V

    return-object p1

    :pswitch_43
    new-instance p1, Lcom/kwad/sdk/feed/widget/g;

    invoke-direct {p1, p0}, Lcom/kwad/sdk/feed/widget/g;-><init>(Landroid/content/Context;)V

    return-object p1

    :goto_49
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_43
        :pswitch_3d
        :pswitch_37
        :pswitch_31
        :pswitch_2b
        :pswitch_25
        :pswitch_c
    .end packed-switch
.end method

.method private static c(Landroid/content/Context;Lcom/kwad/sdk/feed/FeedType;)Lcom/kwad/sdk/feed/widget/base/a;
    .registers 4

    sget-object v0, Lcom/kwad/sdk/feed/a$1;->a:[I

    invoke-virtual {p1}, Lcom/kwad/sdk/feed/FeedType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getVideoView type is unknown:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KSFeedFactory"

    invoke-static {p1, p0}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_25
    new-instance p1, Lcom/kwad/sdk/feed/widget/f;

    invoke-direct {p1, p0}, Lcom/kwad/sdk/feed/widget/f;-><init>(Landroid/content/Context;)V

    return-object p1

    :pswitch_2b
    new-instance p1, Lcom/kwad/sdk/feed/widget/d;

    invoke-direct {p1, p0}, Lcom/kwad/sdk/feed/widget/d;-><init>(Landroid/content/Context;)V

    return-object p1

    nop

    :pswitch_data_32
    .packed-switch 0x2
        :pswitch_2b
        :pswitch_25
    .end packed-switch
.end method
