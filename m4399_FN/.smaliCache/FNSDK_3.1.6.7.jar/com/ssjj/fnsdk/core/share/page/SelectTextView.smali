.class public Lcom/ssjj/fnsdk/core/share/page/SelectTextView;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a;,
        Lcom/ssjj/fnsdk/core/share/page/SelectTextView$SelectTextListener;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ListView;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a;

.field private k:[I

.field private l:Landroid/graphics/Bitmap;

.field private m:Landroid/graphics/Bitmap;

.field private n:Landroid/graphics/Bitmap;

.field private o:Landroid/graphics/Bitmap;

.field private p:Lcom/ssjj/fnsdk/core/share/page/SelectTextView$SelectTextListener;

.field private q:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x271a

    iput v0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->a:I

    const/16 v0, 0x271b

    iput v0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->b:I

    const/16 v0, 0x271c

    iput v0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->c:I

    const/16 v0, 0x271d

    iput v0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->p:Lcom/ssjj/fnsdk/core/share/page/SelectTextView$SelectTextListener;

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x271a

    iput p2, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->a:I

    const/16 p2, 0x271b

    iput p2, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->b:I

    const/16 p2, 0x271c

    iput p2, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->c:I

    const/16 p2, 0x271d

    iput p2, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->d:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->p:Lcom/ssjj/fnsdk/core/share/page/SelectTextView$SelectTextListener;

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x271a

    iput p2, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->a:I

    const/16 p2, 0x271b

    iput p2, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->b:I

    const/16 p2, 0x271c

    iput p2, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->c:I

    const/16 p2, 0x271d

    iput p2, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->d:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->p:Lcom/ssjj/fnsdk/core/share/page/SelectTextView$SelectTextListener;

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a()V
    .registers 2

    sget-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->selectedBm:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->l:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->unselectedBm:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->m:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->pressBtnBm:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->n:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->normalBtnBm:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->o:Landroid/graphics/Bitmap;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 10

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->a()V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iget v3, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->d:I

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    invoke-virtual {p0, v1, v0}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x41c80000    # 25.0f

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v4

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v3

    invoke-direct {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xf

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0x9

    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->e:Landroid/widget/ImageView;

    iget v5, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->a:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setId(I)V

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->e:Landroid/widget/ImageView;

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, v7, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->e:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->e:Landroid/widget/ImageView;

    new-instance v6, Lcom/ssjj/fnsdk/core/share/page/f;

    invoke-direct {v6, p0}, Lcom/ssjj/fnsdk/core/share/page/f;-><init>(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x43480000    # 200.0f

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v4

    const/high16 v6, 0x420c0000    # 35.0f

    invoke-static {v6}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v6

    invoke-direct {v0, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v3, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->a:I

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v3

    invoke-virtual {v0, v3, v7, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->f:Landroid/widget/EditText;

    iget v6, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->b:I

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setId(I)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->f:Landroid/widget/EditText;

    const-string v6, "\u8f93\u5165\u6587\u5b57"

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->f:Landroid/widget/EditText;

    const-string v6, "#FF7F24"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->f:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->setSingleLine()V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->f:Landroid/widget/EditText;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v6}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v7, v6}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->f:Landroid/widget/EditText;

    const/16 v6, 0x10

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->f:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->f:Landroid/widget/EditText;

    new-instance v6, Lcom/ssjj/fnsdk/core/share/page/g;

    invoke-direct {v6, p0}, Lcom/ssjj/fnsdk/core/share/page/g;-><init>(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)V

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v3

    const/high16 v6, 0x41f80000    # 31.0f

    invoke-static {v6}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v6

    invoke-direct {v0, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x6

    iget v6, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->b:I

    invoke-virtual {v0, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v3, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->b:I

    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {v5}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v3

    invoke-virtual {v0, v3, v7, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->g:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->g:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->g:Landroid/widget/ImageView;

    new-instance v4, Lcom/ssjj/fnsdk/core/share/page/h;

    invoke-direct {v4, p0}, Lcom/ssjj/fnsdk/core/share/page/h;-><init>(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->i:Ljava/util/List;

    new-instance v0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->i:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a;-><init>(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->j:Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->h:Landroid/widget/ListView;

    iget p1, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->c:I

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setId(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->j:Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->h:Landroid/widget/ListView;

    invoke-virtual {p1, v7}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->h:Landroid/widget/ListView;

    new-instance v1, Lcom/ssjj/fnsdk/core/share/page/i;

    invoke-direct {v1, p0}, Lcom/ssjj/fnsdk/core/share/page/i;-><init>(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->h:Landroid/widget/ListView;

    invoke-virtual {p0, p1, v0}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->q:Landroid/widget/Toast;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->q:Landroid/widget/Toast;

    goto :goto_18

    :cond_10
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->q:Landroid/widget/Toast;

    invoke-virtual {p1, v1}, Landroid/widget/Toast;->setDuration(I)V

    :goto_18
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->q:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)[I
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->k:[I

    return-object p0
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->l:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic c(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->m:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic d(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->e:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic e(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->j:Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a;

    return-object p0
.end method

.method static synthetic f(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->g:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic g(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->o:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic h(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->n:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic i(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Lcom/ssjj/fnsdk/core/share/page/SelectTextView$SelectTextListener;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->p:Lcom/ssjj/fnsdk/core/share/page/SelectTextView$SelectTextListener;

    return-object p0
.end method

.method static synthetic j(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Landroid/widget/EditText;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->f:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic k(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic l(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Landroid/widget/ListView;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->h:Landroid/widget/ListView;

    return-object p0
.end method


# virtual methods
.method public addTests(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_29

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->i:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a;-><init>(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;Ljava/util/List;)V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->j:Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->h:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->k:[I

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v1, p1, v0

    :cond_29
    return-void
.end method

.method public addText(Ljava/lang/String;I)V
    .registers 5

    if-eqz p1, :cond_35

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    aput p2, p1, v1

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->k:[I

    if-eqz p2, :cond_24

    :goto_16
    iget-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->k:[I

    array-length v0, p2

    if-lt v1, v0, :cond_1c

    goto :goto_24

    :cond_1c
    add-int/lit8 v0, v1, 0x1

    aget p2, p2, v1

    aput p2, p1, v0

    move v1, v0

    goto :goto_16

    :cond_24
    :goto_24
    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->k:[I

    new-instance p1, Lcom/ssjj/fnsdk/core/share/page/j;

    invoke-direct {p1, p0}, Lcom/ssjj/fnsdk/core/share/page/j;-><init>(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->j:Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a;

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a;->notifyDataSetChanged()V

    :cond_35
    return-void
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->i:Ljava/util/List;

    return-void
.end method

.method public setSelectTextListener(Lcom/ssjj/fnsdk/core/share/page/SelectTextView$SelectTextListener;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->p:Lcom/ssjj/fnsdk/core/share/page/SelectTextView$SelectTextListener;

    return-void
.end method

.method public unselect(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->k:[I

    aput v1, v0, p1

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->j:Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a;

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a;->notifyDataSetChanged()V

    const/4 p1, 0x1

    return p1

    :cond_1a
    return v1
.end method
