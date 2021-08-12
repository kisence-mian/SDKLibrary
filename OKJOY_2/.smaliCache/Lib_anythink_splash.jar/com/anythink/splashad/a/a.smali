.class public final Lcom/anythink/splashad/a/a;
.super Lcom/anythink/core/common/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/core/common/d<",
        "Lcom/anythink/splashad/a/e;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/anythink/splashad/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/anythink/core/common/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method private static a(Lcom/anythink/splashad/a/e;)Lcom/anythink/core/common/f;
    .registers 3

    .line 77
    new-instance v0, Lcom/anythink/splashad/a/c;

    iget-object v1, p0, Lcom/anythink/splashad/a/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/splashad/a/c;-><init>(Landroid/content/Context;)V

    .line 78
    iget v1, p0, Lcom/anythink/splashad/a/e;->c:I

    .line 1111
    iput v1, v0, Lcom/anythink/splashad/a/c;->a:I

    .line 79
    iget-object p0, p0, Lcom/anythink/splashad/a/e;->b:Lcom/anythink/splashad/api/ATSplashAdListener;

    .line 1167
    iput-object p0, v0, Lcom/anythink/splashad/a/c;->H:Lcom/anythink/splashad/api/ATSplashAdListener;

    .line 80
    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/splashad/a/a;
    .registers 4

    .line 49
    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/o;->a(Ljava/lang/String;)Lcom/anythink/core/common/d;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_e

    instance-of v1, v0, Lcom/anythink/splashad/a/a;

    if-nez v1, :cond_1a

    .line 51
    :cond_e
    new-instance v0, Lcom/anythink/splashad/a/a;

    invoke-direct {v0, p0, p1}, Lcom/anythink/splashad/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/anythink/core/common/o;->a(Ljava/lang/String;Lcom/anythink/core/common/d;)V

    .line 54
    :cond_1a
    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d;->a(Landroid/content/Context;)V

    .line 55
    check-cast v0, Lcom/anythink/splashad/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/anythink/splashad/a/a;)Ljava/lang/String;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/anythink/splashad/a/a;->h:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Lcom/anythink/splashad/a/e;Lcom/anythink/core/api/AdError;)V
    .registers 3

    .line 165
    iget-object v0, p0, Lcom/anythink/splashad/a/e;->b:Lcom/anythink/splashad/api/ATSplashAdListener;

    if-eqz v0, :cond_9

    .line 166
    iget-object p0, p0, Lcom/anythink/splashad/a/e;->b:Lcom/anythink/splashad/api/ATSplashAdListener;

    invoke-interface {p0, p1}, Lcom/anythink/splashad/api/ATSplashAdListener;->onNoAdError(Lcom/anythink/core/api/AdError;)V

    .line 168
    :cond_9
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/splashad/a/e;)Z
    .registers 11

    .line 151
    new-instance v0, Lcom/anythink/splashad/a/b;

    iget-object v1, p0, Lcom/anythink/splashad/a/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/splashad/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/splashad/a/a;->a:Lcom/anythink/splashad/a/b;

    .line 152
    iget-object v1, p3, Lcom/anythink/splashad/a/e;->a:Landroid/content/Context;

    iget-object v4, p3, Lcom/anythink/splashad/a/e;->e:Lcom/anythink/core/api/ATMediationRequestInfo;

    iget-object v5, p3, Lcom/anythink/splashad/a/e;->b:Lcom/anythink/splashad/api/ATSplashAdListener;

    iget v6, p3, Lcom/anythink/splashad/a/e;->c:I

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/anythink/splashad/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATMediationRequestInfo;Lcom/anythink/splashad/api/ATSplashAdListener;I)V

    .line 153
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic b(Lcom/anythink/splashad/a/a;)Landroid/content/Context;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/anythink/splashad/a/a;->b:Landroid/content/Context;

    return-object p0
.end method

.method private static b(Lcom/anythink/splashad/a/e;)V
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/anythink/splashad/a/e;->b:Lcom/anythink/splashad/api/ATSplashAdListener;

    if-eqz v0, :cond_9

    .line 159
    iget-object p0, p0, Lcom/anythink/splashad/a/e;->b:Lcom/anythink/splashad/api/ATSplashAdListener;

    invoke-interface {p0}, Lcom/anythink/splashad/api/ATSplashAdListener;->onAdLoaded()V

    .line 161
    :cond_9
    return-void
.end method

