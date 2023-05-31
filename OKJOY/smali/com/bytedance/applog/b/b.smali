.class public Lcom/bytedance/applog/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/bytedance/applog/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/bytedance/applog/d/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/bytedance/applog/b/b;->a:Ljava/util/LinkedList;

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/bytedance/applog/b/b;->b:Ljava/util/LinkedList;

    return-void
.end method

.method public static a()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    .line 37
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 38
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 39
    sget-object v3, Lcom/bytedance/applog/b/b;->a:Ljava/util/LinkedList;

    monitor-enter v3

    .line 40
    :try_start_e
    sget-object v0, Lcom/bytedance/applog/b/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 41
    sget-object v0, Lcom/bytedance/applog/b/b;->b:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 42
    sget-object v0, Lcom/bytedance/applog/b/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 43
    sget-object v0, Lcom/bytedance/applog/b/b;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 44
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_33

    .line 45
    :goto_23
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_65

    .line 46
    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/applog/d/a;

    .line 47
    invoke-static {v0}, Lcom/bytedance/applog/a/e;->a(Lcom/bytedance/applog/d/a;)V

    goto :goto_23

    .line 44
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0

    .line 55
    :cond_36
    instance-of v3, v0, Lcom/bytedance/applog/d/c;

    if-eqz v3, :cond_79

    .line 56
    check-cast v0, Lcom/bytedance/applog/d/c;

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/applog/d/c;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/applog/d/c;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    new-instance v0, Lcom/bytedance/applog/d/i;

    const-string v3, "16"

    invoke-direct {v0, v1, v3, v4}, Lcom/bytedance/applog/d/i;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    :goto_62
    invoke-static {v0}, Lcom/bytedance/applog/a/e;->a(Lcom/bytedance/applog/d/a;)V

    .line 49
    :cond_65
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8c

    .line 50
    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/applog/d/a;

    .line 51
    const/4 v1, 0x0

    .line 52
    instance-of v3, v0, Lcom/bytedance/applog/d/i;

    if-eqz v3, :cond_36

    .line 54
    check-cast v0, Lcom/bytedance/applog/d/i;

    goto :goto_62

    .line 59
    :cond_79
    instance-of v3, v0, Lcom/bytedance/applog/d/e;

    if-eqz v3, :cond_8d

    .line 60
    check-cast v0, Lcom/bytedance/applog/d/e;

    .line 61
    new-instance v1, Lcom/bytedance/applog/d/i;

    invoke-virtual {v0}, Lcom/bytedance/applog/d/e;->j()Ljava/lang/String;

    move-result-object v0

    const-string v3, "16"

    invoke-direct {v1, v0, v3, v4}, Lcom/bytedance/applog/d/i;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v0, v1

    goto :goto_62

    .line 65
    :cond_8c
    return-void

    :cond_8d
    move-object v0, v1

    goto :goto_62
.end method

.method public static a(Lcom/bytedance/applog/d/a;)V
    .registers 5

    .prologue
    .line 26
    sget-object v1, Lcom/bytedance/applog/b/b;->a:Ljava/util/LinkedList;

    monitor-enter v1

    .line 27
    :try_start_3
    sget-object v0, Lcom/bytedance/applog/b/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v2, 0xc8

    if-le v0, v2, :cond_20

    .line 28
    sget-object v0, Lcom/bytedance/applog/b/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/applog/d/a;

    .line 29
    const-string v2, "drop event in cache"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/bytedance/applog/util/i;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    sget-object v2, Lcom/bytedance/applog/b/b;->b:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_20
    sget-object v0, Lcom/bytedance/applog/b/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 33
    monitor-exit v1

    .line 34
    return-void

    .line 33
    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v0
.end method
