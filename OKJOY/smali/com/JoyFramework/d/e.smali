.class public Lcom/JoyFramework/d/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/d/e$b;,
        Lcom/JoyFramework/d/e$c;,
        Lcom/JoyFramework/d/e$e;,
        Lcom/JoyFramework/d/e$d;,
        Lcom/JoyFramework/d/e$a;
    }
.end annotation


# static fields
.field public static a:Z

.field private static b:Landroid/app/Dialog;

.field private static c:Landroid/app/Dialog;

.field private static d:Landroid/view/View;

.field private static e:Landroid/view/View;

.field private static f:Landroid/view/View;

.field private static g:Landroid/view/View;

.field private static h:Landroid/view/View;

.field private static i:Landroid/view/View;

.field private static j:Landroid/view/View;

.field private static k:Landroid/app/Dialog;

.field private static l:Landroid/app/Dialog;

.field private static m:Landroid/app/Dialog;

.field private static n:Landroid/app/Dialog;

.field private static o:Landroid/app/Dialog;

.field private static p:Landroid/view/View;

.field private static q:Landroid/app/Dialog;

.field private static r:Landroid/view/View;

.field private static s:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/JoyFramework/d/e;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;F)I
    .registers 4

    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 136
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic a(Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 27
    sput-object p0, Lcom/JoyFramework/d/e;->k:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic a(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .prologue
    .line 27
    sput-object p0, Lcom/JoyFramework/d/e;->f:Landroid/view/View;

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Landroid/graphics/Bitmap;)V
    .registers 6
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1002
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 1062
    :cond_4
    :goto_4
    return-void

    .line 1005
    :cond_5
    :try_start_5
    sget-object v0, Lcom/JoyFramework/d/e;->r:Landroid/view/View;

    if-nez v0, :cond_96

    .line 1006
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "joy_dialog_public_account"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/JoyFramework/d/e;->r:Landroid/view/View;

    .line 1007
    sget-object v0, Lcom/JoyFramework/d/e;->r:Landroid/view/View;

    const-string v1, "id_dialog_public_account_img"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1008
    sget-object v1, Lcom/JoyFramework/d/e;->r:Landroid/view/View;

    const-string v2, "id_dialog_public_account_save"

    invoke-static {p0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 1009
    sget-object v2, Lcom/JoyFramework/d/e;->r:Landroid/view/View;

    const-string v3, "id_dialog_public_account_close"

    invoke-static {p0, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 1011
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1012
    new-instance v0, Lcom/JoyFramework/d/z;

    invoke-direct {v0, p0, p1}, Lcom/JoyFramework/d/z;-><init>(Landroid/app/Activity;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1024
    new-instance v0, Lcom/JoyFramework/d/aa;

    invoke-direct {v0}, Lcom/JoyFramework/d/aa;-><init>()V

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1035
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "JoyGame_float_MyDialog"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/JoyFramework/d/e;->s:Landroid/app/Dialog;

    .line 1036
    sget-object v0, Lcom/JoyFramework/d/e;->s:Landroid/app/Dialog;

    sget-object v1, Lcom/JoyFramework/d/e;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1037
    sget-object v0, Lcom/JoyFramework/d/e;->s:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1038
    sget-object v0, Lcom/JoyFramework/d/e;->s:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1039
    sget-object v0, Lcom/JoyFramework/d/e;->s:Landroid/app/Dialog;

    new-instance v1, Lcom/JoyFramework/d/ac;

    invoke-direct {v1}, Lcom/JoyFramework/d/ac;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1050
    sget-object v0, Lcom/JoyFramework/d/e;->s:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1052
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 1053
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 1055
    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 1057
    :cond_96
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1058
    sget-object v0, Lcom/JoyFramework/d/e;->s:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a3} :catch_a5

    goto/16 :goto_4

    .line 1059
    :catch_a5
    move-exception v0

    .line 1060
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4
.end method

.method public static a(Landroid/app/Activity;Lcom/JoyFramework/d/e$b;)V
    .registers 9
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/JoyFramework/d/e$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 902
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 944
    :cond_4
    :goto_4
    return-void

    .line 905
    :cond_5
    :try_start_5
    sget-object v0, Lcom/JoyFramework/d/e;->p:Landroid/view/View;

    if-nez v0, :cond_ac

    .line 906
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "joy_dialog_share"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/JoyFramework/d/e;->p:Landroid/view/View;

    .line 907
    sget-object v0, Lcom/JoyFramework/d/e;->p:Landroid/view/View;

    const-string v1, "id_share_to_qq"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 908
    sget-object v1, Lcom/JoyFramework/d/e;->p:Landroid/view/View;

    const-string v2, "id_share_to_qqZone"

    invoke-static {p0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 909
    sget-object v2, Lcom/JoyFramework/d/e;->p:Landroid/view/View;

    const-string v3, "id_share_to_weChat"

    invoke-static {p0, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 910
    sget-object v3, Lcom/JoyFramework/d/e;->p:Landroid/view/View;

    const-string v4, "id_share_to_moments"

    invoke-static {p0, v4}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 911
    sget-object v4, Lcom/JoyFramework/d/e;->p:Landroid/view/View;

    const-string v5, "id_share_to_weiBo"

    invoke-static {p0, v5}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 912
    new-instance v5, Landroid/app/Dialog;

    const-string v6, "JoyGame_float_MyDialog"

    invoke-static {p0, v6}, Lcom/JoyFramework/d/as;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, p0, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v5, Lcom/JoyFramework/d/e;->q:Landroid/app/Dialog;

    .line 913
    sget-object v5, Lcom/JoyFramework/d/e;->q:Landroid/app/Dialog;

    sget-object v6, Lcom/JoyFramework/d/e;->p:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 916
    sget-object v5, Lcom/JoyFramework/d/e;->q:Landroid/app/Dialog;

    new-instance v6, Lcom/JoyFramework/d/x;

    invoke-direct {v6}, Lcom/JoyFramework/d/x;-><init>()V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 927
    sget-object v5, Lcom/JoyFramework/d/e;->q:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 929
    const/16 v6, 0x50

    invoke-virtual {v5, v6}, Landroid/view/Window;->setGravity(I)V

    .line 930
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 932
    const v6, 0x3f19999a    # 0.6f

    invoke-virtual {v5, v6}, Landroid/view/Window;->setDimAmount(F)V

    .line 933
    sget-object v5, Lcom/JoyFramework/d/e;->q:Landroid/app/Dialog;

    invoke-static {v0, v5, p1}, Lcom/JoyFramework/d/e;->a(Landroid/view/View;Landroid/app/Dialog;Lcom/JoyFramework/d/e$b;)V

    .line 934
    sget-object v0, Lcom/JoyFramework/d/e;->q:Landroid/app/Dialog;

    invoke-static {v1, v0, p1}, Lcom/JoyFramework/d/e;->a(Landroid/view/View;Landroid/app/Dialog;Lcom/JoyFramework/d/e$b;)V

    .line 935
    sget-object v0, Lcom/JoyFramework/d/e;->q:Landroid/app/Dialog;

    invoke-static {v2, v0, p1}, Lcom/JoyFramework/d/e;->a(Landroid/view/View;Landroid/app/Dialog;Lcom/JoyFramework/d/e$b;)V

    .line 936
    sget-object v0, Lcom/JoyFramework/d/e;->q:Landroid/app/Dialog;

    invoke-static {v3, v0, p1}, Lcom/JoyFramework/d/e;->a(Landroid/view/View;Landroid/app/Dialog;Lcom/JoyFramework/d/e$b;)V

    .line 937
    sget-object v0, Lcom/JoyFramework/d/e;->q:Landroid/app/Dialog;

    invoke-static {v4, v0, p1}, Lcom/JoyFramework/d/e;->a(Landroid/view/View;Landroid/app/Dialog;Lcom/JoyFramework/d/e$b;)V

    .line 939
    :cond_ac
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 940
    sget-object v0, Lcom/JoyFramework/d/e;->q:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b9} :catch_bb

    goto/16 :goto_4

    .line 941
    :catch_bb
    move-exception v0

    .line 942
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$c;)V
    .registers 6
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/JoyFramework/d/e$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 697
    :try_start_0
    sget-object v0, Lcom/JoyFramework/d/e;->i:Landroid/view/View;

    if-nez v0, :cond_95

    sget-object v0, Lcom/JoyFramework/d/e;->n:Landroid/app/Dialog;

    if-nez v0, :cond_95

    .line 698
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "joy_dialog_tip"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/JoyFramework/d/e;->i:Landroid/view/View;

    .line 699
    sget-object v0, Lcom/JoyFramework/d/e;->i:Landroid/view/View;

    const-string v1, "l_dialog_tip_message"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 700
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 701
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    sget-object v0, Lcom/JoyFramework/d/e;->i:Landroid/view/View;

    const-string v1, "l_dialog_tip_cancel"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 703
    sget-object v1, Lcom/JoyFramework/d/e;->i:Landroid/view/View;

    const-string v2, "l_dialog_tip_ensure"

    invoke-static {p0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 704
    new-instance v2, Lcom/JoyFramework/d/s;

    invoke-direct {v2, p2}, Lcom/JoyFramework/d/s;-><init>(Lcom/JoyFramework/d/e$c;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 718
    new-instance v1, Lcom/JoyFramework/d/t;

    invoke-direct {v1, p2}, Lcom/JoyFramework/d/t;-><init>(Lcom/JoyFramework/d/e$c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 733
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "JoyGame_float_MyDialog"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/JoyFramework/d/e;->n:Landroid/app/Dialog;

    .line 734
    sget-object v0, Lcom/JoyFramework/d/e;->n:Landroid/app/Dialog;

    sget-object v1, Lcom/JoyFramework/d/e;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 736
    sget-object v0, Lcom/JoyFramework/d/e;->n:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 737
    sget-object v0, Lcom/JoyFramework/d/e;->n:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 739
    sget-object v0, Lcom/JoyFramework/d/e;->n:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 741
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 744
    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 747
    sget-object v0, Lcom/JoyFramework/d/e;->n:Landroid/app/Dialog;

    new-instance v1, Lcom/JoyFramework/d/u;

    invoke-direct {v1}, Lcom/JoyFramework/d/u;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 758
    :cond_95
    if-eqz p0, :cond_a2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_a2

    .line 759
    sget-object v0, Lcom/JoyFramework/d/e;->n:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a2} :catch_a3

    .line 763
    :cond_a2
    :goto_a2
    return-void

    .line 760
    :catch_a3
    move-exception v0

    .line 761
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a2
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$c;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/JoyFramework/d/e$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 442
    :try_start_0
    sget-object v0, Lcom/JoyFramework/d/e;->g:Landroid/view/View;

    if-nez v0, :cond_9e

    sget-object v0, Lcom/JoyFramework/d/e;->l:Landroid/app/Dialog;

    if-nez v0, :cond_9e

    .line 443
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "joy_dialog_tip"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/JoyFramework/d/e;->g:Landroid/view/View;

    .line 444
    sget-object v0, Lcom/JoyFramework/d/e;->g:Landroid/view/View;

    const-string v1, "l_dialog_tip_message"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 445
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    sget-object v0, Lcom/JoyFramework/d/e;->g:Landroid/view/View;

    const-string v1, "l_dialog_tip_cancel"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 447
    sget-object v1, Lcom/JoyFramework/d/e;->g:Landroid/view/View;

    const-string v2, "l_dialog_tip_ensure"

    invoke-static {p0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 448
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 449
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    :cond_4f
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_58

    .line 451
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    :cond_58
    new-instance v2, Lcom/JoyFramework/d/j;

    invoke-direct {v2, p2}, Lcom/JoyFramework/d/j;-><init>(Lcom/JoyFramework/d/e$c;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    new-instance v1, Lcom/JoyFramework/d/k;

    invoke-direct {v1, p2}, Lcom/JoyFramework/d/k;-><init>(Lcom/JoyFramework/d/e$c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "JoyGame_float_MyDialog"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/JoyFramework/d/e;->l:Landroid/app/Dialog;

    .line 482
    sget-object v0, Lcom/JoyFramework/d/e;->l:Landroid/app/Dialog;

    sget-object v1, Lcom/JoyFramework/d/e;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 483
    if-eqz p5, :cond_ac

    .line 484
    sget-object v0, Lcom/JoyFramework/d/e;->l:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 491
    :goto_84
    sget-object v0, Lcom/JoyFramework/d/e;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 493
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 496
    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 499
    sget-object v0, Lcom/JoyFramework/d/e;->l:Landroid/app/Dialog;

    new-instance v1, Lcom/JoyFramework/d/l;

    invoke-direct {v1}, Lcom/JoyFramework/d/l;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 510
    :cond_9e
    if-eqz p0, :cond_ab

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 511
    sget-object v0, Lcom/JoyFramework/d/e;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 515
    :cond_ab
    :goto_ab
    return-void

    .line 487
    :cond_ac
    sget-object v0, Lcom/JoyFramework/d/e;->l:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 488
    sget-object v0, Lcom/JoyFramework/d/e;->l:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b8} :catch_b9

    goto :goto_84

    .line 512
    :catch_b9
    move-exception v0

    .line 513
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ab
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$c;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 10
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/JoyFramework/d/e$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 531
    :try_start_0
    sget-object v0, Lcom/JoyFramework/d/e;->g:Landroid/view/View;

    if-nez v0, :cond_94

    sget-object v0, Lcom/JoyFramework/d/e;->l:Landroid/app/Dialog;

    if-nez v0, :cond_94

    .line 532
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "joy_dialog_tip"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/JoyFramework/d/e;->g:Landroid/view/View;

    .line 533
    sget-object v0, Lcom/JoyFramework/d/e;->g:Landroid/view/View;

    const-string v1, "l_dialog_tip_message"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 534
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    sget-object v0, Lcom/JoyFramework/d/e;->g:Landroid/view/View;

    const-string v1, "l_dialog_tip_cancel"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 536
    sget-object v1, Lcom/JoyFramework/d/e;->g:Landroid/view/View;

    const-string v2, "l_dialog_tip_ensure"

    invoke-static {p0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 537
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 538
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    :cond_4f
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_58

    .line 540
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    :cond_58
    new-instance v2, Lcom/JoyFramework/d/m;

    invoke-direct {v2, p2, p6}, Lcom/JoyFramework/d/m;-><init>(Lcom/JoyFramework/d/e$c;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    new-instance v1, Lcom/JoyFramework/d/n;

    invoke-direct {v1, p2}, Lcom/JoyFramework/d/n;-><init>(Lcom/JoyFramework/d/e$c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "JoyGame_float_MyDialog"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/JoyFramework/d/e;->l:Landroid/app/Dialog;

    .line 573
    sget-object v0, Lcom/JoyFramework/d/e;->l:Landroid/app/Dialog;

    sget-object v1, Lcom/JoyFramework/d/e;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 574
    if-eqz p5, :cond_a2

    .line 575
    sget-object v0, Lcom/JoyFramework/d/e;->l:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 582
    :goto_84
    sget-object v0, Lcom/JoyFramework/d/e;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 584
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 587
    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 590
    :cond_94
    if-eqz p0, :cond_a1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_a1

    .line 591
    sget-object v0, Lcom/JoyFramework/d/e;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 595
    :cond_a1
    :goto_a1
    return-void

    .line 578
    :cond_a2
    sget-object v0, Lcom/JoyFramework/d/e;->l:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 579
    sget-object v0, Lcom/JoyFramework/d/e;->l:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ae} :catch_af

    goto :goto_84

    .line 592
    :catch_af
    move-exception v0

    .line 593
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a1
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$e;)V
    .registers 6
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/JoyFramework/d/e$e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 336
    :try_start_0
    sget-object v0, Lcom/JoyFramework/d/e;->f:Landroid/view/View;

    if-nez v0, :cond_8a

    sget-object v0, Lcom/JoyFramework/d/e;->k:Landroid/app/Dialog;

    if-nez v0, :cond_8a

    .line 337
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "joy_dialog_tip"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/JoyFramework/d/e;->f:Landroid/view/View;

    .line 338
    sget-object v0, Lcom/JoyFramework/d/e;->f:Landroid/view/View;

    const-string v1, "l_dialog_tip_message"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 339
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    sget-object v0, Lcom/JoyFramework/d/e;->f:Landroid/view/View;

    const-string v1, "l_dialog_tip_cancel"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 341
    sget-object v1, Lcom/JoyFramework/d/e;->f:Landroid/view/View;

    const-string v2, "l_dialog_tip_ensure"

    invoke-static {p0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 342
    new-instance v2, Lcom/JoyFramework/d/g;

    invoke-direct {v2, p2}, Lcom/JoyFramework/d/g;-><init>(Lcom/JoyFramework/d/e$e;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    new-instance v1, Lcom/JoyFramework/d/h;

    invoke-direct {v1}, Lcom/JoyFramework/d/h;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "JoyGame_float_MyDialog"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/JoyFramework/d/e;->k:Landroid/app/Dialog;

    .line 368
    sget-object v0, Lcom/JoyFramework/d/e;->k:Landroid/app/Dialog;

    sget-object v1, Lcom/JoyFramework/d/e;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 369
    sget-object v0, Lcom/JoyFramework/d/e;->k:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 370
    sget-object v0, Lcom/JoyFramework/d/e;->k:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 372
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 375
    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 378
    sget-object v0, Lcom/JoyFramework/d/e;->k:Landroid/app/Dialog;

    new-instance v1, Lcom/JoyFramework/d/i;

    invoke-direct {v1}, Lcom/JoyFramework/d/i;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 389
    :cond_8a
    if-eqz p0, :cond_97

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_97

    .line 390
    sget-object v0, Lcom/JoyFramework/d/e;->k:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_97} :catch_98

    .line 394
    :cond_97
    :goto_97
    return-void

    .line 391
    :catch_98
    move-exception v0

    .line 392
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_97
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$e;Ljava/lang/String;)V
    .registers 7
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/JoyFramework/d/e$e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 789
    :try_start_0
    sget-object v0, Lcom/JoyFramework/d/e;->h:Landroid/view/View;

    if-nez v0, :cond_79

    sget-object v0, Lcom/JoyFramework/d/e;->m:Landroid/app/Dialog;

    if-nez v0, :cond_79

    .line 790
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "joy_dialog_tip_two"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/JoyFramework/d/e;->h:Landroid/view/View;

    .line 791
    sget-object v0, Lcom/JoyFramework/d/e;->h:Landroid/view/View;

    const-string v1, "l_dialog_tip_two_message"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 792
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 793
    sget-object v0, Lcom/JoyFramework/d/e;->h:Landroid/view/View;

    const-string v1, "l_dialog_tip_two_ensure"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 794
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 795
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 796
    :cond_41
    new-instance v1, Lcom/JoyFramework/d/v;

    invoke-direct {v1, p2}, Lcom/JoyFramework/d/v;-><init>(Lcom/JoyFramework/d/e$e;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 810
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "JoyGame_float_MyDialog"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/JoyFramework/d/e;->m:Landroid/app/Dialog;

    .line 811
    sget-object v0, Lcom/JoyFramework/d/e;->m:Landroid/app/Dialog;

    sget-object v1, Lcom/JoyFramework/d/e;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 812
    sget-object v0, Lcom/JoyFramework/d/e;->m:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 813
    sget-object v0, Lcom/JoyFramework/d/e;->m:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 814
    sget-object v0, Lcom/JoyFramework/d/e;->m:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 816
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 819
    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 822
    :cond_79
    if-eqz p0, :cond_86

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_86

    .line 823
    sget-object v0, Lcom/JoyFramework/d/e;->m:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_86} :catch_87

    .line 827
    :cond_86
    :goto_86
    return-void

    .line 824
    :catch_87
    move-exception v0

    .line 825
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_86
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$e;Ljava/lang/String;Z)V
    .registers 8
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/JoyFramework/d/e$e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 840
    :try_start_0
    sget-object v0, Lcom/JoyFramework/d/e;->h:Landroid/view/View;

    if-nez v0, :cond_75

    sget-object v0, Lcom/JoyFramework/d/e;->m:Landroid/app/Dialog;

    if-nez v0, :cond_75

    .line 841
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "joy_dialog_tip_two"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/JoyFramework/d/e;->h:Landroid/view/View;

    .line 842
    sget-object v0, Lcom/JoyFramework/d/e;->h:Landroid/view/View;

    const-string v1, "l_dialog_tip_two_message"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 843
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 844
    sget-object v0, Lcom/JoyFramework/d/e;->h:Landroid/view/View;

    const-string v1, "l_dialog_tip_two_ensure"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 845
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 846
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 847
    :cond_41
    new-instance v1, Lcom/JoyFramework/d/w;

    invoke-direct {v1, p2}, Lcom/JoyFramework/d/w;-><init>(Lcom/JoyFramework/d/e$e;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 861
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "JoyGame_float_MyDialog"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/JoyFramework/d/e;->m:Landroid/app/Dialog;

    .line 862
    sget-object v0, Lcom/JoyFramework/d/e;->m:Landroid/app/Dialog;

    sget-object v1, Lcom/JoyFramework/d/e;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 863
    if-eqz p4, :cond_83

    .line 864
    sget-object v0, Lcom/JoyFramework/d/e;->m:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 870
    :goto_65
    sget-object v0, Lcom/JoyFramework/d/e;->m:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 872
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 875
    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 878
    :cond_75
    if-eqz p0, :cond_82

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_82

    .line 879
    sget-object v0, Lcom/JoyFramework/d/e;->m:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 883
    :cond_82
    :goto_82
    return-void

    .line 867
    :cond_83
    sget-object v0, Lcom/JoyFramework/d/e;->m:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 868
    sget-object v0, Lcom/JoyFramework/d/e;->m:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8f} :catch_90

    goto :goto_65

    .line 880
    :catch_90
    move-exception v0

    .line 881
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_82
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Z)V
    .registers 6
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 398
    :try_start_0
    sget-object v0, Lcom/JoyFramework/d/e;->g:Landroid/view/View;

    if-nez v0, :cond_56

    sget-object v0, Lcom/JoyFramework/d/e;->l:Landroid/app/Dialog;

    if-nez v0, :cond_56

    .line 399
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "l_dialog_tip_emulator"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/JoyFramework/d/e;->g:Landroid/view/View;

    .line 400
    sget-object v0, Lcom/JoyFramework/d/e;->g:Landroid/view/View;

    const-string v1, "l_dialog_tip_emulator_message"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 401
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "JoyGame_float_MyDialog"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/JoyFramework/d/e;->l:Landroid/app/Dialog;

    .line 405
    sget-object v0, Lcom/JoyFramework/d/e;->l:Landroid/app/Dialog;

    sget-object v1, Lcom/JoyFramework/d/e;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 406
    if-eqz p2, :cond_64

    .line 407
    sget-object v0, Lcom/JoyFramework/d/e;->l:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 414
    :goto_46
    sget-object v0, Lcom/JoyFramework/d/e;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 416
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 419
    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 421
    :cond_56
    if-eqz p0, :cond_63

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_63

    .line 422
    sget-object v0, Lcom/JoyFramework/d/e;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 426
    :cond_63
    :goto_63
    return-void

    .line 410
    :cond_64
    sget-object v0, Lcom/JoyFramework/d/e;->l:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 411
    sget-object v0, Lcom/JoyFramework/d/e;->l:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_70} :catch_71

    goto :goto_46

    .line 423
    :catch_71
    move-exception v0

    .line 424
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_63
.end method

.method public static a(Landroid/content/Context;Lcom/JoyFramework/d/e$a;)V
    .registers 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/JoyFramework/d/e$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 39
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/JoyFramework/d/e;->a:Z

    .line 40
    sget-object v0, Lcom/JoyFramework/d/e;->d:Landroid/view/View;

    if-nez v0, :cond_80

    sget-object v0, Lcom/JoyFramework/d/e;->b:Landroid/app/Dialog;

    if-nez v0, :cond_80

    .line 41
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "joy_dialog_hide_float_view"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/JoyFramework/d/e;->d:Landroid/view/View;

    .line 42
    sget-object v0, Lcom/JoyFramework/d/e;->d:Landroid/view/View;

    const-string v1, "l_dialog_hide_float_cancel"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 43
    sget-object v1, Lcom/JoyFramework/d/e;->d:Landroid/view/View;

    const-string v2, "l_dialog_hide_float_ensure"

    invoke-static {p0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 44
    new-instance v2, Lcom/JoyFramework/d/f;

    invoke-direct {v2, p1}, Lcom/JoyFramework/d/f;-><init>(Lcom/JoyFramework/d/e$a;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    new-instance v0, Lcom/JoyFramework/d/q;

    invoke-direct {v0, p1}, Lcom/JoyFramework/d/q;-><init>(Lcom/JoyFramework/d/e$a;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "JoyGame_float_MyDialog"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/JoyFramework/d/e;->b:Landroid/app/Dialog;

    .line 67
    sget-object v0, Lcom/JoyFramework/d/e;->b:Landroid/app/Dialog;

    sget-object v1, Lcom/JoyFramework/d/e;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 68
    sget-object v0, Lcom/JoyFramework/d/e;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 75
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 95
    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 97
    const-string v1, "JoyGame_float_animation"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 98
    sget-object v0, Lcom/JoyFramework/d/e;->b:Landroid/app/Dialog;

    new-instance v1, Lcom/JoyFramework/d/ab;

    invoke-direct {v1, p1}, Lcom/JoyFramework/d/ab;-><init>(Lcom/JoyFramework/d/e$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 106
    :cond_80
    if-eqz p0, :cond_93

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_93

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_93

    .line 107
    sget-object v0, Lcom/JoyFramework/d/e;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_93} :catch_94

    .line 111
    :cond_93
    :goto_93
    return-void

    .line 108
    :catch_94
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_93
.end method

.method public static a(Landroid/content/Context;Lcom/JoyFramework/d/e$d;)V
    .registers 11
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/JoyFramework/d/e$d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 156
    :try_start_0
    sget-object v0, Lcom/JoyFramework/d/e;->e:Landroid/view/View;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/JoyFramework/d/e;->c:Landroid/app/Dialog;

    if-nez v0, :cond_11f

    .line 157
    :cond_8
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "l_float_menu"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/JoyFramework/d/e;->e:Landroid/view/View;

    .line 158
    sget-object v0, Lcom/JoyFramework/d/e;->e:Landroid/view/View;

    const-string v1, "l_float_menu_img_account"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 159
    sget-object v1, Lcom/JoyFramework/d/e;->e:Landroid/view/View;

    const-string v2, "l_float_menu_img_gift_bag"

    invoke-static {p0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 160
    sget-object v2, Lcom/JoyFramework/d/e;->e:Landroid/view/View;

    const-string v3, "l_float_menu_img_custom_service"

    invoke-static {p0, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 161
    sget-object v3, Lcom/JoyFramework/d/e;->e:Landroid/view/View;

    const-string v4, "l_float_menu_img_exit"

    invoke-static {p0, v4}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 162
    sget-object v4, Lcom/JoyFramework/d/e;->e:Landroid/view/View;

    const-string v5, "l_float_menu_close"

    invoke-static {p0, v5}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 163
    sget-object v5, Lcom/JoyFramework/d/e;->e:Landroid/view/View;

    const-string v6, "l_float_menu_tv_account"

    invoke-static {p0, v6}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 164
    sget-object v6, Lcom/JoyFramework/d/e;->e:Landroid/view/View;

    const-string v7, "l_float_menu_version"

    invoke-static {p0, v7}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 165
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5f53\u524d\u8d26\u53f7: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/JoyFramework/a/a;->A:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const-string v7, "joySdkVersion"

    invoke-static {v5, v7}, Lcom/JoyFramework/d/ar;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 167
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_133

    .line 168
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "v"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    :goto_ba
    new-instance v5, Lcom/JoyFramework/d/ad;

    invoke-direct {v5, p1}, Lcom/JoyFramework/d/ad;-><init>(Lcom/JoyFramework/d/e$d;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    new-instance v0, Lcom/JoyFramework/d/ae;

    invoke-direct {v0, p1}, Lcom/JoyFramework/d/ae;-><init>(Lcom/JoyFramework/d/e$d;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    new-instance v0, Lcom/JoyFramework/d/af;

    invoke-direct {v0, p1}, Lcom/JoyFramework/d/af;-><init>(Lcom/JoyFramework/d/e$d;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    new-instance v0, Lcom/JoyFramework/d/ag;

    invoke-direct {v0, p1}, Lcom/JoyFramework/d/ag;-><init>(Lcom/JoyFramework/d/e$d;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    new-instance v0, Lcom/JoyFramework/d/ah;

    invoke-direct {v0}, Lcom/JoyFramework/d/ah;-><init>()V

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "JoyGame_float_MyDialog"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/JoyFramework/d/e;->c:Landroid/app/Dialog;

    .line 218
    sget-object v0, Lcom/JoyFramework/d/e;->c:Landroid/app/Dialog;

    sget-object v1, Lcom/JoyFramework/d/e;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 219
    sget-object v0, Lcom/JoyFramework/d/e;->c:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 220
    sget-object v0, Lcom/JoyFramework/d/e;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 227
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 243
    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 245
    const-string v1, "JoyGame_float_animation"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 246
    sget-object v0, Lcom/JoyFramework/d/e;->c:Landroid/app/Dialog;

    new-instance v1, Lcom/JoyFramework/d/ai;

    invoke-direct {v1, p1}, Lcom/JoyFramework/d/ai;-><init>(Lcom/JoyFramework/d/e$d;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 255
    :cond_11f
    if-eqz p0, :cond_132

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_132

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_132

    .line 256
    sget-object v0, Lcom/JoyFramework/d/e;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 260
    :cond_132
    :goto_132
    return-void

    .line 170
    :cond_133
    const-string v5, "v5.7"

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_138} :catch_139

    goto :goto_ba

    .line 257
    :catch_139
    move-exception v0

    .line 258
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_132
.end method

.method private static a(Landroid/view/View;Landroid/app/Dialog;Lcom/JoyFramework/d/e$b;)V
    .registers 4

    .prologue
    .line 954
    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    .line 955
    new-instance v0, Lcom/JoyFramework/d/y;

    invoke-direct {v0, p0, p2, p1}, Lcom/JoyFramework/d/y;-><init>(Landroid/view/View;Lcom/JoyFramework/d/e$b;Landroid/app/Dialog;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 995
    :cond_c
    return-void
.end method

.method public static a()Z
    .registers 1

    .prologue
    .line 119
    sget-object v0, Lcom/JoyFramework/d/e;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/JoyFramework/d/e;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 120
    const/4 v0, 0x1

    .line 122
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static synthetic b(Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 27
    sput-object p0, Lcom/JoyFramework/d/e;->l:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic b(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .prologue
    .line 27
    sput-object p0, Lcom/JoyFramework/d/e;->g:Landroid/view/View;

    return-object p0
.end method

.method public static b()V
    .registers 1

    .prologue
    .line 129
    sget-object v0, Lcom/JoyFramework/d/e;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/JoyFramework/d/e;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 130
    sget-object v0, Lcom/JoyFramework/d/e;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 132
    :cond_11
    return-void
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$c;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/JoyFramework/d/e$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 611
    :try_start_0
    sget-object v0, Lcom/JoyFramework/d/e;->j:Landroid/view/View;

    if-nez v0, :cond_9e

    sget-object v0, Lcom/JoyFramework/d/e;->o:Landroid/app/Dialog;

    if-nez v0, :cond_9e

    .line 612
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "joy_dialog_tip"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/JoyFramework/d/e;->j:Landroid/view/View;

    .line 613
    sget-object v0, Lcom/JoyFramework/d/e;->j:Landroid/view/View;

    const-string v1, "l_dialog_tip_message"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 614
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    sget-object v0, Lcom/JoyFramework/d/e;->j:Landroid/view/View;

    const-string v1, "l_dialog_tip_cancel"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 616
    sget-object v1, Lcom/JoyFramework/d/e;->j:Landroid/view/View;

    const-string v2, "l_dialog_tip_ensure"

    invoke-static {p0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 617
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 618
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    :cond_4f
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_58

    .line 620
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    :cond_58
    new-instance v2, Lcom/JoyFramework/d/o;

    invoke-direct {v2, p2}, Lcom/JoyFramework/d/o;-><init>(Lcom/JoyFramework/d/e$c;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
    new-instance v1, Lcom/JoyFramework/d/p;

    invoke-direct {v1, p2}, Lcom/JoyFramework/d/p;-><init>(Lcom/JoyFramework/d/e$c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 650
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "JoyGame_float_MyDialog"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/JoyFramework/d/e;->o:Landroid/app/Dialog;

    .line 651
    sget-object v0, Lcom/JoyFramework/d/e;->o:Landroid/app/Dialog;

    sget-object v1, Lcom/JoyFramework/d/e;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 652
    if-eqz p5, :cond_ac

    .line 653
    sget-object v0, Lcom/JoyFramework/d/e;->o:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 660
    :goto_84
    sget-object v0, Lcom/JoyFramework/d/e;->o:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 662
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 665
    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 668
    sget-object v0, Lcom/JoyFramework/d/e;->o:Landroid/app/Dialog;

    new-instance v1, Lcom/JoyFramework/d/r;

    invoke-direct {v1}, Lcom/JoyFramework/d/r;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 679
    :cond_9e
    if-eqz p0, :cond_ab

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 680
    sget-object v0, Lcom/JoyFramework/d/e;->o:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 684
    :cond_ab
    :goto_ab
    return-void

    .line 656
    :cond_ac
    sget-object v0, Lcom/JoyFramework/d/e;->o:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 657
    sget-object v0, Lcom/JoyFramework/d/e;->o:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b8} :catch_b9

    goto :goto_84

    .line 681
    :catch_b9
    move-exception v0

    .line 682
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ab
.end method

.method static synthetic c(Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 27
    sput-object p0, Lcom/JoyFramework/d/e;->o:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic c(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .prologue
    .line 27
    sput-object p0, Lcom/JoyFramework/d/e;->j:Landroid/view/View;

    return-object p0
.end method

.method public static c()Z
    .registers 1

    .prologue
    .line 268
    sget-object v0, Lcom/JoyFramework/d/e;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/JoyFramework/d/e;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 269
    const/4 v0, 0x1

    .line 271
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static synthetic d(Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 27
    sput-object p0, Lcom/JoyFramework/d/e;->n:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic d(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .prologue
    .line 27
    sput-object p0, Lcom/JoyFramework/d/e;->i:Landroid/view/View;

    return-object p0
.end method

.method public static d()V
    .registers 1

    .prologue
    .line 278
    sget-object v0, Lcom/JoyFramework/d/e;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/JoyFramework/d/e;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 279
    sget-object v0, Lcom/JoyFramework/d/e;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 281
    :cond_11
    return-void
.end method

.method static synthetic e()Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/JoyFramework/d/e;->b:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic e(Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 27
    sput-object p0, Lcom/JoyFramework/d/e;->m:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic e(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .prologue
    .line 27
    sput-object p0, Lcom/JoyFramework/d/e;->h:Landroid/view/View;

    return-object p0
.end method

.method static synthetic f()Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/JoyFramework/d/e;->c:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic f(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .prologue
    .line 27
    sput-object p0, Lcom/JoyFramework/d/e;->p:Landroid/view/View;

    return-object p0
.end method

.method static synthetic g()Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/JoyFramework/d/e;->k:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic g(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .prologue
    .line 27
    sput-object p0, Lcom/JoyFramework/d/e;->r:Landroid/view/View;

    return-object p0
.end method

.method static synthetic h()Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/JoyFramework/d/e;->l:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic i()Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/JoyFramework/d/e;->o:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic j()Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/JoyFramework/d/e;->n:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic k()Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/JoyFramework/d/e;->m:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic l()Landroid/view/View;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/JoyFramework/d/e;->p:Landroid/view/View;

    return-object v0
.end method

.method static synthetic m()Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/JoyFramework/d/e;->q:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic n()Landroid/view/View;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/JoyFramework/d/e;->r:Landroid/view/View;

    return-object v0
.end method

.method static synthetic o()Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/JoyFramework/d/e;->s:Landroid/app/Dialog;

    return-object v0
.end method
