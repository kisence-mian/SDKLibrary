.class Lcom/m4399/m4399SDK$1$1;
.super Ljava/lang/Object;
.source "m4399SDK.java"

# interfaces
.implements Lcom/ssjj/fnsdk/core/SsjjFNListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m4399/m4399SDK$1;->onSucceed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/m4399/m4399SDK$1;


# direct methods
.method constructor <init>(Lcom/m4399/m4399SDK$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/m4399/m4399SDK$1;

    .line 73
    iput-object p1, p0, Lcom/m4399/m4399SDK$1$1;->this$1:Lcom/m4399/m4399SDK$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 7
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "data"    # Lcom/ssjj/fnsdk/core/SsjjFNParams;

    .line 77
    iget-object v0, p0, Lcom/m4399/m4399SDK$1$1;->this$1:Lcom/m4399/m4399SDK$1;

    iget-object v0, v0, Lcom/m4399/m4399SDK$1;->this$0:Lcom/m4399/m4399SDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m4399SDK checkUpdate onCallback code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 79
    const/16 v0, 0x8

    if-ne p1, v0, :cond_30

    .line 82
    iget-object v0, p0, Lcom/m4399/m4399SDK$1$1;->this$1:Lcom/m4399/m4399SDK$1;

    iget-object v0, v0, Lcom/m4399/m4399SDK$1;->this$0:Lcom/m4399/m4399SDK;

    invoke-virtual {v0}, Lcom/m4399/m4399SDK;->ExitGame()V

    goto :goto_31

    .line 85
    :cond_30
    nop

    .line 120
    :goto_31
    return-void
.end method
