.class public Lcom/kwad/sdk/feed/widget/l;
.super Lcom/kwad/sdk/feed/widget/base/a;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/feed/widget/l$a;
    }
.end annotation


# static fields
.field private static final t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:I

.field private B:Landroid/view/ViewGroup$MarginLayoutParams;

.field private C:Landroid/os/Handler;

.field private D:Lcom/kwad/sdk/core/webview/jshandler/k$b;

.field private f:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

.field private g:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

.field private h:Lcom/kwad/sdk/core/download/b/b;

.field private i:Lcom/kwad/sdk/core/webview/a/g;

.field private j:Lcom/kwad/sdk/core/webview/a;

.field private k:I

.field private l:D

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/kwad/sdk/core/video/videoview/b;

.field private o:Lcom/kwad/sdk/feed/widget/j;

.field private p:Landroid/widget/ImageView;

.field private q:Z

.field private r:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

.field private s:Lcom/kwad/sdk/core/webview/jshandler/p;

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Lcom/kwad/sdk/feed/widget/base/a;

.field private y:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

.field private z:Lcom/kwad/sdk/feed/widget/l$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/kwad/sdk/feed/widget/l;->t:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/kwad/sdk/feed/widget/base/a;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/kwad/sdk/feed/widget/l;->k:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/feed/widget/l;->q:Z

    iput-boolean v0, p0, Lcom/kwad/sdk/feed/widget/l;->w:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->C:Landroid/os/Handler;

    new-instance v0, Lcom/kwad/sdk/feed/widget/l$12;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/feed/widget/l$12;-><init>(Lcom/kwad/sdk/feed/widget/l;)V

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->D:Lcom/kwad/sdk/core/webview/jshandler/k$b;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/kwad/sdk/feed/widget/l;->A:I

    return-void
.end method

