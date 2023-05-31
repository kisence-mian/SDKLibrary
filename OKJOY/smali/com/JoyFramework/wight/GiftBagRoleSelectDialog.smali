.class public Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/wight/GiftBagRoleSelectDialog$a;
    }
.end annotation


# instance fields
.field private a:Lcom/JoyFramework/wight/GiftBagRoleSelectDialog$a;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/remote/bean/m;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/remote/bean/am;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/JoyFramework/remote/bean/m;

.field private l:Lcom/JoyFramework/remote/bean/am;

.field private m:Z

.field private n:Z

.field private o:Lcom/JoyFramework/wight/ServerOrRoleListDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/JoyFramework/wight/GiftBagRoleSelectDialog$a;)V
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 45
    iput-boolean v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->m:Z

    .line 46
    iput-boolean v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->n:Z

    .line 68
    iput-object p3, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->a:Lcom/JoyFramework/wight/GiftBagRoleSelectDialog$a;

    .line 69
    iput-object p1, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->b:Landroid/content/Context;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/JoyFramework/wight/GiftBagRoleSelectDialog$a;Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/JoyFramework/wight/GiftBagRoleSelectDialog$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/JoyFramework/wight/GiftBagRoleSelectDialog$a;",
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/remote/bean/m;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/remote/bean/am;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    const-string v0, "JoyGame_Dialog_theme"

    const-string v1, "style"

    invoke-static {p1, v0, v1}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;-><init>(Landroid/content/Context;ILcom/JoyFramework/wight/GiftBagRoleSelectDialog$a;)V

    .line 52
    iput-object p3, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->i:Ljava/util/List;

    .line 53
    iput-object p4, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->j:Ljava/util/List;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/JoyFramework/wight/GiftBagRoleSelectDialog$a;Ljava/util/List;Ljava/util/List;Lcom/JoyFramework/remote/bean/m;Lcom/JoyFramework/remote/bean/am;)V
    .registers 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/JoyFramework/wight/GiftBagRoleSelectDialog$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/JoyFramework/wight/GiftBagRoleSelectDialog$a;",
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/remote/bean/m;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/remote/bean/am;",
            ">;",
            "Lcom/JoyFramework/remote/bean/m;",
            "Lcom/JoyFramework/remote/bean/am;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    const-string v0, "JoyGame_Dialog_theme"

    const-string v1, "style"

    invoke-static {p1, v0, v1}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;-><init>(Landroid/content/Context;ILcom/JoyFramework/wight/GiftBagRoleSelectDialog$a;)V

    .line 60
    iput-object p3, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->i:Ljava/util/List;

    .line 61
    iput-object p4, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->j:Ljava/util/List;

    .line 62
    iput-object p5, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->k:Lcom/JoyFramework/remote/bean/m;

    .line 63
    iput-object p6, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->l:Lcom/JoyFramework/remote/bean/am;

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;Lcom/JoyFramework/remote/bean/am;)Lcom/JoyFramework/remote/bean/am;
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->l:Lcom/JoyFramework/remote/bean/am;

    return-object p1
.end method

.method static synthetic a(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;Lcom/JoyFramework/remote/bean/m;)Lcom/JoyFramework/remote/bean/m;
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->k:Lcom/JoyFramework/remote/bean/m;

    return-object p1
.end method

.method static synthetic a(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;)Lcom/JoyFramework/wight/GiftBagRoleSelectDialog$a;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->a:Lcom/JoyFramework/wight/GiftBagRoleSelectDialog$a;

    return-object v0
.end method

.method static synthetic a(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;Z)Z
    .registers 2

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;)Lcom/JoyFramework/remote/bean/m;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->k:Lcom/JoyFramework/remote/bean/m;

    return-object v0
.end method

.method static synthetic b(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;Z)Z
    .registers 2

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->n:Z

    return p1
.end method

.method static synthetic c(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;)Z
    .registers 2

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->n:Z

    return v0
.end method

