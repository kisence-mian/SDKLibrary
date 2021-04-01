.class public Lcom/JoyFramework/wight/a;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/wight/a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "key_saveUsers"


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

.field private l:Lcom/JoyFramework/wight/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/JoyFramework/wight/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/JoyFramework/wight/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/JoyFramework/wight/a;->h:Z

    .line 61
    iput-object p1, p0, Lcom/JoyFramework/wight/a;->e:Landroid/content/Context;

    .line 62
    invoke-direct {p0, p1}, Lcom/JoyFramework/wight/a;->a(Landroid/content/Context;)V

    .line 63
    invoke-direct {p0, p1}, Lcom/JoyFramework/wight/a;->b(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method private a(Landroid/content/Context;F)I
    .registers 5

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 96
    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a(I)Landroid/view/animation/Animation;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 278
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 279
    new-instance v1, Landroid/view/animation/CycleInterpolator;

    int-to-float v2, p0

    invoke-direct {v1, v2}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 280
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 281
    return-object v0
.end method

.method static synthetic a(Lcom/JoyFramework/wight/a;)Ljava/util/List;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->k:Ljava/util/List;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 200
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

    new-instance v2, Lcom/JoyFramework/wight/e;

    invoke-direct {v2, p0, p2, p3}, Lcom/JoyFramework/wight/e;-><init>(Lcom/JoyFramework/wight/a;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "\u5220\u9664"

    const-string v4, "\u53d6\u6d88"

    const/4 v5, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$c;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 212
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 67
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "joy_view_record_edit_text"

    const-string v2, "layout"

    invoke-static {p1, v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 68
    const-string v0, "l_view_record_input"

    invoke-static {p1, v0}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/JoyFramework/wight/a;->c:Landroid/widget/EditText;

    .line 69
    const-string v0, "l_view_record_drop_down"

    invoke-static {p1, v0}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/JoyFramework/wight/a;->d:Landroid/widget/ImageView;

    .line 70
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/wight/a;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/JoyFramework/wight/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/wight/a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/JoyFramework/wight/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 215
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 241
    :cond_c
    :goto_c
    return-void

    .line 218
    :cond_d
    const/4 v1, 0x0

    .line 219
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "key_saveUsers"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/JoyFramework/wight/a;->g:Ljava/util/List;

    .line 220
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->g:Ljava/util/List;

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/JoyFramework/wight/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_75

    .line 221
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/user/LoginUser;

    .line 222
    invoke-virtual {v0}, Lcom/JoyFramework/user/LoginUser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 224
    invoke-virtual {v0}, Lcom/JoyFramework/user/LoginUser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 226
    iget-object v1, p0, Lcom/JoyFramework/wight/a;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 227
    const/4 v0, 0x1

    .line 233
    :goto_54
    if-eqz v0, :cond_c

    .line 234
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "key_saveUsers"

    iget-object v2, p0, Lcom/JoyFramework/wight/a;->g:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 235
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->g:Ljava/util/List;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/JoyFramework/wight/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_71

    .line 236
    invoke-virtual {p0}, Lcom/JoyFramework/wight/a;->b()V

    goto :goto_c

    .line 238
    :cond_71
    invoke-direct {p0}, Lcom/JoyFramework/wight/a;->e()V

    goto :goto_c

    :cond_75
    move v0, v1

    goto :goto_54
.end method

.method static synthetic a(Lcom/JoyFramework/wight/a;Z)Z
    .registers 2

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/JoyFramework/wight/a;->h:Z

    return p1
.end method

.method private b(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x2

    .line 109
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->i:Landroid/widget/PopupWindow;

    if-nez v0, :cond_3a

    .line 110
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {p0, p1}, Lcom/JoyFramework/wight/a;->c(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/JoyFramework/wight/a;->i:Landroid/widget/PopupWindow;

    .line 112
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->i:Landroid/widget/PopupWindow;

    const-string v1, "JoyGame_PopupWindow_Animation"

    invoke-static {p1, v1}, Lcom/JoyFramework/d/as;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 113
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->i:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 117
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 119
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->i:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/JoyFramework/wight/b;

    invoke-direct {v1, p0}, Lcom/JoyFramework/wight/b;-><init>(Lcom/JoyFramework/wight/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 128
    :cond_3a
    return-void
.end method

.method static synthetic b(Lcom/JoyFramework/wight/a;)V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/JoyFramework/wight/a;->e()V

    return-void
.end method

.method private c(Landroid/content/Context;)Landroid/view/View;
    .registers 6

    .prologue
    .line 139
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "joy_popup_window_view"

    invoke-static {p1, v1}, Lcom/JoyFramework/d/as;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 140
    const-string v0, "popup_recycler"

    invoke-static {p1, v0}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/JoyFramework/wight/a;->f:Landroid/widget/ListView;

    .line 141
    const-string v0, "popup_clear_record"

    invoke-static {p1, v0}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/JoyFramework/wight/c;

    invoke-direct {v2, p0, p1}, Lcom/JoyFramework/wight/c;-><init>(Lcom/JoyFramework/wight/a;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    return-object v1
.end method

.method static synthetic c(Lcom/JoyFramework/wight/a;)Lcom/JoyFramework/wight/a$a;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->l:Lcom/JoyFramework/wight/a$a;

    return-object v0
.end method

.method private e()V
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->i:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/JoyFramework/wight/a;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/JoyFramework/wight/a;->h:Z

    .line 246
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 248
    invoke-virtual {p0}, Lcom/JoyFramework/wight/a;->d()V

    .line 250
    :cond_17
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 77
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "key_saveUsers"

    invoke-static {v0, v1}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/JoyFramework/wight/a;->g:Ljava/util/List;

    .line 78
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->g:Ljava/util/List;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/JoyFramework/wight/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_21

    .line 79
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    :goto_20
    return-void

    .line 81
    :cond_21
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_20
.end method

.method public b()V
    .registers 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->e:Landroid/content/Context;

    const-string v1, "key_saveUsers"

    invoke-static {v0, v1}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/JoyFramework/wight/a;->k:Ljava/util/List;

    .line 156
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->k:Ljava/util/List;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/JoyFramework/wight/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4c

    .line 157
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->k:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 158
    new-instance v0, Lcom/JoyFramework/module/login/a/c;

    iget-object v1, p0, Lcom/JoyFramework/wight/a;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/JoyFramework/module/login/a/c;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/JoyFramework/wight/a;->j:Lcom/JoyFramework/module/login/a/c;

    .line 159
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->j:Lcom/JoyFramework/module/login/a/c;

    new-instance v1, Lcom/JoyFramework/wight/d;

    invoke-direct {v1, p0}, Lcom/JoyFramework/wight/d;-><init>(Lcom/JoyFramework/wight/a;)V

    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/login/a/c;->a(Lcom/JoyFramework/module/login/a/c$a;)V

    .line 187
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/JoyFramework/wight/a;->j:Lcom/JoyFramework/module/login/a/c;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->b:Landroid/view/View;

    if-eqz v0, :cond_46

    .line 189
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->i:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/JoyFramework/wight/a;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 193
    :goto_42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/wight/a;->h:Z

    .line 197
    :goto_45
    return-void

    .line 191
    :cond_46
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_42

    .line 195
    :cond_4c
    invoke-direct {p0}, Lcom/JoyFramework/wight/a;->e()V

    goto :goto_45
.end method

.method public c()V
    .registers 2

    .prologue
    .line 256
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/JoyFramework/wight/a;->a(I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/a;->setAnimation(Landroid/view/animation/Animation;)V

    .line 257
    return-void
.end method

.method public d()V
    .registers 4

    .prologue
    .line 343
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 344
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    .line 345
    if-eqz v1, :cond_1c

    .line 346
    if-eqz p0, :cond_1c

    .line 347
    invoke-virtual {p0}, Lcom/JoyFramework/wight/a;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 349
    :cond_1c
    return-void
.end method

.method public getLastLoginUser()Lcom/JoyFramework/user/LoginUser;
    .registers 3

    .prologue
    .line 86
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "key_saveUsers"

    invoke-static {v0, v1}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/JoyFramework/wight/a;->g:Ljava/util/List;

    .line 87
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->g:Ljava/util/List;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/JoyFramework/wight/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 88
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->g:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/user/LoginUser;

    .line 91
    :goto_23
    return-object v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 297
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    .line 299
    iget-boolean v1, p0, Lcom/JoyFramework/wight/a;->h:Z

    if-nez v1, :cond_1c

    .line 301
    invoke-virtual {p0}, Lcom/JoyFramework/wight/a;->d()V

    .line 303
    iget-object v1, p0, Lcom/JoyFramework/wight/a;->c:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 304
    invoke-virtual {p0}, Lcom/JoyFramework/wight/a;->b()V

    .line 306
    iget-object v1, p0, Lcom/JoyFramework/wight/a;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 310
    :goto_1b
    return-void

    .line 308
    :cond_1c
    invoke-direct {p0}, Lcom/JoyFramework/wight/a;->e()V

    goto :goto_1b
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 266
    if-eqz p1, :cond_4

    .line 267
    iput-object p1, p0, Lcom/JoyFramework/wight/a;->b:Landroid/view/View;

    .line 269
    :cond_4
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 325
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 326
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 327
    :cond_11
    return-void
.end method

.method public setInputType(I)V
    .registers 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 322
    return-void
.end method

.method public setOnRecordClickListener(Lcom/JoyFramework/wight/a$a;)V
    .registers 2

    .prologue
    .line 292
    iput-object p1, p0, Lcom/JoyFramework/wight/a;->l:Lcom/JoyFramework/wight/a$a;

    .line 293
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 313
    iget-object v0, p0, Lcom/JoyFramework/wight/a;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 314
    return-void
.end method
