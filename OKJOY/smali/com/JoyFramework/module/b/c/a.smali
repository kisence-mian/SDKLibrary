.class public Lcom/JoyFramework/module/b/c/a;
.super Lcom/JoyFramework/module/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/JoyFramework/module/b/b/b$b;


# instance fields
.field a:I

.field private b:Lcom/JoyFramework/module/b/b/b$a;

.field private c:Lcom/JoyFramework/remote/bean/ab;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/ListView;

.field private h:Lcom/JoyFramework/module/b/a/c;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/JoyFramework/remote/bean/ae;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/JoyFramework/module/a;-><init>()V

    .line 55
    new-instance v0, Lcom/JoyFramework/module/b/d/c;

    invoke-direct {v0, p0}, Lcom/JoyFramework/module/b/d/c;-><init>(Lcom/JoyFramework/module/b/b/b$b;)V

    .line 56
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 212
    new-instance v0, Lcom/JoyFramework/module/b/c/i;

    invoke-direct {v0}, Lcom/JoyFramework/module/b/c/i;-><init>()V

    .line 214
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 215
    const-string v2, "orderId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/b/c/i;->setArguments(Landroid/os/Bundle;)V

    .line 217
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/JoyFramework/module/b/c/a;->replaceFragmentToAccountActivity(Landroid/app/Fragment;Z)V

    .line 219
    return-void
.end method


# virtual methods
.method public a(Lcom/JoyFramework/module/b/b/b$a;)V
    .registers 2

    .prologue
    .line 170
    iput-object p1, p0, Lcom/JoyFramework/module/b/c/a;->b:Lcom/JoyFramework/module/b/b/b$a;

    .line 171
    return-void
.end method

.method public a(Lcom/JoyFramework/remote/bean/af;)V
    .registers 5

    .prologue
    .line 178
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 179
    const-string v1, "url"

    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/af;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v1, "orderId"

    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/af;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v1, Lcom/JoyFramework/module/b/c/c;

    invoke-direct {v1}, Lcom/JoyFramework/module/b/c/c;-><init>()V

    .line 183
    invoke-virtual {v1, v0}, Lcom/JoyFramework/module/b/c/c;->setArguments(Landroid/os/Bundle;)V

    .line 184
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/JoyFramework/module/b/c/a;->replaceFragmentToAccountActivity(Landroid/app/Fragment;Z)V

    .line 186
    return-void
.end method

.method public a(Lcom/JoyFramework/remote/bean/ag;)V
    .registers 5

    .prologue
    .line 224
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 225
    const-string v1, "url"

    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/ag;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v1, "orderId"

    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/ag;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v1, Lcom/JoyFramework/module/b/c/c;

    invoke-direct {v1}, Lcom/JoyFramework/module/b/c/c;-><init>()V

    .line 229
    invoke-virtual {v1, v0}, Lcom/JoyFramework/module/b/c/c;->setArguments(Landroid/os/Bundle;)V

    .line 230
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/JoyFramework/module/b/c/a;->replaceFragmentToAccountActivity(Landroid/app/Fragment;Z)V

    .line 231
    return-void
.end method

