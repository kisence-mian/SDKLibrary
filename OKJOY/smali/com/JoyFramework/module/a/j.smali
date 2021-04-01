.class Lcom/JoyFramework/module/a/j;
.super Lrx/Subscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/JoyFramework/module/a/c;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/a/c;Ljava/io/File;)V
    .registers 3

    .prologue
    .line 255
    iput-object p1, p0, Lcom/JoyFramework/module/a/j;->b:Lcom/JoyFramework/module/a/c;

    iput-object p2, p0, Lcom/JoyFramework/module/a/j;->a:Ljava/io/File;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNext  \u4e0a\u4f20\u65e5\u5fd7\u6587\u4ef6\u6210\u529f\uff0c\u8fd4\u56de = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/JoyFramework/module/a/j;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 270
    return-void
.end method

.method public onCompleted()V
    .registers 1

    .prologue
    .line 258
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError  \u4e0a\u4f20\u65e5\u5fd7\u6587\u4ef6\u5931\u8d25 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 255
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/JoyFramework/module/a/j;->a(Ljava/lang/String;)V

    return-void
.end method
