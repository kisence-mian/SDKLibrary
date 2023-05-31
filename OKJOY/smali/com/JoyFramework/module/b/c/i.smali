.class public Lcom/JoyFramework/module/b/c/i;
.super Lcom/JoyFramework/module/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/JoyFramework/module/b/a/d$a;
.implements Lcom/JoyFramework/module/b/b/d$b;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/JoyFramework/module/b/a/d;

.field private c:Lcom/JoyFramework/module/b/b/d$a;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/JoyFramework/remote/bean/aq;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/widget/RelativeLayout;

.field private g:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/JoyFramework/module/a;-><init>()V

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Lcom/JoyFramework/module/b/c/i;->g:I

    .line 37
    new-instance v0, Lcom/JoyFramework/module/b/d/i;

    invoke-direct {v0, p0}, Lcom/JoyFramework/module/b/d/i;-><init>(Lcom/JoyFramework/module/b/b/d$b;)V

    .line 38
    return-void
.end method

.method private c()V
    .registers 3

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/i;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 67
    const-string v1, "orderId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/b/c/i;->d:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/i;->c:Lcom/JoyFramework/module/b/b/d$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/i;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/JoyFramework/module/b/b/d$a;->a(Landroid/content/Context;)V

    .line 72
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    .prologue
    .line 153
    iput p1, p0, Lcom/JoyFramework/module/b/c/i;->g:I

    .line 154
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/aq;

    .line 156
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/aq;->b()Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/JoyFramework/module/b/c/i;->c:Lcom/JoyFramework/module/b/b/d$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/i;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/JoyFramework/module/b/b/d$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public a(Lcom/JoyFramework/module/b/b/d$a;)V
    .registers 2

    .prologue
    .line 90
    iput-object p1, p0, Lcom/JoyFramework/module/b/c/i;->c:Lcom/JoyFramework/module/b/b/d$a;

    .line 91
    return-void
.end method

.method public a(Lcom/JoyFramework/remote/bean/ar;)V
    .registers 4

    .prologue
    .line 96
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/ar;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/ar;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 97
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/i;->a:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 99
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/i;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/ar;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/i;->b:Lcom/JoyFramework/module/b/a/d;

    invoke-virtual {v0}, Lcom/JoyFramework/module/b/a/d;->notifyDataSetChanged()V

    .line 106
    :cond_29
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 26
    check-cast p1, Lcom/JoyFramework/module/b/b/d$a;

    invoke-virtual {p0, p1}, Lcom/JoyFramework/module/b/c/i;->a(Lcom/JoyFramework/module/b/b/d$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v2, -0x1

    .line 110
    iget v0, p0, Lcom/JoyFramework/module/b/c/i;->g:I

    if-eq v0, v2, :cond_1f

    .line 111
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 112
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/i;->e:Ljava/util/ArrayList;

    iget v1, p0, Lcom/JoyFramework/module/b/c/i;->g:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/i;->b:Lcom/JoyFramework/module/b/a/d;

    invoke-virtual {v0}, Lcom/JoyFramework/module/b/a/d;->notifyDataSetChanged()V

    .line 114
    iput v2, p0, Lcom/JoyFramework/module/b/c/i;->g:I

    .line 119
    :cond_1f
    return-void
.end method

.method public b(I)V
    .registers 8

    .prologue
    .line 162
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 163
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/aq;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/aq;->b()Ljava/lang/String;

    move-result-object v0

    .line 165
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 166
    const-string v3, "url"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://apisdk.chuangyunet.net/Api/Pay/UnionPayNative/userCode/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/card/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/orderId/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/module/b/c/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/i;->a()V

    .line 171
    new-instance v0, Lcom/JoyFramework/module/b/c/c;

    invoke-direct {v0}, Lcom/JoyFramework/module/b/c/c;-><init>()V

    .line 172
    invoke-virtual {v0, v2}, Lcom/JoyFramework/module/b/c/c;->setArguments(Landroid/os/Bundle;)V

    .line 173
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/JoyFramework/module/b/c/i;->replaceFragmentToAccountActivity(Landroid/app/Fragment;Z)V

    .line 174
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 125
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 126
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 131
    iget v0, p0, Lcom/JoyFramework/module/b/c/i;->g:I

    if-eq v0, v1, :cond_7

    .line 132
    iput v1, p0, Lcom/JoyFramework/module/b/c/i;->g:I

    .line 134
    :cond_7
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 135
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 78
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/i;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "addCardRlLayout"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1c

    .line 79
    new-instance v0, Lcom/JoyFramework/module/b/c/h;

    invoke-direct {v0}, Lcom/JoyFramework/module/b/c/h;-><init>()V

    .line 80
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/JoyFramework/module/b/c/i;->replaceFragmentToAccountActivity(Landroid/app/Fragment;Z)V

    .line 86
    :cond_1b
    :goto_1b
    return-void

    .line 81
    :cond_1c
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/i;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "l_addunioncard_back"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_30

    .line 82
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/i;->a()V

    goto :goto_1b

    .line 83
    :cond_30
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/i;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "l_addunioncard_close"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1b

    .line 84
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/b/c/i;->a(Landroid/app/Activity;)V

    goto :goto_1b
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "joy_frg_unioninfo"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 44
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "unionInfoLV"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/JoyFramework/module/b/c/i;->a:Landroid/widget/ListView;

    .line 46
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "addCardRlLayout"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/b/c/i;->f:Landroid/widget/RelativeLayout;

    .line 47
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/i;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/module/b/c/i;->e:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Lcom/JoyFramework/module/b/a/d;

    iget-object v2, p0, Lcom/JoyFramework/module/b/c/i;->e:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Lcom/JoyFramework/module/b/a/d;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/JoyFramework/module/b/c/i;->b:Lcom/JoyFramework/module/b/a/d;

    .line 52
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/i;->a:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/JoyFramework/module/b/c/i;->b:Lcom/JoyFramework/module/b/a/d;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/i;->b:Lcom/JoyFramework/module/b/a/d;

    invoke-virtual {v0, p0}, Lcom/JoyFramework/module/b/a/d;->a(Lcom/JoyFramework/module/b/a/d$a;)V

    .line 56
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_addunioncard_back"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_addunioncard_close"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-direct {p0}, Lcom/JoyFramework/module/b/c/i;->c()V

    .line 60
    return-object v1
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 145
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onDestroy()V

    .line 146
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/i;->c:Lcom/JoyFramework/module/b/b/d$a;

    invoke-interface {v0}, Lcom/JoyFramework/module/b/b/d$a;->b()V

    .line 147
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 139
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onResume()V

    .line 140
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/i;->c:Lcom/JoyFramework/module/b/b/d$a;

    invoke-interface {v0}, Lcom/JoyFramework/module/b/b/d$a;->a()V

    .line 141
    return-void
.end method
