.class Lcom/JoyFramework/module/user/b/b;
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

.field final synthetic b:Lcom/JoyFramework/module/user/b/a;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/user/b/a;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 61
    iput-object p1, p0, Lcom/JoyFramework/module/user/b/b;->b:Lcom/JoyFramework/module/user/b/a;

    iput-object p2, p0, Lcom/JoyFramework/module/user/b/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/JoyFramework/module/user/b/b;->b:Lcom/JoyFramework/module/user/b/a;

    iget-object v0, v0, Lcom/JoyFramework/module/user/b/a;->a:Lcom/JoyFramework/module/user/a/a$b;

    invoke-interface {v0, p1}, Lcom/JoyFramework/module/user/a/a$b;->b(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 69
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/JoyFramework/remote/bean/f;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/f;

    .line 71
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/f;->a()I

    move-result v1

    if-nez v1, :cond_26

    .line 72
    const/4 v1, 0x1

    sput-boolean v1, Lcom/JoyFramework/a/a;->r:Z

    .line 77
    :goto_16
    iget-object v1, p0, Lcom/JoyFramework/module/user/b/b;->a:Ljava/lang/String;

    sput-object v1, Lcom/JoyFramework/a/a;->A:Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/JoyFramework/module/user/b/b;->b:Lcom/JoyFramework/module/user/b/a;

    iget-object v1, v1, Lcom/JoyFramework/module/user/b/a;->a:Lcom/JoyFramework/module/user/a/a$b;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/f;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/JoyFramework/module/user/a/a$b;->a(Ljava/lang/String;)V

    .line 80
    return-void

    .line 74
    :cond_26
    const/4 v1, 0x0

    sput-boolean v1, Lcom/JoyFramework/a/a;->r:Z

    goto :goto_16
.end method
