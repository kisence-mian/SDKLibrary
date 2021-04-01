.class public Lcom/JoyFramework/module/user/fragment/account/p;
.super Lcom/JoyFramework/module/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/JoyFramework/module/b/a/a$a;
.implements Lcom/JoyFramework/module/b/b/a$b;
.implements Lcom/JoyFramework/wight/PullToRefresh/a;


# instance fields
.field private a:Lcom/JoyFramework/module/b/b/a$a;

.field private b:Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;

.field private c:Lcom/JoyFramework/module/b/a/a;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/JoyFramework/remote/bean/ad;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Landroid/widget/TextView;

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/JoyFramework/module/a;-><init>()V

    .line 37
    const/16 v0, 0xa

    iput v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->e:I

    .line 44
    new-instance v0, Lcom/JoyFramework/module/b/d/a;

    invoke-direct {v0, p0}, Lcom/JoyFramework/module/b/d/a;-><init>(Lcom/JoyFramework/module/b/b/a$b;)V

    .line 45
    return-void
.end method

.method private e()V
    .registers 3

    .prologue
    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->d:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Lcom/JoyFramework/module/b/a/a;

    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/p;->d:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/JoyFramework/module/b/a/a;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->c:Lcom/JoyFramework/module/b/a/a;

    .line 72
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->b:Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;

    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/p;->c:Lcom/JoyFramework/module/b/a/a;

    invoke-virtual {v0, v1}, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->b:Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;

    invoke-virtual {v0, p0}, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->setOnRefreshListener(Lcom/JoyFramework/wight/PullToRefresh/a;)V

    .line 75
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->c:Lcom/JoyFramework/module/b/a/a;

    invoke-virtual {v0, p0}, Lcom/JoyFramework/module/b/a/a;->a(Lcom/JoyFramework/module/b/a/a$a;)V

    .line 77
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    .prologue
    .line 163
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/ad;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ad;->a()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 166
    const-string v2, "text"

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 168
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u8ba2\u5355\u53f7\u590d\u5236\u6210\u529f"

    const/4 v2, 0x0

    new-array v2, v2, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 169
    return-void
.end method

.method public a(Lcom/JoyFramework/module/b/b/a$a;)V
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lcom/JoyFramework/module/user/fragment/account/p;->a:Lcom/JoyFramework/module/b/b/a$a;

    .line 84
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 28
    check-cast p1, Lcom/JoyFramework/module/b/b/a$a;

    invoke-virtual {p0, p1}, Lcom/JoyFramework/module/user/fragment/account/p;->a(Lcom/JoyFramework/module/b/b/a$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 139
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->b:Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->a()V

    .line 140
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->b:Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->b()V

    .line 141
    iget v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->g:I

    if-gtz v0, :cond_1c

    .line 142
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->f:Landroid/widget/TextView;

    const-string v1, "\u6682\u65e0\u5145\u503c\u8bb0\u5f55"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :goto_1b
    return-void

    .line 145
    :cond_1c
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u6570\u636e\u5df2\u52a0\u8f7d\u5b8c\u6210"

    new-array v2, v2, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_1b
.end method

.method public a(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/JoyFramework/remote/bean/ad;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/JoyFramework/module/user/fragment/account/p;->g:I

    if-ne v0, v1, :cond_2f

    .line 104
    iget v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->e:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_15

    .line 105
    iget v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->e:I

    add-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->e:I

    .line 107
    :cond_15
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->b:Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->a()V

    .line 108
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->b:Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->b()V

    .line 109
    iget-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->h:Z

    if-nez v0, :cond_2e

    .line 110
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u6ca1\u6709\u66f4\u591a\u6570\u636e\u4e86"

    new-array v2, v2, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 135
    :cond_2e
    :goto_2e
    return-void

    .line 114
    :cond_2f
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->b:Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->a()V

    .line 116
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->b:Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->b()V

    .line 118
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_66

    .line 119
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 120
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 121
    if-ne v0, v1, :cond_66

    .line 122
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u6ca1\u6709\u66f4\u591a\u6570\u636e\u4e86"

    new-array v2, v2, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_2e

    .line 128
    :cond_66
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 130
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 132
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->g:I

    .line 134
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->c:Lcom/JoyFramework/module/b/a/a;

    invoke-virtual {v0}, Lcom/JoyFramework/module/b/a/a;->notifyDataSetChanged()V

    goto :goto_2e
.end method

.method public c()V
    .registers 4

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->h:Z

    .line 90
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->a:Lcom/JoyFramework/module/b/b/a$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/p;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/JoyFramework/module/user/fragment/account/p;->e:I

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/module/b/b/a$a;->a(Landroid/content/Context;I)V

    .line 91
    return-void
.end method

.method public d()V
    .registers 4

    .prologue
    .line 95
    iget v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->e:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->e:I

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->h:Z

    .line 97
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->a:Lcom/JoyFramework/module/b/b/a$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/p;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/JoyFramework/module/user/fragment/account/p;->e:I

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/module/b/b/a$a;->a(Landroid/content/Context;I)V

    .line 98
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 174
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/p;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "l_pay_record_back"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_18

    .line 175
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/p;->a()V

    .line 179
    :cond_17
    :goto_17
    return-void

    .line 176
    :cond_18
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/p;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "l_pay_record_close"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 177
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/user/fragment/account/p;->a(Landroid/app/Activity;)V

    goto :goto_17
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "joy_frg_payrecord"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 50
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "payRecordListView"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->b:Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;

    .line 51
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "payRecord_noRecord"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->f:Landroid/widget/TextView;

    .line 53
    invoke-direct {p0}, Lcom/JoyFramework/module/user/fragment/account/p;->e()V

    .line 55
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->a:Lcom/JoyFramework/module/b/b/a$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/p;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/JoyFramework/module/user/fragment/account/p;->e:I

    invoke-interface {v0, v2, v3}, Lcom/JoyFramework/module/b/b/a$a;->a(Landroid/content/Context;I)V

    .line 56
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "l_pay_record_back"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "l_pay_record_close"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-object v1
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 157
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onDestroy()V

    .line 158
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->a:Lcom/JoyFramework/module/b/b/a$a;

    invoke-interface {v0}, Lcom/JoyFramework/module/b/b/a$a;->b()V

    .line 159
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 151
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onResume()V

    .line 152
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/p;->a:Lcom/JoyFramework/module/b/b/a$a;

    invoke-interface {v0}, Lcom/JoyFramework/module/b/b/a$a;->a()V

    .line 153
    return-void
.end method
