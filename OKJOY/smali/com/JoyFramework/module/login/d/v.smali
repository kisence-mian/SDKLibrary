.class public Lcom/JoyFramework/module/login/d/v;
.super Lcom/JoyFramework/module/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/JoyFramework/module/login/b/g$b;


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;


# instance fields
.field private d:Lcom/JoyFramework/module/login/b/g$a;

.field private e:Lcom/JoyFramework/wight/f;

.field private f:Lcom/JoyFramework/user/LoginUser$LoginType;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Landroid/widget/FrameLayout;

.field private k:Ljava/lang/String;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/FrameLayout;

.field private n:Landroid/widget/FrameLayout;

.field private o:Landroid/widget/FrameLayout;

.field private p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const/16 v0, 0x9

    sput v0, Lcom/JoyFramework/module/login/d/v;->a:I

    .line 503
    const-string v0, "loginCount"

    sput-object v0, Lcom/JoyFramework/module/login/d/v;->b:Ljava/lang/String;

    .line 505
    const-string v0, "AccountLoginCount"

    sput-object v0, Lcom/JoyFramework/module/login/d/v;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/JoyFramework/module/a;-><init>()V

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/module/login/d/v;->q:Z

    .line 59
    new-instance v0, Lcom/JoyFramework/module/login/e/j;

    invoke-direct {v0, p0}, Lcom/JoyFramework/module/login/e/j;-><init>(Lcom/JoyFramework/module/login/b/g$b;)V

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/module/login/d/v;Lcom/JoyFramework/wight/f;)Lcom/JoyFramework/wight/f;
    .registers 2

    .prologue
    .line 43
    iput-object p1, p0, Lcom/JoyFramework/module/login/d/v;->e:Lcom/JoyFramework/wight/f;

    return-object p1
.end method

.method static synthetic a(Lcom/JoyFramework/module/login/d/v;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iput-object p1, p0, Lcom/JoyFramework/module/login/d/v;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/JoyFramework/module/login/d/v;)V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/JoyFramework/module/login/d/v;->d()V

    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/module/login/d/v;Landroid/app/Fragment;Z)V
    .registers 3

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/JoyFramework/module/login/d/v;->replaceFragmentToActivity(Landroid/app/Fragment;Z)V

    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/module/login/d/v;Lcom/JoyFramework/remote/bean/w;)V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/login/d/v;->d(Lcom/JoyFramework/remote/bean/w;)V

    return-void
.end method

.method private a(Lcom/JoyFramework/remote/bean/w;Z)V
    .registers 9

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u4e3a\u4e86\u60a8\u7684\u8d26\u53f7\u5b89\u5168\uff0c\u8bf7\u5c3d\u5feb\u7ed1\u5b9a\u60a8\u7684\u624b\u673a\u3002\u4e00\u65e6\u4e22\u5931\uff0c\u6982\u4e0d\u8d1f\u8d23\u3002"

    new-instance v2, Lcom/JoyFramework/module/login/d/aa;

    invoke-direct {v2, p0, p1}, Lcom/JoyFramework/module/login/d/aa;-><init>(Lcom/JoyFramework/module/login/d/v;Lcom/JoyFramework/remote/bean/w;)V

    const-string v3, "\u7ed1\u5b9a\u624b\u673a"

    const-string v4, "\u53d6\u6d88"

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$c;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 430
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/module/login/d/v;Z)Z
    .registers 2

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/JoyFramework/module/login/d/v;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/JoyFramework/module/login/d/v;)Lcom/JoyFramework/wight/f;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->e:Lcom/JoyFramework/wight/f;

    return-object v0
.end method

.method static synthetic b(Lcom/JoyFramework/module/login/d/v;Landroid/app/Fragment;Z)V
    .registers 3

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/JoyFramework/module/login/d/v;->replaceFragmentToActivity(Landroid/app/Fragment;Z)V

    return-void
.end method

