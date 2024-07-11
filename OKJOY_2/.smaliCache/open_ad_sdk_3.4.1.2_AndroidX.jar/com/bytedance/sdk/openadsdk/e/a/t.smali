.class Lcom/bytedance/sdk/openadsdk/e/a/t;
.super Ljava/lang/Object;
.source "PermissionChecker.java"


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/bytedance/sdk/openadsdk/e/a/v;

.field private final d:Lcom/bytedance/sdk/openadsdk/e/a/u;

.field private e:Lcom/bytedance/sdk/openadsdk/e/a/k$b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/e/a/u;Ljava/util/Set;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/e/a/u;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/bytedance/sdk/openadsdk/e/a/q;->a:Lcom/bytedance/sdk/openadsdk/e/a/v;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/t;->c:Lcom/bytedance/sdk/openadsdk/e/a/v;

    .line 26
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/e/a/t;->d:Lcom/bytedance/sdk/openadsdk/e/a/u;

    .line 27
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1, p2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/e/a/t;->a:Ljava/util/Set;

    .line 28
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1, p3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/e/a/t;->b:Ljava/util/Set;

    .line 29
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/e/a/b;Z)Lcom/bytedance/sdk/openadsdk/e/a/w;
    .registers 6

    .line 131
    const/4 v0, 0x0

    if-eqz p3, :cond_3f

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/e/a/t;->d:Lcom/bytedance/sdk/openadsdk/e/a/u;

    if-nez p3, :cond_8

    goto :goto_3f

    .line 134
    :cond_8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/e/a/t;->a:Ljava/util/Set;

    invoke-virtual {p3, p1, v1}, Lcom/bytedance/sdk/openadsdk/e/a/u;->a(Ljava/lang/String;Ljava/util/Set;)Lcom/bytedance/sdk/openadsdk/e/a/u$c;

    move-result-object p1

    .line 135
    iget-object p3, p1, Lcom/bytedance/sdk/openadsdk/e/a/u$c;->c:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/e/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1b

    .line 136
    return-object v0

    .line 137
    :cond_1b
    iget-object p3, p1, Lcom/bytedance/sdk/openadsdk/e/a/u$c;->b:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/e/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2a

    .line 138
    sget-object p1, Lcom/bytedance/sdk/openadsdk/e/a/w;->c:Lcom/bytedance/sdk/openadsdk/e/a/w;

    return-object p1

    .line 140
    :cond_2a
    iget-object p3, p1, Lcom/bytedance/sdk/openadsdk/e/a/u$c;->a:Lcom/bytedance/sdk/openadsdk/e/a/w;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/e/a/b;->b()Lcom/bytedance/sdk/openadsdk/e/a/w;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/openadsdk/e/a/w;->compareTo(Ljava/lang/Enum;)I

    move-result p2

    if-gez p2, :cond_38

    const/4 p2, 0x1

    goto :goto_39

    :cond_38
    const/4 p2, 0x0

    .line 141
    :goto_39
    if-eqz p2, :cond_3c

    .line 142
    return-object v0

    .line 144
    :cond_3c
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/e/a/u$c;->a:Lcom/bytedance/sdk/openadsdk/e/a/w;

    return-object p1

    .line 132
    :cond_3f
    :goto_3f
    return-object v0
.end method


# virtual methods
.method final declared-synchronized a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/e/a/b;)Lcom/bytedance/sdk/openadsdk/e/a/w;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/e/a/u$a;
        }
    .end annotation

    monitor-enter p0

    .line 86
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/e/a/t;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/e/a/b;Z)Lcom/bytedance/sdk/openadsdk/e/a/w;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object p1

    .line 86
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized a(ZLjava/lang/String;Lcom/bytedance/sdk/openadsdk/e/a/b;)Lcom/bytedance/sdk/openadsdk/e/a/w;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/e/a/u$a;
        }
    .end annotation

    monitor-enter p0

    .line 43
    :try_start_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_85

    .line 45
    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 46
    monitor-exit p0

    return-object v2

    .line 48
    :cond_e
    nop

    .line 49
    :try_start_f
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/e/a/t;->b:Ljava/util/Set;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/e/a/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 50
    sget-object v3, Lcom/bytedance/sdk/openadsdk/e/a/w;->a:Lcom/bytedance/sdk/openadsdk/e/a/w;

    goto :goto_1f

    .line 49
    :cond_1e
    move-object v3, v2

    .line 53
    :goto_1f
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/e/a/t;->a:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 54
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_56

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_55

    goto :goto_56

    .line 58
    :cond_55
    goto :goto_25

    .line 55
    :cond_56
    :goto_56
    sget-object v3, Lcom/bytedance/sdk/openadsdk/e/a/w;->c:Lcom/bytedance/sdk/openadsdk/e/a/w;

    .line 60
    :cond_58
    if-nez v3, :cond_74

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/t;->e:Lcom/bytedance/sdk/openadsdk/e/a/k$b;

    if-eqz v0, :cond_74

    invoke-interface {v0, p2}, Lcom/bytedance/sdk/openadsdk/e/a/k$b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/t;->e:Lcom/bytedance/sdk/openadsdk/e/a/k$b;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/e/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/bytedance/sdk/openadsdk/e/a/k$b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_6e
    .catchall {:try_start_f .. :try_end_6e} :catchall_85

    .line 63
    if-eqz v0, :cond_72

    .line 64
    monitor-exit p0

    return-object v2

    .line 66
    :cond_72
    :try_start_72
    sget-object v3, Lcom/bytedance/sdk/openadsdk/e/a/w;->c:Lcom/bytedance/sdk/openadsdk/e/a/w;

    .line 72
    :cond_74
    if-eqz p1, :cond_7b

    .line 73
    invoke-virtual {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/e/a/t;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/e/a/b;)Lcom/bytedance/sdk/openadsdk/e/a/w;

    move-result-object p1

    goto :goto_7f

    .line 75
    :cond_7b
    invoke-virtual {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/e/a/t;->b(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/e/a/b;)Lcom/bytedance/sdk/openadsdk/e/a/w;

    move-result-object p1
    :try_end_7f
    .catchall {:try_start_72 .. :try_end_7f} :catchall_85

    .line 77
    :goto_7f
    if-eqz p1, :cond_83

    .line 78
    monitor-exit p0

    return-object p1

    .line 80
    :cond_83
    monitor-exit p0

    return-object v3

    .line 42
    :catchall_85
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a(Lcom/bytedance/sdk/openadsdk/e/a/k$b;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/e/a/t;->e:Lcom/bytedance/sdk/openadsdk/e/a/k$b;

    .line 116
    return-void
.end method

.method a(Lcom/bytedance/sdk/openadsdk/e/a/v$a;)V
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/t;->c:Lcom/bytedance/sdk/openadsdk/e/a/v;

    if-eqz v0, :cond_7

    .line 120
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/e/a/v;->a(Lcom/bytedance/sdk/openadsdk/e/a/v$a;)V

    .line 122
    :cond_7
    return-void
.end method

.method final declared-synchronized b(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/e/a/b;)Lcom/bytedance/sdk/openadsdk/e/a/w;
    .registers 4

    monitor-enter p0

    .line 91
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/e/a/t;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/e/a/b;Z)Lcom/bytedance/sdk/openadsdk/e/a/w;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object p1

    .line 91
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method
