.class public Lcom/JoyFramework/module/login/d/k;
.super Lcom/JoyFramework/module/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/JoyFramework/module/login/b/g$b;
.implements Lcom/JoyFramework/wight/SwitchAccountPopupEditText$a;
.implements Lcom/JoyFramework/wight/SwitchAccountPopupEditText$b;


# instance fields
.field private a:Lcom/JoyFramework/module/login/b/g$a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/JoyFramework/user/LoginUser$LoginType;

.field private e:Landroid/view/View;

.field private f:Lcom/JoyFramework/wight/SwitchAccountPopupEditText;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/JoyFramework/module/a;-><init>()V

    .line 49
    new-instance v0, Lcom/JoyFramework/module/login/e/s;

    invoke-direct {v0, p0}, Lcom/JoyFramework/module/login/e/s;-><init>(Lcom/JoyFramework/module/login/b/g$b;)V

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/module/login/d/k;Lcom/JoyFramework/user/LoginUser$LoginType;)Lcom/JoyFramework/user/LoginUser$LoginType;
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/JoyFramework/module/login/d/k;->d:Lcom/JoyFramework/user/LoginUser$LoginType;

    return-object p1
.end method

.method static synthetic a(Lcom/JoyFramework/module/login/d/k;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/JoyFramework/module/login/d/k;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/JoyFramework/module/login/d/k;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/JoyFramework/module/login/d/k;Landroid/app/Fragment;Z)V
    .registers 3

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/JoyFramework/module/login/d/k;->replaceFragmentToActivity(Landroid/app/Fragment;Z)V

    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/module/login/d/k;Lcom/JoyFramework/remote/bean/w;)V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/login/d/k;->d(Lcom/JoyFramework/remote/bean/w;)V

    return-void
.end method

.method private a(Lcom/JoyFramework/remote/bean/w;Z)V
    .registers 9

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u4e3a\u4e86\u60a8\u7684\u8d26\u53f7\u5b89\u5168\uff0c\u8bf7\u5c3d\u5feb\u7ed1\u5b9a\u60a8\u7684\u624b\u673a\u3002\u4e00\u65e6\u4e22\u5931\uff0c\u6982\u4e0d\u8d1f\u8d23\u3002"

    new-instance v2, Lcom/JoyFramework/module/login/d/l;

    invoke-direct {v2, p0, p1}, Lcom/JoyFramework/module/login/d/l;-><init>(Lcom/JoyFramework/module/login/d/k;Lcom/JoyFramework/remote/bean/w;)V

    const-string v3, "\u7ed1\u5b9a\u624b\u673a"

    const-string v4, "\u53d6\u6d88"

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$c;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 317
    return-void
.end method

.method static synthetic b(Lcom/JoyFramework/module/login/d/k;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/k;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/JoyFramework/module/login/d/k;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/JoyFramework/module/login/d/k;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/JoyFramework/module/login/d/k;Landroid/app/Fragment;Z)V
    .registers 3

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/JoyFramework/module/login/d/k;->replaceFragmentToActivity(Landroid/app/Fragment;Z)V

    return-void
.end method

.method private b(Lcom/JoyFramework/remote/bean/w;Z)V
    .registers 9

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u4e3a\u4e86\u60a8\u7684\u8d26\u53f7\u5b89\u5168\uff0c\u8bf7\u5c3d\u5feb\u7ed1\u5b9a\u60a8\u7684\u624b\u673a\u3002\u4e00\u65e6\u4e22\u5931\uff0c\u6982\u4e0d\u8d1f\u8d23\u3002"

    new-instance v2, Lcom/JoyFramework/module/login/d/n;

    invoke-direct {v2, p0, p1}, Lcom/JoyFramework/module/login/d/n;-><init>(Lcom/JoyFramework/module/login/d/k;Lcom/JoyFramework/remote/bean/w;)V

    const-string v3, "\u7ed1\u5b9a\u624b\u673a"

    const-string v4, "\u7ed1\u5b9a\u8d26\u53f7"

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$c;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 415
    return-void
.end method