.method static synthetic c(Lcom/anythink/splashad/a/a;)Landroid/content/Context;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/anythink/splashad/a/a;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/splashad/a/a;)Landroid/content/Context;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/anythink/splashad/a/a;->b:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Z)Lcom/anythink/core/common/d/b;
    .registers 6

    .line 85
    iget-object v0, p0, Lcom/anythink/splashad/a/a;->a:Lcom/anythink/splashad/a/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 1318
    iget-object v2, v0, Lcom/anythink/splashad/a/b;->d:Lcom/anythink/core/common/d/b;

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/anythink/splashad/a/b;->d:Lcom/anythink/core/common/d/b;

    invoke-virtual {v2}, Lcom/anythink/core/common/d/b;->e()I

    move-result v2

    if-gtz v2, :cond_14

    .line 1319
    iget-object v1, v0, Lcom/anythink/splashad/a/b;->d:Lcom/anythink/core/common/d/b;

    goto :goto_16

    .line 1321
    :cond_14
    nop

    .line 85
    nop

    .line 86
    :cond_16
    :goto_16
    if-eqz v1, :cond_19

    .line 87
    return-object v1

    .line 89
    :cond_19
    invoke-super {p0, p1, p2}, Lcom/anythink/core/common/d;->a(Landroid/content/Context;Z)Lcom/anythink/core/common/d/b;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized a(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/anythink/splashad/api/ATSplashAdListener;)V
    .registers 12

    monitor-enter p0

    .line 93
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/anythink/splashad/a/a;->a(Landroid/content/Context;Z)Lcom/anythink/core/common/d/b;

    move-result-object v3

    .line 95
    if-eqz v3, :cond_2f

    invoke-virtual {v3}, Lcom/anythink/core/common/d/b;->g()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    if-eqz v1, :cond_2f

    .line 96
    invoke-virtual {p0, v3}, Lcom/anythink/splashad/a/a;->a(Lcom/anythink/core/common/d/b;)V

    .line 100
    invoke-virtual {p0}, Lcom/anythink/splashad/a/a;->e()V

    .line 103
    invoke-virtual {v3}, Lcom/anythink/core/common/d/b;->e()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v3, v1}, Lcom/anythink/core/common/d/b;->a(I)V

    .line 105
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v0

    new-instance v7, Lcom/anythink/splashad/a/a$1;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/anythink/splashad/a/a$1;-><init>(Lcom/anythink/splashad/a/a;Lcom/anythink/core/common/d/b;Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/anythink/splashad/api/ATSplashAdListener;)V

    invoke-virtual {v0, v7}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_2f
    .catchall {:try_start_2 .. :try_end_2f} :catchall_31

    .line 142
    :cond_2f
    monitor-exit p0

    return-void

    .line 92
    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Landroid/content/Context;Lcom/anythink/core/api/ATMediationRequestInfo;Lcom/anythink/splashad/api/ATSplashAdListener;I)V
    .registers 6

    .line 64
    new-instance v0, Lcom/anythink/splashad/a/e;

    invoke-direct {v0}, Lcom/anythink/splashad/a/e;-><init>()V

    .line 65
    iput-object p1, v0, Lcom/anythink/splashad/a/e;->a:Landroid/content/Context;

    .line 66
    iput-object p3, v0, Lcom/anythink/splashad/a/e;->b:Lcom/anythink/splashad/api/ATSplashAdListener;

    .line 67
    iput-object p2, v0, Lcom/anythink/splashad/a/e;->e:Lcom/anythink/core/api/ATMediationRequestInfo;

    .line 68
    iput p4, v0, Lcom/anythink/splashad/a/e;->c:I

    .line 70
    iget-object p1, p0, Lcom/anythink/splashad/a/a;->b:Landroid/content/Context;

    iget-object p2, p0, Lcom/anythink/splashad/a/a;->d:Ljava/lang/String;

    const-string p3, "4"

    invoke-super {p0, p1, p3, p2, v0}, Lcom/anythink/core/common/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/g;)V

    .line 72
    return-void
.end method

.method public final synthetic a(Lcom/anythink/core/common/g;)V
    .registers 3

    .line 38
    check-cast p1, Lcom/anythink/splashad/a/e;

    .line 4158
    iget-object v0, p1, Lcom/anythink/splashad/a/e;->b:Lcom/anythink/splashad/api/ATSplashAdListener;

    if-eqz v0, :cond_b

    .line 4159
    iget-object p1, p1, Lcom/anythink/splashad/a/e;->b:Lcom/anythink/splashad/api/ATSplashAdListener;

    invoke-interface {p1}, Lcom/anythink/splashad/api/ATSplashAdListener;->onAdLoaded()V

    .line 38
    :cond_b
    return-void
.end method

.method public final synthetic a(Lcom/anythink/core/common/g;Lcom/anythink/core/api/AdError;)V
    .registers 4

    .line 38
    check-cast p1, Lcom/anythink/splashad/a/e;

    .line 3165
    iget-object v0, p1, Lcom/anythink/splashad/a/e;->b:Lcom/anythink/splashad/api/ATSplashAdListener;

    if-eqz v0, :cond_b

    .line 3166
    iget-object p1, p1, Lcom/anythink/splashad/a/e;->b:Lcom/anythink/splashad/api/ATSplashAdListener;

    invoke-interface {p1, p2}, Lcom/anythink/splashad/api/ATSplashAdListener;->onNoAdError(Lcom/anythink/core/api/AdError;)V

    .line 38
    :cond_b
    return-void
.end method

