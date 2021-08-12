.class public Lcom/anythink/core/a/b;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/anythink/core/a/b;


# instance fields
.field final a:Ljava/lang/String;

.field b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/d/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-class v0, Lcom/anythink/core/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/a/b;->a:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/a/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static declared-synchronized a()Lcom/anythink/core/a/b;
    .registers 2

    const-class v0, Lcom/anythink/core/a/b;

    monitor-enter v0

    .line 29
    :try_start_3
    sget-object v1, Lcom/anythink/core/a/b;->c:Lcom/anythink/core/a/b;

    if-nez v1, :cond_e

    .line 30
    new-instance v1, Lcom/anythink/core/a/b;

    invoke-direct {v1}, Lcom/anythink/core/a/b;-><init>()V

    sput-object v1, Lcom/anythink/core/a/b;->c:Lcom/anythink/core/a/b;

    .line 32
    :cond_e
    sget-object v1, Lcom/anythink/core/a/b;->c:Lcom/anythink/core/a/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 28
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/c/c;)Z
    .registers 8

    .line 38
    invoke-virtual {p3}, Lcom/anythink/core/c/c;->M()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_8

    .line 39
    return v1

    .line 42
    :cond_8
    iget-object v0, p0, Lcom/anythink/core/a/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/d/c;

    .line 44
    if-nez v0, :cond_2d

    .line 45
    sget-object v0, Lcom/anythink/core/common/b/e;->r:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p1, v0, p2, v2}, Lcom/anythink/core/common/g/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 46
    new-instance v0, Lcom/anythink/core/common/d/c;

    invoke-direct {v0}, Lcom/anythink/core/common/d/c;-><init>()V

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 48
    invoke-virtual {v0, p1}, Lcom/anythink/core/common/d/c;->a(Ljava/lang/String;)V

    .line 50
    :cond_28
    iget-object p1, p0, Lcom/anythink/core/a/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_2d
    iget-object p1, p0, Lcom/anythink/core/a/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Load Cap info:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Lcom/anythink/core/common/d/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget p1, v0, Lcom/anythink/core/common/d/c;->a:I

    invoke-virtual {p3}, Lcom/anythink/core/c/c;->M()I

    move-result p2

    if-lt p1, p2, :cond_68

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v2, v0, Lcom/anythink/core/common/d/c;->b:J

    sub-long/2addr p1, v2

    invoke-virtual {p3}, Lcom/anythink/core/c/c;->N()J

    move-result-wide v2

    cmp-long p1, p1, v2

    if-gtz p1, :cond_68

    .line 56
    const/4 p1, 0x1

    return p1

    .line 59
    :cond_68
    return v1
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/c/c;)V
    .registers 9

    .line 64
    iget-object v0, p0, Lcom/anythink/core/a/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/d/c;

    .line 66
    if-nez v0, :cond_26

    .line 67
    sget-object v0, Lcom/anythink/core/common/b/e;->r:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p1, v0, p2, v1}, Lcom/anythink/core/common/g/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/anythink/core/common/d/c;

    invoke-direct {v1}, Lcom/anythink/core/common/d/c;-><init>()V

    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 70
    invoke-virtual {v1, v0}, Lcom/anythink/core/common/d/c;->a(Ljava/lang/String;)V

    .line 72
    :cond_20
    iget-object v0, p0, Lcom/anythink/core/a/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 76
    :cond_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/anythink/core/common/d/c;->b:J

    sub-long/2addr v1, v3

    invoke-virtual {p3}, Lcom/anythink/core/c/c;->N()J

    move-result-wide v3

    cmp-long p3, v1, v3

    if-lez p3, :cond_3e

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/anythink/core/common/d/c;->b:J

    .line 78
    const/4 p3, 0x0

    iput p3, v0, Lcom/anythink/core/common/d/c;->a:I

    .line 81
    :cond_3e
    iget p3, v0, Lcom/anythink/core/common/d/c;->a:I

    add-int/lit8 p3, p3, 0x1

    iput p3, v0, Lcom/anythink/core/common/d/c;->a:I

    .line 83
    iget-object p3, p0, Lcom/anythink/core/a/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "After save load cap:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/anythink/core/common/d/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object p3, Lcom/anythink/core/common/b/e;->r:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3, p2, v0}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method
