.class Lcom/JoyFramework/wight/Loading/w;
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
.field final synthetic a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)V
    .registers 2

    .prologue
    .line 871
    iput-object p1, p0, Lcom/JoyFramework/wight/Loading/w;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

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
    .line 876
    const-wide/16 v0, 0x78

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_9

    .line 880
    :goto_5
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 881
    return-void

    .line 877
    :catch_9
    move-exception v0

    goto :goto_5
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 871
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/JoyFramework/wight/Loading/w;->a(Lrx/Subscriber;)V

    return-void
.end method
