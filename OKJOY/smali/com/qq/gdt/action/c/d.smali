.class public Lcom/qq/gdt/action/c/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/qq/gdt/action/c/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/qq/gdt/action/c/d;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Class;Z)Lcom/qq/gdt/action/c/h;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/qq/gdt/action/c/a;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;Z)",
            "Lcom/qq/gdt/action/c/h;"
        }
    .end annotation

    if-eqz p2, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_16
    sget-object v0, Lcom/qq/gdt/action/c/d;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/gdt/action/c/h;

    if-nez v0, :cond_3b

    const-class v3, Lcom/qq/gdt/action/c/d;

    monitor-enter v3

    :try_start_23
    sget-object v0, Lcom/qq/gdt/action/c/d;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/gdt/action/c/h;
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_79

    if-nez v0, :cond_3a

    if-eqz p2, :cond_51

    :try_start_2f
    new-instance v2, Lcom/qq/gdt/action/c/e;

    invoke-direct {v2, v1, p1}, Lcom/qq/gdt/action/c/e;-><init>(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_34} :catch_57
    .catchall {:try_start_2f .. :try_end_34} :catchall_79

    :goto_34
    :try_start_34
    sget-object v0, Lcom/qq/gdt/action/c/d;->a:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_39} :catch_7c
    .catchall {:try_start_34 .. :try_end_39} :catchall_79

    move-object v0, v2

    :cond_3a
    :goto_3a
    :try_start_3a
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_79

    :cond_3b
    return-object v0

    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_16

    :cond_51
    :try_start_51
    new-instance v2, Lcom/qq/gdt/action/c/h;

    invoke-direct {v2, v1, p1}, Lcom/qq/gdt/action/c/h;-><init>(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_56} :catch_57
    .catchall {:try_start_51 .. :try_end_56} :catchall_79

    goto :goto_34

    :catch_57
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    :goto_5b
    :try_start_5b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "construct buffer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " failed !"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/qq/gdt/action/h/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_3a

    :catchall_79
    move-exception v0

    monitor-exit v3
    :try_end_7b
    .catchall {:try_start_5b .. :try_end_7b} :catchall_79

    throw v0

    :catch_7c
    move-exception v0

    goto :goto_5b
.end method
