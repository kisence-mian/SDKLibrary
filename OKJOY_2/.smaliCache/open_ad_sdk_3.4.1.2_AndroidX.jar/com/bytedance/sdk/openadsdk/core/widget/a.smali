.class public Lcom/bytedance/sdk/openadsdk/core/widget/a;
.super Landroid/app/AlertDialog;
.source "AppDetailFullDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/widget/a$b;,
        Lcom/bytedance/sdk/openadsdk/core/widget/a$c;,
        Lcom/bytedance/sdk/openadsdk/core/widget/a$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ListView;

.field private h:Landroid/widget/Button;

.field private i:Lcom/bytedance/sdk/openadsdk/core/widget/a$a;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Landroid/view/View;

.field private q:Landroid/widget/TextView;

.field private r:Z

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/widget/a$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 62
    const-string v0, "DialogFullscreen"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 44
    const-string v0, "\u8865\u5145\u4e2d\uff0c\u53ef\u4e8e\u5e94\u7528\u5b98\u7f51\u67e5\u770b"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->j:Ljava/lang/String;

    .line 45
    const-string v0, "\u6682\u65e0"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->k:Ljava/lang/String;

    .line 47
    const-string v0, "http://sf6-ttcdn-tos.pstatp.com/obj/ad-tetris-site/personal-privacy-page.html"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->m:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->r:Z

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->s:Ljava/util/List;

    .line 63
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a:Landroid/content/Context;

    .line 64
    if-nez p1, :cond_29

    .line 65
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a:Landroid/content/Context;

    .line 67
    :cond_29
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->n:Ljava/lang/String;

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/a;)Lcom/bytedance/sdk/openadsdk/core/widget/a$a;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->i:Lcom/bytedance/sdk/openadsdk/core/widget/a$a;

    return-object p0
.end method

.method private a(Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->s:Ljava/util/List;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 120
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 122
    :cond_f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->s:Ljava/util/List;

    if-nez v0, :cond_1a

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->s:Ljava/util/List;

    .line 125
    :cond_1a
    if-eqz p1, :cond_49

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_23

    goto :goto_49

    .line 131
    :cond_23
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 132
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 133
    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 135
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 136
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/widget/a$c;

    invoke-direct {v3, p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/a$c;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->s:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    goto :goto_2b

    .line 139
    :cond_48
    return-void

    .line 127
    :cond_49
    :goto_49
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/widget/a$c;

    const-string v0, "\u8865\u5145\u4e2d\uff0c\u53ef\u4e8e\u5e94\u7528\u5b98\u7f51\u67e5\u770b"

    const-string v1, ""

    invoke-direct {p1, p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/a$c;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method private c()V
    .registers 6

    .line 219
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    .line 220
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a:Landroid/content/Context;

    const-string v3, "tt_open_app_detail_developer"

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->j:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 222
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :cond_1d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_38

    .line 225
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a:Landroid/content/Context;

    const-string v3, "tt_open_app_version"

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->k:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 227
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :cond_38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->m:Ljava/lang/String;

    if-eqz v0, :cond_41

    .line 230
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    :cond_41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_5c

    .line 234
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a:Landroid/content/Context;

    const-string v3, "tt_open_app_name"

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->l:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :cond_5c
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/widget/a$a;)Lcom/bytedance/sdk/openadsdk/core/widget/a;
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->i:Lcom/bytedance/sdk/openadsdk/core/widget/a$a;

    .line 58
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/a;
    .registers 2

    .line 206
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->l:Ljava/lang/String;

    .line 207
    return-object p0
.end method

.method protected a()V
    .registers 6

    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "http://sf6-ttcdn-tos.pstatp.com/obj/ad-tetris-site/personal-privacy-page.html"

    const-string v2, "\u8865\u5145\u4e2d\uff0c\u53ef\u4e8e\u5e94\u7528\u5b98\u7f51\u67e5\u770b"

    const-string v3, "\u6682\u65e0"

    if-eqz v0, :cond_1a

    .line 83
    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->k:Ljava/lang/String;

    .line 84
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->j:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->m:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->o:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Ljava/util/HashMap;)V

    .line 87
    return-void

    .line 89
    :cond_1a
    nop

    .line 91
    :try_start_1b
    new-instance v0, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->n:Ljava/lang/String;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/c;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_67

    .line 94
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/c;->b()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->k:Ljava/lang/String;

    .line 95
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 96
    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->k:Ljava/lang/String;

    .line 98
    :cond_36
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/c;->c()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->j:Ljava/lang/String;

    .line 99
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 100
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->j:Ljava/lang/String;

    .line 102
    :cond_44
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/c;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->m:Ljava/lang/String;

    .line 103
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 104
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->m:Ljava/lang/String;

    .line 106
    :cond_52
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/c;->g()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 108
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->l:Ljava/lang/String;

    .line 110
    :cond_5e
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/c;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->o:Ljava/util/HashMap;

    .line 111
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Ljava/util/HashMap;)V
    :try_end_67
    .catchall {:try_start_1b .. :try_end_67} :catchall_68

    .line 115
    :cond_67
    goto :goto_6c

    .line 113
    :catchall_68
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 116
    :goto_6c
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 215
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->r:Z

    .line 216
    return-void
