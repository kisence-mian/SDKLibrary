.class Lrx/internal/operators/OnSubscribeRedo$RedoFinite$1;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeRedo$RedoFinite;->call(Lrx/Observable;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lrx/Notification",
        "<*>;",
        "Lrx/Notification",
        "<*>;>;"
    }
.end annotation


# instance fields
.field num:I

.field final synthetic this$0:Lrx/internal/operators/OnSubscribeRedo$RedoFinite;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeRedo$RedoFinite;)V
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRedo$RedoFinite$1;->this$0:Lrx/internal/operators/OnSubscribeRedo$RedoFinite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 75
    check-cast p1, Lrx/Notification;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeRedo$RedoFinite$1;->call(Lrx/Notification;)Lrx/Notification;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Notification;)Lrx/Notification;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification",
            "<*>;)",
            "Lrx/Notification",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "terminalNotification":Lrx/Notification;, "Lrx/Notification<*>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$RedoFinite$1;->this$0:Lrx/internal/operators/OnSubscribeRedo$RedoFinite;

    iget-wide v0, v0, Lrx/internal/operators/OnSubscribeRedo$RedoFinite;->count:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 89
    .end local p1    # "terminalNotification":Lrx/Notification;, "Lrx/Notification<*>;"
    :cond_a
    :goto_a
    return-object p1

    .line 85
    .restart local p1    # "terminalNotification":Lrx/Notification;, "Lrx/Notification<*>;"
    :cond_b
    iget v0, p0, Lrx/internal/operators/OnSubscribeRedo$RedoFinite$1;->num:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/OnSubscribeRedo$RedoFinite$1;->num:I

    .line 86
    iget v0, p0, Lrx/internal/operators/OnSubscribeRedo$RedoFinite$1;->num:I

    int-to-long v0, v0

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeRedo$RedoFinite$1;->this$0:Lrx/internal/operators/OnSubscribeRedo$RedoFinite;

    iget-wide v2, v2, Lrx/internal/operators/OnSubscribeRedo$RedoFinite;->count:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_a

    .line 87
    iget v0, p0, Lrx/internal/operators/OnSubscribeRedo$RedoFinite$1;->num:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lrx/Notification;->createOnNext(Ljava/lang/Object;)Lrx/Notification;

    move-result-object p1

    goto :goto_a
.end method
