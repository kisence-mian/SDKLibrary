.class public Lcom/mintegral/msdk/mtgnative/f/a;
.super Ljava/lang/Object;
.source "NativeProvider.java"


# instance fields
.field private a:Lcom/mintegral/msdk/mtgnative/c/b;

.field private b:Landroid/os/Handler;

.field private c:Lcom/mintegral/msdk/mtgnative/d/a;

.field private d:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/f/a;->b:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/mintegral/msdk/mtgnative/d/a;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V
    .registers 5

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/f/a;->b:Landroid/os/Handler;

    .line 51
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/f/a;->c:Lcom/mintegral/msdk/mtgnative/d/a;

    .line 52
    iput-object p2, p0, Lcom/mintegral/msdk/mtgnative/f/a;->d:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    .line 53
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/f/a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    if-eqz v0, :cond_19

    .line 146
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/f/a;->c:Lcom/mintegral/msdk/mtgnative/d/a;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/f/a;->c:Lcom/mintegral/msdk/mtgnative/d/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgnative/d/a;->a()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 147
    invoke-static {}, Lcom/mintegral/msdk/base/utils/k;->c()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 149
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgnative/f/a;->e()V

    .line 165
    :cond_19
    :goto_19
    return-void

    .line 151
    :cond_1a
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/f/a;->b:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/mtgnative/f/a$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/mtgnative/f/a$1;-><init>(Lcom/mintegral/msdk/mtgnative/f/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_19

    .line 159
    :cond_25
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/f/a;->c:Lcom/mintegral/msdk/mtgnative/d/a;

    if-eqz v0, :cond_2e

    .line 160
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/f/a;->c:Lcom/mintegral/msdk/mtgnative/d/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgnative/d/a;->b()V

    .line 162
    :cond_2e
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/f/a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-virtual {v0, p1, p2}, Lcom/mintegral/msdk/mtgnative/c/b;->a(ILjava/lang/String;)V

    goto :goto_19
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgnative/f/a;)V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgnative/f/a;->e()V

    return-void
.end method

.method public static c()V
    .registers 2

    .prologue
    .line 73
    :try_start_0
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/b;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 77
    :goto_3
    return-void

    .line 75
    :catch_4
    move-exception v0

    const-string v0, "NativeProvider"

    const-string v1, "clear cache failed"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private e()V
    .registers 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/f/a;->c:Lcom/mintegral/msdk/mtgnative/d/a;

    const-string v1, "current request is loading"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgnative/d/a;->onAdLoadError(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/f/a;->c:Lcom/mintegral/msdk/mtgnative/d/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgnative/d/a;->b()V

    .line 141
    return-void
.end method

.method public static preload(Ljava/util/Map;ILcom/mintegral/msdk/out/AdMobClickListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Lcom/mintegral/msdk/out/AdMobClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 133
    const-string v0, "NativeProvider"

    const-string v1, "native provider preload"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v0, Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-direct {v0}, Lcom/mintegral/msdk/mtgnative/c/c;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/mintegral/msdk/mtgnative/c/c;->a(Ljava/util/Map;ILcom/mintegral/msdk/out/AdMobClickListener;)V

    .line 135
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 60
    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/mintegral/msdk/mtgnative/f/a;->a(ILjava/lang/String;)V

    .line 61
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcom/mintegral/msdk/mtgnative/c/b;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/f/a;->c:Lcom/mintegral/msdk/mtgnative/d/a;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/f/a;->d:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {v0, v1, v2, p2, p1}, Lcom/mintegral/msdk/mtgnative/c/b;-><init>(Lcom/mintegral/msdk/mtgnative/d/a;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;Ljava/util/Map;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/f/a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    .line 57
    return-void
.end method

.method public final a(Landroid/view/View;Lcom/mintegral/msdk/out/Campaign;)V
    .registers 5

    .prologue
    .line 105
    const-string v0, "NativeProvider"

    const-string v1, "native provider registerView"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/f/a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    if-nez v0, :cond_c

    .line 110
    :goto_b
    return-void

    .line 109
    :cond_c
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/f/a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-virtual {v0, p2, p1}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Lcom/mintegral/msdk/out/Campaign;Landroid/view/View;)V

    goto :goto_b
.end method

.method public final a(Landroid/view/View;Ljava/util/List;Lcom/mintegral/msdk/out/Campaign;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/mintegral/msdk/out/Campaign;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    const-string v0, "NativeProvider"

    const-string v1, "native provider registerView"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/f/a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    if-nez v0, :cond_c

    .line 97
    :goto_b
    return-void

    .line 96
    :cond_c
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/f/a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-virtual {v0, p3, p1, p2}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Lcom/mintegral/msdk/out/Campaign;Landroid/view/View;Ljava/util/List;)V

    goto :goto_b
.end method

.method public final a(Lcom/mintegral/msdk/mtgnative/d/a;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/f/a;->c:Lcom/mintegral/msdk/mtgnative/d/a;

    .line 40
    return-void
.end method

.method public final a(Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/f/a;->d:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    .line 46
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/mintegral/msdk/mtgnative/f/a;->a(ILjava/lang/String;)V

    .line 65
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 68
    const/4 v0, 0x1

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/mintegral/msdk/mtgnative/f/a;->a(ILjava/lang/String;)V

    .line 69
    return-void
.end method

.method public final b(Landroid/view/View;Lcom/mintegral/msdk/out/Campaign;)V
    .registers 5

    .prologue
    .line 113
    const-string v0, "NativeProvider"

    const-string v1, "native provider unregisterView"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/f/a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    if-nez v0, :cond_c

    .line 118
    :goto_b
    return-void

    .line 117
    :cond_c
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/f/a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-virtual {v0, p2, p1}, Lcom/mintegral/msdk/mtgnative/c/b;->b(Lcom/mintegral/msdk/out/Campaign;Landroid/view/View;)V

    goto :goto_b
.end method

.method public final b(Landroid/view/View;Ljava/util/List;Lcom/mintegral/msdk/out/Campaign;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/mintegral/msdk/out/Campaign;",
            ")V"
        }
    .end annotation

    .prologue
    .line 121
    const-string v0, "NativeProvider"

    const-string v1, "native provider unregisterView"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/f/a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    if-nez v0, :cond_c

    .line 126
    :goto_b
    return-void

    .line 125
    :cond_c
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/f/a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-virtual {v0, p3, p1, p2}, Lcom/mintegral/msdk/mtgnative/c/b;->b(Lcom/mintegral/msdk/out/Campaign;Landroid/view/View;Ljava/util/List;)V

    goto :goto_b
.end method

.method public final d()V
    .registers 3

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/f/a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->a()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 84
    :goto_5
    return-void

    .line 82
    :catch_6
    move-exception v0

    const-string v0, "NativeProvider"

    const-string v1, "release failed"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method