.method static synthetic c(Lcom/JoyFramework/module/login/d/k;)Lcom/JoyFramework/user/LoginUser$LoginType;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/k;->d:Lcom/JoyFramework/user/LoginUser$LoginType;

    return-object v0
.end method

.method static synthetic c(Lcom/JoyFramework/module/login/d/k;Landroid/app/Fragment;Z)V
    .registers 3

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/JoyFramework/module/login/d/k;->replaceFragmentToActivity(Landroid/app/Fragment;Z)V

    return-void
.end method

.method static synthetic d(Lcom/JoyFramework/module/login/d/k;)Landroid/view/View;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/k;->e:Landroid/view/View;

    return-object v0
.end method

.method private d(Lcom/JoyFramework/remote/bean/w;)V
    .registers 4

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/JoyFramework/module/login/d/q;

    invoke-direct {v1, p0, p1}, Lcom/JoyFramework/module/login/d/q;-><init>(Lcom/JoyFramework/module/login/d/k;Lcom/JoyFramework/remote/bean/w;)V

    invoke-static {v0, v1}, Lcom/JoyFramework/d/bw;->a(Landroid/app/Activity;Lcom/JoyFramework/d/ba$b;)V

    .line 451
    return-void
.end method

.method static synthetic e(Lcom/JoyFramework/module/login/d/k;)Lcom/JoyFramework/wight/SwitchAccountPopupEditText;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/k;->f:Lcom/JoyFramework/wight/SwitchAccountPopupEditText;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/JoyFramework/module/login/b/g$a;)V
    .registers 2

    .prologue
    .line 201
    iput-object p1, p0, Lcom/JoyFramework/module/login/d/k;->a:Lcom/JoyFramework/module/login/b/g$a;

    .line 202
    return-void
.end method

