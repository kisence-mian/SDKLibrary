.class Lcom/JoyFramework/module/user/b/o;
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
    .line 59
    iput-object p1, p0, Lcom/JoyFramework/module/user/b/o;->a:Lcom/JoyFramework/module/user/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/JoyFramework/module/user/b/o;->a:Lcom/JoyFramework/module/user/b/n;

    iget-object v0, v0, Lcom/JoyFramework/module/user/b/n;->a:Lcom/JoyFramework/module/user/a/f$b;

    invoke-interface {v0, p1}, Lcom/JoyFramework/module/user/a/f$b;->b(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/JoyFramework/remote/bean/ap;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/ap;

    .line 69
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ap;->a()I

    move-result v1

    if-nez v1, :cond_2f

    .line 70
    sput-boolean v3, Lcom/JoyFramework/a/a;->s:Z

    .line 75
    :goto_17
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ap;->b()I

    move-result v1

    if-nez v1, :cond_32

    .line 76
    sput-boolean v3, Lcom/JoyFramework/a/a;->r:Z

    .line 80
    :goto_1f
    iget-object v1, p0, Lcom/JoyFramework/module/user/b/o;->a:Lcom/JoyFramework/module/user/b/n;

    iget-object v1, v1, Lcom/JoyFramework/module/user/b/n;->a:Lcom/JoyFramework/module/user/a/f$b;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ap;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ap;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/JoyFramework/module/user/a/f$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void

    .line 72
    :cond_2f
    sput-boolean v2, Lcom/JoyFramework/a/a;->s:Z

    goto :goto_17

    .line 78
    :cond_32
    sput-boolean v2, Lcom/JoyFramework/a/a;->r:Z

    goto :goto_1f
.end method
