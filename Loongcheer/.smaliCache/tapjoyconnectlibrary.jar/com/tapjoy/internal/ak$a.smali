.class public final Lcom/tapjoy/internal/ak$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/an;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tapjoy/internal/an<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/tapjoy/internal/al;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/al<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/al;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tapjoy/internal/al<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/tapjoy/internal/ak$a;->a:Lcom/tapjoy/internal/al;

    .line 76
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/tapjoy/internal/ak$a;->a:Lcom/tapjoy/internal/al;

    monitor-enter v0

    .line 96
    :try_start_3
    iget-object v1, p0, Lcom/tapjoy/internal/ak$a;->a:Lcom/tapjoy/internal/al;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/tapjoy/internal/al;->a(Ljava/lang/Object;Z)Lcom/tapjoy/internal/aj;

    move-result-object p1

    .line 97
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_19

    .line 98
    if-eqz p1, :cond_17

    .line 99
    monitor-enter p1

    .line 100
    :try_start_e
    invoke-interface {p1}, Lcom/tapjoy/internal/aj;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-exit p1

    return-object v0

    .line 101
    :catchall_14
    move-exception v0

    monitor-exit p1
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_14

    throw v0

    .line 103
    :cond_17
    const/4 p1, 0x0

    return-object p1

    .line 97
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/tapjoy/internal/ak$a;->a:Lcom/tapjoy/internal/al;

    monitor-enter v0

    .line 123
    :try_start_3
    iget-object v1, p0, Lcom/tapjoy/internal/ak$a;->a:Lcom/tapjoy/internal/al;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/tapjoy/internal/al;->a(Ljava/lang/Object;Z)Lcom/tapjoy/internal/aj;

    move-result-object p1

    .line 124
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 125
    monitor-enter p1

    .line 126
    :try_start_c
    invoke-interface {p1, p2}, Lcom/tapjoy/internal/aj;->a(Ljava/lang/Object;)V

    .line 127
    monitor-exit p1

    return-void

    :catchall_11
    move-exception p2

    monitor-exit p1
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_11

    throw p2

    .line 124
    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method
