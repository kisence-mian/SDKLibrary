.class Lcom/JoyFramework/wight/Loading/v;
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
    .line 885
    iput-object p1, p0, Lcom/JoyFramework/wight/Loading/v;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 889
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/v;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    sget-object v1, Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;->b:Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->b(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;)Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;

    .line 890
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/v;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->invalidate()V

    .line 891
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2

    .prologue
    .line 896
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 901
    return-void
.end method
