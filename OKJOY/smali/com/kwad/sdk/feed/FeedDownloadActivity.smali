.class public Lcom/kwad/sdk/feed/FeedDownloadActivity;
.super Landroid/app/Activity;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static g:Lcom/kwad/sdk/feed/widget/base/a$b;


# instance fields
.field private a:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private b:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private c:Lcom/kwad/sdk/core/download/g/b;

.field private d:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitVertical;

.field private e:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

.field private f:Lcom/kwad/sdk/core/view/KsAdContainer;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/feed/FeedDownloadActivity;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivity;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/feed/widget/base/a$b;)V
    .registers 5
    .param p1    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kwad/sdk/feed/FeedDownloadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "key_template"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    sput-object p2, Lcom/kwad/sdk/feed/FeedDownloadActivity;->g:Lcom/kwad/sdk/feed/widget/base/a$b;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/feed/FeedDownloadActivity;)Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitVertical;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivity;->d:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitVertical;

    return-object v0
.end method

.method private b()V
    .registers 5

    new-instance v0, Lcom/kwad/sdk/core/download/g/b;

    iget-object v1, p0, Lcom/kwad/sdk/feed/FeedDownloadActivity;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v2, Lcom/kwad/sdk/feed/FeedDownloadActivity$a;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/feed/FeedDownloadActivity$a;-><init>(Lcom/kwad/sdk/feed/FeedDownloadActivity;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/kwad/sdk/core/download/g/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/nativead/KsAppDownloadListener;)V

    iput-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivity;->c:Lcom/kwad/sdk/core/download/g/b;

    return-void
.end method

.method static synthetic c(Lcom/kwad/sdk/feed/FeedDownloadActivity;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivity;->e:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    return-object v0
.end method

.method private c()Z
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_template"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v1, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    if-nez v1, :cond_13

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    :goto_12
    return v0

    :cond_13
    check-cast v0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivity;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivity;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivity;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    const/4 v0, 0x1

    goto :goto_12
.end method

.method private d()V
    .registers 3

    const-string v0, "ksad_container"

    invoke-static {p0, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/view/KsAdContainer;

    iput-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivity;->f:Lcom/kwad/sdk/core/view/KsAdContainer;

    iget-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivity;->f:Lcom/kwad/sdk/core/view/KsAdContainer;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "ksad_download_container"

    invoke-static {p0, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitVertical;

    iput-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivity;->d:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitVertical;

    iget-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivity;->d:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitVertical;

    iget-object v1, p0, Lcom/kwad/sdk/feed/FeedDownloadActivity;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitVertical;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivity;->d:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitVertical;

    iget-object v1, p0, Lcom/kwad/sdk/feed/FeedDownloadActivity;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v1}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitVertical;->a(Lcom/kwad/sdk/core/response/model/AdInfo;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivity;->d:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitVertical;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivity;->d:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitVertical;

    invoke-virtual {v0}, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitVertical;->getTextProgressBar()Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivity;->e:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    invoke-direct {p0}, Lcom/kwad/sdk/feed/FeedDownloadActivity;->b()V

    return-void
.end method

.method static synthetic d(Lcom/kwad/sdk/feed/FeedDownloadActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/feed/FeedDownloadActivity;->e()V

    return-void
.end method

.method private e()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivity;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/feed/FeedDownloadActivity;->f:Lcom/kwad/sdk/core/view/KsAdContainer;

    invoke-virtual {v1}, Lcom/kwad/sdk/core/view/KsAdContainer;->getTouchCoords()Lcom/kwad/sdk/e/g$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/f/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/e/g$a;)V

    sget-object v0, Lcom/kwad/sdk/feed/FeedDownloadActivity;->g:Lcom/kwad/sdk/feed/widget/base/a$b;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lcom/kwad/sdk/feed/widget/base/a$b;->onAdClicked()V

    :cond_12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/feed/FeedDownloadActivity;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v2, Lcom/kwad/sdk/feed/FeedDownloadActivity$b;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/feed/FeedDownloadActivity$b;-><init>(Lcom/kwad/sdk/feed/FeedDownloadActivity;)V

    iget-object v3, p0, Lcom/kwad/sdk/feed/FeedDownloadActivity;->c:Lcom/kwad/sdk/core/download/g/b;

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/core/download/g/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/g/a$a;Lcom/kwad/sdk/core/download/g/b;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/kwad/sdk/feed/FeedDownloadActivity;->c()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_c
    return-void

    :cond_d
    const-string v0, "ksad_activity_feed_download"

    invoke-static {p0, v0}, Lcom/kwad/sdk/e/l;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    invoke-direct {p0}, Lcom/kwad/sdk/feed/FeedDownloadActivity;->d()V

    goto :goto_c
.end method

.method protected onDestroy()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
