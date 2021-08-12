.class public Lcom/anythink/basead/a/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field private static c:Lcom/anythink/basead/a/c;


# instance fields
.field b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/basead/c/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    const-class v0, Lcom/anythink/basead/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/basead/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/basead/a/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    return-void
.end method

.method public static declared-synchronized a()Lcom/anythink/basead/a/c;
    .registers 2

    const-class v0, Lcom/anythink/basead/a/c;

    monitor-enter v0

    .line 29
    :try_start_3
    sget-object v1, Lcom/anythink/basead/a/c;->c:Lcom/anythink/basead/a/c;

    if-nez v1, :cond_e

    .line 30
    new-instance v1, Lcom/anythink/basead/a/c;

    invoke-direct {v1}, Lcom/anythink/basead/a/c;-><init>()V

    sput-object v1, Lcom/anythink/basead/a/c;->c:Lcom/anythink/basead/a/c;

    .line 32
    :cond_e
    sget-object v1, Lcom/anythink/basead/a/c;->c:Lcom/anythink/basead/a/c;
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
.method public final a(ILjava/lang/String;)Lcom/anythink/basead/c/e;
    .registers 5

    .line 40
    iget-object v0, p0, Lcom/anythink/basead/a/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/basead/c/e;

    return-object p1
.end method

.method public final a(ILjava/lang/String;Lcom/anythink/basead/c/e;)V
    .registers 6

    .line 36
    iget-object v0, p0, Lcom/anythink/basead/a/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method
