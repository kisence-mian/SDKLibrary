.class public Lcom/bytedance/sdk/openadsdk/dislike/c;
.super Landroid/app/Dialog;
.source "TTCommentDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/dislike/c$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field private g:Lcom/bytedance/sdk/openadsdk/dislike/c$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 4

    .line 43
    const-string v0, "quick_option_dialog"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 44
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->f:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/dislike/c;)Landroid/widget/EditText;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->c:Landroid/widget/EditText;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .registers 3

    .line 74
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "tt_comment_content"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->c:Landroid/widget/EditText;

    .line 75
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->a(Landroid/widget/EditText;)V

    .line 76
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "tt_comment_commit"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->d:Landroid/widget/TextView;

    .line 78
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/c$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dislike/c$1;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/c;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "tt_comment_close"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->b:Landroid/widget/ImageView;

    .line 99
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/c$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dislike/c$2;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/c;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "tt_comment_number"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->e:Landroid/widget/TextView;

    .line 106
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->c:Landroid/widget/EditText;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/c$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dislike/c$3;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/c;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 129
    return-void
.end method

.method public static a(Landroid/widget/EditText;)V
    .registers 4

    .line 211
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/c$6;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/dislike/c$6;-><init>()V

    .line 229
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x1f4

    invoke-direct {v0, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 230
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/dislike/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->f:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method private b()V
    .registers 4

    .line 63
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 65
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 66
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 67
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 71
    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/dislike/c;)Lcom/bytedance/sdk/openadsdk/dislike/c$a;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->g:Lcom/bytedance/sdk/openadsdk/dislike/c$a;

    return-object p0
.end method

.method private c()V
    .registers 2

    .line 157
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/c$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dislike/c$4;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/c;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 165
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/c$5;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dislike/c$5;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/c;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 173
    return-void
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/dislike/c;)Landroid/widget/TextView;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/dislike/c;)Landroid/widget/TextView;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->d:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 183
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->c:Landroid/widget/EditText;

    if-eqz v0, :cond_8

    .line 184
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 186
    :cond_8
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 2

    .line 176
    if-nez p1, :cond_3

    .line 177
    return-void

    .line 179
    :cond_3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->f:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 180
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/dislike/c$a;)V
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->g:Lcom/bytedance/sdk/openadsdk/dislike/c$a;

    .line 190
    return-void
.end method

.method public dismiss()V
    .registers 4

    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 150
    if-eqz v0, :cond_1a

    .line 151
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 153
    :cond_1a
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 154
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 50
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 52
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_dislike_comment_layout"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->a:Landroid/view/View;

    .line 54
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->setContentView(Landroid/view/View;)V

    .line 55
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->setCanceledOnTouchOutside(Z)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->setCancelable(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->a(Landroid/content/Context;)V

    .line 58
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->c()V

    .line 59
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->b()V

    .line 60
    return-void
.end method

.method public show()V
    .registers 4

    .line 133
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 135
    if-eqz v0, :cond_1d

    .line 136
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 138
    :cond_1d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 140
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 142
    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 145
    return-void
.end method
