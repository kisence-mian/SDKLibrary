.class Lcom/JoyFramework/module/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/wight/ab$a;


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/a/k$a;

.field final synthetic b:Lcom/JoyFramework/module/a/k;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/a/k;Lcom/JoyFramework/module/a/k$a;)V
    .registers 3

    .prologue
    .line 35
    iput-object p1, p0, Lcom/JoyFramework/module/a/l;->b:Lcom/JoyFramework/module/a/k;

    iput-object p2, p0, Lcom/JoyFramework/module/a/l;->a:Lcom/JoyFramework/module/a/k$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/JoyFramework/wight/ab;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 39
    iget-object v0, p0, Lcom/JoyFramework/module/a/l;->b:Lcom/JoyFramework/module/a/k;

    iget-object v0, v0, Lcom/JoyFramework/module/a/k;->a:Lcom/JoyFramework/wight/ab;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/ab;->dismiss()V

    .line 40
    iget-object v0, p0, Lcom/JoyFramework/module/a/l;->a:Lcom/JoyFramework/module/a/k$a;

    const-string v1, "success"

    invoke-interface {v0, v1}, Lcom/JoyFramework/module/a/k$a;->a(Ljava/lang/String;)V

    .line 41
    return-void
.end method
