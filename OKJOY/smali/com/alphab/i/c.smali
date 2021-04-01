.class public Lcom/alphab/i/c;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alphab/i/c$b;,
        Lcom/alphab/i/c$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static volatile c:Lcom/alphab/i/c;


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/alphab/i/c$b;

.field private e:Lcom/alphab/i/c$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/alphab/i/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alphab/i/c;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alphab/i/c;->b:Ljava/lang/ref/WeakReference;

    .line 36
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/alphab/i/c;
    .registers 3

    .prologue
    .line 56
    sget-object v0, Lcom/alphab/i/c;->c:Lcom/alphab/i/c;

    if-nez v0, :cond_13

    .line 57
    const-class v1, Lcom/alphab/i/c;

    monitor-enter v1

    .line 58
    :try_start_7
    sget-object v0, Lcom/alphab/i/c;->c:Lcom/alphab/i/c;

    if-nez v0, :cond_12

    .line 59
    new-instance v0, Lcom/alphab/i/c;

    invoke-direct {v0, p0}, Lcom/alphab/i/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alphab/i/c;->c:Lcom/alphab/i/c;

    .line 61
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 63
    :cond_13
    sget-object v0, Lcom/alphab/i/c;->c:Lcom/alphab/i/c;

    return-object v0

    .line 61
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static synthetic a(Lcom/alphab/i/c;)Ljava/lang/ref/WeakReference;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alphab/i/c;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/alphab/i/c$b;
    .registers 2

    .prologue
    .line 70
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/alphab/i/c;->d:Lcom/alphab/i/c$b;

    if-nez v0, :cond_c

    .line 71
    new-instance v0, Lcom/alphab/i/c$b;

    invoke-direct {v0, p0}, Lcom/alphab/i/c$b;-><init>(Lcom/alphab/i/c;)V

    iput-object v0, p0, Lcom/alphab/i/c;->d:Lcom/alphab/i/c$b;

    .line 73
    :cond_c
    iget-object v0, p0, Lcom/alphab/i/c;->d:Lcom/alphab/i/c$b;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 70
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Lcom/alphab/i/c$a;
    .registers 2

    .prologue
    .line 81
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/alphab/i/c;->e:Lcom/alphab/i/c$a;

    if-nez v0, :cond_c

    .line 82
    new-instance v0, Lcom/alphab/i/c$a;

    invoke-direct {v0, p0}, Lcom/alphab/i/c$a;-><init>(Lcom/alphab/i/c;)V

    iput-object v0, p0, Lcom/alphab/i/c;->e:Lcom/alphab/i/c$a;

    .line 84
    :cond_c
    iget-object v0, p0, Lcom/alphab/i/c;->e:Lcom/alphab/i/c$a;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 81
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
