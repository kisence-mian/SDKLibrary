.class public final Lcom/tapjoy/internal/dw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/internal/di$a;


# static fields
.field public static a:Landroid/os/Handler;

.field private static c:Lcom/tapjoy/internal/dw;

.field private static d:Landroid/os/Handler;

.field private static final j:Ljava/lang/Runnable;

.field private static final k:Ljava/lang/Runnable;


# instance fields
.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Lcom/tapjoy/internal/dj;

.field private g:Lcom/tapjoy/internal/dx;

.field private h:Lcom/tapjoy/internal/ee;

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/tapjoy/internal/dw;

    invoke-direct {v0}, Lcom/tapjoy/internal/dw;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/dw;->c:Lcom/tapjoy/internal/dw;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tapjoy/internal/dw;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/internal/dw;->d:Landroid/os/Handler;

    new-instance v0, Lcom/tapjoy/internal/dw$2;

    invoke-direct {v0}, Lcom/tapjoy/internal/dw$2;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/dw;->j:Ljava/lang/Runnable;

    new-instance v0, Lcom/tapjoy/internal/dw$3;

    invoke-direct {v0}, Lcom/tapjoy/internal/dw$3;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/dw;->k:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/dw;->b:Ljava/util/List;

    new-instance v0, Lcom/tapjoy/internal/dx;

    invoke-direct {v0}, Lcom/tapjoy/internal/dx;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/dw;->g:Lcom/tapjoy/internal/dx;

    new-instance v0, Lcom/tapjoy/internal/dj;

    invoke-direct {v0}, Lcom/tapjoy/internal/dj;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/dw;->f:Lcom/tapjoy/internal/dj;

    new-instance v0, Lcom/tapjoy/internal/ee;

    new-instance v1, Lcom/tapjoy/internal/ea;

    invoke-direct {v1}, Lcom/tapjoy/internal/ea;-><init>()V

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/ee;-><init>(Lcom/tapjoy/internal/ea;)V

    iput-object v0, p0, Lcom/tapjoy/internal/dw;->h:Lcom/tapjoy/internal/ee;

    return-void
.end method

.method public static a()Lcom/tapjoy/internal/dw;
    .registers 1

    sget-object v0, Lcom/tapjoy/internal/dw;->c:Lcom/tapjoy/internal/dw;

    return-object v0
.end method

.method static synthetic a(Lcom/tapjoy/internal/dw;)Lcom/tapjoy/internal/ee;
    .registers 1

    iget-object p0, p0, Lcom/tapjoy/internal/dw;->h:Lcom/tapjoy/internal/ee;

    return-object p0
.end method

.method private a(J)V
    .registers 5

    iget-object v0, p0, Lcom/tapjoy/internal/dw;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1d

    iget-object v0, p0, Lcom/tapjoy/internal/dw;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    goto :goto_e

    :cond_1d
    return-void
.end method

.method private a(Landroid/view/View;Lcom/tapjoy/internal/di;Lorg/json/JSONObject;I)V
    .registers 6

    sget v0, Lcom/tapjoy/internal/ef;->a:I

    if-ne p4, v0, :cond_6

    const/4 p4, 0x1

    goto :goto_7

    :cond_6
    const/4 p4, 0x0

    :goto_7
    invoke-interface {p2, p1, p3, p0, p4}, Lcom/tapjoy/internal/di;->a(Landroid/view/View;Lorg/json/JSONObject;Lcom/tapjoy/internal/di$a;Z)V

    return-void
.end method

.method public static b()V
    .registers 4

    sget-object v0, Lcom/tapjoy/internal/dw;->d:Landroid/os/Handler;

    if-nez v0, :cond_1d

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tapjoy/internal/dw;->d:Landroid/os/Handler;

    sget-object v1, Lcom/tapjoy/internal/dw;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/tapjoy/internal/dw;->d:Landroid/os/Handler;

    sget-object v1, Lcom/tapjoy/internal/dw;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1d
    return-void
.end method

