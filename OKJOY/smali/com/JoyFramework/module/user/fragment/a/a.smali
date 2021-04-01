.class public Lcom/JoyFramework/module/user/fragment/a/a;
.super Lcom/JoyFramework/module/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Z

.field private j:I

.field private k:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lcom/JoyFramework/module/a;-><init>()V

    .line 38
    iput-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->i:Z

    .line 39
    iput v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->j:I

    .line 41
    iput-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->k:Z

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/module/user/fragment/a/a;)V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/JoyFramework/module/user/fragment/a/a;->c()V

    return-void
.end method

.method private c()V
    .registers 6

    .prologue
    .line 225
    sget-object v0, Lcom/JoyFramework/a/a;->u:Ljava/lang/String;

    .line 227
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 228
    invoke-virtual {p0, v1}, Lcom/JoyFramework/module/user/fragment/a/a;->startActivity(Landroid/content/Intent;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_23} :catch_24

    .line 232
    :goto_23
    return-void

    .line 229
    :catch_24
    move-exception v0

    .line 230
    const-string v0, "\u62e8\u6253\u5ba2\u670d\u7535\u8bdd\u5931\u8d25"

    invoke-static {v0}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V

    goto :goto_23
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 115
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "id_service_qq_layout"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_21

    .line 117
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u8054\u7cfbQQ\u5ba2\u670d"

    new-instance v2, Lcom/JoyFramework/module/user/fragment/a/b;

    invoke-direct {v2, p0}, Lcom/JoyFramework/module/user/fragment/a/b;-><init>(Lcom/JoyFramework/module/user/fragment/a/a;)V

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$e;)V

    .line 222
    :cond_20
    :goto_20
    return-void

    .line 137
    :cond_21
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "id_service_phone_layout"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3e

    .line 139
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u62e8\u6253\u5ba2\u670d\u7535\u8bdd"

    new-instance v2, Lcom/JoyFramework/module/user/fragment/a/c;

    invoke-direct {v2, p0}, Lcom/JoyFramework/module/user/fragment/a/c;-><init>(Lcom/JoyFramework/module/user/fragment/a/a;)V

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$e;)V

    goto :goto_20

    .line 181
    :cond_3e
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "id_service_qq_group_layout"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5b

    .line 183
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u52a0\u5165QQ\u7fa4"

    new-instance v2, Lcom/JoyFramework/module/user/fragment/a/f;

    invoke-direct {v2, p0}, Lcom/JoyFramework/module/user/fragment/a/f;-><init>(Lcom/JoyFramework/module/user/fragment/a/a;)V

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$e;)V

    goto :goto_20

    .line 199
    :cond_5b
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "id_service_official_web_site_layout"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_78

    .line 201
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u6253\u5f00\u5b98\u7f51"

    new-instance v2, Lcom/JoyFramework/module/user/fragment/a/g;

    invoke-direct {v2, p0}, Lcom/JoyFramework/module/user/fragment/a/g;-><init>(Lcom/JoyFramework/module/user/fragment/a/a;)V

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$e;)V

    goto :goto_20

    .line 213
    :cond_78
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_service_back"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_96

    .line 214
    iget-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->k:Z

    if-eqz v0, :cond_92

    .line 215
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/user/fragment/a/a;->a(Landroid/app/Activity;)V

    goto :goto_20

    .line 218
    :cond_92
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/a/a;->a()V

    goto :goto_20

    .line 219
    :cond_96
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_service_close"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_20

    .line 220
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/user/fragment/a/a;->a(Landroid/app/Activity;)V

    goto/16 :goto_20
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "joy_frg_custom_service"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 49
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "id_service_qq_layout"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->b:Landroid/widget/LinearLayout;

    .line 50
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "id_service_qq_group_layout"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->a:Landroid/widget/LinearLayout;

    .line 52
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "id_service_phone_layout"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->c:Landroid/widget/LinearLayout;

    .line 54
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "id_service_official_web_site_layout"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->d:Landroid/widget/LinearLayout;

    .line 56
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_service_back"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_service_close"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "id_service_phone"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->e:Landroid/widget/TextView;

    .line 62
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "id_service_qq"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->f:Landroid/widget/TextView;

    .line 63
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "id_service_qq_group"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->g:Landroid/widget/TextView;

    .line 64
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "id_service_web_site"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->h:Landroid/widget/TextView;

    .line 66
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/a/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_10c

    .line 68
    const-string v2, "canBack"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/JoyFramework/module/user/fragment/a/a;->i:Z

    .line 69
    const-string v2, "canClose"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/JoyFramework/module/user/fragment/a/a;->j:I

    .line 70
    const-string v2, "isOutsideCallThisPage"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->k:Z

    .line 72
    :cond_10c
    iget v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->j:I

    if-eqz v0, :cond_123

    .line 73
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_service_close"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 76
    :cond_123
    return-object v1
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 236
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onResume()V

    .line 237
    return-void
.end method

.method public onStart()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 81
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onStart()V

    .line 82
    sget-object v0, Lcom/JoyFramework/a/a;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 83
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    :goto_13
    sget-object v0, Lcom/JoyFramework/a/a;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 90
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    :goto_20
    sget-object v0, Lcom/JoyFramework/a/a;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 97
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    :goto_2d
    sget-object v0, Lcom/JoyFramework/a/a;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 104
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 110
    :goto_3a
    return-void

    .line 85
    :cond_3b
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->e:Landroid/widget/TextView;

    sget-object v1, Lcom/JoyFramework/a/a;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFlags(I)V

    goto :goto_13

    .line 92
    :cond_51
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->f:Landroid/widget/TextView;

    sget-object v1, Lcom/JoyFramework/a/a;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFlags(I)V

    goto :goto_20

    .line 99
    :cond_67
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->g:Landroid/widget/TextView;

    sget-object v1, Lcom/JoyFramework/a/a;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFlags(I)V

    goto :goto_2d

    .line 106
    :cond_7d
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->h:Landroid/widget/TextView;

    sget-object v1, Lcom/JoyFramework/a/a;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/a;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFlags(I)V

    goto :goto_3a
.end method
