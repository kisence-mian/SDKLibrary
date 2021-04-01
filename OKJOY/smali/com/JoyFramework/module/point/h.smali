.class Lcom/JoyFramework/module/point/h;
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
.field final synthetic a:Lcom/JoyFramework/module/point/c;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/point/c;)V
    .registers 2

    .prologue
    .line 454
    iput-object p1, p0, Lcom/JoyFramework/module/point/h;->a:Lcom/JoyFramework/module/point/c;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 457
    iget-object v0, p0, Lcom/JoyFramework/module/point/h;->a:Lcom/JoyFramework/module/point/c;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/point/c;->setVisibility(I)V

    .line 458
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2

    .prologue
    .line 463
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 468
    return-void
.end method
