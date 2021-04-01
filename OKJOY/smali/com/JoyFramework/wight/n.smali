.class public Lcom/JoyFramework/wight/n;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/wight/n$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "key_saveUsers_of_phone"


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/content/Context;

.field private f:Landroid/widget/ListView;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/user/LoginUser;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Landroid/widget/PopupWindow;

.field private j:Lcom/JoyFramework/module/login/a/c;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/user/LoginUser;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/JoyFramework/wight/n$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/JoyFramework/wight/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/JoyFramework/wight/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/JoyFramework/wight/n;->h:Z

    .line 59
    iput-object p1, p0, Lcom/JoyFramework/wight/n;->e:Landroid/content/Context;

    .line 60
    invoke-direct {p0, p1}, Lcom/JoyFramework/wight/n;->a(Landroid/content/Context;)V

    .line 61
    invoke-direct {p0, p1}, Lcom/JoyFramework/wight/n;->b(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public static a(I)Landroid/view/animation/Animation;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 277
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 278
    new-instance v1, Landroid/view/animation/CycleInterpolator;

    int-to-float v2, p0

    invoke-direct {v1, v2}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 279
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 280
    return-object v0
.end method

.method static synthetic a(Lcom/JoyFramework/wight/n;)Ljava/util/List;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->k:Ljava/util/List;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u786e\u5b9a\u8981\u5220\u9664\u8d26\u53f7\uff1a\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n\u5728\u672c\u8bbe\u5907\u4e0a\u7684\u767b\u5f55\u8bb0\u5f55\uff1f\n\uff08\u4e0d\u4f1a\u5220\u9664\u8d26\u53f7\u672c\u8eab\uff09"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/JoyFramework/wight/r;

    invoke-direct {v2, p0, p2}, Lcom/JoyFramework/wight/r;-><init>(Lcom/JoyFramework/wight/n;Ljava/lang/String;)V

    const-string v3, "\u5220\u9664"

    const-string v4, "\u53d6\u6d88"

    const/4 v5, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$c;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 209
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "joy_view_record_edit_text"

    const-string v2, "layout"

    invoke-static {p1, v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 66
    const-string v0, "l_view_record_input"

    invoke-static {p1, v0}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/JoyFramework/wight/n;->c:Landroid/widget/EditText;

    .line 67
    const-string v0, "l_view_record_drop_down"

    invoke-static {p1, v0}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/JoyFramework/wight/n;->d:Landroid/widget/ImageView;

    .line 69
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->c:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/wight/n;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/JoyFramework/wight/n;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/wight/n;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/JoyFramework/wight/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 217
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 240
    :cond_6
    :goto_6
    return-void

    .line 220
    :cond_7
    const/4 v1, 0x0

    .line 221
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->e:Landroid/content/Context;

    const-string v2, "key_saveUsers_of_phone"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/JoyFramework/wight/n;->g:Ljava/util/List;

    .line 222
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->g:Ljava/util/List;

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/JoyFramework/wight/n;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_61

    .line 223
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/user/LoginUser;

    .line 224
    invoke-virtual {v0}, Lcom/JoyFramework/user/LoginUser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 226
    iget-object v1, p0, Lcom/JoyFramework/wight/n;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 227
    const/4 v0, 0x1

    .line 232
    :goto_42
    if-eqz v0, :cond_6

    .line 233
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->e:Landroid/content/Context;

    const-string v1, "key_saveUsers_of_phone"

    iget-object v2, p0, Lcom/JoyFramework/wight/n;->g:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->g:Ljava/util/List;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/JoyFramework/wight/n;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5d

    .line 235
    invoke-virtual {p0}, Lcom/JoyFramework/wight/n;->b()V

    goto :goto_6

    .line 237
    :cond_5d
    invoke-direct {p0}, Lcom/JoyFramework/wight/n;->e()V

    goto :goto_6

    :cond_61
    move v0, v1

    goto :goto_42
.end method

.method static synthetic a(Lcom/JoyFramework/wight/n;Z)Z
    .registers 2

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/JoyFramework/wight/n;->h:Z

    return p1
.end method

.method private b(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x2

    .line 106
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->i:Landroid/widget/PopupWindow;

    if-nez v0, :cond_3a

    .line 107
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {p0, p1}, Lcom/JoyFramework/wight/n;->c(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/JoyFramework/wight/n;->i:Landroid/widget/PopupWindow;

    .line 109
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->i:Landroid/widget/PopupWindow;

    const-string v1, "JoyGame_PopupWindow_Animation"

    invoke-static {p1, v1}, Lcom/JoyFramework/d/as;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 110
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->i:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 114
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 116
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->i:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/JoyFramework/wight/o;

    invoke-direct {v1, p0}, Lcom/JoyFramework/wight/o;-><init>(Lcom/JoyFramework/wight/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 125
    :cond_3a
    return-void
.end method

.method static synthetic b(Lcom/JoyFramework/wight/n;)V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/JoyFramework/wight/n;->e()V

    return-void
.end method

.method private c(Landroid/content/Context;)Landroid/view/View;
    .registers 6

    .prologue
    .line 136
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "joy_popup_window_view"

    invoke-static {p1, v1}, Lcom/JoyFramework/d/as;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 137
    const-string v0, "popup_recycler"

    invoke-static {p1, v0}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/JoyFramework/wight/n;->f:Landroid/widget/ListView;

    .line 138
    const-string v0, "popup_clear_record"

    invoke-static {p1, v0}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/JoyFramework/wight/p;

    invoke-direct {v2, p0, p1}, Lcom/JoyFramework/wight/p;-><init>(Lcom/JoyFramework/wight/n;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    return-object v1
.end method

.method static synthetic c(Lcom/JoyFramework/wight/n;)Lcom/JoyFramework/wight/n$a;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->l:Lcom/JoyFramework/wight/n$a;

    return-object v0
.end method

.method private e()V
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->i:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/JoyFramework/wight/n;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/JoyFramework/wight/n;->h:Z

    .line 245
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 247
    invoke-virtual {p0}, Lcom/JoyFramework/wight/n;->d()V

    .line 249
    :cond_17
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->e:Landroid/content/Context;

    const-string v1, "key_saveUsers_of_phone"

    invoke-static {v0, v1}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/JoyFramework/wight/n;->g:Ljava/util/List;

    .line 89
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->g:Ljava/util/List;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/JoyFramework/wight/n;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1f

    .line 90
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    :goto_1e
    return-void

    .line 92
    :cond_1f
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1e
.end method

.method public b()V
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->e:Landroid/content/Context;

    const-string v1, "key_saveUsers_of_phone"

    invoke-static {v0, v1}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/JoyFramework/wight/n;->k:Ljava/util/List;

    .line 153
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->k:Ljava/util/List;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/JoyFramework/wight/n;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4c

    .line 154
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->k:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 155
    new-instance v0, Lcom/JoyFramework/module/login/a/c;

    iget-object v1, p0, Lcom/JoyFramework/wight/n;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/JoyFramework/module/login/a/c;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/JoyFramework/wight/n;->j:Lcom/JoyFramework/module/login/a/c;

    .line 156
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->j:Lcom/JoyFramework/module/login/a/c;

    new-instance v1, Lcom/JoyFramework/wight/q;

    invoke-direct {v1, p0}, Lcom/JoyFramework/wight/q;-><init>(Lcom/JoyFramework/wight/n;)V

    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/login/a/c;->a(Lcom/JoyFramework/module/login/a/c$a;)V

    .line 184
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/JoyFramework/wight/n;->j:Lcom/JoyFramework/module/login/a/c;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 185
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->b:Landroid/view/View;

    if-eqz v0, :cond_46

    .line 186
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->i:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/JoyFramework/wight/n;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 190
    :goto_42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/wight/n;->h:Z

    .line 194
    :goto_45
    return-void

    .line 188
    :cond_46
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_42

    .line 192
    :cond_4c
    invoke-direct {p0}, Lcom/JoyFramework/wight/n;->e()V

    goto :goto_45
.end method

.method public c()V
    .registers 2

    .prologue
    .line 255
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/JoyFramework/wight/n;->a(I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/n;->setAnimation(Landroid/view/animation/Animation;)V

    .line 256
    return-void
.end method

.method public d()V
    .registers 4

    .prologue
    .line 342
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->e:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 343
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    .line 344
    if-eqz v1, :cond_18

    .line 345
    invoke-virtual {p0}, Lcom/JoyFramework/wight/n;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 347
    :cond_18
    return-void
.end method

.method public getLastLoginUser()Lcom/JoyFramework/user/LoginUser;
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->e:Landroid/content/Context;

    const-string v1, "key_saveUsers_of_phone"

    invoke-static {v0, v1}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/JoyFramework/wight/n;->g:Ljava/util/List;

    .line 77
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->g:Ljava/util/List;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/JoyFramework/wight/n;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_22

    .line 78
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->g:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/user/LoginUser;

    .line 81
    :goto_21
    return-object v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 296
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    .line 298
    iget-boolean v1, p0, Lcom/JoyFramework/wight/n;->h:Z

    if-nez v1, :cond_1c

    .line 300
    invoke-virtual {p0}, Lcom/JoyFramework/wight/n;->d()V

    .line 302
    iget-object v1, p0, Lcom/JoyFramework/wight/n;->c:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 303
    invoke-virtual {p0}, Lcom/JoyFramework/wight/n;->b()V

    .line 305
    iget-object v1, p0, Lcom/JoyFramework/wight/n;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 310
    :goto_1b
    return-void

    .line 308
    :cond_1c
    invoke-direct {p0}, Lcom/JoyFramework/wight/n;->e()V

    goto :goto_1b
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 265
    if-eqz p1, :cond_4

    .line 266
    iput-object p1, p0, Lcom/JoyFramework/wight/n;->b:Landroid/view/View;

    .line 268
    :cond_4
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 325
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 326
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 327
    :cond_11
    return-void
.end method

.method public setInputType(I)V
    .registers 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 322
    return-void
.end method

.method public setOnPhoneRecordClickListener(Lcom/JoyFramework/wight/n$a;)V
    .registers 2

    .prologue
    .line 291
    iput-object p1, p0, Lcom/JoyFramework/wight/n;->l:Lcom/JoyFramework/wight/n$a;

    .line 292
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 313
    iget-object v0, p0, Lcom/JoyFramework/wight/n;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 314
    return-void
.end method