.method public final synthetic a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/g;)Z
    .registers 11

    .line 38
    check-cast p3, Lcom/anythink/splashad/a/e;

    .line 6151
    new-instance v0, Lcom/anythink/splashad/a/b;

    iget-object v1, p0, Lcom/anythink/splashad/a/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/splashad/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/splashad/a/a;->a:Lcom/anythink/splashad/a/b;

    .line 6152
    iget-object v1, p3, Lcom/anythink/splashad/a/e;->a:Landroid/content/Context;

    iget-object v4, p3, Lcom/anythink/splashad/a/e;->e:Lcom/anythink/core/api/ATMediationRequestInfo;

    iget-object v5, p3, Lcom/anythink/splashad/a/e;->b:Lcom/anythink/splashad/api/ATSplashAdListener;

    iget v6, p3, Lcom/anythink/splashad/a/e;->c:I

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/anythink/splashad/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATMediationRequestInfo;Lcom/anythink/splashad/api/ATSplashAdListener;I)V

    .line 6153
    nop

    .line 38
    const/4 p1, 0x1

    return p1
.end method

.method public final synthetic b(Lcom/anythink/core/common/g;)Lcom/anythink/core/common/f;
    .registers 4

    .line 38
    check-cast p1, Lcom/anythink/splashad/a/e;

    .line 5077
    new-instance v0, Lcom/anythink/splashad/a/c;

    iget-object v1, p1, Lcom/anythink/splashad/a/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/splashad/a/c;-><init>(Landroid/content/Context;)V

    .line 5078
    iget v1, p1, Lcom/anythink/splashad/a/e;->c:I

    .line 5111
    iput v1, v0, Lcom/anythink/splashad/a/c;->a:I

    .line 5079
    iget-object p1, p1, Lcom/anythink/splashad/a/e;->b:Lcom/anythink/splashad/api/ATSplashAdListener;

    .line 5167
    iput-object p1, v0, Lcom/anythink/splashad/a/c;->H:Lcom/anythink/splashad/api/ATSplashAdListener;

    .line 5080
    nop

    .line 38
    return-object v0
.end method

.method public final f()Z
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/anythink/splashad/a/a;->a:Lcom/anythink/splashad/a/b;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/anythink/splashad/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final g()V
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/anythink/splashad/a/a;->a:Lcom/anythink/splashad/a/b;

    if-eqz v0, :cond_a

    .line 175
    invoke-virtual {v0}, Lcom/anythink/splashad/a/b;->b()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/splashad/a/a;->a:Lcom/anythink/splashad/a/b;

    .line 179
    :cond_a
    invoke-static {}, Lcom/anythink/core/common/p;->a()Lcom/anythink/core/common/p;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/splashad/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 181
    iget-object v1, p0, Lcom/anythink/splashad/a/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/f;

    .line 182
    if-eqz v0, :cond_27

    .line 183
    invoke-virtual {v0}, Lcom/anythink/core/common/f;->e()V

    .line 188
    :cond_27
    return-void
.end method

.method public final h()V
    .registers 5

    .line 194
    iget-object v0, p0, Lcom/anythink/splashad/a/a;->a:Lcom/anythink/splashad/a/b;

    if-eqz v0, :cond_37

    .line 195
    nop

    .line 2307
    new-instance v1, Lcom/anythink/core/common/d/d;

    invoke-direct {v1}, Lcom/anythink/core/common/d/d;-><init>()V

    .line 2308
    iget-object v2, v0, Lcom/anythink/splashad/a/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/d/d;->q(Ljava/lang/String;)V

    .line 2309
    iget-object v0, v0, Lcom/anythink/splashad/a/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/d/d;->r(Ljava/lang/String;)V

    .line 2310
    const-string v0, "4"

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/d/d;->s(Ljava/lang/String;)V

    .line 2311
    const-string v0, "0"

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/d/d;->p(Ljava/lang/String;)V

    .line 2312
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/d/d;->b(Z)V

    .line 2313
    const-string v0, "2001"

    const-string v2, ""

    const-string v3, "Splash FetchAd Timeout."

    invoke-static {v0, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;Lcom/anythink/core/api/AdError;)V

    .line 196
    iget-object v0, p0, Lcom/anythink/splashad/a/a;->a:Lcom/anythink/splashad/a/b;

    invoke-virtual {v0}, Lcom/anythink/splashad/a/b;->b()V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/splashad/a/a;->a:Lcom/anythink/splashad/a/b;

    .line 200
    :cond_37
    invoke-static {}, Lcom/anythink/core/common/p;->a()Lcom/anythink/core/common/p;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/splashad/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 202
    iget-object v1, p0, Lcom/anythink/splashad/a/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/f;

    .line 203
    instance-of v1, v0, Lcom/anythink/splashad/a/c;

    if-eqz v1, :cond_5c

    .line 204
    move-object v1, v0

    check-cast v1, Lcom/anythink/splashad/a/c;

    invoke-virtual {v1}, Lcom/anythink/splashad/a/c;->f()V

    .line 205
    invoke-virtual {v0}, Lcom/anythink/core/common/f;->e()V

    .line 209
    :cond_5c
    return-void
.end method
