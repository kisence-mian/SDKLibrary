.class Lcom/JoyFramework/module/user/b/d;
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
.field final synthetic a:Lcom/JoyFramework/module/user/b/c;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/user/b/c;)V
    .registers 2

    .prologue
    .line 63
    iput-object p1, p0, Lcom/JoyFramework/module/user/b/d;->a:Lcom/JoyFramework/module/user/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/JoyFramework/module/user/b/d;->a:Lcom/JoyFramework/module/user/b/c;

    iget-object v0, v0, Lcom/JoyFramework/module/user/b/c;->a:Lcom/JoyFramework/module/user/a/b$b;

    invoke-interface {v0, p1}, Lcom/JoyFramework/module/user/a/b$b;->c(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 71
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/JoyFramework/remote/bean/g;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/g;

    .line 74
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/g;->a()I

    move-result v1

    if-nez v1, :cond_22

    .line 75
    const/4 v1, 0x1

    sput-boolean v1, Lcom/JoyFramework/a/a;->s:Z

    .line 80
    :goto_16
    iget-object v1, p0, Lcom/JoyFramework/module/user/b/d;->a:Lcom/JoyFramework/module/user/b/c;

    iget-object v1, v1, Lcom/JoyFramework/module/user/b/c;->a:Lcom/JoyFramework/module/user/a/b$b;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/g;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/JoyFramework/module/user/a/b$b;->a(Ljava/lang/String;)V

    .line 82
    return-void

    .line 77
    :cond_22
    const/4 v1, 0x0

    sput-boolean v1, Lcom/JoyFramework/a/a;->s:Z

    goto :goto_16
.end method