.end method

.method protected b()V
    .registers 5

    .line 145
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a:Landroid/content/Context;

    const-string v2, "tt_app_detail_full_dialog_list_head"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->p:Landroid/view/View;

    .line 146
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a:Landroid/content/Context;

    const-string v2, "tt_app_developer_tv"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->b:Landroid/widget/TextView;

    .line 147
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->p:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a:Landroid/content/Context;

    const-string v2, "tt_app_privacy_url_tv"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->d:Landroid/widget/TextView;

    .line 148
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->p:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a:Landroid/content/Context;

    const-string v2, "tt_app_privacy_tv"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->q:Landroid/widget/TextView;

    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->p:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a:Landroid/content/Context;

    const-string v2, "tt_app_name_tv"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->f:Landroid/widget/TextView;

    .line 150
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->p:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a:Landroid/content/Context;

    const-string v2, "tt_app_version_tv"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->c:Landroid/widget/TextView;

    .line 151
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a:Landroid/content/Context;

    const-string v1, "tt_download_app_btn"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->h:Landroid/widget/Button;

    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a:Landroid/content/Context;

    const-string v1, "tt_privacy_list"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->g:Landroid/widget/ListView;

    .line 153
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a:Landroid/content/Context;

    const-string v1, "tt_app_detail_back_tv"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->e:Landroid/widget/TextView;

    .line 154
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 155
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->r:Z

    if-eqz v0, :cond_b7

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->h:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->h:Landroid/widget/Button;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_be

    .line 166
    :cond_b7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->h:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 169
    :goto_be
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/a$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/a$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/a$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->s:Ljava/util/List;

    if-eqz v0, :cond_f0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f0

    .line 187
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/a$b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a:Landroid/content/Context;

    .line 188
    const-string v2, "tt_app_detail_listview_item"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->s:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/a$b;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/a;Landroid/content/Context;ILjava/util/List;)V

    .line 190
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->g:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 192
    :cond_f0
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->i:Lcom/bytedance/sdk/openadsdk/core/widget/a$a;

    if-eqz v0, :cond_7

    .line 243
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/a$a;->b(Landroid/app/Dialog;)V

    .line 245
    :cond_7
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 72
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 73
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a:Landroid/content/Context;

    const-string v0, "tt_app_detail_full_dialog"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->setContentView(I)V

    .line 74
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a()V

    .line 78
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->b()V

    .line 79
    return-void
.end method

.method public show()V
    .registers 1

    .line 196
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 197
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->c()V

    .line 198
    return-void
.end method
