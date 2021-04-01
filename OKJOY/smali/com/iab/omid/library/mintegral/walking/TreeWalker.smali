.class public Lcom/iab/omid/library/mintegral/walking/TreeWalker;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iab/omid/library/mintegral/c/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iab/omid/library/mintegral/walking/TreeWalker$TreeWalkerTimeLogger;
    }
.end annotation


# static fields
.field private static a:Lcom/iab/omid/library/mintegral/walking/TreeWalker;

.field private static b:Landroid/os/Handler;

.field private static c:Landroid/os/Handler;

.field private static final j:Ljava/lang/Runnable;

.field private static final k:Ljava/lang/Runnable;


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iab/omid/library/mintegral/walking/TreeWalker$TreeWalkerTimeLogger;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Lcom/iab/omid/library/mintegral/c/b;

.field private g:Lcom/iab/omid/library/mintegral/walking/a;

.field private h:Lcom/iab/omid/library/mintegral/walking/b;

.field private i:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;

    invoke-direct {v0}, Lcom/iab/omid/library/mintegral/walking/TreeWalker;-><init>()V

    sput-object v0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->a:Lcom/iab/omid/library/mintegral/walking/TreeWalker;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->c:Landroid/os/Handler;

    new-instance v0, Lcom/iab/omid/library/mintegral/walking/TreeWalker$2;

    invoke-direct {v0}, Lcom/iab/omid/library/mintegral/walking/TreeWalker$2;-><init>()V

    sput-object v0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->j:Ljava/lang/Runnable;

    new-instance v0, Lcom/iab/omid/library/mintegral/walking/TreeWalker$3;

    invoke-direct {v0}, Lcom/iab/omid/library/mintegral/walking/TreeWalker$3;-><init>()V

    sput-object v0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->k:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->d:Ljava/util/List;

    new-instance v0, Lcom/iab/omid/library/mintegral/walking/a;

    invoke-direct {v0}, Lcom/iab/omid/library/mintegral/walking/a;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->g:Lcom/iab/omid/library/mintegral/walking/a;

    new-instance v0, Lcom/iab/omid/library/mintegral/c/b;

    invoke-direct {v0}, Lcom/iab/omid/library/mintegral/c/b;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->f:Lcom/iab/omid/library/mintegral/c/b;

    new-instance v0, Lcom/iab/omid/library/mintegral/walking/b;

    new-instance v1, Lcom/iab/omid/library/mintegral/walking/a/c;

    invoke-direct {v1}, Lcom/iab/omid/library/mintegral/walking/a/c;-><init>()V

    invoke-direct {v0, v1}, Lcom/iab/omid/library/mintegral/walking/b;-><init>(Lcom/iab/omid/library/mintegral/walking/a/c;)V

    iput-object v0, p0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->h:Lcom/iab/omid/library/mintegral/walking/b;

    return-void
.end method

.method static synthetic a(Lcom/iab/omid/library/mintegral/walking/TreeWalker;)Lcom/iab/omid/library/mintegral/walking/b;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->h:Lcom/iab/omid/library/mintegral/walking/b;

    return-object v0
.end method

.method private a(J)V
    .registers 6

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_20

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iab/omid/library/mintegral/walking/TreeWalker$TreeWalkerTimeLogger;

    iget v2, p0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->e:I

    invoke-interface {v0, v2, p1, p2}, Lcom/iab/omid/library/mintegral/walking/TreeWalker$TreeWalkerTimeLogger;->onTreeProcessed(IJ)V

    goto :goto_e

    :cond_20
    return-void
.end method

