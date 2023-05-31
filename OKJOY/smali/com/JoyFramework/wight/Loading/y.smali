.class Lcom/JoyFramework/wight/Loading/y;
.super Lrx/Subscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
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
    .line 408
    iput-object p1, p0, Lcom/JoyFramework/wight/Loading/y;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 412
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/y;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Z)Z

    .line 414
    :try_start_6
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/y;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->b(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_18

    .line 417
    :goto_10
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/y;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    sget-object v1, Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;->b:Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;)V

    .line 419
    return-void

    .line 415
    :catch_18
    move-exception v0

    goto :goto_10
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2

    .prologue
    .line 424
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 428
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/y;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->invalidate()V

    .line 430
    return-void
.end method
