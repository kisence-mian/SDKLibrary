.class public Lcom/JoyFramework/module/b/c/h;
.super Lcom/JoyFramework/module/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Lcom/JoyFramework/module/b/b/c$b;


# instance fields
.field private a:Landroid/widget/RadioGroup;

.field private b:Landroid/widget/RadioButton;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/Button;

.field private i:Lcom/JoyFramework/module/b/b/c$a;

.field private j:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/JoyFramework/module/a;-><init>()V

    .line 39
    new-instance v0, Lcom/JoyFramework/module/b/d/g;

    invoke-direct {v0, p0}, Lcom/JoyFramework/module/b/d/g;-><init>(Lcom/JoyFramework/module/b/b/c$b;)V

    .line 40
    return-void
.end method

.method private c()V
    .registers 7

    .prologue
    .line 88
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/h;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/JoyFramework/module/b/c/h;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/JoyFramework/module/b/c/h;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 91
    iget-object v3, p0, Lcom/JoyFramework/module/b/c/h;->f:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 92
    iget-object v4, p0, Lcom/JoyFramework/module/b/c/h;->g:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 94
    const-string v5, "\u94f6\u884c\u5361\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p0, v0, v5}, Lcom/JoyFramework/module/b/c/h;->stringIsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6e

    const-string v5, "\u6301\u5361\u4eba\u59d3\u540d\u4e0d\u80fd\u4e3a\u7a7a"

    .line 95
    invoke-virtual {p0, v1, v5}, Lcom/JoyFramework/module/b/c/h;->stringIsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6e

    const-string v5, "\u8eab\u4efd\u8bc1\u4e0d\u80fd\u4e3a\u7a7a"

    .line 96
    invoke-virtual {p0, v2, v5}, Lcom/JoyFramework/module/b/c/h;->stringIsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6e

    const-string v5, "\u6709\u6548\u671f\u4e0d\u80fd\u4e3a\u7a7a"

    .line 97
    invoke-virtual {p0, v3, v5}, Lcom/JoyFramework/module/b/c/h;->stringIsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6e

    const-string v5, "\u624b\u673a\u53f7\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    .line 98
    invoke-virtual {p0, v4, v5}, Lcom/JoyFramework/module/b/c/h;->stringIsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 110
    :cond_6e
    :goto_6e
    return-void

    .line 102
    :cond_6f
    new-instance v5, Lcom/JoyFramework/remote/bean/aq;

    invoke-direct {v5}, Lcom/JoyFramework/remote/bean/aq;-><init>()V

    .line 103
    invoke-virtual {v5, v0}, Lcom/JoyFramework/remote/bean/aq;->a(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v5, v1}, Lcom/JoyFramework/remote/bean/aq;->c(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v5, v2}, Lcom/JoyFramework/remote/bean/aq;->d(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v5, v3}, Lcom/JoyFramework/remote/bean/aq;->e(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v5, v4}, Lcom/JoyFramework/remote/bean/aq;->b(Ljava/lang/String;)V

    .line 108
    iget v0, p0, Lcom/JoyFramework/module/b/c/h;->j:I

    invoke-virtual {v5, v0}, Lcom/JoyFramework/remote/bean/aq;->a(I)V

    .line 109
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/h;->i:Lcom/JoyFramework/module/b/b/c$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/h;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Lcom/JoyFramework/module/b/b/c$a;->a(Landroid/content/Context;Lcom/JoyFramework/remote/bean/aq;)V

    goto :goto_6e
.end method


# virtual methods
.method public a(Lcom/JoyFramework/module/b/b/c$a;)V
    .registers 2

    .prologue
    .line 115
    iput-object p1, p0, Lcom/JoyFramework/module/b/c/h;->i:Lcom/JoyFramework/module/b/b/c$a;

    .line 116
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 24
    check-cast p1, Lcom/JoyFramework/module/b/b/c$a;

    invoke-virtual {p0, p1}, Lcom/JoyFramework/module/b/c/h;->a(Lcom/JoyFramework/module/b/b/c$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 121
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/h;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 122
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 127
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 4
    .param p2    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    iput v0, p0, Lcom/JoyFramework/module/b/c/h;->j:I

    .line 83
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 68
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/h;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "AddBtn"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_16

    .line 69
    invoke-direct {p0}, Lcom/JoyFramework/module/b/c/h;->c()V

    .line 75
    :cond_15
    :goto_15
    return-void

    .line 70
    :cond_16
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/h;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_unioncard_back"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_28

    .line 71
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/h;->a()V

    goto :goto_15

    .line 72
    :cond_28
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/h;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_unioncard_close"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_15

    .line 73
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/b/c/h;->a(Landroid/app/Activity;)V

    goto :goto_15
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "joy_frg_unioncard"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 44
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "typeRG"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/JoyFramework/module/b/c/h;->a:Landroid/widget/RadioGroup;

    .line 45
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "cardRB"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/JoyFramework/module/b/c/h;->b:Landroid/widget/RadioButton;

    .line 46
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "unioncardET"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/JoyFramework/module/b/c/h;->c:Landroid/widget/EditText;

    .line 47
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "userNameET"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/JoyFramework/module/b/c/h;->d:Landroid/widget/EditText;

    .line 48
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "idcardET"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/JoyFramework/module/b/c/h;->e:Landroid/widget/EditText;

    .line 49
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "timeET"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/JoyFramework/module/b/c/h;->f:Landroid/widget/EditText;

    .line 50
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "phoneET"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/JoyFramework/module/b/c/h;->g:Landroid/widget/EditText;

    .line 51
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "AddBtn"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/JoyFramework/module/b/c/h;->h:Landroid/widget/Button;

    .line 52
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_unioncard_back"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_unioncard_close"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/h;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/h;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 58
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/h;->a:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/JoyFramework/module/b/c/h;->b:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/JoyFramework/module/b/c/h;->j:I

    .line 60
    return-object v1
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 137
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onDestroy()V

    .line 138
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/h;->i:Lcom/JoyFramework/module/b/b/c$a;

    invoke-interface {v0}, Lcom/JoyFramework/module/b/b/c$a;->b()V

    .line 139
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 131
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onResume()V

    .line 132
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/h;->i:Lcom/JoyFramework/module/b/b/c$a;

    invoke-interface {v0}, Lcom/JoyFramework/module/b/b/c$a;->a()V

    .line 133
    return-void
.end method
