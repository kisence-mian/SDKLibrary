.class final Lrx/internal/util/InternalObservableUtils$RetryNotificationDematerializer;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RetryNotificationDematerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lrx/Observable",
        "<+",
        "Lrx/Notification",
        "<*>;>;",
        "Lrx/Observable",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final notificationHandler:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lrx/Observable",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lrx/Observable",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "notificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Ljava/lang/Throwable;>;+Lrx/Observable<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$RetryNotificationDematerializer;->notificationHandler:Lrx/functions/Func1;

    .line 219
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 214
    check-cast p1, Lrx/Observable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/InternalObservableUtils$RetryNotificationDematerializer;->call(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Observable;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;)",
            "Lrx/Observable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "notifications":Lrx/Observable;, "Lrx/Observable<+Lrx/Notification<*>;>;"
    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$RetryNotificationDematerializer;->notificationHandler:Lrx/functions/Func1;

    sget-object v1, Lrx/internal/util/InternalObservableUtils;->ERROR_EXTRACTOR:Lrx/internal/util/InternalObservableUtils$NotificationErrorExtractor;

    invoke-virtual {p1, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observable;

    return-object v0
.end method
