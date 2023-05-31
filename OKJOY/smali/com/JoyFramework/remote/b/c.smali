.class final Lcom/JoyFramework/remote/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TString;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/JoyFramework/remote/b/c;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TString;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/JoyFramework/remote/b/c;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 65
    :goto_8
    return-void

    .line 61
    :catch_9
    move-exception v0

    .line 63
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 55
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/JoyFramework/remote/b/c;->a(Lrx/Subscriber;)V

    return-void
.end method
