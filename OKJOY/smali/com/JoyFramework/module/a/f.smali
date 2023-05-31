.class Lcom/JoyFramework/module/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/ba$b;


# instance fields
.field final synthetic a:Lcom/JoyFramework/remote/bean/v;

.field final synthetic b:Lcom/JoyFramework/module/a/e;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/a/e;Lcom/JoyFramework/remote/bean/v;)V
    .registers 3

    .prologue
    .line 135
    iput-object p1, p0, Lcom/JoyFramework/module/a/f;->b:Lcom/JoyFramework/module/a/e;

    iput-object p2, p0, Lcom/JoyFramework/module/a/f;->a:Lcom/JoyFramework/remote/bean/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/JoyFramework/module/a/f;->b:Lcom/JoyFramework/module/a/e;

    iget-object v0, v0, Lcom/JoyFramework/module/a/e;->b:Lcom/JoyFramework/module/a/c;

    iget-object v1, p0, Lcom/JoyFramework/module/a/f;->a:Lcom/JoyFramework/remote/bean/v;

    iget-object v2, p0, Lcom/JoyFramework/module/a/f;->b:Lcom/JoyFramework/module/a/e;

    iget-object v2, v2, Lcom/JoyFramework/module/a/e;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/module/a/c;->a(Lcom/JoyFramework/module/a/c;Lcom/JoyFramework/remote/bean/v;Landroid/content/Context;)V

    .line 140
    iget-object v0, p0, Lcom/JoyFramework/module/a/f;->b:Lcom/JoyFramework/module/a/e;

    iget-object v0, v0, Lcom/JoyFramework/module/a/e;->b:Lcom/JoyFramework/module/a/c;

    iget-object v1, p0, Lcom/JoyFramework/module/a/f;->b:Lcom/JoyFramework/module/a/e;

    iget-object v1, v1, Lcom/JoyFramework/module/a/e;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/JoyFramework/module/a/c;->b(Lcom/JoyFramework/module/a/c;Landroid/content/Context;)V

    .line 141
    return-void
.end method

.method public b()V
    .registers 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/JoyFramework/module/a/f;->b:Lcom/JoyFramework/module/a/e;

    iget-object v0, v0, Lcom/JoyFramework/module/a/e;->b:Lcom/JoyFramework/module/a/c;

    iget-object v1, p0, Lcom/JoyFramework/module/a/f;->a:Lcom/JoyFramework/remote/bean/v;

    iget-object v2, p0, Lcom/JoyFramework/module/a/f;->b:Lcom/JoyFramework/module/a/e;

    iget-object v2, v2, Lcom/JoyFramework/module/a/e;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/module/a/c;->a(Lcom/JoyFramework/module/a/c;Lcom/JoyFramework/remote/bean/v;Landroid/content/Context;)V

    .line 146
    return-void
.end method
