.class public Lcom/JoyFramework/module/login/d/a;
.super Lcom/JoyFramework/module/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/JoyFramework/module/login/b/a$b;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/JoyFramework/module/login/a/a;

.field private c:Lcom/JoyFramework/module/login/b/a$a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/JoyFramework/module/a;-><init>()V

    .line 32
    new-instance v0, Lcom/JoyFramework/module/login/e/a;

    invoke-direct {v0, p0}, Lcom/JoyFramework/module/login/e/a;-><init>(Lcom/JoyFramework/module/login/b/a$b;)V

    .line 33
    return-void
.end method


# virtual methods
.method public a(Lcom/JoyFramework/module/login/b/a$a;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/JoyFramework/module/login/d/a;->c:Lcom/JoyFramework/module/login/b/a$a;

    .line 67
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 24
    check-cast p1, Lcom/JoyFramework/module/login/b/a$a;

    invoke-virtual {p0, p1}, Lcom/JoyFramework/module/login/d/a;->a(Lcom/JoyFramework/module/login/b/a$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 78
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/remote/bean/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lcom/JoyFramework/module/login/a/a;

    invoke-direct {v0, p1}, Lcom/JoyFramework/module/login/a/a;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/a;->b:Lcom/JoyFramework/module/login/a/a;

    .line 72
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/a;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/JoyFramework/module/login/d/a;->b:Lcom/JoyFramework/module/login/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 83
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "l_forget_account_back"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 84
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/a;->a()V

    .line 85
    :cond_17
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "l_forget_account_back2"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2a

    .line 86
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/a;->a()V

    .line 89
    :cond_2a
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "joy_frg_forget_account"

    invoke-static {v0, v1}, Lcom/JoyFramework/d/as;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 38
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_frg_forget_account_listView"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/a;->a:Landroid/widget/ListView;

    .line 39
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/a;->c:Lcom/JoyFramework/module/login/b/a$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/JoyFramework/module/login/b/a$a;->a(Landroid/content/Context;)V

    .line 41
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "l_forget_account_back"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "l_forget_account_back2"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-object v1
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 60
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onDestroy()V

    .line 61
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/a;->c:Lcom/JoyFramework/module/login/b/a$a;

    invoke-interface {v0}, Lcom/JoyFramework/module/login/b/a$a;->b()V

    .line 62
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 54
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onResume()V

    .line 55
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/a;->c:Lcom/JoyFramework/module/login/b/a$a;

    invoke-interface {v0}, Lcom/JoyFramework/module/login/b/a$a;->a()V

    .line 56
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onStart()V

    .line 50
    return-void
.end method