.method static synthetic f(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;)Lcom/JoyFramework/remote/bean/am;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->l:Lcom/JoyFramework/remote/bean/am;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/remote/bean/am;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    if-eqz p1, :cond_1e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1e

    .line 121
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->j:Ljava/util/List;

    if-nez v0, :cond_13

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->j:Ljava/util/List;

    .line 123
    :cond_13
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 124
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 130
    :goto_1d
    return-void

    .line 126
    :cond_1e
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->j:Ljava/util/List;

    if-nez v0, :cond_29

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->j:Ljava/util/List;

    .line 128
    :cond_29
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1d
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "k_dialog_gift_bag_select_cancel"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_20

    .line 136
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->a:Lcom/JoyFramework/wight/GiftBagRoleSelectDialog$a;

    if-eqz v0, :cond_1f

    .line 137
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->a:Lcom/JoyFramework/wight/GiftBagRoleSelectDialog$a;

    invoke-interface {v0}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog$a;->a()V

    .line 138
    invoke-virtual {p0}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->dismiss()V

    .line 229
    :cond_1f
    :goto_1f
    return-void

    .line 140
    :cond_20
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "k_dialog_gift_bag_select_ensure"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_a2

    .line 142
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->a:Lcom/JoyFramework/wight/GiftBagRoleSelectDialog$a;

    if-eqz v0, :cond_1f

    .line 143
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->k:Lcom/JoyFramework/remote/bean/m;

    if-eqz v0, :cond_91

    .line 144
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->k:Lcom/JoyFramework/remote/bean/m;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/m;->b()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 146
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    iget-object v0, v0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    const-string v1, "\u8bf7\u9009\u62e9\u533a\u670d"

    new-array v2, v4, [Z

    aput-boolean v3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_1f

    .line 149
    :cond_54
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->l:Lcom/JoyFramework/remote/bean/am;

    if-eqz v0, :cond_74

    .line 150
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->l:Lcom/JoyFramework/remote/bean/am;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/am;->b()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 152
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    iget-object v0, v0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    const-string v1, "\u8bf7\u9009\u62e9\u89d2\u8272"

    new-array v2, v4, [Z

    aput-boolean v3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_1f

    .line 156
    :cond_74
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    iget-object v0, v0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    const-string v1, "\u8bf7\u9009\u62e9\u89d2\u8272"

    new-array v2, v4, [Z

    aput-boolean v3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_1f

    .line 159
    :cond_84
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->a:Lcom/JoyFramework/wight/GiftBagRoleSelectDialog$a;

    iget-object v1, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->k:Lcom/JoyFramework/remote/bean/m;

    iget-object v2, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->l:Lcom/JoyFramework/remote/bean/am;

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog$a;->a(Lcom/JoyFramework/remote/bean/m;Lcom/JoyFramework/remote/bean/am;)V

    .line 160
    invoke-virtual {p0}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->dismiss()V

    goto :goto_1f

    .line 162
    :cond_91
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    iget-object v0, v0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    const-string v1, "\u8bf7\u9009\u62e9\u533a\u670d"

    new-array v2, v4, [Z

    aput-boolean v3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto/16 :goto_1f

    .line 165
    :cond_a2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "k_dialog_gift_bag_select_sever_rl"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_fa

    .line 167
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->i:Ljava/util/List;

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e9

    .line 168
    new-instance v0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;

    iget-object v1, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->b:Landroid/content/Context;

    new-instance v2, Lcom/JoyFramework/wight/l;

    invoke-direct {v2, p0}, Lcom/JoyFramework/wight/l;-><init>(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;)V

    iget-object v3, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->i:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/JoyFramework/wight/ServerOrRoleListDialog;-><init>(Landroid/content/Context;Lcom/JoyFramework/wight/ServerOrRoleListDialog$a;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->o:Lcom/JoyFramework/wight/ServerOrRoleListDialog;

    .line 193
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->b:Landroid/content/Context;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 194
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->o:Lcom/JoyFramework/wight/ServerOrRoleListDialog;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->show()V

    goto/16 :goto_1f

    .line 196
    :cond_e9
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    iget-object v0, v0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    const-string v1, "\u6ca1\u6709\u533a\u670d\u4fe1\u606f"

    new-array v2, v4, [Z

    aput-boolean v3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto/16 :goto_1f

    .line 200
    :cond_fa
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "k_dialog_gift_bag_select_role_rl"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1f

    .line 202
    iget-boolean v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->m:Z

    if-nez v0, :cond_11f

    .line 203
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    iget-object v0, v0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    const-string v1, "\u8bf7\u9009\u62e9\u533a\u670d"

    new-array v2, v4, [Z

    aput-boolean v3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto/16 :goto_1f

    .line 206
    :cond_11f
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->j:Ljava/util/List;

    if-eqz v0, :cond_156

    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_156

    .line 207
    new-instance v0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;

    iget-object v1, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->b:Landroid/content/Context;

    new-instance v2, Lcom/JoyFramework/wight/m;

    invoke-direct {v2, p0}, Lcom/JoyFramework/wight/m;-><init>(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;)V

    iget-object v3, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->j:Ljava/util/List;

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/JoyFramework/wight/ServerOrRoleListDialog;-><init>(Landroid/content/Context;Lcom/JoyFramework/wight/ServerOrRoleListDialog$a;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->o:Lcom/JoyFramework/wight/ServerOrRoleListDialog;

    .line 222
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->b:Landroid/content/Context;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 223
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->o:Lcom/JoyFramework/wight/ServerOrRoleListDialog;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->show()V

    goto/16 :goto_1f

    .line 225
    :cond_156
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    iget-object v0, v0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    const-string v1, "\u5f53\u524d\u533a\u670d\u65e0\u89d2\u8272"

    new-array v2, v4, [Z

    aput-boolean v3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto/16 :goto_1f
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 74
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 75
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->b:Landroid/content/Context;

    const-string v2, "l_dialog_gift_bag_role_select_k"

    const-string v3, "layout"

    .line 76
    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 78
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->b:Landroid/content/Context;

    const-string v2, "k_dialog_gift_bag_select_server"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->e:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->b:Landroid/content/Context;

    const-string v2, "k_dialog_gift_bag_select_role"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->f:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->k:Lcom/JoyFramework/remote/bean/m;

    if-eqz v0, :cond_61

    .line 82
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->k:Lcom/JoyFramework/remote/bean/m;

    invoke-virtual {v2}, Lcom/JoyFramework/remote/bean/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->b:Landroid/content/Context;

    const-string v4, "joygame_theme_blue"

    invoke-static {v3, v4}, Lcom/JoyFramework/d/as;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iput-boolean v5, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->m:Z

    .line 86
    :cond_61
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->l:Lcom/JoyFramework/remote/bean/am;

    if-eqz v0, :cond_89

    .line 87
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->l:Lcom/JoyFramework/remote/bean/am;

    invoke-virtual {v2}, Lcom/JoyFramework/remote/bean/am;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->b:Landroid/content/Context;

    const-string v4, "joygame_theme_blue"

    invoke-static {v3, v4}, Lcom/JoyFramework/d/as;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    iput-boolean v5, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->n:Z

    .line 92
    :cond_89
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->b:Landroid/content/Context;

    const-string v2, "k_dialog_gift_bag_select_sever_rl"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->g:Landroid/widget/RelativeLayout;

    .line 93
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->b:Landroid/content/Context;

    const-string v2, "k_dialog_gift_bag_select_role_rl"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->h:Landroid/widget/RelativeLayout;

    .line 94
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->b:Landroid/content/Context;

    const-string v2, "k_dialog_gift_bag_select_cancel"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->c:Landroid/widget/TextView;

    .line 99
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->b:Landroid/content/Context;

    const-string v2, "k_dialog_gift_bag_select_ensure"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->d:Landroid/widget/TextView;

    .line 100
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-virtual {p0, v1}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->setContentView(Landroid/view/View;)V

    .line 103
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 108
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->o:Lcom/JoyFramework/wight/ServerOrRoleListDialog;

    if-eqz v0, :cond_f

    .line 109
    iget-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->o:Lcom/JoyFramework/wight/ServerOrRoleListDialog;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->dismiss()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->o:Lcom/JoyFramework/wight/ServerOrRoleListDialog;

    .line 112
    :cond_f
    return-void
.end method
