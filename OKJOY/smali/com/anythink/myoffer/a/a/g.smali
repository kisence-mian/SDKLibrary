.class Lcom/anythink/myoffer/a/a/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/myoffer/a/a/g$b;,
        Lcom/anythink/myoffer/a/a/g$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/anythink/myoffer/a/a/g$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-class v0, Lcom/anythink/myoffer/a/a/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/myoffer/a/a/g;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/myoffer/a/a/g;->b:Ljava/util/List;

    .line 17
    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/anythink/myoffer/a/a/g;-><init>()V

    return-void
.end method

.method public static a()Lcom/anythink/myoffer/a/a/g;
    .registers 1

    .prologue
    .line 20
    invoke-static {}, Lcom/anythink/myoffer/a/a/g$a;->a()Lcom/anythink/myoffer/a/a/g;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/anythink/myoffer/a/a/g$b;)V
    .registers 3

    .prologue
    .line 44
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 45
    monitor-exit p0

    return-void

    .line 44
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/g;->b:Ljava/util/List;

    if-eqz v0, :cond_1a

    .line 66
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/myoffer/a/a/g$b;

    .line 67
    invoke-interface {v0, p1}, Lcom/anythink/myoffer/a/a/g$b;->a(Ljava/lang/String;)V

    goto :goto_a

    .line 70
    :cond_1a
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/network/myoffer/MyOfferError;)V
    .registers 5

    .prologue
    .line 73
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/g;->b:Ljava/util/List;

    if-eqz v0, :cond_1a

    .line 74
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/myoffer/a/a/g$b;

    .line 75
    invoke-interface {v0, p1, p2}, Lcom/anythink/myoffer/a/a/g$b;->a(Ljava/lang/String;Lcom/anythink/network/myoffer/MyOfferError;)V

    goto :goto_a

    .line 78
    :cond_1a
    return-void
.end method

.method public final declared-synchronized b(Lcom/anythink/myoffer/a/a/g$b;)V
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 51
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 53
    const/4 v0, 0x0

    :goto_9
    if-ge v0, v2, :cond_22

    .line 54
    iget-object v3, p0, Lcom/anythink/myoffer/a/a/g;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_1c

    .line 59
    :goto_13
    if-eq v0, v1, :cond_1a

    .line 60
    iget-object v1, p0, Lcom/anythink/myoffer/a/a/g;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_1f

    .line 62
    :cond_1a
    monitor-exit p0

    return-void

    .line 53
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 51
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_22
    move v0, v1

    goto :goto_13
.end method
