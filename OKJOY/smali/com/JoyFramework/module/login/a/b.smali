.class Lcom/JoyFramework/module/login/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:I

.field final synthetic c:Lcom/JoyFramework/module/login/a/a$a;

.field final synthetic d:Lcom/JoyFramework/module/login/a/a;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/login/a/a;Landroid/view/ViewGroup;ILcom/JoyFramework/module/login/a/a$a;)V
    .registers 5

    .prologue
    .line 80
    iput-object p1, p0, Lcom/JoyFramework/module/login/a/b;->d:Lcom/JoyFramework/module/login/a/a;

    iput-object p2, p0, Lcom/JoyFramework/module/login/a/b;->a:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/JoyFramework/module/login/a/b;->b:I

    iput-object p4, p0, Lcom/JoyFramework/module/login/a/b;->c:Lcom/JoyFramework/module/login/a/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 83
    iget-object v0, p0, Lcom/JoyFramework/module/login/a/b;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 84
    const-string v2, "text"

    iget-object v1, p0, Lcom/JoyFramework/module/login/a/b;->d:Lcom/JoyFramework/module/login/a/a;

    invoke-static {v1}, Lcom/JoyFramework/module/login/a/a;->a(Lcom/JoyFramework/module/login/a/a;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/JoyFramework/module/login/a/b;->b:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/JoyFramework/remote/bean/a;

    invoke-virtual {v1}, Lcom/JoyFramework/remote/bean/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 86
    iget-object v0, p0, Lcom/JoyFramework/module/login/a/b;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7528\u6237\u7f16\u53f7\u590d\u5236\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 87
    iget-object v0, p0, Lcom/JoyFramework/module/login/a/b;->c:Lcom/JoyFramework/module/login/a/a$a;

    iget-object v0, v0, Lcom/JoyFramework/module/login/a/a$a;->f:Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->e()V

    .line 88
    return-void
.end method