.method private a(Landroid/view/View;Lcom/iab/omid/library/mintegral/c/a;Lorg/json/JSONObject;Lcom/iab/omid/library/mintegral/walking/c;)V
    .registers 6

    sget-object v0, Lcom/iab/omid/library/mintegral/walking/c;->a:Lcom/iab/omid/library/mintegral/walking/c;

    if-ne p4, v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-interface {p2, p1, p3, p0, v0}, Lcom/iab/omid/library/mintegral/c/a;->a(Landroid/view/View;Lorg/json/JSONObject;Lcom/iab/omid/library/mintegral/c/a$a;Z)V

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private a(Landroid/view/View;Lorg/json/JSONObject;)Z
    .registers 4

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->g:Lcom/iab/omid/library/mintegral/walking/a;

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/mintegral/walking/a;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {p2, v0}, Lcom/iab/omid/library/mintegral/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->g:Lcom/iab/omid/library/mintegral/walking/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/walking/a;->e()V

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private b(Landroid/view/View;Lorg/json/JSONObject;)V
    .registers 4

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->g:Lcom/iab/omid/library/mintegral/walking/a;

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/mintegral/walking/a;->b(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {p2, v0}, Lcom/iab/omid/library/mintegral/d/b;->a(Lorg/json/JSONObject;Ljava/util/List;)V

    :cond_b
    return-void
.end method

.method static synthetic b(Lcom/iab/omid/library/mintegral/walking/TreeWalker;)V
    .registers 1

    invoke-direct {p0}, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->h()V

    return-void
.end method

.method static synthetic e()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/Runnable;
    .registers 1

    sget-object v0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/Runnable;
    .registers 1

    sget-object v0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->k:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static getInstance()Lcom/iab/omid/library/mintegral/walking/TreeWalker;
    .registers 1

    sget-object v0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->a:Lcom/iab/omid/library/mintegral/walking/TreeWalker;

    return-object v0
.end method

.method private h()V
    .registers 1

    invoke-direct {p0}, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->i()V

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->d()V

    invoke-direct {p0}, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->j()V

    return-void
.end method

.method private i()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->e:I

    invoke-static {}, Lcom/iab/omid/library/mintegral/d/d;->a()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->i:D

    return-void
.end method

.method private j()V
    .registers 5

    invoke-static {}, Lcom/iab/omid/library/mintegral/d/d;->a()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->i:D

    sub-double/2addr v0, v2

    double-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->a(J)V

    return-void
.end method

.method private k()V
    .registers 5

    sget-object v0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->c:Landroid/os/Handler;

    if-nez v0, :cond_1f

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->c:Landroid/os/Handler;

    sget-object v0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->c:Landroid/os/Handler;

    sget-object v1, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->c:Landroid/os/Handler;

    sget-object v1, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1f
    return-void
.end method

.method private l()V
    .registers 3

    sget-object v0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->c:Landroid/os/Handler;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->c:Landroid/os/Handler;

    sget-object v1, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->c:Landroid/os/Handler;

    :cond_e
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-direct {p0}, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->k()V

    return-void
.end method

.method public a(Landroid/view/View;Lcom/iab/omid/library/mintegral/c/a;Lorg/json/JSONObject;)V
    .registers 7

    invoke-static {p1}, Lcom/iab/omid/library/mintegral/d/f;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->g:Lcom/iab/omid/library/mintegral/walking/a;

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/mintegral/walking/a;->c(Landroid/view/View;)Lcom/iab/omid/library/mintegral/walking/c;

    move-result-object v0

    sget-object v1, Lcom/iab/omid/library/mintegral/walking/c;->c:Lcom/iab/omid/library/mintegral/walking/c;

    if-eq v0, v1, :cond_6

    invoke-interface {p2, p1}, Lcom/iab/omid/library/mintegral/c/a;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/iab/omid/library/mintegral/d/b;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-direct {p0, p1, v1}, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->a(Landroid/view/View;Lorg/json/JSONObject;)Z

    move-result v2

    if-nez v2, :cond_24

    invoke-direct {p0, p1, v1}, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->b(Landroid/view/View;Lorg/json/JSONObject;)V

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->a(Landroid/view/View;Lcom/iab/omid/library/mintegral/c/a;Lorg/json/JSONObject;Lcom/iab/omid/library/mintegral/walking/c;)V

    :cond_24
    iget v0, p0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->e:I

    goto :goto_6
.end method

.method public addTimeLogger(Lcom/iab/omid/library/mintegral/walking/TreeWalker$TreeWalkerTimeLogger;)V
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public b()V
    .registers 3

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->c()V

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->b:Landroid/os/Handler;

    new-instance v1, Lcom/iab/omid/library/mintegral/walking/TreeWalker$1;

    invoke-direct {v1, p0}, Lcom/iab/omid/library/mintegral/walking/TreeWalker$1;-><init>(Lcom/iab/omid/library/mintegral/walking/TreeWalker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c()V
    .registers 1

    invoke-direct {p0}, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->l()V

    return-void
.end method

.method d()V
    .registers 8
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->g:Lcom/iab/omid/library/mintegral/walking/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/walking/a;->c()V

    invoke-static {}, Lcom/iab/omid/library/mintegral/d/d;->a()D

    move-result-wide v0

    iget-object v2, p0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->f:Lcom/iab/omid/library/mintegral/c/b;

    invoke-virtual {v2}, Lcom/iab/omid/library/mintegral/c/b;->a()Lcom/iab/omid/library/mintegral/c/a;

    move-result-object v2

    iget-object v3, p0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->g:Lcom/iab/omid/library/mintegral/walking/a;

    invoke-virtual {v3}, Lcom/iab/omid/library/mintegral/walking/a;->b()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_2b

    invoke-interface {v2, v6}, Lcom/iab/omid/library/mintegral/c/a;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->h:Lcom/iab/omid/library/mintegral/walking/b;

    iget-object v5, p0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->g:Lcom/iab/omid/library/mintegral/walking/a;

    invoke-virtual {v5}, Lcom/iab/omid/library/mintegral/walking/a;->b()Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v4, v3, v5, v0, v1}, Lcom/iab/omid/library/mintegral/walking/b;->b(Lorg/json/JSONObject;Ljava/util/HashSet;D)V

    :cond_2b
    iget-object v3, p0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->g:Lcom/iab/omid/library/mintegral/walking/a;

    invoke-virtual {v3}, Lcom/iab/omid/library/mintegral/walking/a;->a()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_54

    invoke-interface {v2, v6}, Lcom/iab/omid/library/mintegral/c/a;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    sget-object v4, Lcom/iab/omid/library/mintegral/walking/c;->a:Lcom/iab/omid/library/mintegral/walking/c;

    invoke-direct {p0, v6, v2, v3, v4}, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->a(Landroid/view/View;Lcom/iab/omid/library/mintegral/c/a;Lorg/json/JSONObject;Lcom/iab/omid/library/mintegral/walking/c;)V

    invoke-static {v3}, Lcom/iab/omid/library/mintegral/d/b;->a(Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->h:Lcom/iab/omid/library/mintegral/walking/b;

    iget-object v4, p0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->g:Lcom/iab/omid/library/mintegral/walking/a;

    invoke-virtual {v4}, Lcom/iab/omid/library/mintegral/walking/a;->a()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/iab/omid/library/mintegral/walking/b;->a(Lorg/json/JSONObject;Ljava/util/HashSet;D)V

    :goto_4e
    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->g:Lcom/iab/omid/library/mintegral/walking/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/walking/a;->d()V

    return-void

    :cond_54
    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->h:Lcom/iab/omid/library/mintegral/walking/b;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/walking/b;->a()V

    goto :goto_4e
.end method

.method public removeTimeLogger(Lcom/iab/omid/library/mintegral/walking/TreeWalker$TreeWalkerTimeLogger;)V
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method
