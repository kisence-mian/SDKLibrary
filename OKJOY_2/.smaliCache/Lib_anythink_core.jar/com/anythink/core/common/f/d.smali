.class public final Lcom/anythink/core/common/f/d;
.super Lcom/anythink/core/common/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/core/common/j<",
        "Lcom/anythink/core/common/d/g;",
        ">;"
    }
.end annotation


# static fields
.field private static e:Lcom/anythink/core/common/f/d;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/anythink/core/common/j;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/f/d;)Landroid/content/Context;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/core/common/f/d;->d:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/anythink/core/common/f/d;
    .registers 3

    const-class v0, Lcom/anythink/core/common/f/d;

    monitor-enter v0

    .line 35
    :try_start_3
    sget-object v1, Lcom/anythink/core/common/f/d;->e:Lcom/anythink/core/common/f/d;

    if-nez v1, :cond_e

    .line 36
    new-instance v1, Lcom/anythink/core/common/f/d;

    invoke-direct {v1, p0}, Lcom/anythink/core/common/f/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/anythink/core/common/f/d;->e:Lcom/anythink/core/common/f/d;

    .line 38
    :cond_e
    sget-object p0, Lcom/anythink/core/common/f/d;->e:Lcom/anythink/core/common/f/d;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    .line 34
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic b(Lcom/anythink/core/common/f/d;)Landroid/content/Context;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/core/common/f/d;->d:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected final a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/d/g;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/f/d$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/core/common/f/d$1;-><init>(Lcom/anythink/core/common/f/d;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 72
    return-void
.end method
