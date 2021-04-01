.class public Lcom/anythink/nativead/a/a;
.super Lcom/anythink/core/b/d;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Lcom/anythink/nativead/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/nativead/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/anythink/core/b/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/anythink/nativead/a/a;Lcom/anythink/core/b/f;)Lcom/anythink/core/b/f;
    .registers 2

    .prologue
    .line 25
    iput-object p1, p0, Lcom/anythink/nativead/a/a;->g:Lcom/anythink/core/b/f;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/nativead/a/a;
    .registers 4

    .prologue
    .line 33
    invoke-static {p1}, Lcom/anythink/core/b/d;->a(Ljava/lang/String;)Lcom/anythink/core/b/d;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_a

    instance-of v1, v0, Lcom/anythink/nativead/a/a;

    if-nez v1, :cond_12

    .line 35
    :cond_a
    new-instance v0, Lcom/anythink/nativead/a/a;

    invoke-direct {v0, p0, p1}, Lcom/anythink/nativead/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    invoke-static {p1, v0}, Lcom/anythink/core/b/d;->a(Ljava/lang/String;Lcom/anythink/core/b/d;)V

    .line 38
    :cond_12
    invoke-virtual {v0, p0}, Lcom/anythink/core/b/d;->a(Landroid/content/Context;)V

    .line 39
    check-cast v0, Lcom/anythink/nativead/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/anythink/nativead/a/a;)Ljava/lang/ref/WeakReference;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/anythink/nativead/a/a;->d:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic b(Lcom/anythink/nativead/a/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/anythink/nativead/a/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/anythink/nativead/a/a;)Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/anythink/nativead/a/a;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic d(Lcom/anythink/nativead/a/a;)Lcom/anythink/core/b/f;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/anythink/nativead/a/a;->g:Lcom/anythink/core/b/f;

    return-object v0
.end method

.method static synthetic e(Lcom/anythink/nativead/a/a;)Lcom/anythink/core/b/f;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/anythink/nativead/a/a;->g:Lcom/anythink/core/b/f;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/anythink/core/c/c$b;Lcom/anythink/core/b/c/b;)V
    .registers 11

    .prologue
    .line 106
    new-instance v1, Lcom/anythink/nativead/a/b;

    invoke-virtual {p1}, Lcom/anythink/core/c/c$b;->a()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/anythink/core/c/c$b;->a()J

    move-result-wide v4

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/anythink/nativead/a/b;-><init>(JJLcom/anythink/core/c/c$b;Lcom/anythink/core/b/c/b;)V

    .line 107
    iget-object v0, p0, Lcom/anythink/nativead/a/a;->n:Ljava/util/Map;

    .line 1028
    iput-object v0, v1, Lcom/anythink/nativead/a/b;->e:Ljava/util/Map;

    .line 108
    iput-object v1, p0, Lcom/anythink/nativead/a/a;->k:Lcom/anythink/core/b/e;

    .line 109
    iget-object v0, p0, Lcom/anythink/nativead/a/a;->k:Lcom/anythink/core/b/e;

    invoke-virtual {v0}, Lcom/anythink/core/b/e;->start()Landroid/os/CountDownTimer;

    .line 110
    return-void
.end method

.method public final a(Lcom/anythink/nativead/api/ATNativeOpenSetting;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 113
    iget-object v1, p0, Lcom/anythink/nativead/a/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/anythink/core/c/d;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_1b

    .line 115
    invoke-virtual {v1}, Lcom/anythink/core/c/c;->q()I

    move-result v2

    if-ne v2, v0, :cond_1c

    :goto_13
    iput-boolean v0, p1, Lcom/anythink/nativead/api/ATNativeOpenSetting;->isAutoRefresh:Z

    .line 116
    invoke-virtual {v1}, Lcom/anythink/core/c/c;->r()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/anythink/nativead/api/ATNativeOpenSetting;->autoRefreshTime:J

    .line 118
    :cond_1b
    return-void

    .line 115
    :cond_1c
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public final a(Ljava/util/Map;Lcom/anythink/nativead/api/ATNativeNetworkListener;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/nativead/api/ATNativeNetworkListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    iput-object p1, p0, Lcom/anythink/nativead/a/a;->n:Ljava/util/Map;

    .line 70
    iget-object v1, p0, Lcom/anythink/nativead/a/a;->c:Landroid/content/Context;

    const-string v2, "0"

    iget-object v3, p0, Lcom/anythink/nativead/a/a;->e:Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Lcom/anythink/nativead/a/a$1;

    invoke-direct {v5, p0, p2}, Lcom/anythink/nativead/a/a$1;-><init>(Lcom/anythink/nativead/a/a;Lcom/anythink/nativead/api/ATNativeNetworkListener;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/nativead/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/anythink/core/b/d$a;)V

    .line 102
    return-void
.end method

.method public final g()Lcom/anythink/core/b/c/a;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-static {}, Lcom/anythink/core/b/a;->a()Lcom/anythink/core/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/nativead/a/a;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/anythink/nativead/a/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/anythink/core/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Lcom/anythink/core/b/c/a;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_31

    invoke-virtual {v1}, Lcom/anythink/core/b/c/a;->i()Lcom/anythink/core/b/c/e;

    move-result-object v2

    instance-of v2, v2, Lcom/anythink/nativead/unitgroup/a;

    if-eqz v2, :cond_31

    invoke-virtual {v1}, Lcom/anythink/core/b/c/a;->h()Lcom/anythink/core/b/a/b;

    move-result-object v2

    instance-of v2, v2, Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;

    if-eqz v2, :cond_31

    .line 52
    invoke-virtual {v1}, Lcom/anythink/core/b/c/a;->i()Lcom/anythink/core/b/c/e;

    move-result-object v0

    check-cast v0, Lcom/anythink/nativead/unitgroup/a;

    .line 53
    invoke-virtual {v1}, Lcom/anythink/core/b/c/a;->h()Lcom/anythink/core/b/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/b/a/b;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/anythink/nativead/unitgroup/a;->setTrackingInfo(Lcom/anythink/core/b/c/b;)V

    move-object v0, v1

    .line 56
    :cond_31
    return-object v0
.end method
