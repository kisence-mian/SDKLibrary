.class public Lcom/anythink/core/c/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/c/d$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lcom/anythink/core/c/d;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/c/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-class v0, Lcom/anythink/core/c/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/c/d;->a:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/anythink/core/c/d;->b:Lcom/anythink/core/c/d;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/c/d;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    iput-object p1, p0, Lcom/anythink/core/c/d;->c:Landroid/content/Context;

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/c/d;)Landroid/content/Context;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/anythink/core/c/d;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/anythink/core/c/d;
    .registers 3

    const-class v0, Lcom/anythink/core/c/d;

    monitor-enter v0

    .line 58
    :try_start_3
    sget-object v1, Lcom/anythink/core/c/d;->b:Lcom/anythink/core/c/d;

    if-nez v1, :cond_18

    .line 59
    monitor-enter v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1c

    .line 60
    :try_start_8
    sget-object v1, Lcom/anythink/core/c/d;->b:Lcom/anythink/core/c/d;

    if-nez v1, :cond_13

    .line 61
    new-instance v1, Lcom/anythink/core/c/d;

    invoke-direct {v1, p0}, Lcom/anythink/core/c/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/anythink/core/c/d;->b:Lcom/anythink/core/c/d;

    .line 63
    :cond_13
    monitor-exit v0

    goto :goto_18

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_15

    :try_start_17
    throw p0

    .line 65
    :cond_18
    :goto_18
    sget-object p0, Lcom/anythink/core/c/d;->b:Lcom/anythink/core/c/d;
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1c

    monitor-exit v0

    return-object p0

    .line 57
    :catchall_1c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private b()V
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/anythink/core/c/d;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 70
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/anythink/core/c/c;
    .registers 8

    .line 97
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v0

    .line 98
    const-string v1, ""

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    move-object v0, v1

    .line 99
    :goto_e
    iget-object v2, p0, Lcom/anythink/core/c/d;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 100
    iget-object v1, p0, Lcom/anythink/core/c/d;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/c/c;

    return-object p1

    .line 102
    :cond_41
    iget-object v2, p0, Lcom/anythink/core/c/d;->c:Landroid/content/Context;

    sget-object v3, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_PL_SY"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/anythink/core/common/g/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_83

    .line 104
    invoke-static {v1}, Lcom/anythink/core/c/c;->b(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v1

    .line 105
    if-eqz v1, :cond_82

    .line 106
    iget-object v2, p0, Lcom/anythink/core/c/d;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_82
    return-object v1

    .line 110
    :cond_83
    sget-object v1, Lcom/anythink/core/c/d;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no key["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()V
    .registers 4

    .line 73
    iget-object v0, p0, Lcom/anythink/core/c/d;->c:Landroid/content/Context;

    sget-object v1, Lcom/anythink/core/common/b/e;->y:Ljava/lang/String;

    .line 1021
    if-eqz v0, :cond_1b

    .line 1025
    const/4 v2, 0x0

    :try_start_7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1026
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_19
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_16} :catch_17

    .line 1031
    return-void

    .line 1029
    :catch_17
    move-exception v0

    goto :goto_1b

    .line 1027
    :catch_19
    move-exception v0

    .line 1031
    return-void

    .line 74
    :cond_1b
    :goto_1b
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/lang/String;)V
    .registers 8

    .line 80
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const-string v0, ""

    .line 83
    :goto_d
    monitor-enter p0

    .line 84
    :try_start_e
    iget-object v1, p0, Lcom/anythink/core/c/d;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_4a

    .line 88
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2d

    const-string p4, ""

    .line 89
    :cond_2d
    sget-object p3, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "_PL_SY"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p2, p4}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void

    .line 85
    :catchall_4a
    move-exception p1

    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p1
.end method

.method public final a(Lcom/anythink/core/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/d$a;)V
    .registers 15

    .line 127
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v8, Lcom/anythink/core/c/d$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/anythink/core/c/d$1;-><init>(Lcom/anythink/core/c/d;Lcom/anythink/core/c/c;Ljava/lang/String;Lcom/anythink/core/c/d$a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 360
    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/anythink/core/c/c;
    .registers 5

    .line 116
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/anythink/core/c/d;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/c/c;

    return-object p1
.end method

.method public final c(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/d/p;",
            ">;"
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/anythink/core/c/d;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_6

    .line 365
    const/4 p1, 0x0

    return-object p1

    .line 368
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 369
    iget-object v1, p0, Lcom/anythink/core/c/d;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 371
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 372
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/c/c;

    .line 373
    invoke-virtual {v2}, Lcom/anythink/core/c/c;->y()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 374
    invoke-virtual {v2}, Lcom/anythink/core/c/c;->f()Ljava/util/List;

    move-result-object v2

    .line 375
    if-eqz v2, :cond_40

    .line 376
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 379
    :cond_40
    goto :goto_1d

    .line 381
    :cond_41
    return-object v1
.end method
