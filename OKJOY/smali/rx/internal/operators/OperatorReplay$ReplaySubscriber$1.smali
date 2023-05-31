.class Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;
.super Ljava/lang/Object;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorReplay$ReplaySubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorReplay$ReplaySubscriber;)V
    .registers 2

    .prologue
    .line 365
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;->this$0:Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 7

    .prologue
    .line 368
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;->this$0:Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    iget-boolean v0, v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->terminated:Z

    if-nez v0, :cond_27

    .line 369
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;->this$0:Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    iget-object v1, v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Lrx/internal/util/OpenHashSet;

    monitor-enter v1

    .line 370
    :try_start_b
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;->this$0:Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    iget-boolean v0, v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->terminated:Z

    if-nez v0, :cond_26

    .line 371
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;->this$0:Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Lrx/internal/util/OpenHashSet;

    invoke-virtual {v0}, Lrx/internal/util/OpenHashSet;->terminate()V

    .line 372
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;->this$0:Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    iget-wide v2, v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producersVersion:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producersVersion:J

    .line 373
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;->this$0:Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->terminated:Z

    .line 375
    :cond_26
    monitor-exit v1

    .line 382
    :cond_27
    return-void

    .line 375
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_28

    throw v0
.end method
