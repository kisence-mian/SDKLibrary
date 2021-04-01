.class public Lcom/kwad/sdk/feed/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/export/i/KsFeedAd;


# instance fields
.field private a:Lcom/kwad/sdk/export/i/KsFeedAd$AdInteractionListener;

.field private b:Lcom/kwad/sdk/feed/widget/base/a;

.field private c:Z

.field private d:Lcom/kwad/sdk/core/response/model/AdTemplate;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private e:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private f:Lcom/kwad/sdk/feed/FeedType;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 3
    .param p1    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/feed/a;->d:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/feed/a;->e:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, p0, Lcom/kwad/sdk/feed/a;->d:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget v0, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->type:I

    invoke-static {v0}, Lcom/kwad/sdk/feed/FeedType;->fromInt(I)Lcom/kwad/sdk/feed/FeedType;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/feed/a;->f:Lcom/kwad/sdk/feed/FeedType;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/feed/a;)Lcom/kwad/sdk/export/i/KsFeedAd$AdInteractionListener;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/feed/a;->a:Lcom/kwad/sdk/export/i/KsFeedAd$AdInteractionListener;

    return-object v0
.end method

.method private a(Landroid/content/Context;)Lcom/kwad/sdk/feed/widget/base/a;
    .registers 4

    sget-object v0, Lcom/kwad/sdk/feed/a$b;->a:[I

    iget-object v1, p0, Lcom/kwad/sdk/feed/a;->f:Lcom/kwad/sdk/feed/FeedType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVideoView type is unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/feed/a;->f:Lcom/kwad/sdk/feed/FeedType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KSFeedAdControl"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_28
    return-object v0

    :pswitch_29
    new-instance v0, Lcom/kwad/sdk/feed/b/a;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/feed/b/a;-><init>(Landroid/content/Context;)V

    goto :goto_28

    :pswitch_2f
    new-instance v0, Lcom/kwad/sdk/feed/b/h;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/feed/b/h;-><init>(Landroid/content/Context;)V

    goto :goto_28

    :pswitch_35
    new-instance v0, Lcom/kwad/sdk/feed/b/g;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/feed/b/g;-><init>(Landroid/content/Context;)V

    goto :goto_28

    :pswitch_3b
    new-instance v0, Lcom/kwad/sdk/feed/b/d;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/feed/b/d;-><init>(Landroid/content/Context;)V

    goto :goto_28

    :pswitch_41
    new-instance v0, Lcom/kwad/sdk/feed/b/b;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/feed/b/b;-><init>(Landroid/content/Context;)V

    goto :goto_28

    :pswitch_47
    new-instance v0, Lcom/kwad/sdk/feed/b/f;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/feed/b/f;-><init>(Landroid/content/Context;)V

    goto :goto_28

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_47
        :pswitch_41
        :pswitch_3b
        :pswitch_35
        :pswitch_2f
        :pswitch_29
    .end packed-switch
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/a;->b:Lcom/kwad/sdk/feed/widget/base/a;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v1, Lcom/kwad/sdk/feed/a$a;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/feed/a$a;-><init>(Lcom/kwad/sdk/feed/a;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/feed/widget/base/a;->setAdClickListener(Lcom/kwad/sdk/feed/widget/base/a$b;)V

    goto :goto_4
.end method

.method private b(Landroid/content/Context;)Lcom/kwad/sdk/feed/widget/base/a;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/feed/a;->e:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->u(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_22

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_18

    const-string v0, "KSFeedAdControl"

    const-string v1, "getNewFeedView materialType is unknown"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_17
    return-object v0

    :cond_18
    invoke-direct {p0, p1}, Lcom/kwad/sdk/feed/a;->a(Landroid/content/Context;)Lcom/kwad/sdk/feed/widget/base/a;

    move-result-object v0

    goto :goto_17

    :cond_1d
    invoke-direct {p0, p1}, Lcom/kwad/sdk/feed/a;->c(Landroid/content/Context;)Lcom/kwad/sdk/feed/widget/base/a;

    move-result-object v0

    goto :goto_17

    :cond_22
    invoke-direct {p0, p1}, Lcom/kwad/sdk/feed/a;->d(Landroid/content/Context;)Lcom/kwad/sdk/feed/widget/base/a;

    move-result-object v0

    goto :goto_17
.end method

.method static synthetic b(Lcom/kwad/sdk/feed/a;)Lcom/kwad/sdk/feed/widget/base/a;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/feed/a;->b:Lcom/kwad/sdk/feed/widget/base/a;

    return-object v0
.end method

.method private c(Landroid/content/Context;)Lcom/kwad/sdk/feed/widget/base/a;
    .registers 4

    sget-object v0, Lcom/kwad/sdk/feed/a$b;->a:[I

    iget-object v1, p0, Lcom/kwad/sdk/feed/a;->f:Lcom/kwad/sdk/feed/FeedType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_48

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSingleImageView type is unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/feed/a;->f:Lcom/kwad/sdk/feed/FeedType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KSFeedAdControl"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_28
    return-object v0

    :pswitch_29
    new-instance v0, Lcom/kwad/sdk/feed/b/h;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/feed/b/h;-><init>(Landroid/content/Context;)V

    goto :goto_28

    :pswitch_2f
    new-instance v0, Lcom/kwad/sdk/feed/b/g;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/feed/b/g;-><init>(Landroid/content/Context;)V

    goto :goto_28

    :pswitch_35
    new-instance v0, Lcom/kwad/sdk/feed/b/d;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/feed/b/d;-><init>(Landroid/content/Context;)V

    goto :goto_28

    :pswitch_3b
    new-instance v0, Lcom/kwad/sdk/feed/b/b;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/feed/b/b;-><init>(Landroid/content/Context;)V

    goto :goto_28

    :pswitch_41
    new-instance v0, Lcom/kwad/sdk/feed/b/f;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/feed/b/f;-><init>(Landroid/content/Context;)V

    goto :goto_28

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_41
        :pswitch_3b
        :pswitch_35
        :pswitch_2f
        :pswitch_29
    .end packed-switch
.end method

.method private d(Landroid/content/Context;)Lcom/kwad/sdk/feed/widget/base/a;
    .registers 4

    sget-object v0, Lcom/kwad/sdk/feed/a$b;->a:[I

    iget-object v1, p0, Lcom/kwad/sdk/feed/a;->f:Lcom/kwad/sdk/feed/FeedType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_32

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVideoView type is unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/feed/a;->f:Lcom/kwad/sdk/feed/FeedType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KSFeedAdControl"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2b
    return-object v0

    :cond_2c
    new-instance v0, Lcom/kwad/sdk/feed/b/e;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/feed/b/e;-><init>(Landroid/content/Context;)V

    goto :goto_2b

    :cond_32
    new-instance v0, Lcom/kwad/sdk/feed/b/c;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/feed/b/c;-><init>(Landroid/content/Context;)V

    goto :goto_2b
.end method


# virtual methods
.method public getFeedView(Landroid/content/Context;)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/feed/a;->b:Lcom/kwad/sdk/feed/widget/base/a;

    if-nez v0, :cond_26

    invoke-direct {p0, p1}, Lcom/kwad/sdk/feed/a;->b(Landroid/content/Context;)Lcom/kwad/sdk/feed/widget/base/a;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/feed/a;->b:Lcom/kwad/sdk/feed/widget/base/a;

    :cond_a
    :goto_a
    iget-object v0, p0, Lcom/kwad/sdk/feed/a;->b:Lcom/kwad/sdk/feed/widget/base/a;

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/kwad/sdk/feed/a;->d:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/feed/widget/base/a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/a;->b:Lcom/kwad/sdk/feed/widget/base/a;

    instance-of v1, v0, Lcom/kwad/sdk/feed/b/c;

    if-eqz v1, :cond_3c

    check-cast v0, Lcom/kwad/sdk/feed/b/c;

    iget-boolean v1, p0, Lcom/kwad/sdk/feed/a;->c:Z

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/feed/b/c;->a(Z)V

    :cond_20
    :goto_20
    invoke-direct {p0}, Lcom/kwad/sdk/feed/a;->a()V

    :cond_23
    iget-object v0, p0, Lcom/kwad/sdk/feed/a;->b:Lcom/kwad/sdk/feed/widget/base/a;

    return-object v0

    :cond_26
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/kwad/sdk/feed/a;->b:Lcom/kwad/sdk/feed/widget/base/a;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/kwad/sdk/feed/a;->b:Lcom/kwad/sdk/feed/widget/base/a;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_a

    :cond_3c
    instance-of v1, v0, Lcom/kwad/sdk/feed/b/e;

    if-eqz v1, :cond_20

    check-cast v0, Lcom/kwad/sdk/feed/b/e;

    iget-boolean v1, p0, Lcom/kwad/sdk/feed/a;->c:Z

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/feed/b/e;->a(Z)V

    goto :goto_20
.end method

.method public setAdInteractionListener(Lcom/kwad/sdk/export/i/KsFeedAd$AdInteractionListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/feed/a;->a:Lcom/kwad/sdk/export/i/KsFeedAd$AdInteractionListener;

    return-void
.end method

.method public setVideoSoundEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/feed/a;->c:Z

    return-void
.end method
