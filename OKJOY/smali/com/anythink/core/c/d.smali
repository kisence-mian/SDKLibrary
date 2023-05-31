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
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/c/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/anythink/core/c/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/c/d;->a:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/anythink/core/c/d;->b:Lcom/anythink/core/c/d;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/c/d;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    iput-object p1, p0, Lcom/anythink/core/c/d;->c:Landroid/content/Context;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/c/d;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/anythink/core/c/d;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/core/c/d;
    .registers 3

    .prologue
    .line 49
    sget-object v0, Lcom/anythink/core/c/d;->b:Lcom/anythink/core/c/d;

    if-nez v0, :cond_13

    .line 50
    const-class v1, Lcom/anythink/core/c/d;

    monitor-enter v1

    .line 51
    :try_start_7
    sget-object v0, Lcom/anythink/core/c/d;->b:Lcom/anythink/core/c/d;

    if-nez v0, :cond_12

    .line 52
    new-instance v0, Lcom/anythink/core/c/d;

    invoke-direct {v0, p0}, Lcom/anythink/core/c/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/anythink/core/c/d;->b:Lcom/anythink/core/c/d;

    .line 54
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 56
    :cond_13
    sget-object v0, Lcom/anythink/core/c/d;->b:Lcom/anythink/core/c/d;

    return-object v0

    .line 54
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private b()V
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/anythink/core/c/d;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 61
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/anythink/core/c/c;
    .registers 7

    .prologue
    .line 88
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->f()Ljava/lang/String;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_3d

    .line 90
    :goto_a
    iget-object v1, p0, Lcom/anythink/core/c/d;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 91
    iget-object v1, p0, Lcom/anythink/core/c/d;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/c/c;

    .line 102
    :goto_3c
    return-object v0

    .line 89
    :cond_3d
    const-string v0, ""

    goto :goto_a

    .line 93
    :cond_40
    iget-object v1, p0, Lcom/anythink/core/c/d;->c:Landroid/content/Context;

    sget-object v2, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_PL_SY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v1, v2, v3, v4}, Lcom/anythink/core/b/g/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_85

    .line 95
    invoke-static {v1}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_83

    .line 97
    iget-object v2, p0, Lcom/anythink/core/c/d;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_83
    move-object v0, v1

    .line 99
    goto :goto_3c

    .line 101
    :cond_85
    sget-object v1, Lcom/anythink/core/c/d;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no key["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x0

    goto :goto_3c
.end method

.method public final a()V
    .registers 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/anythink/core/c/d;->c:Landroid/content/Context;

    sget-object v1, Lcom/anythink/core/b/a/d;->q:Ljava/lang/String;

    .line 1012
    if-eqz v0, :cond_16

    .line 1014
    const/4 v2, 0x0

    :try_start_7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1015
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_19
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_16} :catch_17

    .line 1020
    :cond_16
    :goto_16
    return-void

    :catch_17
    move-exception v0

    goto :goto_16

    :catch_19
    move-exception v0

    goto :goto_16
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 71
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->f()Ljava/lang/String;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_47

    .line 74
    :goto_a
    monitor-enter p0

    .line 75
    :try_start_b
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

    .line 76
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_4a

    .line 79
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string p4, ""

    .line 80
    :cond_2a
    sget-object v1, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_PL_SY"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0, p4}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void

    .line 72
    :cond_47
    const-string v0, ""

    goto :goto_a

    .line 76
    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method public final a(Lcom/anythink/core/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/d$a;)V
    .registers 14

    .prologue
    .line 113
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v7

    new-instance v0, Lcom/anythink/core/c/d$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/anythink/core/c/d$1;-><init>(Lcom/anythink/core/c/d;Lcom/anythink/core/c/c;Ljava/lang/String;Lcom/anythink/core/c/d$a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 332
    return-void
.end method
