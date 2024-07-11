.class public final Lcom/tapjoy/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/app/Application;

.field private static b:I

.field private static final c:Lcom/tapjoy/internal/bt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/bt<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lcom/tapjoy/internal/bt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/bt<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Lcom/tapjoy/internal/bt;

    invoke-direct {v0}, Lcom/tapjoy/internal/bt;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/b;->c:Lcom/tapjoy/internal/bt;

    .line 26
    new-instance v0, Lcom/tapjoy/internal/at;

    invoke-direct {v0}, Lcom/tapjoy/internal/at;-><init>()V

    .line 27
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/b;->d:Ljava/util/Set;

    .line 28
    new-instance v0, Lcom/tapjoy/internal/bt;

    invoke-direct {v0}, Lcom/tapjoy/internal/bt;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/b;->e:Lcom/tapjoy/internal/bt;

    return-void
.end method

.method public static a()Landroid/app/Activity;
    .registers 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1107
    sget-object v0, Lcom/tapjoy/internal/b;->e:Lcom/tapjoy/internal/bt;

    invoke-virtual {v0}, Lcom/tapjoy/internal/bt;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 62
    nop

    .line 63
    if-nez v0, :cond_f

    .line 64
    invoke-static {}, Lcom/tapjoy/internal/b;->c()Landroid/app/Activity;

    move-result-object v0

    .line 66
    :cond_f
    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 2

    .line 99
    sget-object v0, Lcom/tapjoy/internal/b;->c:Lcom/tapjoy/internal/bt;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/bt;->a(Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public static declared-synchronized a(Landroid/app/Application;)V
    .registers 3

    const-class v0, Lcom/tapjoy/internal/b;

    monitor-enter v0

    .line 131
    :try_start_3
    sget-object v1, Lcom/tapjoy/internal/b;->a:Landroid/app/Application;

    if-eq v1, p0, :cond_9

    .line 132
    sput-object p0, Lcom/tapjoy/internal/b;->a:Landroid/app/Application;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    .line 134
    :cond_9
    monitor-exit v0

    return-void

    .line 130
    :catchall_b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b(Landroid/app/Activity;)V
    .registers 2

    .line 140
    sget v0, Lcom/tapjoy/internal/b;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tapjoy/internal/b;->b:I

    .line 141
    sget-object v0, Lcom/tapjoy/internal/b;->c:Lcom/tapjoy/internal/bt;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/bt;->a(Ljava/lang/Object;)V

    .line 142
    sget-object v0, Lcom/tapjoy/internal/b;->d:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method public static b()Z
    .registers 1

    .line 73
    sget v0, Lcom/tapjoy/internal/b;->b:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public static c()Landroid/app/Activity;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 81
    sget-object v0, Lcom/tapjoy/internal/b;->c:Lcom/tapjoy/internal/bt;

    invoke-virtual {v0}, Lcom/tapjoy/internal/bt;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 82
    if-eqz v0, :cond_b

    .line 83
    return-object v0

    .line 88
    :cond_b
    sget-object v0, Lcom/tapjoy/internal/b;->d:Ljava/util/Set;

    monitor-enter v0

    .line 89
    nop

    .line 1781
    :try_start_f
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/internal/jv;->a(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v1

    .line 89
    check-cast v1, Landroid/app/Activity;

    monitor-exit v0

    return-object v1

    .line 90
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public static c(Landroid/app/Activity;)V
    .registers 3

    .line 150
    sget v0, Lcom/tapjoy/internal/b;->b:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/tapjoy/internal/b;->b:I

    .line 151
    sget-object v0, Lcom/tapjoy/internal/b;->c:Lcom/tapjoy/internal/bt;

    .line 2032
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tapjoy/internal/bt;->a:Ljava/lang/ref/WeakReference;

    .line 152
    sget-object v0, Lcom/tapjoy/internal/b;->d:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 154
    sget p0, Lcom/tapjoy/internal/b;->b:I

    if-gez p0, :cond_17

    .line 155
    const/4 p0, 0x0

    sput p0, Lcom/tapjoy/internal/b;->b:I

    .line 157
    :cond_17
    return-void
.end method
