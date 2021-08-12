.class public Lcom/bytedance/sdk/openadsdk/dislike/b;
.super Ljava/lang/Object;
.source "TTAdDislikeImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdDislike;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Landroid/content/Context;

.field private c:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field private d:Lcom/bytedance/sdk/openadsdk/dislike/d;

.field private e:Lcom/bytedance/sdk/openadsdk/dislike/c;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:Z

.field private j:Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 4

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/dislike/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V
    .registers 6

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->g:Ljava/lang/Boolean;

    .line 27
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->i:Z

    .line 38
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->a:Ljava/lang/String;

    .line 39
    const-string p3, "Dislike \u521d\u59cb\u5316\u5fc5\u987b\u4f7f\u7528activity,\u8bf7\u5728TTAdManager.createAdNative(activity)\u4e2d\u4f20\u5165"

    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->b:Landroid/content/Context;

    .line 41
    const-string p1, "other"

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->c(Ljava/lang/String;)V

    .line 42
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 43
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/b;->a()V

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/dislike/b;)Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->j:Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/dislike/b;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->g:Ljava/lang/Boolean;

    return-object p1
.end method

.method private a()V
    .registers 5

    .line 48
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/dislike/d;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->d:Lcom/bytedance/sdk/openadsdk/dislike/d;

    .line 49
    new-instance v1, Lcom/bytedance/sdk/openadsdk/dislike/b$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/dislike/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/b;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/d;->a(Lcom/bytedance/sdk/openadsdk/dislike/d$a;)V

    .line 88
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/dislike/c;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->e:Lcom/bytedance/sdk/openadsdk/dislike/c;

    .line 89
    new-instance v1, Lcom/bytedance/sdk/openadsdk/dislike/b$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/dislike/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/b;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->a(Lcom/bytedance/sdk/openadsdk/dislike/c$a;)V

    .line 121
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/dislike/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private b()V
    .registers 3

    .line 159
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->b:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_10

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 160
    :goto_11
    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->d:Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/dislike/d;->isShowing()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->e:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->isShowing()Z

    move-result v0

    if-nez v0, :cond_28

    .line 161
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->e:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->show()V

    .line 163
    :cond_28
    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/dislike/b;)V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/b;->b()V

    return-void
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/dislike/b;)Ljava/lang/Boolean;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->g:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/dislike/b;)Lcom/bytedance/sdk/openadsdk/dislike/d;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->d:Lcom/bytedance/sdk/openadsdk/dislike/d;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 3

    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->d:Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->e:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 168
    return-void
.end method

.method public sendDislikeSource(Ljava/lang/String;)V
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->c(Ljava/lang/String;)V

    .line 126
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->f:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setDislikeInteractionCallback(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .registers 2

    .line 172
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->j:Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;

    .line 173
    return-void
.end method

.method public setIsInteractionAd()V
    .registers 2

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->i:Z

    .line 178
    return-void
.end method

.method public showDislikeDialog()V
    .registers 4

    .line 131
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->b:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    move v0, v2

    .line 132
    :goto_12
    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->d:Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/dislike/d;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->e:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 133
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->d:Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/dislike/d;->show()V

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_36

    .line 136
    :cond_2f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->j:Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;

    if-eqz v0, :cond_36

    .line 137
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;->onRefuse()V

    .line 139
    :cond_36
    :goto_36
    return-void
.end method

.method public showDislikeDialog(I)V
    .registers 4

    .line 143
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->i:Z

    if-eqz p1, :cond_8

    .line 144
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/b;->showDislikeDialog()V

    goto :goto_45

    .line 146
    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->b:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    move p1, v1

    .line 147
    :goto_1a
    if-eqz p1, :cond_3e

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->d:Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/dislike/d;->isShowing()Z

    move-result p1

    if-nez p1, :cond_3e

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->e:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->isShowing()Z

    move-result p1

    if-nez p1, :cond_3e

    .line 148
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->d:Lcom/bytedance/sdk/openadsdk/dislike/d;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/dislike/d;->a(Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->d:Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/dislike/d;->show()V

    .line 150
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_45

    .line 152
    :cond_3e
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->j:Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;

    if-eqz p1, :cond_45

    .line 153
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;->onRefuse()V

    .line 156
    :cond_45
    :goto_45
    return-void
.end method
