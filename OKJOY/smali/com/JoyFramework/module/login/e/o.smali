.class Lcom/JoyFramework/module/login/e/o;
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/JoyFramework/module/login/e/n;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/login/e/n;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 53
    iput-object p1, p0, Lcom/JoyFramework/module/login/e/o;->b:Lcom/JoyFramework/module/login/e/n;

    iput-object p2, p0, Lcom/JoyFramework/module/login/e/o;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/JoyFramework/module/login/e/o;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 57
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 61
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/JoyFramework/remote/bean/e;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/e;

    .line 62
    iget-object v1, p0, Lcom/JoyFramework/module/login/e/o;->b:Lcom/JoyFramework/module/login/e/n;

    invoke-static {v1}, Lcom/JoyFramework/module/login/e/n;->a(Lcom/JoyFramework/module/login/e/n;)Lcom/JoyFramework/module/login/b/e$b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/JoyFramework/module/login/b/e$b;->a(Ljava/lang/String;)V

    .line 63
    return-void
.end method
