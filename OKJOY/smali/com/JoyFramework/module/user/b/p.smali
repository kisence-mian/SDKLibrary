.class Lcom/JoyFramework/module/user/b/p;
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
.field final synthetic a:Lcom/JoyFramework/module/user/b/n;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/user/b/n;)V
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/JoyFramework/module/user/b/p;->a:Lcom/JoyFramework/module/user/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/JoyFramework/module/user/b/p;->a:Lcom/JoyFramework/module/user/b/n;

    iget-object v0, v0, Lcom/JoyFramework/module/user/b/n;->a:Lcom/JoyFramework/module/user/a/f$b;

    invoke-interface {v0, p1}, Lcom/JoyFramework/module/user/a/f$b;->b(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 102
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/JoyFramework/remote/bean/e;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/e;

    .line 103
    iget-object v1, p0, Lcom/JoyFramework/module/user/b/p;->a:Lcom/JoyFramework/module/user/b/n;

    iget-object v1, v1, Lcom/JoyFramework/module/user/b/n;->a:Lcom/JoyFramework/module/user/a/f$b;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/JoyFramework/module/user/a/f$b;->a(Ljava/lang/String;)V

    .line 104
    return-void
.end method
