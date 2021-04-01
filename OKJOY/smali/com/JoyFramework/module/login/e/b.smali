.class Lcom/JoyFramework/module/login/e/b;
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
.field final synthetic a:Lcom/JoyFramework/module/login/e/a;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/login/e/a;)V
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/JoyFramework/module/login/e/b;->a:Lcom/JoyFramework/module/login/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/JoyFramework/module/login/e/b;->a:Lcom/JoyFramework/module/login/e/a;

    invoke-static {v0}, Lcom/JoyFramework/module/login/e/a;->a(Lcom/JoyFramework/module/login/e/a;)Lcom/JoyFramework/module/login/b/a$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/JoyFramework/module/login/b/a$b;->a(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u627e\u56de\u8d26\u53f7  == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/JoyFramework/remote/bean/i;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/i;

    .line 63
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/i;->a()Ljava/util/List;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_39

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_39

    .line 65
    iget-object v1, p0, Lcom/JoyFramework/module/login/e/b;->a:Lcom/JoyFramework/module/login/e/a;

    invoke-static {v1}, Lcom/JoyFramework/module/login/e/a;->a(Lcom/JoyFramework/module/login/e/a;)Lcom/JoyFramework/module/login/b/a$b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/JoyFramework/module/login/b/a$b;->a(Ljava/util/List;)V

    .line 78
    :goto_38
    return-void

    .line 67
    :cond_39
    iget-object v0, p0, Lcom/JoyFramework/module/login/e/b;->a:Lcom/JoyFramework/module/login/e/a;

    invoke-static {v0}, Lcom/JoyFramework/module/login/e/a;->a(Lcom/JoyFramework/module/login/e/a;)Lcom/JoyFramework/module/login/b/a$b;

    move-result-object v0

    const-string v1, "\u627e\u4e0d\u5230\u8d26\u53f7"

    invoke-interface {v0, v1}, Lcom/JoyFramework/module/login/b/a$b;->a(Ljava/lang/String;)V

    goto :goto_38
.end method
