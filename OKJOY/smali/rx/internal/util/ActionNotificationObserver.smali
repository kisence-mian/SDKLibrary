.class public final Lrx/internal/util/ActionNotificationObserver;
.super Ljava/lang/Object;
.source "ActionNotificationObserver.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final onNotification:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<",
            "Lrx/Notification",
            "<-TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Action1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<",
            "Lrx/Notification",
            "<-TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/util/ActionNotificationObserver;, "Lrx/internal/util/ActionNotificationObserver<TT;>;"
    .local p1, "onNotification":Lrx/functions/Action1;, "Lrx/functions/Action1<Lrx/Notification<-TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lrx/internal/util/ActionNotificationObserver;->onNotification:Lrx/functions/Action1;

    .line 32
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/util/ActionNotificationObserver;, "Lrx/internal/util/ActionNotificationObserver<TT;>;"
    iget-object v0, p0, Lrx/internal/util/ActionNotificationObserver;->onNotification:Lrx/functions/Action1;

    invoke-static {}, Lrx/Notification;->createOnCompleted()Lrx/Notification;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/util/ActionNotificationObserver;, "Lrx/internal/util/ActionNotificationObserver<TT;>;"
    iget-object v0, p0, Lrx/internal/util/ActionNotificationObserver;->onNotification:Lrx/functions/Action1;

    invoke-static {p1}, Lrx/Notification;->createOnError(Ljava/lang/Throwable;)Lrx/Notification;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/util/ActionNotificationObserver;, "Lrx/internal/util/ActionNotificationObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/util/ActionNotificationObserver;->onNotification:Lrx/functions/Action1;

    invoke-static {p1}, Lrx/Notification;->createOnNext(Ljava/lang/Object;)Lrx/Notification;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 37
    return-void
.end method
