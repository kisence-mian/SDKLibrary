.class Lcom/JoyFramework/module/user/b/g;
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
    .line 59
    iput-object p1, p0, Lcom/JoyFramework/module/user/b/g;->a:Lcom/JoyFramework/module/user/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/JoyFramework/module/user/b/g;->a:Lcom/JoyFramework/module/user/b/f;

    iget-object v0, v0, Lcom/JoyFramework/module/user/b/f;->a:Lcom/JoyFramework/module/user/a/c$b;

    invoke-interface {v0, p1}, Lcom/JoyFramework/module/user/a/c$b;->b(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 67
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/JoyFramework/remote/bean/u;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/u;

    .line 69
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/u;->a()I

    move-result v1

    if-nez v1, :cond_3b

    .line 71
    const/4 v1, 0x1

    sput-boolean v1, Lcom/JoyFramework/a/a;->o:Z

    .line 73
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v1

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/u;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/JoyFramework/c/e;->b(I)V

    .line 75
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v1

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/u;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/JoyFramework/c/e;->c(I)V

    .line 76
    sput-boolean v3, Lcom/JoyFramework/a/a;->t:Z

    .line 80
    :goto_2f
    iget-object v1, p0, Lcom/JoyFramework/module/user/b/g;->a:Lcom/JoyFramework/module/user/b/f;

    iget-object v1, v1, Lcom/JoyFramework/module/user/b/f;->a:Lcom/JoyFramework/module/user/a/c$b;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/u;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/JoyFramework/module/user/a/c$b;->a(Ljava/lang/String;)V

    .line 81
    return-void

    .line 78
    :cond_3b
    sput-boolean v3, Lcom/JoyFramework/a/a;->o:Z

    goto :goto_2f
.end method
