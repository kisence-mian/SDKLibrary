.class Lcom/JoyFramework/module/b/d/j;
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
.field final synthetic a:Lcom/JoyFramework/module/b/d/i;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/b/d/i;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcom/JoyFramework/module/b/d/j;->a:Lcom/JoyFramework/module/b/d/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/JoyFramework/module/b/d/j;->a:Lcom/JoyFramework/module/b/d/i;

    iget-object v0, v0, Lcom/JoyFramework/module/b/d/i;->a:Lcom/JoyFramework/module/b/b/d$b;

    invoke-interface {v0, p1}, Lcom/JoyFramework/module/b/b/d$b;->c(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 58
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/JoyFramework/remote/bean/ar;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/ar;

    .line 59
    iget-object v1, p0, Lcom/JoyFramework/module/b/d/j;->a:Lcom/JoyFramework/module/b/d/i;

    iget-object v1, v1, Lcom/JoyFramework/module/b/d/i;->a:Lcom/JoyFramework/module/b/b/d$b;

    invoke-interface {v1, v0}, Lcom/JoyFramework/module/b/b/d$b;->a(Lcom/JoyFramework/remote/bean/ar;)V

    .line 60
    return-void
.end method