.method private b(Lcom/JoyFramework/remote/bean/w;Z)V
    .registers 9

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u4e3a\u4e86\u60a8\u7684\u8d26\u53f7\u5b89\u5168\uff0c\u8bf7\u5c3d\u5feb\u7ed1\u5b9a\u60a8\u7684\u624b\u673a\u3002\u4e00\u65e6\u4e22\u5931\uff0c\u6982\u4e0d\u8d1f\u8d23\u3002"

    new-instance v2, Lcom/JoyFramework/module/login/d/ac;

    invoke-direct {v2, p0, p1}, Lcom/JoyFramework/module/login/d/ac;-><init>(Lcom/JoyFramework/module/login/d/v;Lcom/JoyFramework/remote/bean/w;)V

    const-string v3, "\u7ed1\u5b9a\u624b\u673a"

    const-string v4, "\u5feb\u901f\u6e38\u620f"

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$c;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 500
    return-void
.end method

.method static synthetic c(Lcom/JoyFramework/module/login/d/v;)Lcom/JoyFramework/user/LoginUser$LoginType;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->f:Lcom/JoyFramework/user/LoginUser$LoginType;

    return-object v0
.end method

.method private c()V
    .registers 4

    .prologue
    .line 129
    sget-boolean v0, Lcom/JoyFramework/a/a;->l:Z

    if-nez v0, :cond_11

    .line 130
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u6e38\u620f\u5df2\u5173\u95ed\u767b\u5f55"

    const/4 v2, 0x0

    new-array v2, v2, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 169
    :goto_10
    return-void

    .line 134
    :cond_11
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 135
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 136
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    new-instance v2, Lcom/JoyFramework/module/login/d/w;

    invoke-direct {v2, p0}, Lcom/JoyFramework/module/login/d/w;-><init>(Lcom/JoyFramework/module/login/d/v;)V

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/ba$b;)V

    goto :goto_10

    .line 163
    :cond_36
    invoke-direct {p0}, Lcom/JoyFramework/module/login/d/v;->d()V

    goto :goto_10

    .line 166
    :cond_3a
    invoke-direct {p0}, Lcom/JoyFramework/module/login/d/v;->d()V

    goto :goto_10
.end method

.method static synthetic c(Lcom/JoyFramework/module/login/d/v;Landroid/app/Fragment;Z)V
    .registers 3

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/JoyFramework/module/login/d/v;->replaceFragmentToActivity(Landroid/app/Fragment;Z)V

    return-void
.end method

