.class Lcom/JoyFramework/module/user/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/remote/b/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/JoyFramework/remote/b/c/c",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/user/b/f;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/user/b/f;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/JoyFramework/module/user/b/h;->a:Lcom/JoyFramework/module/user/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/JoyFramework/module/user/b/h;->a:Lcom/JoyFramework/module/user/b/f;

    iget-object v0, v0, Lcom/JoyFramework/module/user/b/f;->a:Lcom/JoyFramework/module/user/a/c$b;

    invoke-interface {v0, p1}, Lcom/JoyFramework/module/user/a/c$b;->c(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 100
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/JoyFramework/remote/bean/at;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/at;

    .line 101
    iget-object v1, p0, Lcom/JoyFramework/module/user/b/h;->a:Lcom/JoyFramework/module/user/b/f;

    iget-object v1, v1, Lcom/JoyFramework/module/user/b/f;->a:Lcom/JoyFramework/module/user/a/c$b;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/at;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/at;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/JoyFramework/module/user/a/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method
