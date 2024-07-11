.class public Lcom/bytedance/embedapplog/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/bytedance/embedapplog/aq;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/bytedance/embedapplog/aq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/bytedance/embedapplog/t;->a:Ljava/util/LinkedList;

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/bytedance/embedapplog/t;->b:Ljava/util/LinkedList;

    return-void
.end method

.method public static a()V
    .registers 5

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 38
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 39
    sget-object v2, Lcom/bytedance/embedapplog/t;->a:Ljava/util/LinkedList;

    monitor-enter v2

    .line 40
    :try_start_d
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 41
    sget-object v3, Lcom/bytedance/embedapplog/t;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 42
    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 43
    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 44
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_87

    .line 45
    :goto_1c
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 46
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/embedapplog/aq;

    .line 47
    invoke-static {v2}, Lcom/bytedance/embedapplog/k;->a(Lcom/bytedance/embedapplog/aq;)V

    .line 48
    goto :goto_1c

    .line 49
    :cond_2c
    :goto_2c
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_86

    .line 50
    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/embedapplog/aq;

    .line 51
    const/4 v2, 0x0

    .line 52
    instance-of v3, v0, Lcom/bytedance/embedapplog/az;

    if-eqz v3, :cond_41

    .line 54
    move-object v2, v0

    check-cast v2, Lcom/bytedance/embedapplog/az;

    goto :goto_82

    .line 55
    :cond_41
    instance-of v3, v0, Lcom/bytedance/embedapplog/at;

    const/4 v4, 0x1

    if-eqz v3, :cond_6f

    .line 56
    check-cast v0, Lcom/bytedance/embedapplog/at;

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/at;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/at;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    new-instance v2, Lcom/bytedance/embedapplog/az;

    const-string v3, "16"

    invoke-direct {v2, v0, v3, v4}, Lcom/bytedance/embedapplog/az;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_81

    .line 59
    :cond_6f
    instance-of v3, v0, Lcom/bytedance/embedapplog/av;

    if-eqz v3, :cond_81

    .line 60
    check-cast v0, Lcom/bytedance/embedapplog/av;

    .line 61
    new-instance v2, Lcom/bytedance/embedapplog/az;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/av;->j()Ljava/lang/String;

    move-result-object v0

    const-string v3, "16"

    invoke-direct {v2, v0, v3, v4}, Lcom/bytedance/embedapplog/az;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_82

    .line 59
    :cond_81
    :goto_81
    nop

    .line 63
    :goto_82
    invoke-static {v2}, Lcom/bytedance/embedapplog/k;->a(Lcom/bytedance/embedapplog/aq;)V

    .line 64
    goto :goto_2c

    .line 65
    :cond_86
    return-void

    .line 44
    :catchall_87
    move-exception v0

    :try_start_88
    monitor-exit v2
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw v0
.end method

.method public static a(Lcom/bytedance/embedapplog/aq;)V
    .registers 5

    .line 26
    sget-object v0, Lcom/bytedance/embedapplog/t;->a:Ljava/util/LinkedList;

    monitor-enter v0

    .line 27
    :try_start_3
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0xc8

    if-le v1, v2, :cond_1c

    .line 28
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/embedapplog/aq;

    .line 29
    const-string v2, "drop event in cache"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/bytedance/embedapplog/bo;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    sget-object v2, Lcom/bytedance/embedapplog/t;->b:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_1c
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 33
    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method