.method public a(Lcom/JoyFramework/remote/bean/w;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 207
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/k;->d:Lcom/JoyFramework/user/LoginUser$LoginType;

    sget-object v1, Lcom/JoyFramework/user/LoginUser$LoginType;->FAST_LOGIN:Lcom/JoyFramework/user/LoginUser$LoginType;

    if-ne v0, v1, :cond_70

    .line 209
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 210
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/k;->b:Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/k;->c:Ljava/lang/String;

    .line 222
    :goto_1d
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/module/login/d/v;->b:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 224
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/JoyFramework/module/login/d/v;->b:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/bw;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 225
    sget v1, Lcom/JoyFramework/module/login/d/v;->a:I

    if-lt v0, v1, :cond_6c

    .line 227
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/module/login/d/v;->b:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/JoyFramework/d/bw;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 229
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 231
    invoke-direct {p0, p1, v4}, Lcom/JoyFramework/module/login/d/k;->b(Lcom/JoyFramework/remote/bean/w;Z)V

    .line 258
    :cond_48
    :goto_48
    return-void

    .line 213
    :cond_49
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 214
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/k;->b:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/k;->c:Ljava/lang/String;

    goto :goto_1d

    .line 217
    :cond_60
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    new-array v2, v4, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_48

    .line 234
    :cond_6c
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/login/d/k;->d(Lcom/JoyFramework/remote/bean/w;)V

    goto :goto_48

    .line 238
    :cond_70
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->h()I

    move-result v0

    if-nez v0, :cond_7a

    .line 239
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/login/d/k;->d(Lcom/JoyFramework/remote/bean/w;)V

    goto :goto_48

    .line 242
    :cond_7a
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/module/login/d/v;->c:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 244
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/JoyFramework/module/login/d/v;->c:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/bw;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 245
    sget v1, Lcom/JoyFramework/module/login/d/v;->a:I

    if-lt v0, v1, :cond_a6

    .line 247
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/module/login/d/v;->c:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/JoyFramework/d/bw;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 249
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 251
    invoke-direct {p0, p1, v4}, Lcom/JoyFramework/module/login/d/k;->a(Lcom/JoyFramework/remote/bean/w;Z)V

    goto :goto_48

    .line 254
    :cond_a6
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/login/d/k;->d(Lcom/JoyFramework/remote/bean/w;)V

    goto :goto_48
.end method

.method public a(Lcom/JoyFramework/user/LoginUser;)V
    .registers 5

    .prologue
    .line 186
    if-eqz p1, :cond_24

    .line 188
    invoke-virtual {p1}, Lcom/JoyFramework/user/LoginUser;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/k;->b:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/k;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 190
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/k;->f:Lcom/JoyFramework/wight/SwitchAccountPopupEditText;

    iget-object v1, p0, Lcom/JoyFramework/module/login/d/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->setText(Ljava/lang/String;)V

    .line 192
    :cond_17
    invoke-virtual {p1}, Lcom/JoyFramework/user/LoginUser;->getPsw()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/k;->c:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Lcom/JoyFramework/user/LoginUser;->getType()Lcom/JoyFramework/user/LoginUser$LoginType;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/k;->d:Lcom/JoyFramework/user/LoginUser$LoginType;

    .line 197
    :goto_23
    return-void

    .line 195
    :cond_24
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u8be5\u8d26\u53f7\u5df2\u4e22\u5931\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55!"

    const/4 v2, 0x0

    new-array v2, v2, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_23
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 40
    check-cast p1, Lcom/JoyFramework/module/login/b/g$a;

    invoke-virtual {p0, p1}, Lcom/JoyFramework/module/login/d/k;->a(Lcom/JoyFramework/module/login/b/g$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    .prologue
    const/high16 v3, 0x10000000

    .line 455
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-static {v0, p1, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 456
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/k;->d:Lcom/JoyFramework/user/LoginUser$LoginType;

    sget-object v1, Lcom/JoyFramework/user/LoginUser$LoginType;->PHONE_CODE:Lcom/JoyFramework/user/LoginUser$LoginType;

    if-ne v0, v1, :cond_3d

    .line 457
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/JoyFramework/module/login/AccountPhoneActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 458
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 460
    const-string v1, "showPage"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 461
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/k;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 462
    const-string v1, "pass_text"

    iget-object v2, p0, Lcom/JoyFramework/module/login/d/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    :cond_35
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 481
    :goto_3c
    return-void

    .line 469
    :cond_3d
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/JoyFramework/module/login/AccountPhoneActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 470
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 472
    const-string v1, "showPage"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 473
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/k;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 474
    const-string v1, "pass_text"

    iget-object v2, p0, Lcom/JoyFramework/module/login/d/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    :cond_60
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3c
.end method

.method public b(Lcom/JoyFramework/remote/bean/w;)V
    .registers 6

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u60a8\u5df2\u7ed1\u5b9a\u624b\u673a\uff0c\u8bf7\u4f7f\u7528\u624b\u673a\u767b\u5f55"

    new-instance v2, Lcom/JoyFramework/module/login/d/r;

    invoke-direct {v2, p0, p1}, Lcom/JoyFramework/module/login/d/r;-><init>(Lcom/JoyFramework/module/login/d/k;Lcom/JoyFramework/remote/bean/w;)V

    const-string v3, "\u786e\u5b9a"

    invoke-static {v0, v1, v2, v3}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$e;Ljava/lang/String;)V

    .line 500
    return-void
.end method

.method public b(Lcom/JoyFramework/user/LoginUser;)V
    .registers 8

    .prologue
    .line 523
    if-eqz p1, :cond_3a

    .line 524
    invoke-virtual {p1}, Lcom/JoyFramework/user/LoginUser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 525
    invoke-virtual {p1}, Lcom/JoyFramework/user/LoginUser;->getPsw()Ljava/lang/String;

    move-result-object v4

    .line 526
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 527
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u786e\u5b9a\u8981\u5220\u9664\u8d26\u53f7\uff1a\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n\u5728\u672c\u8bbe\u5907\u4e0a\u7684\u767b\u5f55\u8bb0\u5f55\uff1f\n\uff08\u4e0d\u4f1a\u5220\u9664\u8d26\u53f7\u672c\u8eab\uff09"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/JoyFramework/module/login/d/t;

    invoke-direct {v2, p0, v3, v4}, Lcom/JoyFramework/module/login/d/t;-><init>(Lcom/JoyFramework/module/login/d/k;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "\u5220\u9664"

    const-string v4, "\u53d6\u6d88"

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$c;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 554
    :cond_3a
    return-void
.end method

.method public c(Lcom/JoyFramework/remote/bean/w;)V
    .registers 6

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u60a8\u5df2\u7ed1\u5b9a\u8d26\u53f7\uff0c\u8bf7\u4f7f\u7528\u8d26\u53f7\u767b\u5f55"

    new-instance v2, Lcom/JoyFramework/module/login/d/s;

    invoke-direct {v2, p0, p1}, Lcom/JoyFramework/module/login/d/s;-><init>(Lcom/JoyFramework/module/login/d/k;Lcom/JoyFramework/remote/bean/w;)V

    const-string v3, "\u786e\u5b9a"

    invoke-static {v0, v1, v2, v3}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$e;Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/JoyFramework/module/a;->onActivityCreated(Landroid/os/Bundle;)V

    .line 62
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 125
    sget-boolean v1, Lcom/JoyFramework/a/a;->l:Z

    if-nez v1, :cond_16

    .line 126
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u6e38\u620f\u5df2\u5173\u95ed\u767b\u5f55"

    new-array v2, v4, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 163
    :cond_15
    :goto_15
    return-void

    .line 129
    :cond_16
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_account_switch_enter_game"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_7c

    .line 131
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/k;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 132
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u8bf7\u9009\u62e9\u8d26\u53f7"

    new-array v2, v4, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_15

    .line 135
    :cond_38
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/k;->d:Lcom/JoyFramework/user/LoginUser$LoginType;

    if-nez v0, :cond_48

    .line 136
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u8bf7\u4f7f\u7528\u5176\u4ed6\u8d26\u53f7\u767b\u5f55"

    new-array v2, v4, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_15

    .line 140
    :cond_48
    sget-object v0, Lcom/JoyFramework/module/login/d/u;->a:[I

    iget-object v1, p0, Lcom/JoyFramework/module/login/d/k;->d:Lcom/JoyFramework/user/LoginUser$LoginType;

    invoke-virtual {v1}, Lcom/JoyFramework/user/LoginUser$LoginType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_a2

    goto :goto_15

    .line 142
    :pswitch_56
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/k;->a:Lcom/JoyFramework/module/login/b/g$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/module/login/d/k;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/module/login/d/k;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/JoyFramework/module/login/b/g$a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 145
    :pswitch_64
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/k;->a:Lcom/JoyFramework/module/login/b/g$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/module/login/d/k;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/module/login/d/k;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/JoyFramework/module/login/b/g$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 148
    :pswitch_72
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/k;->a:Lcom/JoyFramework/module/login/b/g$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/JoyFramework/module/login/b/g$a;->a(Landroid/content/Context;)V

    goto :goto_15

    .line 154
    :cond_7c
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_account_switch_login_other_account"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_15

    .line 156
    new-instance v0, Lcom/JoyFramework/module/login/d/v;

    invoke-direct {v0}, Lcom/JoyFramework/module/login/d/v;-><init>()V

    .line 157
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 159
    const-string v2, "isShowBack"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/login/d/v;->setArguments(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p0, v0, v5}, Lcom/JoyFramework/module/login/d/k;->replaceFragmentToActivity(Landroid/app/Fragment;Z)V

    goto/16 :goto_15

    .line 140
    nop

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_56
        :pswitch_64
        :pswitch_72
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/JoyFramework/module/a;->onCreate(Landroid/os/Bundle;)V

    .line 56
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "joy_frg_login_account_switch_k"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/k;->e:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/k;->e:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_account_switch_userImg"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/k;->g:Landroid/widget/LinearLayout;

    .line 74
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/k;->e:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_account_switch_account"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/k;->f:Lcom/JoyFramework/wight/SwitchAccountPopupEditText;

    .line 75
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/k;->f:Lcom/JoyFramework/wight/SwitchAccountPopupEditText;

    iget-object v1, p0, Lcom/JoyFramework/module/login/d/k;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->setAnchorView(Landroid/view/View;)V

    .line 76
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/k;->f:Lcom/JoyFramework/wight/SwitchAccountPopupEditText;

    const-string v1, "\u8bf7\u9009\u62e9\u8d26\u53f7"

    invoke-virtual {v0, v1}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->setHint(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/k;->f:Lcom/JoyFramework/wight/SwitchAccountPopupEditText;

    invoke-virtual {v0, p0}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->setOnRecordClickListener(Lcom/JoyFramework/wight/SwitchAccountPopupEditText$b;)V

    .line 78
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/k;->f:Lcom/JoyFramework/wight/SwitchAccountPopupEditText;

    invoke-virtual {v0, p0}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->setOnDeleteSwitchUser(Lcom/JoyFramework/wight/SwitchAccountPopupEditText$a;)V

    .line 80
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/k;->e:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_account_switch_enter_game"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/k;->h:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/k;->e:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_account_switch_login_other_account"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/k;->i:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/k;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/k;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/k;->f:Lcom/JoyFramework/wight/SwitchAccountPopupEditText;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->getLastLoginUser()Lcom/JoyFramework/user/LoginUser;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_b1

    .line 88
    invoke-virtual {v0}, Lcom/JoyFramework/user/LoginUser;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/JoyFramework/module/login/d/k;->b:Ljava/lang/String;

    .line 89
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/k;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    .line 90
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/k;->f:Lcom/JoyFramework/wight/SwitchAccountPopupEditText;

    iget-object v2, p0, Lcom/JoyFramework/module/login/d/k;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->setText(Ljava/lang/String;)V

    .line 92
    :cond_a2
    invoke-virtual {v0}, Lcom/JoyFramework/user/LoginUser;->getPsw()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/JoyFramework/module/login/d/k;->c:Ljava/lang/String;

    .line 93
    invoke-virtual {v0}, Lcom/JoyFramework/user/LoginUser;->getType()Lcom/JoyFramework/user/LoginUser$LoginType;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/k;->d:Lcom/JoyFramework/user/LoginUser$LoginType;

    .line 112
    :cond_ae
    :goto_ae
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/k;->e:Landroid/view/View;

    return-object v0

    .line 97
    :cond_b1
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/UserManager;->readUser()Lcom/JoyFramework/user/User;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_ae

    .line 99
    invoke-virtual {v0}, Lcom/JoyFramework/user/User;->getUserName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/JoyFramework/module/login/d/k;->b:Ljava/lang/String;

    .line 100
    invoke-virtual {v0}, Lcom/JoyFramework/user/User;->getPwd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/k;->c:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/k;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ae

    .line 102
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "isPhoneLogin"

    invoke-static {v0, v1, v3}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 103
    sget-object v0, Lcom/JoyFramework/user/LoginUser$LoginType;->PHONE_CODE:Lcom/JoyFramework/user/LoginUser$LoginType;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/k;->d:Lcom/JoyFramework/user/LoginUser$LoginType;

    .line 107
    :goto_df
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/k;->f:Lcom/JoyFramework/wight/SwitchAccountPopupEditText;

    iget-object v1, p0, Lcom/JoyFramework/module/login/d/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->setText(Ljava/lang/String;)V

    goto :goto_ae

    .line 105
    :cond_e7
    sget-object v0, Lcom/JoyFramework/user/LoginUser$LoginType;->ACCOUNT_PWD:Lcom/JoyFramework/user/LoginUser$LoginType;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/k;->d:Lcom/JoyFramework/user/LoginUser$LoginType;

    goto :goto_df
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 180
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onDestroy()V

    .line 181
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/k;->a:Lcom/JoyFramework/module/login/b/g$a;

    invoke-interface {v0}, Lcom/JoyFramework/module/login/b/g$a;->b()V

    .line 182
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 167
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onPause()V

    .line 168
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 172
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onResume()V

    .line 173
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/k;->a:Lcom/JoyFramework/module/login/b/g$a;

    invoke-interface {v0}, Lcom/JoyFramework/module/login/b/g$a;->a()V

    .line 175
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/k;->f:Lcom/JoyFramework/wight/SwitchAccountPopupEditText;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->a()V

    .line 176
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 117
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onStart()V

    .line 119
    return-void
.end method
