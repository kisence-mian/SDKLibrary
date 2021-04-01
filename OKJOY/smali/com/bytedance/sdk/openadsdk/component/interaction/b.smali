.class Lcom/bytedance/sdk/openadsdk/component/interaction/b;
.super Ljava/lang/Object;
.source "TTInteractionAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTInteractionAd;


# static fields
.field private static i:Z


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field private c:Landroid/app/Dialog;

.field private d:Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;

.field private e:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

.field private f:Lcom/bytedance/sdk/openadsdk/core/k;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 3

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->a:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->c:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/interaction/b;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->h:Landroid/widget/ImageView;

    return-object p1
.end method

.method private a()V
    .registers 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->c:Landroid/app/Dialog;

    if-nez v0, :cond_2e

    .line 78
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/m;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->c:Landroid/app/Dialog;

    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->c:Landroid/app/Dialog;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/interaction/b$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->c:Landroid/app/Dialog;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/interaction/b$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->c:Landroid/app/Dialog;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/m;

    const/4 v1, 0x0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/interaction/b$3;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/m;->a(ZLcom/bytedance/sdk/openadsdk/core/m$a;)V

    .line 128
    :cond_2e
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/interaction/b;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->g:Landroid/widget/ImageView;

    return-object p1
.end method

.method private b()V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v3, "interaction"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;I)V

    .line 137
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Landroid/view/View;)V

    .line 138
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->b(Landroid/view/View;)V

    .line 139
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->e:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 140
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/interaction/b$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/a/b$a;)V

    .line 157
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 160
    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/core/d/k;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    return-object v0
.end method

.method private c()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->F()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->b()I

    move-result v1

    .line 169
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->F()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v0

    .line 171
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/g/e;->g()Lcom/bytedance/sdk/adnet/b/d;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/interaction/b$5;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b$5;-><init>(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)V

    invoke-virtual {v2, v0, v3, v1, v1}, Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;II)V

    .line 209
    return-void
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->d:Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;

    return-object v0
.end method

.method private d()V
    .registers 2

    .prologue
    .line 264
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->i:Z

    .line 265
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 266
    return-void
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->e:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    return-object v0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->b()V

    return-void
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->c()V

    return-void
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->d()V

    return-void
.end method

.method static synthetic j(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/core/k;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->f:Lcom/bytedance/sdk/openadsdk/core/k;

    return-object v0
.end method


# virtual methods
.method a(Lcom/bytedance/sdk/openadsdk/core/k;)V
    .registers 5
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 63
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->f:Lcom/bytedance/sdk/openadsdk/core/k;

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 65
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->getInteractionType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v2, "interaction"

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->e:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 69
    :cond_1a
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->a()V

    .line 70
    return-void
.end method

.method public getInteractionType()I
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v0, :cond_6

    .line 232
    const/4 v0, -0x1

    .line 234
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->B()I

    move-result v0

    goto :goto_5
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_b

    .line 240
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->X()Ljava/util/Map;

    move-result-object v0

    .line 242
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;)V
    .registers 2

    .prologue
    .line 216
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->d:Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;

    .line 217
    return-void
.end method

.method public setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .registers 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->e:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_9

    .line 225
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->e:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 227
    :cond_9
    return-void
.end method

.method public showInteractionAd(Landroid/app/Activity;)V
    .registers 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 248
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 258
    :cond_6
    :goto_6
    return-void

    .line 251
    :cond_7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_19

    .line 252
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u4e0d\u80fd\u5728\u5b50\u7ebf\u7a0b\u8c03\u7528 TTInteractionAd.showInteractionAd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_19
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->i:Z

    if-nez v0, :cond_6

    .line 255
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->i:Z

    .line 256
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_6
.end method