.method static synthetic A(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/l;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method static synthetic B(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/feed/widget/l$a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/l;->z:Lcom/kwad/sdk/feed/widget/l$a;

    return-object p0
.end method

.method static synthetic C(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/l;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method static synthetic D(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/webview/jshandler/p;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/l;->s:Lcom/kwad/sdk/core/webview/jshandler/p;

    return-object p0
.end method

.method static synthetic E(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/l;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method static synthetic F(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/video/videoview/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/l;->n:Lcom/kwad/sdk/core/video/videoview/b;

    return-object p0
.end method

.method static synthetic G(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/l;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    return-object p0
.end method

.method static synthetic H(Lcom/kwad/sdk/feed/widget/l;)V
    .registers 1

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/l;->k()V

    return-void
.end method

.method static synthetic I(Lcom/kwad/sdk/feed/widget/l;)V
    .registers 1

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/l;->k()V

    return-void
.end method

.method static synthetic J(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/l;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method static synthetic K(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/l;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method static synthetic a(Lcom/kwad/sdk/feed/widget/l;D)D
    .registers 3

    iput-wide p1, p0, Lcom/kwad/sdk/feed/widget/l;->l:D

    return-wide p1
.end method

.method static synthetic a(Lcom/kwad/sdk/feed/widget/l;I)I
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/feed/widget/l;->k:I

    return p1
.end method

.method static synthetic a(Lcom/kwad/sdk/feed/widget/l;Landroid/view/ViewGroup$MarginLayoutParams;)Landroid/view/ViewGroup$MarginLayoutParams;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->B:Landroid/view/ViewGroup$MarginLayoutParams;

    return-object p1
.end method

.method static synthetic a(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/l;->g:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    return-object p0
.end method

.method private a(J)V
    .registers 5

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iget-object p2, p0, Lcom/kwad/sdk/feed/widget/l;->m:Ljava/util/List;

    if-eqz p2, :cond_36

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_15

    goto :goto_36

    :cond_15
    iget-object p2, p0, Lcom/kwad/sdk/feed/widget/l;->m:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p1, v0, :cond_1b

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/kwad/sdk/core/report/b;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    :cond_36
    :goto_36
    return-void
.end method

.method private a(Lcom/kwad/sdk/core/video/videoview/b;)V
    .registers 5

    if-eqz p1, :cond_50

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/a;->a(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->o:Lcom/kwad/sdk/feed/widget/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/feed/widget/j;->setAutoRelease(Z)V

    invoke-static {}, Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache;->a()Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/l;->n:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-virtual {v0, p1, v1}, Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache;->a(Ljava/lang/String;Lcom/kwad/sdk/core/video/videoview/b;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget p1, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->type:I

    invoke-static {p1}, Lcom/kwad/sdk/feed/FeedType;->fromInt(I)Lcom/kwad/sdk/feed/FeedType;

    move-result-object p1

    sget-object v0, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_TEXT_BELOW:Lcom/kwad/sdk/feed/FeedType;

    if-eq p1, v0, :cond_27

    sget-object v0, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_TEXT_ABOVE:Lcom/kwad/sdk/feed/FeedType;

    if-ne p1, v0, :cond_40

    :cond_27
    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/a;->C(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result p1

    if-eqz p1, :cond_40

    invoke-static {p0}, Lcom/kwad/sdk/utils/ah;->a(Landroid/view/View;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v1, Lcom/kwad/sdk/feed/widget/l$3;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/feed/widget/l$3;-><init>(Lcom/kwad/sdk/feed/widget/l;)V

    iget-object v2, p0, Lcom/kwad/sdk/feed/widget/l;->h:Lcom/kwad/sdk/core/download/b/b;

    invoke-static {p1, v0, v1, v2}, Lcom/kwad/sdk/core/download/b/a;->b(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/a$a;Lcom/kwad/sdk/core/download/b/b;)V

    goto :goto_50

    :cond_40
    invoke-static {p0}, Lcom/kwad/sdk/utils/ah;->a(Landroid/view/View;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v1, Lcom/kwad/sdk/feed/widget/l$4;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/feed/widget/l$4;-><init>(Lcom/kwad/sdk/feed/widget/l;)V

    iget-object v2, p0, Lcom/kwad/sdk/feed/widget/l;->h:Lcom/kwad/sdk/core/download/b/b;

    invoke-static {p1, v0, v1, v2}, Lcom/kwad/sdk/core/download/b/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/a$a;Lcom/kwad/sdk/core/download/b/b;)V

    :cond_50
    :goto_50
    return-void
.end method

.method private a(Lcom/kwad/sdk/core/webview/a/g;)V
    .registers 6

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/p;

    invoke-direct {v0}, Lcom/kwad/sdk/core/webview/jshandler/p;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->s:Lcom/kwad/sdk/core/webview/jshandler/p;

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/d;

    invoke-direct {v0}, Lcom/kwad/sdk/core/webview/jshandler/d;-><init>()V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/a;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/l;->j:Lcom/kwad/sdk/core/webview/a;

    iget-object v2, p0, Lcom/kwad/sdk/feed/widget/l;->h:Lcom/kwad/sdk/core/download/b/b;

    new-instance v3, Lcom/kwad/sdk/feed/widget/l$7;

    invoke-direct {v3, p0}, Lcom/kwad/sdk/feed/widget/l$7;-><init>(Lcom/kwad/sdk/feed/widget/l;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/kwad/sdk/core/webview/jshandler/a;-><init>(Lcom/kwad/sdk/core/webview/a;Lcom/kwad/sdk/core/download/b/b;Lcom/kwad/sdk/core/webview/jshandler/a$b;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/i;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/l;->j:Lcom/kwad/sdk/core/webview/a;

    new-instance v2, Lcom/kwad/sdk/feed/widget/l$8;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/feed/widget/l$8;-><init>(Lcom/kwad/sdk/feed/widget/l;)V

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/webview/jshandler/i;-><init>(Lcom/kwad/sdk/core/webview/a;Lcom/kwad/sdk/core/webview/jshandler/i$b;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/e;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/l;->j:Lcom/kwad/sdk/core/webview/a;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/webview/jshandler/e;-><init>(Lcom/kwad/sdk/core/webview/a;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/l;->j:Lcom/kwad/sdk/core/webview/a;

    new-instance v2, Lcom/kwad/sdk/feed/widget/l$9;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/feed/widget/l$9;-><init>(Lcom/kwad/sdk/feed/widget/l;)V

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler;-><init>(Lcom/kwad/sdk/core/webview/a;Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler$a;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/b;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/l;->j:Lcom/kwad/sdk/core/webview/a;

    new-instance v2, Lcom/kwad/sdk/feed/widget/l$10;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/feed/widget/l$10;-><init>(Lcom/kwad/sdk/feed/widget/l;)V

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/webview/jshandler/b;-><init>(Lcom/kwad/sdk/core/webview/a;Lcom/kwad/sdk/core/webview/jshandler/b$a;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/f;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/l;->j:Lcom/kwad/sdk/core/webview/a;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/webview/jshandler/f;-><init>(Lcom/kwad/sdk/core/webview/a;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/c;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/l;->j:Lcom/kwad/sdk/core/webview/a;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/webview/jshandler/c;-><init>(Lcom/kwad/sdk/core/webview/a;)V

    new-instance v1, Lcom/kwad/sdk/feed/widget/l$11;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/feed/widget/l$11;-><init>(Lcom/kwad/sdk/feed/widget/l;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/webview/jshandler/c;->a(Lcom/kwad/sdk/core/webview/jshandler/c$b;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/k;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/l;->D:Lcom/kwad/sdk/core/webview/jshandler/k$b;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/webview/jshandler/k;-><init>(Lcom/kwad/sdk/core/webview/jshandler/k$b;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/o;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/l;->j:Lcom/kwad/sdk/core/webview/a;

    iget-object v2, p0, Lcom/kwad/sdk/feed/widget/l;->h:Lcom/kwad/sdk/core/download/b/b;

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/webview/jshandler/o;-><init>(Lcom/kwad/sdk/core/webview/a;Lcom/kwad/sdk/core/download/b/b;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/j;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/l;->j:Lcom/kwad/sdk/core/webview/a;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/webview/jshandler/j;-><init>(Lcom/kwad/sdk/core/webview/a;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->s:Lcom/kwad/sdk/core/webview/jshandler/p;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/feed/widget/l;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/feed/widget/l;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/feed/widget/l;Lcom/kwad/sdk/core/video/videoview/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/feed/widget/l;->a(Lcom/kwad/sdk/core/video/videoview/b;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/feed/widget/l;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/feed/widget/l;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleWebViewError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeedWebView"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->C:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/kwad/sdk/feed/widget/l;->u:Z

    if-eqz v0, :cond_23

    return-void

    :cond_23
    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->z:Lcom/kwad/sdk/feed/widget/l$a;

    if-eqz v0, :cond_2a

    invoke-interface {v0}, Lcom/kwad/sdk/feed/widget/l$a;->a()V

    :cond_2a
    iput-object v1, p0, Lcom/kwad/sdk/feed/widget/l;->z:Lcom/kwad/sdk/feed/widget/l$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/feed/widget/l;->u:Z

    invoke-static {}, Lcom/kwad/sdk/core/config/c;->a()Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->h5Url:Ljava/lang/String;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/l;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v1, v0, p1}, Lcom/kwad/sdk/core/report/e;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->x:Lcom/kwad/sdk/feed/widget/base/a;

    if-nez p1, :cond_99

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/a;->E(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result p1

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/l;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/l;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget v1, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->type:I

    invoke-static {v1}, Lcom/kwad/sdk/feed/FeedType;->fromInt(I)Lcom/kwad/sdk/feed/FeedType;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/kwad/sdk/feed/a;->a(Landroid/content/Context;Lcom/kwad/sdk/feed/FeedType;I)Lcom/kwad/sdk/feed/widget/base/a;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->x:Lcom/kwad/sdk/feed/widget/base/a;

    if-eqz p1, :cond_7e

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/l;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {p1, v0}, Lcom/kwad/sdk/utils/ah;->a(Landroid/content/Context;F)I

    move-result p1

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->x:Lcom/kwad/sdk/feed/widget/base/a;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/feed/widget/base/a;->setMargin(I)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->f:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    invoke-virtual {p1}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->removeAllViews()V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->f:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->setRatio(F)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->g:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->setVisibility(I)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->r:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->setVisibility(I)V

    :cond_7e
    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->f:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->x:Lcom/kwad/sdk/feed/widget/base/a;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->x:Lcom/kwad/sdk/feed/widget/base/a;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/base/a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->x:Lcom/kwad/sdk/feed/widget/base/a;

    instance-of v0, p1, Lcom/kwad/sdk/feed/widget/a;

    if-eqz v0, :cond_99

    check-cast p1, Lcom/kwad/sdk/feed/widget/a;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->y:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/a;->a(Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)V

    :cond_99
    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/feed/widget/l;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/feed/widget/l;->w:Z

    return p1
.end method

.method static synthetic b(Lcom/kwad/sdk/feed/widget/l;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kwad/sdk/feed/widget/l;->w:Z

    return p0
.end method

.method private c(Lcom/kwad/sdk/core/response/model/AdTemplate;)F
    .registers 3

    iget p1, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->type:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    const p1, 0x3f19eecc    # 0.6013f

    return p1

    :cond_9
    const/4 v0, 0x2

    if-eq p1, v0, :cond_14

    const/4 v0, 0x3

    if-ne p1, v0, :cond_10

    goto :goto_14

    :cond_10
    const p1, 0x3f77ced9    # 0.968f

    return p1

    :cond_14
    :goto_14
    const p1, 0x3e90e560    # 0.283f

    return p1
.end method

.method static synthetic c(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/l;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    return-object p0
.end method

.method static synthetic d(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/l;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method static synthetic e(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/l;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method static synthetic f(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/l;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method static synthetic g(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/feed/widget/base/a$a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/l;->c:Lcom/kwad/sdk/feed/widget/base/a$a;

    return-object p0
.end method

.method static synthetic h(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/feed/widget/base/a$a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/l;->c:Lcom/kwad/sdk/feed/widget/base/a$a;

    return-object p0
.end method

.method static synthetic i(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/download/b/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/l;->h:Lcom/kwad/sdk/core/download/b/b;

    return-object p0
.end method

.method static synthetic i()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/feed/widget/l;->t:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic j(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/l;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method static synthetic k(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/feed/widget/base/a$a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/l;->c:Lcom/kwad/sdk/feed/widget/base/a$a;

    return-object p0
.end method

.method static synthetic l(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/feed/widget/base/a$a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/l;->c:Lcom/kwad/sdk/feed/widget/base/a$a;

    return-object p0
.end method

.method static synthetic m(Lcom/kwad/sdk/feed/widget/l;)D
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/feed/widget/l;->l:D

    return-wide v0
.end method

.method private m()V
    .registers 1

    return-void
.end method

.method static synthetic n(Lcom/kwad/sdk/feed/widget/l;)I
    .registers 1

    iget p0, p0, Lcom/kwad/sdk/feed/widget/l;->A:I

    return p0
.end method

.method private n()V
    .registers 5

    new-instance v0, Lcom/kwad/sdk/core/webview/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/webview/a;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->j:Lcom/kwad/sdk/core/webview/a;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/l;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v1, v0, Lcom/kwad/sdk/core/webview/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->j:Lcom/kwad/sdk/core/webview/a;

    const/4 v1, 0x0

    iput v1, v0, Lcom/kwad/sdk/core/webview/a;->a:I

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->j:Lcom/kwad/sdk/core/webview/a;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/kwad/sdk/core/webview/a;->c:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->j:Lcom/kwad/sdk/core/webview/a;

    iget-object v3, p0, Lcom/kwad/sdk/feed/widget/l;->f:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    iput-object v3, v0, Lcom/kwad/sdk/core/webview/a;->e:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->j:Lcom/kwad/sdk/core/webview/a;

    iget-object v3, p0, Lcom/kwad/sdk/feed/widget/l;->g:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    iput-object v3, v0, Lcom/kwad/sdk/core/webview/a;->f:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->j:Lcom/kwad/sdk/core/webview/a;

    iput-object v2, v0, Lcom/kwad/sdk/core/webview/a;->d:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->j:Lcom/kwad/sdk/core/webview/a;

    iput-boolean v1, v0, Lcom/kwad/sdk/core/webview/a;->g:Z

    return-void
.end method

.method static synthetic o(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/l;->f:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    return-object p0
.end method

.method private o()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->i:Lcom/kwad/sdk/core/webview/a/g;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/a/g;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->i:Lcom/kwad/sdk/core/webview/a/g;

    :cond_a
    return-void
.end method

.method static synthetic p(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/l;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method static synthetic q(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/l;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    return-object p0
.end method

.method static synthetic r(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/l;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    return-object p0
.end method

.method static synthetic s(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/l;->r:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    return-object p0
.end method

.method private setupJsBridgeAndLoadUrl(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/kwad/sdk/feed/widget/l;->o()V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->g:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    invoke-static {v0}, Lcom/kwad/sdk/utils/ak;->b(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->g:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    new-instance v1, Lcom/kwad/sdk/feed/widget/l$6;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/feed/widget/l$6;-><init>(Lcom/kwad/sdk/feed/widget/l;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->setHttpErrorListener(Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$d;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/a/g;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/l;->g:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/webview/a/g;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->i:Lcom/kwad/sdk/core/webview/a/g;

    invoke-direct {p0, v0}, Lcom/kwad/sdk/feed/widget/l;->a(Lcom/kwad/sdk/core/webview/a/g;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->g:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/l;->i:Lcom/kwad/sdk/core/webview/a/g;

    const-string v2, "KwaiAd"

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->g:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic t(Lcom/kwad/sdk/feed/widget/l;)Landroid/view/ViewGroup$MarginLayoutParams;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/l;->B:Landroid/view/ViewGroup$MarginLayoutParams;

    return-object p0
.end method

.method static synthetic u(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/api/KsAdVideoPlayConfig;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/l;->y:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    return-object p0
.end method

.method static synthetic v(Lcom/kwad/sdk/feed/widget/l;)V
    .registers 1

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/l;->l()V

    return-void
.end method

.method static synthetic w(Lcom/kwad/sdk/feed/widget/l;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/l;->C:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic x(Lcom/kwad/sdk/feed/widget/l;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kwad/sdk/feed/widget/l;->u:Z

    return p0
.end method

.method static synthetic y(Lcom/kwad/sdk/feed/widget/l;)I
    .registers 1

    iget p0, p0, Lcom/kwad/sdk/feed/widget/l;->k:I

    return p0
.end method

.method static synthetic z(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/feed/widget/base/a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/l;->x:Lcom/kwad/sdk/feed/widget/base/a;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)V
    .registers 9

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig;->isVideoSoundEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/sdk/feed/widget/l;->q:Z

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->N(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/core/response/model/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_27

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/l;->p:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/l;->p:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/kwad/sdk/feed/widget/l;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v1, v0, v3}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->p:Landroid/widget/ImageView;

    const/4 v1, 0x0

    goto :goto_2b

    :cond_27
    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->p:Landroid/widget/ImageView;

    const/16 v1, 0x8

    :goto_2b
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->F(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->m:Ljava/util/List;

    new-instance v0, Lcom/kwad/sdk/core/video/videoview/b;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/l;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/video/videoview/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->n:Lcom/kwad/sdk/core/video/videoview/b;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/l;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/video/videoview/b;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->a(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_51

    return-void

    :cond_51
    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/l;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->i(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    move-result-wide v3

    new-instance v1, Lcom/kwad/sdk/contentalliance/detail/video/c$a;

    invoke-direct {v1}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->a(Ljava/lang/String;)Lcom/kwad/sdk/contentalliance/detail/video/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/l;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mVideoPlayerStatus:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->a(Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;)Lcom/kwad/sdk/contentalliance/detail/video/c$a;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/contentalliance/detail/video/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/kwad/sdk/contentalliance/detail/video/b;-><init>(JJ)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->a(Lcom/kwad/sdk/contentalliance/detail/video/b;)Lcom/kwad/sdk/contentalliance/detail/video/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->a()Lcom/kwad/sdk/contentalliance/detail/video/c;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/l;->n:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-virtual {v1, v0, v2}, Lcom/kwad/sdk/core/video/videoview/b;->a(Lcom/kwad/sdk/contentalliance/detail/video/c;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->n:Lcom/kwad/sdk/core/video/videoview/b;

    iget-boolean v1, p0, Lcom/kwad/sdk/feed/widget/l;->q:Z

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/video/videoview/b;->setVideoSoundEnable(Z)V

    new-instance v0, Lcom/kwad/sdk/feed/widget/j;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/l;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/kwad/sdk/feed/widget/l;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v4, p0, Lcom/kwad/sdk/feed/widget/l;->n:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-direct {v0, v1, v3, v4}, Lcom/kwad/sdk/feed/widget/j;-><init>(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/video/videoview/d;)V

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->o:Lcom/kwad/sdk/feed/widget/j;

    new-instance v1, Lcom/kwad/sdk/feed/widget/l$13;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/feed/widget/l$13;-><init>(Lcom/kwad/sdk/feed/widget/l;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/feed/widget/j;->setVideoPlayCallback(Lcom/kwad/sdk/core/video/videoview/a$a;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->o:Lcom/kwad/sdk/feed/widget/j;

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig;->isDataFlowAutoStart()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/feed/widget/j;->setDataFlowAutoStart(Z)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->n:Lcom/kwad/sdk/core/video/videoview/b;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->o:Lcom/kwad/sdk/feed/widget/j;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/video/videoview/b;->setController(Lcom/kwad/sdk/core/video/videoview/c;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->r:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    invoke-virtual {p1}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_c2

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->r:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    invoke-virtual {p1}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->r:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    invoke-virtual {p1, v2}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->setTag(Ljava/lang/Object;)V

    :cond_c2
    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->r:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->n:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->r:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->n:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->r:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->setClickable(Z)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->r:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    new-instance v0, Lcom/kwad/sdk/feed/widget/l$2;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/feed/widget/l$2;-><init>(Lcom/kwad/sdk/feed/widget/l;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->realShowType:I

    invoke-super {p0, p1}, Lcom/kwad/sdk/feed/widget/base/a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-boolean v0, p0, Lcom/kwad/sdk/feed/widget/l;->u:Z

    if-eqz v0, :cond_21

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->x:Lcom/kwad/sdk/feed/widget/base/a;

    if-eqz p1, :cond_20

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/base/a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->x:Lcom/kwad/sdk/feed/widget/base/a;

    instance-of v0, p1, Lcom/kwad/sdk/feed/widget/a;

    if-eqz v0, :cond_20

    check-cast p1, Lcom/kwad/sdk/feed/widget/a;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->y:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/a;->a(Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)V

    :cond_20
    return-void

    :cond_21
    iget v0, p0, Lcom/kwad/sdk/feed/widget/l;->k:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/l;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    :cond_2b
    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->v:Ljava/lang/String;

    if-eqz v0, :cond_37

    iget-object v1, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mOriginJString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    :cond_37
    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/l;->g()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->g:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->reload()V

    goto :goto_46

    :cond_43
    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/l;->f()V

    :cond_46
    :goto_46
    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mOriginJString:Ljava/lang/String;

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->v:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/feed/widget/l$a;)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->z:Lcom/kwad/sdk/feed/widget/l$a;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/kwad/sdk/feed/widget/l$a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->z:Lcom/kwad/sdk/feed/widget/l$a;

    :cond_a
    iput-object p2, p0, Lcom/kwad/sdk/feed/widget/l;->z:Lcom/kwad/sdk/feed/widget/l$a;

    const/4 p2, 0x2

    iput p2, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->realShowType:I

    invoke-super {p0, p1}, Lcom/kwad/sdk/feed/widget/base/a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget p2, p0, Lcom/kwad/sdk/feed/widget/l;->k:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1c

    iget-object p2, p0, Lcom/kwad/sdk/feed/widget/l;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {p0, p2}, Lcom/kwad/sdk/feed/widget/l;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    :cond_1c
    iget-object p2, p0, Lcom/kwad/sdk/feed/widget/l;->v:Ljava/lang/String;

    if-eqz p2, :cond_28

    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mOriginJString:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_37

    :cond_28
    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/l;->g()Z

    move-result p2

    if-eqz p2, :cond_34

    iget-object p2, p0, Lcom/kwad/sdk/feed/widget/l;->g:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    invoke-virtual {p2}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->reload()V

    goto :goto_37

    :cond_34
    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/l;->f()V

    :cond_37
    :goto_37
    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mOriginJString:Ljava/lang/String;

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->v:Ljava/lang/String;

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->C:Landroid/os/Handler;

    new-instance p2, Lcom/kwad/sdk/feed/widget/l$1;

    invoke-direct {p2, p0}, Lcom/kwad/sdk/feed/widget/l$1;-><init>(Lcom/kwad/sdk/feed/widget/l;)V

    const-wide/16 v0, 0x9c4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 6

    new-instance v0, Lcom/kwad/sdk/core/download/b/b;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/l;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/download/b/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->h:Lcom/kwad/sdk/core/download/b/b;

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    sget-object p1, Lcom/kwad/sdk/feed/widget/l;->t:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-wide v0, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->posId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    if-eqz p1, :cond_27

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->f:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->setRatio(F)V

    goto :goto_58

    :cond_27
    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->adStyleInfo:Lcom/kwad/sdk/core/response/model/AdStyleInfo;

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdStyleInfo;->feedAdInfo:Lcom/kwad/sdk/core/response/model/AdStyleInfo$FeedAdInfo;

    iget-wide v0, p1, Lcom/kwad/sdk/core/response/model/AdStyleInfo$FeedAdInfo;->heightRatio:D

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_44

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->f:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adStyleInfo:Lcom/kwad/sdk/core/response/model/AdStyleInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdStyleInfo;->feedAdInfo:Lcom/kwad/sdk/core/response/model/AdStyleInfo$FeedAdInfo;

    iget-wide v0, v0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$FeedAdInfo;->heightRatio:D

    double-to-float v0, v0

    :goto_40
    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->setRatio(F)V

    goto :goto_58

    :cond_44
    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->f:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    invoke-virtual {p1}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->getRatio()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_58

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->f:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {p0, v0}, Lcom/kwad/sdk/feed/widget/l;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;)F

    move-result v0

    goto :goto_40

    :cond_58
    :goto_58
    invoke-direct {p0}, Lcom/kwad/sdk/feed/widget/l;->m()V

    invoke-direct {p0}, Lcom/kwad/sdk/feed/widget/l;->n()V

    return-void
.end method

.method protected c()V
    .registers 3

    sget v0, Lcom/kwad/sdk/R$id;->ksad_web_card_webView:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->g:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->setVisibility(I)V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_container:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->f:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_container:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->r:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_first_frame_container:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->p:Landroid/widget/ImageView;

    return-void
.end method

.method public f()V
    .registers 6

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/l;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/config/c;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1e

    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/kwad/sdk/feed/widget/l;->a(Ljava/lang/String;)V

    return-void

    :cond_1e
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kwad/sdk/feed/widget/l;->setupJsBridgeAndLoadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected g()Z
    .registers 3

    iget v0, p0, Lcom/kwad/sdk/feed/widget/l;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method protected getLayoutId()I
    .registers 2

    sget v0, Lcom/kwad/sdk/R$layout;->ksad_feed_webview:I

    return v0
.end method

.method public h()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->C:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Lcom/kwad/sdk/feed/widget/base/a;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/l;->h()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/kwad/sdk/feed/widget/base/a;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_68

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->n:Lcom/kwad/sdk/core/video/videoview/b;

    if-eqz p1, :cond_68

    invoke-virtual {p1}, Lcom/kwad/sdk/core/video/videoview/b;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->r:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    if-eq p1, v0, :cond_68

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->n:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->r:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    invoke-virtual {p1}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->r:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    invoke-virtual {p1}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->r:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->setTag(Ljava/lang/Object;)V

    :cond_31
    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->r:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->n:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->r:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->n:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/a;->a(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->n:Lcom/kwad/sdk/core/video/videoview/b;

    iget-boolean v1, p0, Lcom/kwad/sdk/feed/widget/l;->q:Z

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/video/videoview/b;->setVideoSoundEnable(Z)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->o:Lcom/kwad/sdk/feed/widget/j;

    new-instance v1, Lcom/kwad/sdk/feed/widget/l$5;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/feed/widget/l$5;-><init>(Lcom/kwad/sdk/feed/widget/l;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/feed/widget/j;->setVideoPlayCallback(Lcom/kwad/sdk/core/video/videoview/a$a;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->o:Lcom/kwad/sdk/feed/widget/j;

    invoke-virtual {v0}, Lcom/kwad/sdk/feed/widget/j;->m()V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l;->o:Lcom/kwad/sdk/feed/widget/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/feed/widget/j;->setAutoRelease(Z)V

    invoke-static {}, Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache;->a()Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache;->a(Ljava/lang/String;)V

    :cond_68
    return-void
.end method

.method public setMargin(I)V
    .registers 2

    return-void
.end method

.method public setVideoPlayConfig(Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/l;->y:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/feed/widget/l;->A:I

    return-void
.end method
