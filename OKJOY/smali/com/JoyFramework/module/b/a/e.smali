.class Lcom/JoyFramework/module/b/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/JoyFramework/module/b/a/d$b;

.field final synthetic c:Lcom/JoyFramework/module/b/a/d;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/b/a/d;ILcom/JoyFramework/module/b/a/d$b;)V
    .registers 4

    .prologue
    .line 79
    iput-object p1, p0, Lcom/JoyFramework/module/b/a/e;->c:Lcom/JoyFramework/module/b/a/d;

    iput p2, p0, Lcom/JoyFramework/module/b/a/e;->a:I

    iput-object p3, p0, Lcom/JoyFramework/module/b/a/e;->b:Lcom/JoyFramework/module/b/a/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/e;->c:Lcom/JoyFramework/module/b/a/d;

    invoke-static {v0}, Lcom/JoyFramework/module/b/a/d;->a(Lcom/JoyFramework/module/b/a/d;)Lcom/JoyFramework/module/b/a/d$a;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 83
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/e;->c:Lcom/JoyFramework/module/b/a/d;

    invoke-static {v0}, Lcom/JoyFramework/module/b/a/d;->a(Lcom/JoyFramework/module/b/a/d;)Lcom/JoyFramework/module/b/a/d$a;

    move-result-object v0

    iget v1, p0, Lcom/JoyFramework/module/b/a/e;->a:I

    invoke-interface {v0, v1}, Lcom/JoyFramework/module/b/a/d$a;->a(I)V

    .line 85
    :cond_13
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/e;->b:Lcom/JoyFramework/module/b/a/d$b;

    iget-object v0, v0, Lcom/JoyFramework/module/b/a/d$b;->d:Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->e()V

    .line 86
    return-void
.end method
