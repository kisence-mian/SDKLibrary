.class public Lcom/JoyFramework/wight/SwitchAccountPopupEditText;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/wight/SwitchAccountPopupEditText$a;,
        Lcom/JoyFramework/wight/SwitchAccountPopupEditText$b;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/content/Context;

.field private e:Landroid/widget/ListView;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/user/LoginUser;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Landroid/widget/PopupWindow;

.field private i:Lcom/JoyFramework/module/login/a/c;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/user/LoginUser;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/lang/String;

.field private l:Lcom/JoyFramework/wight/SwitchAccountPopupEditText$b;

.field private m:Lcom/JoyFramework/wight/SwitchAccountPopupEditText$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    iput-boolean v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->g:Z

    .line 128
    const-string v0, "key_switchUsers"

    iput-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->k:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->d:Landroid/content/Context;

    .line 60
    invoke-direct {p0, p1}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->a(Landroid/content/Context;)V

    .line 61
    invoke-direct {p0, p1}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->b(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public static a(I)Landroid/view/animation/Animation;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 282
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 283
    new-instance v1, Landroid/view/animation/CycleInterpolator;

    int-to-float v2, p0

    invoke-direct {v1, v2}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 284
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 285
    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "joy_view_switch_edit_text"

    const-string v2, "layout"

    invoke-static {p1, v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 66
    const-string v0, "l_view_switch_input"

    invoke-static {p1, v0}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->b:Landroid/widget/EditText;

    .line 67
    const-string v0, "l_view_switch_drop_down"

    invoke-static {p1, v0}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->c:Landroid/widget/ImageView;

    .line 68
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 71
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 72
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/wight/SwitchAccountPopupEditText;)V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->e()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 232
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/UserManager;->readUser()Lcom/JoyFramework/user/User;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_55

    .line 234
    invoke-virtual {v0}, Lcom/JoyFramework/user/User;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 236
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/User"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 240
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 245
    :cond_55
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/wight/SwitchAccountPopupEditText;Z)Z
    .registers 2

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/JoyFramework/wight/SwitchAccountPopupEditText;)Lcom/JoyFramework/wight/SwitchAccountPopupEditText$b;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->l:Lcom/JoyFramework/wight/SwitchAccountPopupEditText$b;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x2

    .line 106
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->h:Landroid/widget/PopupWindow;

    if-nez v0, :cond_3a

    .line 107
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {p0, p1}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->c(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->h:Landroid/widget/PopupWindow;

    .line 109
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->h:Landroid/widget/PopupWindow;

    const-string v1, "JoyGame_PopupWindow_Animation"

    invoke-static {p1, v1}, Lcom/JoyFramework/d/as;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 110
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->h:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 114
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 116
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->h:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/JoyFramework/wight/v;

    invoke-direct {v1, p0}, Lcom/JoyFramework/wight/v;-><init>(Lcom/JoyFramework/wight/SwitchAccountPopupEditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 125
    :cond_3a
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

    iput-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->e:Landroid/widget/ListView;

    .line 138
    return-object v1
.end method

.method static synthetic c(Lcom/JoyFramework/wight/SwitchAccountPopupEditText;)Ljava/util/List;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/JoyFramework/wight/SwitchAccountPopupEditText;)Lcom/JoyFramework/wight/SwitchAccountPopupEditText$a;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->m:Lcom/JoyFramework/wight/SwitchAccountPopupEditText$a;

    return-object v0
.end method

.method private e()V
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->h:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->g:Z

    .line 250
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 252
    invoke-virtual {p0}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->d()V

    .line 254
    :cond_17
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 79
    invoke-static {}, Lcom/JoyFramework/d/bw;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->f:Ljava/util/List;

    .line 80
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->f:Ljava/util/List;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_19

    .line 81
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    :goto_18
    return-void

    .line 83
    :cond_19
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_18
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 224
    :cond_6
    :goto_6
    return-void

    .line 191
    :cond_7
    const/4 v1, 0x0

    .line 192
    invoke-static {}, Lcom/JoyFramework/d/bw;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->j:Ljava/util/List;

    .line 193
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->j:Ljava/util/List;

    if-eqz v0, :cond_a2

    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a2

    .line 194
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/user/LoginUser;

    .line 195
    invoke-virtual {v0}, Lcom/JoyFramework/user/LoginUser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5c

    .line 197
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 198
    iget-object v1, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 199
    const/4 v0, 0x1

    .line 209
    :goto_42
    if-eqz v0, :cond_6

    .line 210
    invoke-static {p1}, Lcom/JoyFramework/d/bw;->c(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->j:Ljava/util/List;

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_62

    .line 212
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->j:Ljava/util/List;

    invoke-static {v0}, Lcom/JoyFramework/d/bw;->a(Ljava/util/List;)V

    .line 213
    invoke-virtual {p0}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->b()V

    goto :goto_6

    .line 204
    :cond_5c
    iget-object v3, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->j:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_20

    .line 216
    :cond_62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/SwitchUsers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 219
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 221
    :cond_9d
    invoke-direct {p0}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->e()V

    goto/16 :goto_6

    :cond_a2
    move v0, v1

    goto :goto_42
.end method

.method public b()V
    .registers 3

    .prologue
    .line 142
    invoke-static {}, Lcom/JoyFramework/d/bw;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->j:Ljava/util/List;

    .line 144
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->j:Ljava/util/List;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_46

    .line 145
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->j:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 146
    new-instance v0, Lcom/JoyFramework/module/login/a/c;

    iget-object v1, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/JoyFramework/module/login/a/c;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->i:Lcom/JoyFramework/module/login/a/c;

    .line 147
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->i:Lcom/JoyFramework/module/login/a/c;

    new-instance v1, Lcom/JoyFramework/wight/w;

    invoke-direct {v1, p0}, Lcom/JoyFramework/wight/w;-><init>(Lcom/JoyFramework/wight/SwitchAccountPopupEditText;)V

    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/login/a/c;->a(Lcom/JoyFramework/module/login/a/c$a;)V

    .line 175
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->i:Lcom/JoyFramework/module/login/a/c;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->a:Landroid/view/View;

    if-eqz v0, :cond_40

    .line 177
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->h:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 181
    :goto_3c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->g:Z

    .line 185
    :goto_3f
    return-void

    .line 179
    :cond_40
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_3c

    .line 183
    :cond_46
    invoke-direct {p0}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->e()V

    goto :goto_3f
.end method

.method public c()V
    .registers 2

    .prologue
    .line 260
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->a(I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->setAnimation(Landroid/view/animation/Animation;)V

    .line 261
    return-void
.end method

.method public d()V
    .registers 4

    .prologue
    .line 346
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->d:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 347
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    .line 348
    if-eqz v1, :cond_18

    .line 349
    invoke-virtual {p0}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 351
    :cond_18
    return-void
.end method

.method public getLastLoginUser()Lcom/JoyFramework/user/LoginUser;
    .registers 3

    .prologue
    .line 88
    invoke-static {}, Lcom/JoyFramework/d/bw;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->f:Ljava/util/List;

    .line 89
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->f:Ljava/util/List;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_21

    .line 90
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 91
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->f:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/user/LoginUser;

    .line 94
    :goto_20
    return-object v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 301
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    .line 303
    iget-boolean v1, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->g:Z

    if-nez v1, :cond_1c

    .line 305
    invoke-virtual {p0}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->d()V

    .line 307
    iget-object v1, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->b:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 308
    invoke-virtual {p0}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->b()V

    .line 310
    iget-object v1, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 314
    :goto_1b
    return-void

    .line 312
    :cond_1c
    invoke-direct {p0}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->e()V

    goto :goto_1b
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 270
    if-eqz p1, :cond_4

    .line 271
    iput-object p1, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->a:Landroid/view/View;

    .line 273
    :cond_4
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 329
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 330
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 331
    :cond_11
    return-void
.end method

.method public setInputType(I)V
    .registers 3

    .prologue
    .line 325
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 326
    return-void
.end method

.method public setOnDeleteSwitchUser(Lcom/JoyFramework/wight/SwitchAccountPopupEditText$a;)V
    .registers 2

    .prologue
    .line 363
    iput-object p1, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->m:Lcom/JoyFramework/wight/SwitchAccountPopupEditText$a;

    .line 364
    return-void
.end method

.method public setOnRecordClickListener(Lcom/JoyFramework/wight/SwitchAccountPopupEditText$b;)V
    .registers 2

    .prologue
    .line 296
    iput-object p1, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->l:Lcom/JoyFramework/wight/SwitchAccountPopupEditText$b;

    .line 297
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 318
    return-void
.end method
