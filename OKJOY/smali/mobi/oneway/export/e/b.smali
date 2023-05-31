.class public Lmobi/oneway/export/e/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lmobi/oneway/export/e/b;

.field private static f:Landroid/os/Handler;


# instance fields
.field private volatile b:Z

.field private c:J

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lmobi/oneway/export/e/b;->f:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lmobi/oneway/export/e/b;->c:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmobi/oneway/export/e/b;->d:J

    return-void
.end method

.method public static a()Lmobi/oneway/export/e/b;
    .registers 1

    sget-object v0, Lmobi/oneway/export/e/b;->e:Lmobi/oneway/export/e/b;

    if-nez v0, :cond_b

    new-instance v0, Lmobi/oneway/export/e/b;

    invoke-direct {v0}, Lmobi/oneway/export/e/b;-><init>()V

    sput-object v0, Lmobi/oneway/export/e/b;->e:Lmobi/oneway/export/e/b;

    :cond_b
    sget-object v0, Lmobi/oneway/export/e/b;->e:Lmobi/oneway/export/e/b;

    return-object v0
.end method

.method private static e()V
    .registers 3

    sget-object v0, Lmobi/oneway/export/e/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    sget-object v2, Lmobi/oneway/export/e/b;->f:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_18
    sget-object v0, Lmobi/oneway/export/e/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private f()V
    .registers 2

    sget-object v0, Lmobi/oneway/export/e/b;->a:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmobi/oneway/export/e/b;->a:Ljava/util/List;

    :cond_b
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .registers 3

    :try_start_0
    iget-boolean v0, p0, Lmobi/oneway/export/e/b;->b:Z

    if-eqz v0, :cond_a

    sget-object v0, Lmobi/oneway/export/e/b;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_9
    return-void

    :cond_a
    invoke-direct {p0}, Lmobi/oneway/export/e/b;->f()V

    sget-object v0, Lmobi/oneway/export/e/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_9

    :catch_13
    move-exception v0

    goto :goto_9
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/oneway/export/e/b;->b:Z

    invoke-direct {p0}, Lmobi/oneway/export/e/b;->f()V

    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .registers 3

    :try_start_0
    sget-object v0, Lmobi/oneway/export/e/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/oneway/export/e/b;->b:Z

    invoke-static {}, Lmobi/oneway/export/e/b;->e()V

    return-void
.end method

.method public c(Ljava/lang/Runnable;)V
    .registers 3

    sget-object v0, Lmobi/oneway/export/e/b;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lmobi/oneway/export/e/b;->b:Z

    return v0
.end method
