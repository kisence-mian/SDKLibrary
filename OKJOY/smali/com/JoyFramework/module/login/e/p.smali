.class Lcom/JoyFramework/module/login/e/p;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/JoyFramework/module/login/e/n;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/login/e/n;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 77
    iput-object p1, p0, Lcom/JoyFramework/module/login/e/p;->b:Lcom/JoyFramework/module/login/e/n;

    iput-object p2, p0, Lcom/JoyFramework/module/login/e/p;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/JoyFramework/module/login/e/p;->b:Lcom/JoyFramework/module/login/e/n;

    invoke-static {v0}, Lcom/JoyFramework/module/login/e/n;->a(Lcom/JoyFramework/module/login/e/n;)Lcom/JoyFramework/module/login/b/e$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/JoyFramework/module/login/b/e$b;->b(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 85
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/JoyFramework/remote/bean/w;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/w;

    .line 87
    iget-object v1, p0, Lcom/JoyFramework/module/login/e/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/JoyFramework/remote/bean/w;->a(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/JoyFramework/module/login/e/p;->b:Lcom/JoyFramework/module/login/e/n;

    invoke-static {v1}, Lcom/JoyFramework/module/login/e/n;->a(Lcom/JoyFramework/module/login/e/n;)Lcom/JoyFramework/module/login/b/e$b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/JoyFramework/module/login/b/e$b;->a(Lcom/JoyFramework/remote/bean/w;)V

    .line 89
    return-void
.end method
