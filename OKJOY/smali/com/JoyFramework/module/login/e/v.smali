.class Lcom/JoyFramework/module/login/e/v;
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
.field final synthetic a:Lcom/JoyFramework/module/login/e/s;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/login/e/s;)V
    .registers 2

    .prologue
    .line 106
    iput-object p1, p0, Lcom/JoyFramework/module/login/e/v;->a:Lcom/JoyFramework/module/login/e/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/JoyFramework/module/login/e/v;->a:Lcom/JoyFramework/module/login/e/s;

    invoke-static {v0}, Lcom/JoyFramework/module/login/e/s;->a(Lcom/JoyFramework/module/login/e/s;)Lcom/JoyFramework/module/login/b/g$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/JoyFramework/module/login/b/g$b;->a(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 114
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/JoyFramework/remote/bean/w;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/w;

    .line 115
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/JoyFramework/remote/bean/w;->a(Ljava/lang/String;)V

    .line 116
    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/JoyFramework/remote/bean/w;->i(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/JoyFramework/module/login/e/v;->a:Lcom/JoyFramework/module/login/e/s;

    invoke-static {v1}, Lcom/JoyFramework/module/login/e/s;->a(Lcom/JoyFramework/module/login/e/s;)Lcom/JoyFramework/module/login/b/g$b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/JoyFramework/module/login/b/g$b;->a(Lcom/JoyFramework/remote/bean/w;)V

    .line 119
    return-void
.end method