.method static synthetic b(Lcom/tapjoy/internal/dw;)V
    .registers 15

    .line 8000
    nop

    .line 9000
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/dw;->e:I

    .line 10000
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 9000
    iput-wide v1, p0, Lcom/tapjoy/internal/dw;->i:J

    .line 8000
    nop

    .line 11000
    iget-object v1, p0, Lcom/tapjoy/internal/dw;->g:Lcom/tapjoy/internal/dx;

    .line 12000
    invoke-static {}, Lcom/tapjoy/internal/dc;->a()Lcom/tapjoy/internal/dc;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_94

    .line 13000
    iget-object v2, v2, Lcom/tapjoy/internal/dc;->b:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    .line 12000
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_94

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tapjoy/internal/cx;

    invoke-virtual {v4}, Lcom/tapjoy/internal/cx;->c()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4}, Lcom/tapjoy/internal/cx;->d()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 14000
    iget-object v6, v4, Lcom/tapjoy/internal/cx;->f:Ljava/lang/String;

    .line 12000
    if-eqz v5, :cond_87

    .line 15000
    invoke-virtual {v5}, Landroid/view/View;->hasWindowFocus()Z

    move-result v7

    if-nez v7, :cond_41

    const-string v7, "noWindowFocus"

    goto :goto_67

    :cond_41
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    move-object v8, v5

    :goto_47
    if-eqz v8, :cond_61

    invoke-static {v8}, Lcom/tapjoy/internal/dq;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_51

    move-object v7, v9

    goto :goto_67

    :cond_51
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    instance-of v9, v8, Landroid/view/View;

    if-eqz v9, :cond_5f

    check-cast v8, Landroid/view/View;

    goto :goto_47

    :cond_5f
    move-object v8, v3

    goto :goto_47

    :cond_61
    iget-object v8, v1, Lcom/tapjoy/internal/dx;->d:Ljava/util/HashSet;

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    move-object v7, v3

    .line 12000
    :goto_67
    if-nez v7, :cond_77

    iget-object v7, v1, Lcom/tapjoy/internal/dx;->e:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v7, v1, Lcom/tapjoy/internal/dx;->a:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lcom/tapjoy/internal/dx;->a(Lcom/tapjoy/internal/cx;)V

    goto :goto_1e

    :cond_77
    iget-object v4, v1, Lcom/tapjoy/internal/dx;->f:Ljava/util/HashSet;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/tapjoy/internal/dx;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/tapjoy/internal/dx;->g:Ljava/util/HashMap;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    :cond_87
    iget-object v4, v1, Lcom/tapjoy/internal/dx;->f:Ljava/util/HashSet;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/tapjoy/internal/dx;->g:Ljava/util/HashMap;

    const-string v5, "noAdView"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 16000
    :cond_94
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 11000
    iget-object v4, p0, Lcom/tapjoy/internal/dw;->f:Lcom/tapjoy/internal/dj;

    .line 17000
    iget-object v4, v4, Lcom/tapjoy/internal/dj;->b:Lcom/tapjoy/internal/dk;

    .line 11000
    iget-object v5, p0, Lcom/tapjoy/internal/dw;->g:Lcom/tapjoy/internal/dx;

    .line 18000
    iget-object v5, v5, Lcom/tapjoy/internal/dx;->f:Ljava/util/HashSet;

    .line 11000
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_100

    iget-object v5, p0, Lcom/tapjoy/internal/dw;->g:Lcom/tapjoy/internal/dx;

    .line 19000
    iget-object v5, v5, Lcom/tapjoy/internal/dx;->f:Ljava/util/HashSet;

    .line 11000
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_ae
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_100

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v3}, Lcom/tapjoy/internal/di;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v10

    iget-object v7, p0, Lcom/tapjoy/internal/dw;->g:Lcom/tapjoy/internal/dx;

    .line 20000
    iget-object v7, v7, Lcom/tapjoy/internal/dx;->c:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 11000
    nop

    .line 21000
    iget-object v8, p0, Lcom/tapjoy/internal/dw;->f:Lcom/tapjoy/internal/dj;

    .line 22000
    iget-object v8, v8, Lcom/tapjoy/internal/dj;->a:Lcom/tapjoy/internal/dl;

    .line 21000
    iget-object v9, p0, Lcom/tapjoy/internal/dw;->g:Lcom/tapjoy/internal/dx;

    .line 23000
    iget-object v9, v9, Lcom/tapjoy/internal/dx;->g:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 21000
    if-eqz v9, :cond_e6

    invoke-interface {v8, v7}, Lcom/tapjoy/internal/di;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/tapjoy/internal/dn;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {v7, v9}, Lcom/tapjoy/internal/dn;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {v10, v7}, Lcom/tapjoy/internal/dn;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 11000
    :cond_e6
    invoke-static {v10}, Lcom/tapjoy/internal/dn;->a(Lorg/json/JSONObject;)V

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v9, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/tapjoy/internal/dw;->h:Lcom/tapjoy/internal/ee;

    .line 24000
    iget-object v6, v8, Lcom/tapjoy/internal/ee;->a:Lcom/tapjoy/internal/ea;

    new-instance v13, Lcom/tapjoy/internal/ec;

    move-object v7, v13

    move-wide v11, v1

    invoke-direct/range {v7 .. v12}, Lcom/tapjoy/internal/ec;-><init>(Lcom/tapjoy/internal/dz$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    invoke-virtual {v6, v13}, Lcom/tapjoy/internal/ea;->a(Lcom/tapjoy/internal/dz;)V

    .line 11000
    goto :goto_ae

    :cond_100
    iget-object v5, p0, Lcom/tapjoy/internal/dw;->g:Lcom/tapjoy/internal/dx;

    .line 25000
    iget-object v5, v5, Lcom/tapjoy/internal/dx;->e:Ljava/util/HashSet;

    .line 11000
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_12a

    invoke-interface {v4, v3}, Lcom/tapjoy/internal/di;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v10

    sget v5, Lcom/tapjoy/internal/ef;->a:I

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/tapjoy/internal/dw;->a(Landroid/view/View;Lcom/tapjoy/internal/di;Lorg/json/JSONObject;I)V

    invoke-static {v10}, Lcom/tapjoy/internal/dn;->a(Lorg/json/JSONObject;)V

    iget-object v8, p0, Lcom/tapjoy/internal/dw;->h:Lcom/tapjoy/internal/ee;

    iget-object v3, p0, Lcom/tapjoy/internal/dw;->g:Lcom/tapjoy/internal/dx;

    .line 26000
    iget-object v9, v3, Lcom/tapjoy/internal/dx;->e:Ljava/util/HashSet;

    .line 11000
    nop

    .line 27000
    iget-object v3, v8, Lcom/tapjoy/internal/ee;->a:Lcom/tapjoy/internal/ea;

    new-instance v4, Lcom/tapjoy/internal/ed;

    move-object v7, v4

    move-wide v11, v1

    invoke-direct/range {v7 .. v12}, Lcom/tapjoy/internal/ed;-><init>(Lcom/tapjoy/internal/dz$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/ea;->a(Lcom/tapjoy/internal/dz;)V

    .line 11000
    goto :goto_12f

    :cond_12a
    iget-object v1, p0, Lcom/tapjoy/internal/dw;->h:Lcom/tapjoy/internal/ee;

    invoke-virtual {v1}, Lcom/tapjoy/internal/ee;->b()V

    :goto_12f
    iget-object v1, p0, Lcom/tapjoy/internal/dw;->g:Lcom/tapjoy/internal/dx;

    .line 28000
    iget-object v2, v1, Lcom/tapjoy/internal/dx;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, v1, Lcom/tapjoy/internal/dx;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, v1, Lcom/tapjoy/internal/dx;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, v1, Lcom/tapjoy/internal/dx;->d:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    iget-object v2, v1, Lcom/tapjoy/internal/dx;->e:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    iget-object v2, v1, Lcom/tapjoy/internal/dx;->f:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    iget-object v2, v1, Lcom/tapjoy/internal/dx;->g:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iput-boolean v0, v1, Lcom/tapjoy/internal/dx;->h:Z

    .line 8000
    nop

    .line 30000
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 29000
    iget-wide v2, p0, Lcom/tapjoy/internal/dw;->i:J

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/dw;->a(J)V

    return-void
.end method

.method public static c()V
    .registers 2

    sget-object v0, Lcom/tapjoy/internal/dw;->d:Landroid/os/Handler;

    if-eqz v0, :cond_c

    sget-object v1, Lcom/tapjoy/internal/dw;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/internal/dw;->d:Landroid/os/Handler;

    :cond_c
    return-void
.end method

.method static synthetic d()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/tapjoy/internal/dw;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/Runnable;
    .registers 1

    sget-object v0, Lcom/tapjoy/internal/dw;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/Runnable;
    .registers 1

    sget-object v0, Lcom/tapjoy/internal/dw;->k:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/tapjoy/internal/di;Lorg/json/JSONObject;)V
    .registers 9

    .line 1000
    invoke-static {p1}, Lcom/tapjoy/internal/dq;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-nez v0, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lcom/tapjoy/internal/dw;->g:Lcom/tapjoy/internal/dx;

    .line 2000
    iget-object v3, v0, Lcom/tapjoy/internal/dx;->d:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    sget v0, Lcom/tapjoy/internal/ef;->a:I

    goto :goto_24

    :cond_1b
    iget-boolean v0, v0, Lcom/tapjoy/internal/dx;->h:Z

    if-eqz v0, :cond_22

    sget v0, Lcom/tapjoy/internal/ef;->b:I

    goto :goto_24

    :cond_22
    sget v0, Lcom/tapjoy/internal/ef;->c:I

    :goto_24
    sget v3, Lcom/tapjoy/internal/ef;->c:I

    if-ne v0, v3, :cond_29

    return-void

    :cond_29
    invoke-interface {p2, p1}, Lcom/tapjoy/internal/di;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {p3, v3}, Lcom/tapjoy/internal/dn;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 3000
    iget-object p3, p0, Lcom/tapjoy/internal/dw;->g:Lcom/tapjoy/internal/dx;

    .line 4000
    iget-object v4, p3, Lcom/tapjoy/internal/dx;->a:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_3c

    const/4 p3, 0x0

    goto :goto_4c

    :cond_3c
    iget-object v4, p3, Lcom/tapjoy/internal/dx;->a:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_4b

    iget-object p3, p3, Lcom/tapjoy/internal/dx;->a:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    move-object p3, v4

    .line 3000
    :goto_4c
    if-eqz p3, :cond_56

    invoke-static {v3, p3}, Lcom/tapjoy/internal/dn;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/tapjoy/internal/dw;->g:Lcom/tapjoy/internal/dx;

    .line 5000
    iput-boolean v2, p3, Lcom/tapjoy/internal/dx;->h:Z

    .line 3000
    const/4 v1, 0x1

    :cond_56
    if-nez v1, :cond_71

    .line 6000
    iget-object p3, p0, Lcom/tapjoy/internal/dw;->g:Lcom/tapjoy/internal/dx;

    .line 7000
    iget-object v1, p3, Lcom/tapjoy/internal/dx;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/dx$a;

    if-eqz v1, :cond_69

    iget-object p3, p3, Lcom/tapjoy/internal/dx;->b:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6000
    :cond_69
    if-eqz v1, :cond_6e

    invoke-static {v3, v1}, Lcom/tapjoy/internal/dn;->a(Lorg/json/JSONObject;Lcom/tapjoy/internal/dx$a;)V

    :cond_6e
    invoke-direct {p0, p1, p2, v3, v0}, Lcom/tapjoy/internal/dw;->a(Landroid/view/View;Lcom/tapjoy/internal/di;Lorg/json/JSONObject;I)V

    :cond_71
    iget p1, p0, Lcom/tapjoy/internal/dw;->e:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/tapjoy/internal/dw;->e:I

    return-void
.end method
