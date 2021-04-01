.class final Lcom/JoyFramework/d/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/ba$b;


# instance fields
.field final synthetic a:Lcom/JoyFramework/d/ba$b;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/JoyFramework/d/ba$b;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 323
    iput-object p1, p0, Lcom/JoyFramework/d/bd;->a:Lcom/JoyFramework/d/ba$b;

    iput-object p2, p0, Lcom/JoyFramework/d/bd;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/JoyFramework/d/bd;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/JoyFramework/d/bd;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/JoyFramework/d/bd;->a:Lcom/JoyFramework/d/ba$b;

    if-eqz v0, :cond_9

    .line 327
    iget-object v0, p0, Lcom/JoyFramework/d/bd;->a:Lcom/JoyFramework/d/ba$b;

    invoke-interface {v0}, Lcom/JoyFramework/d/ba$b;->a()V

    .line 329
    :cond_9
    return-void
.end method

.method public b()V
    .registers 5

    .prologue
    .line 333
    iget-object v0, p0, Lcom/JoyFramework/d/bd;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/JoyFramework/d/bd;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/JoyFramework/d/bd;->d:Ljava/lang/String;

    new-instance v3, Lcom/JoyFramework/d/be;

    invoke-direct {v3, p0}, Lcom/JoyFramework/d/be;-><init>(Lcom/JoyFramework/d/bd;)V

    invoke-static {v0, v1, v2, v3}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/d/ba$b;)V

    .line 346
    return-void
.end method
