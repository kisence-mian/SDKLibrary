.class final Lcom/JoyFramework/remote/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lcom/JoyFramework/remote/b/a/a;",
        "Lrx/Observable",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/JoyFramework/remote/b/a/a;)Lrx/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/JoyFramework/remote/b/a/a;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/JoyFramework/remote/b/a/a;->e()I

    move-result v0

    if-nez v0, :cond_f

    .line 31
    invoke-virtual {p1}, Lcom/JoyFramework/remote/b/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/remote/b/a;->a(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    .line 41
    :goto_e
    return-object v0

    .line 33
    :cond_f
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 34
    invoke-virtual {p1}, Lcom/JoyFramework/remote/b/a/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 35
    const-class v2, Lcom/JoyFramework/remote/bean/e;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/e;

    .line 36
    invoke-virtual {p1}, Lcom/JoyFramework/remote/b/a/a;->e()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_42

    .line 37
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/e;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/JoyFramework/c/e;->a(ILjava/lang/Object;)V

    .line 41
    :cond_34
    new-instance v1, Ljava/lang/Error;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v0

    goto :goto_e

    .line 38
    :cond_42
    invoke-virtual {p1}, Lcom/JoyFramework/remote/b/a/a;->e()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_34

    .line 39
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEmulator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v0

    goto :goto_e
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 27
    check-cast p1, Lcom/JoyFramework/remote/b/a/a;

    invoke-virtual {p0, p1}, Lcom/JoyFramework/remote/b/b;->a(Lcom/JoyFramework/remote/b/a/a;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
