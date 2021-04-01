.class Lcom/JoyFramework/module/user/b/m;
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
.field final synthetic a:Lcom/JoyFramework/module/user/b/l;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/user/b/l;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/JoyFramework/module/user/b/m;->a:Lcom/JoyFramework/module/user/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/JoyFramework/module/user/b/m;->a:Lcom/JoyFramework/module/user/b/l;

    iget-object v0, v0, Lcom/JoyFramework/module/user/b/l;->a:Lcom/JoyFramework/module/user/a/e$b;

    invoke-interface {v0, p1}, Lcom/JoyFramework/module/user/a/e$b;->b(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 72
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/JoyFramework/remote/bean/e;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/e;

    .line 74
    iget-object v1, p0, Lcom/JoyFramework/module/user/b/m;->a:Lcom/JoyFramework/module/user/b/l;

    iget-object v1, v1, Lcom/JoyFramework/module/user/b/l;->a:Lcom/JoyFramework/module/user/a/e$b;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/JoyFramework/module/user/a/e$b;->a(Ljava/lang/String;)V

    .line 75
    return-void
.end method
