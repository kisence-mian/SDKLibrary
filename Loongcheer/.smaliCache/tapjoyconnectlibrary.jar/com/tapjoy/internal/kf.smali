.class public final Lcom/tapjoy/internal/kf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/kf$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;


# instance fields
.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/tapjoy/internal/kf$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const-class v0, Lcom/tapjoy/internal/kf;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/kf;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    nop

    .line 1204
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/tapjoy/internal/kf;->b:Ljava/util/Queue;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/kf;->c:Z

    .line 60
    return-void
.end method

.method static synthetic b()Ljava/util/logging/Logger;
    .registers 1

    .line 45
    sget-object v0, Lcom/tapjoy/internal/kf;->a:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/tapjoy/internal/kf;->b:Ljava/util/Queue;

    monitor-enter v0

    .line 125
    :try_start_3
    iget-boolean v1, p0, Lcom/tapjoy/internal/kf;->c:Z

    if-eqz v1, :cond_9

    .line 126
    monitor-exit v0

    return-void

    .line 128
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tapjoy/internal/kf;->c:Z

    .line 129
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_22

    .line 133
    :goto_d
    iget-object v0, p0, Lcom/tapjoy/internal/kf;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 134
    iget-object v0, p0, Lcom/tapjoy/internal/kf;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/kf$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/kf$a;->a()V

    goto :goto_d

    .line 136
    :cond_21
    return-void

    .line 129
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    goto :goto_26

    :goto_25
    throw v1

    :goto_26
    goto :goto_25
.end method