.method static synthetic d(Lcom/JoyFramework/module/login/d/v;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->g:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 172
    invoke-static {}, Lcom/JoyFramework/d/bw;->a()Ljava/util/List;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_36

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_36

    .line 174
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/v;->l:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 175
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 176
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/user/LoginUser;

    .line 177
    invoke-virtual {v0}, Lcom/JoyFramework/user/LoginUser;->getType()Lcom/JoyFramework/user/LoginUser$LoginType;

    move-result-object v1

    iput-object v1, p0, Lcom/JoyFramework/module/login/d/v;->f:Lcom/JoyFramework/user/LoginUser$LoginType;

    .line 178
    invoke-virtual {v0}, Lcom/JoyFramework/user/LoginUser;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/JoyFramework/module/login/d/v;->g:Ljava/lang/String;

    .line 179
    invoke-virtual {v0}, Lcom/JoyFramework/user/LoginUser;->getPsw()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/v;->h:Ljava/lang/String;

    .line 180
    iput-boolean v3, p0, Lcom/JoyFramework/module/login/d/v;->p:Z

    .line 181
    iput-boolean v3, p0, Lcom/JoyFramework/module/login/d/v;->q:Z

    .line 182
    invoke-direct {p0}, Lcom/JoyFramework/module/login/d/v;->e()V

    .line 185
    :cond_36
    return-void
.end method

.method static synthetic d(Lcom/JoyFramework/module/login/d/v;Landroid/app/Fragment;Z)V
    .registers 3

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/JoyFramework/module/login/d/v;->replaceFragmentToActivity(Landroid/app/Fragment;Z)V

    return-void
.end method

.method private d(Lcom/JoyFramework/remote/bean/w;)V
    .registers 5

    .prologue
    .line 514
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->f:Lcom/JoyFramework/user/LoginUser$LoginType;

    sget-object v1, Lcom/JoyFramework/user/LoginUser$LoginType;->FAST_LOGIN:Lcom/JoyFramework/user/LoginUser$LoginType;

    if-ne v0, v1, :cond_16

    .line 515
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 516
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/v;->g:Ljava/lang/String;

    .line 526
    :cond_16
    :goto_16
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/JoyFramework/module/login/d/ae;

    invoke-direct {v1, p0, p1}, Lcom/JoyFramework/module/login/d/ae;-><init>(Lcom/JoyFramework/module/login/d/v;Lcom/JoyFramework/remote/bean/w;)V

    invoke-static {v0, v1}, Lcom/JoyFramework/d/bw;->a(Landroid/app/Activity;Lcom/JoyFramework/d/ba$b;)V

    .line 557
    return-void

    .line 518
    :cond_23
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 519
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/v;->g:Ljava/lang/String;

    goto :goto_16

    .line 521
    :cond_34
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    const/4 v2, 0x0

    new-array v2, v2, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_16
.end method

.method static synthetic e(Lcom/JoyFramework/module/login/d/v;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->h:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 188
    new-instance v0, Lcom/JoyFramework/wight/f;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "JoyGame_Dialog_theme"

    const-string v4, "style"

    invoke-static {v2, v3, v4}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/JoyFramework/module/login/d/v;->g:Ljava/lang/String;

    new-instance v4, Lcom/JoyFramework/module/login/d/y;

    invoke-direct {v4, p0}, Lcom/JoyFramework/module/login/d/y;-><init>(Lcom/JoyFramework/module/login/d/v;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/JoyFramework/wight/f;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/JoyFramework/wight/f$a;)V

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/v;->e:Lcom/JoyFramework/wight/f;

    .line 222
    sget-boolean v0, Lcom/JoyFramework/a/a;->m:Z

    if-nez v0, :cond_33

    .line 224
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/JoyFramework/module/login/d/z;

    invoke-direct {v1, p0}, Lcom/JoyFramework/module/login/d/z;-><init>(Lcom/JoyFramework/module/login/d/v;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    const-wide/16 v2, 0xc8

    .line 233
    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 238
    :goto_32
    return-void

    .line 236
    :cond_33
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->l:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_32
.end method

.method static synthetic e(Lcom/JoyFramework/module/login/d/v;Landroid/app/Fragment;Z)V
    .registers 3

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/JoyFramework/module/login/d/v;->replaceFragmentToActivity(Landroid/app/Fragment;Z)V

    return-void
.end method

.method static synthetic f(Lcom/JoyFramework/module/login/d/v;)Lcom/JoyFramework/module/login/b/g$a;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->d:Lcom/JoyFramework/module/login/b/g$a;

    return-object v0
.end method

.method static synthetic f(Lcom/JoyFramework/module/login/d/v;Landroid/app/Fragment;Z)V
    .registers 3

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/JoyFramework/module/login/d/v;->replaceFragmentToActivity(Landroid/app/Fragment;Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/JoyFramework/module/login/b/g$a;)V
    .registers 2

    .prologue
    .line 300
    iput-object p1, p0, Lcom/JoyFramework/module/login/d/v;->d:Lcom/JoyFramework/module/login/b/g$a;

    .line 301
    return-void
.end method

.method public a(Lcom/JoyFramework/remote/bean/w;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 305
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->e:Lcom/JoyFramework/wight/f;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->e:Lcom/JoyFramework/wight/f;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/f;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 306
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->e:Lcom/JoyFramework/wight/f;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/f;->dismiss()V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/v;->e:Lcom/JoyFramework/wight/f;

    .line 311
    :cond_1b
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->d()Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 313
    iput-object v0, p0, Lcom/JoyFramework/module/login/d/v;->g:Ljava/lang/String;

    .line 324
    :goto_27
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/v;->h:Ljava/lang/String;

    .line 328
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->f:Lcom/JoyFramework/user/LoginUser$LoginType;

    sget-object v1, Lcom/JoyFramework/user/LoginUser$LoginType;->FAST_LOGIN:Lcom/JoyFramework/user/LoginUser$LoginType;

    if-ne v0, v1, :cond_59

    iget-boolean v0, p0, Lcom/JoyFramework/module/login/d/v;->p:Z

    if-eqz v0, :cond_59

    iget-boolean v0, p0, Lcom/JoyFramework/module/login/d/v;->q:Z

    if-eqz v0, :cond_59

    .line 330
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/JoyFramework/module/login/d/v;->b(Lcom/JoyFramework/remote/bean/w;Z)V

    .line 371
    :cond_3f
    :goto_3f
    return-void

    .line 315
    :cond_40
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->k()Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 317
    iput-object v0, p0, Lcom/JoyFramework/module/login/d/v;->g:Ljava/lang/String;

    goto :goto_27

    .line 319
    :cond_4d
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u627e\u4e0d\u5230\u8d26\u53f7\uff0c\u8bf7\u91cd\u65b0\u6253\u5f00\u6e38\u620f\u6216\u5207\u6362\u5176\u4ed6\u8d26\u53f7\u767b\u5f55"

    new-array v2, v4, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_3f

    .line 332
    :cond_59
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->f:Lcom/JoyFramework/user/LoginUser$LoginType;

    sget-object v1, Lcom/JoyFramework/user/LoginUser$LoginType;->FAST_LOGIN:Lcom/JoyFramework/user/LoginUser$LoginType;

    if-ne v0, v1, :cond_8f

    .line 334
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/module/login/d/v;->b:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 336
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/JoyFramework/module/login/d/v;->b:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/bw;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 337
    sget v1, Lcom/JoyFramework/module/login/d/v;->a:I

    if-lt v0, v1, :cond_8b

    .line 339
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/module/login/d/v;->b:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/JoyFramework/d/bw;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 341
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 343
    invoke-direct {p0, p1, v4}, Lcom/JoyFramework/module/login/d/v;->b(Lcom/JoyFramework/remote/bean/w;Z)V

    goto :goto_3f

    .line 346
    :cond_8b
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/login/d/v;->d(Lcom/JoyFramework/remote/bean/w;)V

    goto :goto_3f

    .line 349
    :cond_8f
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->h()I

    move-result v0

    if-nez v0, :cond_99

    .line 350
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/login/d/v;->d(Lcom/JoyFramework/remote/bean/w;)V

    goto :goto_3f

    .line 353
    :cond_99
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/module/login/d/v;->c:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 355
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/JoyFramework/module/login/d/v;->c:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/bw;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 356
    sget v1, Lcom/JoyFramework/module/login/d/v;->a:I

    if-lt v0, v1, :cond_c6

    .line 358
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/module/login/d/v;->c:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/JoyFramework/d/bw;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 360
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 362
    invoke-direct {p0, p1, v4}, Lcom/JoyFramework/module/login/d/v;->a(Lcom/JoyFramework/remote/bean/w;Z)V

    goto/16 :goto_3f

    .line 365
    :cond_c6
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/login/d/v;->d(Lcom/JoyFramework/remote/bean/w;)V

    goto/16 :goto_3f
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 43
    check-cast p1, Lcom/JoyFramework/module/login/b/g$a;

    invoke-virtual {p0, p1}, Lcom/JoyFramework/module/login/d/v;->a(Lcom/JoyFramework/module/login/b/g$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 561
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-static {v0, p1, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 562
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->f:Lcom/JoyFramework/user/LoginUser$LoginType;

    sget-object v1, Lcom/JoyFramework/user/LoginUser$LoginType;->PHONE_CODE:Lcom/JoyFramework/user/LoginUser$LoginType;

    if-ne v0, v1, :cond_3f

    .line 564
    new-instance v0, Lcom/JoyFramework/module/login/d/am;

    invoke-direct {v0}, Lcom/JoyFramework/module/login/d/am;-><init>()V

    .line 565
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/v;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 566
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 567
    const-string v2, "use_mobile_num"

    iget-object v3, p0, Lcom/JoyFramework/module/login/d/v;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v2, "canBackStack"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 569
    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/login/d/am;->setArguments(Landroid/os/Bundle;)V

    .line 571
    :cond_32
    invoke-virtual {p0, v0, v4}, Lcom/JoyFramework/module/login/d/v;->replaceFragmentToActivity(Landroid/app/Fragment;Z)V

    .line 573
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->e:Lcom/JoyFramework/wight/f;

    if-eqz v0, :cond_3e

    .line 574
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->e:Lcom/JoyFramework/wight/f;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/f;->dismiss()V

    .line 601
    :cond_3e
    :goto_3e
    return-void

    .line 578
    :cond_3f
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/JoyFramework/module/login/AccountPhoneActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 579
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 580
    const-string v1, "showPage"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 581
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/v;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 582
    const-string v1, "pass_text"

    iget-object v2, p0, Lcom/JoyFramework/module/login/d/v;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    :cond_64
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 586
    new-instance v0, Lcom/JoyFramework/module/login/d/c;

    invoke-direct {v0}, Lcom/JoyFramework/module/login/d/c;-><init>()V

    .line 588
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/v;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8c

    .line 589
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 590
    const-string v2, "use_account_name"

    iget-object v3, p0, Lcom/JoyFramework/module/login/d/v;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string v2, "canBackStack"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 592
    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/login/d/c;->setArguments(Landroid/os/Bundle;)V

    .line 594
    :cond_8c
    invoke-virtual {p0, v0, v4}, Lcom/JoyFramework/module/login/d/v;->replaceFragmentToActivity(Landroid/app/Fragment;Z)V

    .line 596
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->e:Lcom/JoyFramework/wight/f;

    if-eqz v0, :cond_3e

    .line 597
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->e:Lcom/JoyFramework/wight/f;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/f;->dismiss()V

    goto :goto_3e
.end method

.method public b(Lcom/JoyFramework/remote/bean/w;)V
    .registers 6

    .prologue
    .line 605
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->l:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 606
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->e:Lcom/JoyFramework/wight/f;

    if-eqz v0, :cond_f

    .line 607
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->e:Lcom/JoyFramework/wight/f;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/f;->hide()V

    .line 609
    :cond_f
    iget-boolean v0, p0, Lcom/JoyFramework/module/login/d/v;->p:Z

    if-nez v0, :cond_1e

    .line 610
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->l:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 611
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/login/d/v;->d(Lcom/JoyFramework/remote/bean/w;)V

    .line 640
    :goto_1d
    return-void

    .line 613
    :cond_1e
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u60a8\u5df2\u7ed1\u5b9a\u624b\u673a\uff0c\u8bf7\u4f7f\u7528\u624b\u673a\u767b\u5f55"

    new-instance v2, Lcom/JoyFramework/module/login/d/af;

    invoke-direct {v2, p0, p1}, Lcom/JoyFramework/module/login/d/af;-><init>(Lcom/JoyFramework/module/login/d/v;Lcom/JoyFramework/remote/bean/w;)V

    const-string v3, "\u786e\u5b9a"

    invoke-static {v0, v1, v2, v3}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$e;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public c(Lcom/JoyFramework/remote/bean/w;)V
    .registers 6

    .prologue
    .line 644
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->l:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 645
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->e:Lcom/JoyFramework/wight/f;

    if-eqz v0, :cond_f

    .line 646
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->e:Lcom/JoyFramework/wight/f;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/f;->hide()V

    .line 648
    :cond_f
    iget-boolean v0, p0, Lcom/JoyFramework/module/login/d/v;->p:Z

    if-nez v0, :cond_1e

    .line 650
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->l:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 651
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/login/d/v;->d(Lcom/JoyFramework/remote/bean/w;)V

    .line 681
    :goto_1d
    return-void

    .line 653
    :cond_1e
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u60a8\u5df2\u7ed1\u5b9a\u8d26\u53f7\uff0c\u8bf7\u4f7f\u7528\u8d26\u53f7\u767b\u5f55"

    new-instance v2, Lcom/JoyFramework/module/login/d/ag;

    invoke-direct {v2, p0, p1}, Lcom/JoyFramework/module/login/d/ag;-><init>(Lcom/JoyFramework/module/login/d/v;Lcom/JoyFramework/remote/bean/w;)V

    const-string v3, "\u786e\u5b9a"

    invoke-static {v0, v1, v2, v3}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$e;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/JoyFramework/module/a;->onActivityCreated(Landroid/os/Bundle;)V

    .line 81
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 245
    sget-boolean v1, Lcom/JoyFramework/a/a;->l:Z

    if-nez v1, :cond_16

    .line 246
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u6e38\u620f\u5df2\u5173\u95ed\u767b\u5f55"

    const/4 v2, 0x0

    new-array v2, v2, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 277
    :cond_15
    :goto_15
    return-void

    .line 249
    :cond_16
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_first_fast_game"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_36

    .line 250
    iput-boolean v4, p0, Lcom/JoyFramework/module/login/d/v;->p:Z

    .line 251
    iput-boolean v4, p0, Lcom/JoyFramework/module/login/d/v;->q:Z

    .line 252
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->d:Lcom/JoyFramework/module/login/b/g$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/JoyFramework/module/login/b/g$a;->a(Landroid/content/Context;)V

    .line 253
    sget-object v0, Lcom/JoyFramework/user/LoginUser$LoginType;->FAST_LOGIN:Lcom/JoyFramework/user/LoginUser$LoginType;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/v;->f:Lcom/JoyFramework/user/LoginUser$LoginType;

    goto :goto_15

    .line 255
    :cond_36
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_first_phone_login"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5a

    .line 257
    new-instance v0, Lcom/JoyFramework/module/login/d/am;

    invoke-direct {v0}, Lcom/JoyFramework/module/login/d/am;-><init>()V

    .line 258
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 259
    const-string v2, "canBackStack"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 260
    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/login/d/am;->setArguments(Landroid/os/Bundle;)V

    .line 261
    invoke-virtual {p0, v0, v4}, Lcom/JoyFramework/module/login/d/v;->replaceFragmentToActivity(Landroid/app/Fragment;Z)V

    goto :goto_15

    .line 263
    :cond_5a
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_first_account_login"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_7e

    .line 266
    new-instance v0, Lcom/JoyFramework/module/login/d/c;

    invoke-direct {v0}, Lcom/JoyFramework/module/login/d/c;-><init>()V

    .line 267
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 268
    const-string v2, "canBackStack"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 269
    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/login/d/c;->setArguments(Landroid/os/Bundle;)V

    .line 270
    invoke-virtual {p0, v0, v4}, Lcom/JoyFramework/module/login/d/v;->replaceFragmentToActivity(Landroid/app/Fragment;Z)V

    goto :goto_15

    .line 272
    :cond_7e
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_first_back"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_15

    .line 274
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_15
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/JoyFramework/module/a;->onCreate(Landroid/os/Bundle;)V

    .line 66
    new-instance v0, Lcom/JoyFramework/d/d;

    invoke-direct {v0}, Lcom/JoyFramework/d/d;-><init>()V

    .line 67
    invoke-virtual {v0}, Lcom/JoyFramework/d/d;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/v;->k:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->k:Ljava/lang/String;

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/module/login/d/v;->i:Z

    .line 75
    :cond_19
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 90
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "joy_frg_login_first_k"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/v;->l:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->l:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_first_fast_game"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/v;->m:Landroid/widget/FrameLayout;

    .line 92
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->l:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_first_phone_login"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/v;->n:Landroid/widget/FrameLayout;

    .line 93
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->l:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_first_account_login"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/v;->o:Landroid/widget/FrameLayout;

    .line 94
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->l:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_first_back"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/v;->j:Landroid/widget/FrameLayout;

    .line 95
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-boolean v0, p0, Lcom/JoyFramework/module/login/d/v;->i:Z

    if-eqz v0, :cond_83

    .line 101
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 103
    :cond_83
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_c7

    .line 104
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isShowBack"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 105
    if-eqz v0, :cond_ae

    .line 106
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->l:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_first_back_img"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 115
    :goto_a8
    invoke-direct {p0}, Lcom/JoyFramework/module/login/d/v;->c()V

    .line 116
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->l:Landroid/view/View;

    return-object v0

    .line 108
    :cond_ae
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->l:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_first_back_img"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_a8

    .line 112
    :cond_c7
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->l:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_login_first_back_img"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_a8
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 292
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onDestroy()V

    .line 293
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->d:Lcom/JoyFramework/module/login/b/g$a;

    invoke-interface {v0}, Lcom/JoyFramework/module/login/b/g$a;->b()V

    .line 294
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->e:Lcom/JoyFramework/wight/f;

    if-eqz v0, :cond_11

    .line 295
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->e:Lcom/JoyFramework/wight/f;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/f;->dismiss()V

    .line 296
    :cond_11
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 281
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onPause()V

    .line 282
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 286
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onResume()V

    .line 287
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/v;->d:Lcom/JoyFramework/module/login/b/g$a;

    invoke-interface {v0}, Lcom/JoyFramework/module/login/b/g$a;->a()V

    .line 288
    return-void
.end method