.method public a(Lcom/JoyFramework/remote/bean/ah;)V
    .registers 5

    .prologue
    .line 191
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 192
    const-string v1, "url"

    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/ah;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v1, "orderId"

    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/ah;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v1, Lcom/JoyFramework/module/b/c/c;

    invoke-direct {v1}, Lcom/JoyFramework/module/b/c/c;-><init>()V

    .line 196
    invoke-virtual {v1, v0}, Lcom/JoyFramework/module/b/c/c;->setArguments(Landroid/os/Bundle;)V

    .line 197
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/JoyFramework/module/b/c/a;->replaceFragmentToAccountActivity(Landroid/app/Fragment;Z)V

    .line 208
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 35
    check-cast p1, Lcom/JoyFramework/module/b/b/b$a;

    invoke-virtual {p0, p1}, Lcom/JoyFramework/module/b/c/a;->a(Lcom/JoyFramework/module/b/b/b$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 236
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/b/c/a;->b(Landroid/app/Activity;)V

    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 82
    const-string v2, "pay_info"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/JoyFramework/remote/bean/ab;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/ab;

    iput-object v0, p0, Lcom/JoyFramework/module/b/c/a;->c:Lcom/JoyFramework/remote/bean/ab;

    .line 86
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/a;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u00a5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/JoyFramework/module/b/c/a;->c:Lcom/JoyFramework/remote/bean/ab;

    invoke-virtual {v3}, Lcom/JoyFramework/remote/bean/ab;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/a;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/JoyFramework/module/b/c/a;->c:Lcom/JoyFramework/remote/bean/ab;

    invoke-virtual {v2}, Lcom/JoyFramework/remote/bean/ab;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/a;->c:Lcom/JoyFramework/remote/bean/ab;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ab;->a()[Lcom/JoyFramework/remote/bean/ae;

    move-result-object v2

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/module/b/c/a;->i:Ljava/util/ArrayList;

    .line 92
    array-length v3, v2

    move v0, v1

    :goto_56
    if-ge v0, v3, :cond_68

    aget-object v4, v2, v0

    .line 93
    invoke-virtual {v4}, Lcom/JoyFramework/remote/bean/ae;->c()I

    move-result v5

    if-eqz v5, :cond_65

    .line 94
    iget-object v5, p0, Lcom/JoyFramework/module/b/c/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 98
    :cond_68
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/ae;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/JoyFramework/remote/bean/ae;->a(Z)V

    .line 99
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/ae;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ae;->b()I

    move-result v0

    iput v0, p0, Lcom/JoyFramework/module/b/c/a;->a:I

    .line 100
    new-instance v0, Lcom/JoyFramework/module/b/a/c;

    iget-object v1, p0, Lcom/JoyFramework/module/b/c/a;->i:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/JoyFramework/module/b/a/c;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/JoyFramework/module/b/c/a;->h:Lcom/JoyFramework/module/b/a/c;

    .line 101
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/a;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/JoyFramework/module/b/c/a;->h:Lcom/JoyFramework/module/b/a/c;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/a;->g:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 110
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "PayBtn"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_23

    .line 111
    iget v0, p0, Lcom/JoyFramework/module/b/c/a;->a:I

    packed-switch v0, :pswitch_data_5e

    .line 127
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u8bf7\u9009\u62e9\u652f\u4ed8\u65b9\u5f0f"

    const/4 v2, 0x0

    new-array v2, v2, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 131
    :cond_23
    :goto_23
    return-void

    .line 113
    :pswitch_24
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/a;->b:Lcom/JoyFramework/module/b/b/b$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/module/b/c/a;->c:Lcom/JoyFramework/remote/bean/ab;

    invoke-virtual {v2}, Lcom/JoyFramework/remote/bean/ab;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/module/b/b/b$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_23

    .line 116
    :pswitch_34
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/a;->b:Lcom/JoyFramework/module/b/b/b$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/module/b/c/a;->c:Lcom/JoyFramework/remote/bean/ab;

    invoke-virtual {v2}, Lcom/JoyFramework/remote/bean/ab;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/module/b/b/b$a;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_23

    .line 120
    :pswitch_44
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/a;->c:Lcom/JoyFramework/remote/bean/ab;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ab;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/JoyFramework/module/b/c/a;->b(Ljava/lang/String;)V

    goto :goto_23

    .line 123
    :pswitch_4e
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/a;->b:Lcom/JoyFramework/module/b/b/b$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/module/b/c/a;->c:Lcom/JoyFramework/remote/bean/ab;

    invoke-virtual {v2}, Lcom/JoyFramework/remote/bean/ab;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/module/b/b/b$a;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_23

    .line 111
    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_24
        :pswitch_34
        :pswitch_44
        :pswitch_4e
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "joy_frg_payview"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 62
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "amountTV"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/b/c/a;->d:Landroid/widget/TextView;

    .line 63
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "productNameTV"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/b/c/a;->e:Landroid/widget/TextView;

    .line 64
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "PayBtn"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/JoyFramework/module/b/c/a;->f:Landroid/widget/Button;

    .line 65
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "typeLV"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/JoyFramework/module/b/c/a;->g:Landroid/widget/ListView;

    .line 66
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_pay_close"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/JoyFramework/module/b/c/b;

    invoke-direct {v2, p0}, Lcom/JoyFramework/module/b/c/b;-><init>(Lcom/JoyFramework/module/b/c/a;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/a;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/a;->c()V

    .line 77
    return-object v1
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 247
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onDestroy()V

    .line 248
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/a;->b:Lcom/JoyFramework/module/b/b/b$a;

    invoke-interface {v0}, Lcom/JoyFramework/module/b/b/b$a;->b()V

    .line 249
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/ae;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ae;->b()I

    move-result v0

    iput v0, p0, Lcom/JoyFramework/module/b/c/a;->a:I

    move v1, v2

    .line 138
    :goto_10
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_27

    .line 139
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/ae;

    invoke-virtual {v0, v2}, Lcom/JoyFramework/remote/bean/ae;->a(Z)V

    .line 138
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 141
    :cond_27
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/ae;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/remote/bean/ae;->a(Z)V

    .line 143
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/a;->h:Lcom/JoyFramework/module/b/a/c;

    invoke-virtual {v0}, Lcom/JoyFramework/module/b/a/c;->notifyDataSetChanged()V

    .line 145
    iget v0, p0, Lcom/JoyFramework/module/b/c/a;->a:I

    packed-switch v0, :pswitch_data_8a

    .line 159
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 160
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u8bf7\u9009\u62e9\u652f\u4ed8\u65b9\u5f0f"

    new-array v2, v2, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 165
    :cond_4e
    :goto_4e
    return-void

    .line 147
    :pswitch_4f
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/a;->b:Lcom/JoyFramework/module/b/b/b$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/module/b/c/a;->c:Lcom/JoyFramework/remote/bean/ab;

    invoke-virtual {v2}, Lcom/JoyFramework/remote/bean/ab;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/module/b/b/b$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4e

    .line 150
    :pswitch_5f
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/a;->b:Lcom/JoyFramework/module/b/b/b$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/module/b/c/a;->c:Lcom/JoyFramework/remote/bean/ab;

    invoke-virtual {v2}, Lcom/JoyFramework/remote/bean/ab;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/module/b/b/b$a;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4e

    .line 153
    :pswitch_6f
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/a;->c:Lcom/JoyFramework/remote/bean/ab;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ab;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/JoyFramework/module/b/c/a;->b(Ljava/lang/String;)V

    goto :goto_4e

    .line 156
    :pswitch_79
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/a;->b:Lcom/JoyFramework/module/b/b/b$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/module/b/c/a;->c:Lcom/JoyFramework/remote/bean/ab;

    invoke-virtual {v2}, Lcom/JoyFramework/remote/bean/ab;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/module/b/b/b$a;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4e

    .line 145
    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_5f
        :pswitch_6f
        :pswitch_79
    .end packed-switch
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 241
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onResume()V

    .line 242
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/a;->b:Lcom/JoyFramework/module/b/b/b$a;

    invoke-interface {v0}, Lcom/JoyFramework/module/b/b/b$a;->a()V

    .line 243
    return-void
.end method
