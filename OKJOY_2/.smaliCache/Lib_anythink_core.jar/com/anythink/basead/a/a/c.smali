.class Lcom/anythink/basead/a/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/a/a/c$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lcom/anythink/basead/a/a/c;


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/basead/a/a/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const-class v0, Lcom/anythink/basead/a/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/basead/a/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/basead/a/a/c;->c:Ljava/util/List;

    .line 25
    return-void
.end method

.method public static declared-synchronized a()Lcom/anythink/basead/a/a/c;
    .registers 2

    const-class v0, Lcom/anythink/basead/a/a/c;

    monitor-enter v0

    .line 28
    :try_start_3
    sget-object v1, Lcom/anythink/basead/a/a/c;->b:Lcom/anythink/basead/a/a/c;

    if-nez v1, :cond_e

    .line 29
    new-instance v1, Lcom/anythink/basead/a/a/c;

    invoke-direct {v1}, Lcom/anythink/basead/a/a/c;-><init>()V

    sput-object v1, Lcom/anythink/basead/a/a/c;->b:Lcom/anythink/basead/a/a/c;

    .line 31
    :cond_e
    sget-object v1, Lcom/anythink/basead/a/a/c;->b:Lcom/anythink/basead/a/a/c;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 27
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/anythink/basead/a/a/c$a;)V
    .registers 3

    monitor-enter p0

    .line 51
    :try_start_1
    iget-object v0, p0, Lcom/anythink/basead/a/a/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 52
    monitor-exit p0

    return-void

    .line 50
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/anythink/basead/a/a/c;->c:Ljava/util/List;

    if-eqz v0, :cond_18

    .line 73
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/basead/a/a/c$a;

    .line 74
    invoke-interface {v1, p1}, Lcom/anythink/basead/a/a/c$a;->a(Ljava/lang/String;)V

    .line 75
    goto :goto_8

    .line 77
    :cond_18
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/basead/c/f;)V
    .registers 5

    .line 80
    iget-object v0, p0, Lcom/anythink/basead/a/a/c;->c:Ljava/util/List;

    if-eqz v0, :cond_18

    .line 81
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/basead/a/a/c$a;

    .line 82
    invoke-interface {v1, p1, p2}, Lcom/anythink/basead/a/a/c$a;->a(Ljava/lang/String;Lcom/anythink/basead/c/f;)V

    .line 83
    goto :goto_8

    .line 85
    :cond_18
    return-void
.end method

.method public final declared-synchronized b(Lcom/anythink/basead/a/a/c$a;)V
    .registers 6

    monitor-enter p0

    .line 58
    :try_start_1
    iget-object v0, p0, Lcom/anythink/basead/a/a/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 59
    nop

    .line 60
    const/4 v1, 0x0

    :goto_9
    const/4 v2, -0x1

    if-ge v1, v0, :cond_19

    .line 61
    iget-object v3, p0, Lcom/anythink/basead/a/a/c;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_16

    .line 62
    nop

    .line 63
    goto :goto_1a

    .line 60
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    move v1, v2

    .line 66
    :goto_1a
    if-eq v1, v2, :cond_21

    .line 67
    iget-object p1, p0, Lcom/anythink/basead/a/a/c;->c:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 69
    :cond_21
    monitor-exit p0

    return-void

    .line 57
    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method
