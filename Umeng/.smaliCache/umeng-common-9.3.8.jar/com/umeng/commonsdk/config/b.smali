.class public Lcom/umeng/commonsdk/config/b;
.super Ljava/lang/Object;
.source "CollectController.java"

# interfaces
.implements Lcom/umeng/commonsdk/config/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/config/b$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/config/b;->a:Ljava/util/Map;

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/config/b;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/config/b$1;)V
    .registers 2

    .line 5
    invoke-direct {p0}, Lcom/umeng/commonsdk/config/b;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 3

    .line 37
    invoke-static {p0}, Lcom/umeng/commonsdk/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 38
    const/4 p0, 0x0

    return p0

    .line 40
    :cond_8
    sget-object v0, Lcom/umeng/commonsdk/config/b;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 41
    :try_start_b
    sget-object v1, Lcom/umeng/commonsdk/config/b;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 42
    sget-object v1, Lcom/umeng/commonsdk/config/b;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v0

    return p0

    .line 44
    :cond_21
    const/4 p0, 0x1

    monitor-exit v0

    return p0

    .line 46
    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_24

    throw p0
.end method

.method public static b()Lcom/umeng/commonsdk/config/b;
    .registers 1

    .line 26
    invoke-static {}, Lcom/umeng/commonsdk/config/b$a;->a()Lcom/umeng/commonsdk/config/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 16
    sget-object v0, Lcom/umeng/commonsdk/config/b;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 17
    :try_start_3
    sget-object v1, Lcom/umeng/commonsdk/config/b;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 18
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 5

    .line 52
    invoke-static {p1}, Lcom/umeng/commonsdk/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 53
    return-void

    .line 56
    :cond_7
    sget-object v0, Lcom/umeng/commonsdk/config/b;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_a
    sget-object v1, Lcom/umeng/commonsdk/config/b;->a:Ljava/util/Map;

    if-eqz v1, :cond_11

    .line 58
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_11
    monitor-exit v0

    .line 61
    return-void

    .line 60
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_13

    throw p1
.end method
