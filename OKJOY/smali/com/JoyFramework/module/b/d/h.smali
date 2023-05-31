.class Lcom/JoyFramework/module/b/d/h;
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
.field final synthetic a:Lcom/JoyFramework/module/b/d/g;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/b/d/g;)V
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Lcom/JoyFramework/module/b/d/h;->a:Lcom/JoyFramework/module/b/d/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/JoyFramework/module/b/d/h;->a:Lcom/JoyFramework/module/b/d/g;

    iget-object v0, v0, Lcom/JoyFramework/module/b/d/g;->a:Lcom/JoyFramework/module/b/b/c$b;

    invoke-interface {v0, p1}, Lcom/JoyFramework/module/b/b/c$b;->b(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 69
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/JoyFramework/remote/bean/e;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/e;

    .line 70
    iget-object v1, p0, Lcom/JoyFramework/module/b/d/h;->a:Lcom/JoyFramework/module/b/d/g;

    iget-object v1, v1, Lcom/JoyFramework/module/b/d/g;->a:Lcom/JoyFramework/module/b/b/c$b;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/JoyFramework/module/b/b/c$b;->a(Ljava/lang/String;)V

    .line 72
    return-void
.end method
