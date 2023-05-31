.class final Lrx/internal/schedulers/TrampolineScheduler$TimedAction;
.super Ljava/lang/Object;
.source "TrampolineScheduler.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/TrampolineScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimedAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lrx/internal/schedulers/TrampolineScheduler$TimedAction;",
        ">;"
    }
.end annotation


# instance fields
.field final action:Lrx/functions/Action0;

.field final count:I

.field final execTime:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lrx/functions/Action0;Ljava/lang/Long;I)V
    .registers 4
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "execTime"    # Ljava/lang/Long;
    .param p3, "count"    # I

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lrx/internal/schedulers/TrampolineScheduler$TimedAction;->action:Lrx/functions/Action0;

    .line 109
    iput-object p2, p0, Lrx/internal/schedulers/TrampolineScheduler$TimedAction;->execTime:Ljava/lang/Long;

    .line 110
    iput p3, p0, Lrx/internal/schedulers/TrampolineScheduler$TimedAction;->count:I

    .line 111
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 102
    check-cast p1, Lrx/internal/schedulers/TrampolineScheduler$TimedAction;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/schedulers/TrampolineScheduler$TimedAction;->compareTo(Lrx/internal/schedulers/TrampolineScheduler$TimedAction;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lrx/internal/schedulers/TrampolineScheduler$TimedAction;)I
    .registers 5
    .param p1, "that"    # Lrx/internal/schedulers/TrampolineScheduler$TimedAction;

    .prologue
    .line 115
    iget-object v1, p0, Lrx/internal/schedulers/TrampolineScheduler$TimedAction;->execTime:Ljava/lang/Long;

    iget-object v2, p1, Lrx/internal/schedulers/TrampolineScheduler$TimedAction;->execTime:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    .line 116
    .local v0, "result":I
    if-nez v0, :cond_12

    .line 117
    iget v1, p0, Lrx/internal/schedulers/TrampolineScheduler$TimedAction;->count:I

    iget v2, p1, Lrx/internal/schedulers/TrampolineScheduler$TimedAction;->count:I

    invoke-static {v1, v2}, Lrx/internal/schedulers/TrampolineScheduler;->compare(II)I

    move-result v0

    .line 119
    .end local v0    # "result":I
    :cond_12
    return v0
.end method
