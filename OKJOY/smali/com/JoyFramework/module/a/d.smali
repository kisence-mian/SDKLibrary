.class Lcom/JoyFramework/module/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/ba$b;


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/a/c;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/a/c;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/JoyFramework/module/a/d;->a:Lcom/JoyFramework/module/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/JoyFramework/module/a/d;->a:Lcom/JoyFramework/module/a/c;

    iget-object v1, p0, Lcom/JoyFramework/module/a/d;->a:Lcom/JoyFramework/module/a/c;

    invoke-static {v1}, Lcom/JoyFramework/module/a/c;->a(Lcom/JoyFramework/module/a/c;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/JoyFramework/module/a/c;->a(Lcom/JoyFramework/module/a/c;Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/JoyFramework/module/a/d;->a:Lcom/JoyFramework/module/a/c;

    iget-object v1, p0, Lcom/JoyFramework/module/a/d;->a:Lcom/JoyFramework/module/a/c;

    invoke-static {v1}, Lcom/JoyFramework/module/a/c;->a(Lcom/JoyFramework/module/a/c;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/JoyFramework/module/a/c;->a(Lcom/JoyFramework/module/a/c;Landroid/content/Context;)V

    .line 90
    return-void
.end method
