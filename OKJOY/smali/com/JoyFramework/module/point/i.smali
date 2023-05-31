.class Lcom/JoyFramework/module/point/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/point/c;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/point/c;)V
    .registers 2

    .prologue
    .line 443
    iput-object p1, p0, Lcom/JoyFramework/module/point/i;->a:Lcom/JoyFramework/module/point/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 447
    :try_start_0
    iget-object v0, p0, Lcom/JoyFramework/module/point/i;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0}, Lcom/JoyFramework/module/point/c;->l(Lcom/JoyFramework/module/point/c;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_a} :catch_e

    .line 450
    :goto_a
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 451
    return-void

    .line 448
    :catch_e
    move-exception v0

    goto :goto_a
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 443
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/JoyFramework/module/point/i;->a(Lrx/Subscriber;)V

    return-void
.end method
