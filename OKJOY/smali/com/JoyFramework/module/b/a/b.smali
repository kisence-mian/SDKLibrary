.class Lcom/JoyFramework/module/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/JoyFramework/module/b/a/a$b;

.field final synthetic c:Lcom/JoyFramework/module/b/a/a;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/b/a/a;ILcom/JoyFramework/module/b/a/a$b;)V
    .registers 4

    .prologue
    .line 83
    iput-object p1, p0, Lcom/JoyFramework/module/b/a/b;->c:Lcom/JoyFramework/module/b/a/a;

    iput p2, p0, Lcom/JoyFramework/module/b/a/b;->a:I

    iput-object p3, p0, Lcom/JoyFramework/module/b/a/b;->b:Lcom/JoyFramework/module/b/a/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/b;->c:Lcom/JoyFramework/module/b/a/a;

    invoke-static {v0}, Lcom/JoyFramework/module/b/a/a;->a(Lcom/JoyFramework/module/b/a/a;)Lcom/JoyFramework/module/b/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 87
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/b;->c:Lcom/JoyFramework/module/b/a/a;

    invoke-static {v0}, Lcom/JoyFramework/module/b/a/a;->a(Lcom/JoyFramework/module/b/a/a;)Lcom/JoyFramework/module/b/a/a$a;

    move-result-object v0

    iget v1, p0, Lcom/JoyFramework/module/b/a/b;->a:I

    invoke-interface {v0, v1}, Lcom/JoyFramework/module/b/a/a$a;->a(I)V

    .line 89
    :cond_13
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/b;->b:Lcom/JoyFramework/module/b/a/a$b;

    iget-object v0, v0, Lcom/JoyFramework/module/b/a/a$b;->e:Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->e()V

    .line 90
    return-void
.end method
