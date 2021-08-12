.class Lcom/bytedance/sdk/openadsdk/component/interaction/b;
.super Ljava/lang/Object;
.source "TTInteractionAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTInteractionAd;


# static fields
.field private static k:Z


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field private d:Landroid/app/Dialog;

.field private e:Lcom/bytedance/sdk/openadsdk/dislike/b;

.field private f:Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;

.field private g:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

.field private h:Lcom/bytedance/sdk/openadsdk/core/l;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "interaction"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->a:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->b:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Landroid/app/Dialog;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->d:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/interaction/b;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->j:Landroid/widget/ImageView;

    return-object p1
.end method

.method private a()V
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->d:Landroid/app/Dialog;

    if-nez v0, :cond_2c

    .line 82
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/n;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->d:Landroid/app/Dialog;

    .line 84
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/interaction/b$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->d:Landroid/app/Dialog;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/interaction/b$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->d:Landroid/app/Dialog;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/n;

    const/4 v1, 0x0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/interaction/b$3;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/n;->a(ZLcom/bytedance/sdk/openadsdk/core/n$a;)V

    .line 137
    :cond_2c
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/interaction/b;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->i:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method private b()V
    .registers 6

    .line 145
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const-string v3, "interaction"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V

    .line 146
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Landroid/view/View;)V

    .line 147
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->b(Landroid/view/View;)V

    .line 148
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->g:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 149
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/interaction/b$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/a/b$a;)V

    .line 166
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 169
    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Landroid/content/Context;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->b:Landroid/content/Context;

    return-object p0
.end method

.method private c()V
    .registers 5

    .line 177
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Z()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b()I

    move-result v0

    .line 178
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Z()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v1

    .line 180
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/h/d;->g()Lcom/bytedance/sdk/adnet/b/d;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/interaction/b$5;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b$5;-><init>(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)V

    invoke-virtual {v2, v1, v3, v0, v0}, Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;II)V

    .line 218
    return-void
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->f:Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;

    return-object p0
.end method

.method private d()V
    .registers 2

    .line 281
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->k:Z

    .line 282
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 283
    return-void
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->g:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    return-object p0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->b()V

    return-void
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->c()V

    return-void
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->d()V

    return-void
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/dislike/b;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->e:Lcom/bytedance/sdk/openadsdk/dislike/b;

    return-object p0
.end method

.method static synthetic j(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Landroid/widget/ImageView;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->j:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic k(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/core/l;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->h:Lcom/bytedance/sdk/openadsdk/core/l;

    return-object p0
.end method


# virtual methods
.method a(Lcom/bytedance/sdk/openadsdk/core/l;)V
    .registers 5

    .line 67
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->h:Lcom/bytedance/sdk/openadsdk/core/l;

    .line 68
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 69
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->getInteractionType()I

    move-result p1

    const-string v0, "interaction"

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1a

    .line 70
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->g:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 72
    :cond_1a
    new-instance p1, Lcom/bytedance/sdk/openadsdk/dislike/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {p1, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/dislike/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->e:Lcom/bytedance/sdk/openadsdk/dislike/b;

    .line 73
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->a()V

    .line 74
    return-void
.end method

.method public getInteractionType()I
    .registers 2

    .line 248
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_6

    .line 249
    const/4 v0, -0x1

    return v0

    .line 251
    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result v0

    return v0
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_9

    .line 257
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->as()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 259
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;)V
    .registers 2

    .line 225
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->f:Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;

    .line 226
    return-void
.end method

.method public setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .registers 3

    .line 241
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->g:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_7

    .line 242
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 244
    :cond_7
    return-void
.end method

.method public setShowDislikeIcon(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .registers 3

    .line 230
    if-nez p1, :cond_3

    .line 231
    return-void

    .line 233
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->e:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/b;->setDislikeInteractionCallback(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 234
    return-void
.end method

.method public showInteractionAd(Landroid/app/Activity;)V
    .registers 3

    .line 265
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 266
    return-void

    .line 268
    :cond_7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_1e

    .line 271
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->k:Z

    if-nez p1, :cond_1d

    .line 272
    const/4 p1, 0x1

    sput-boolean p1, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->k:Z

    .line 273
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 275
    :cond_1d
    return-void

    .line 269
    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "\u4e0d\u80fd\u5728\u5b50\u7ebf\u7a0b\u8c03\u7528 TTInteractionAd.showInteractionAd"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
