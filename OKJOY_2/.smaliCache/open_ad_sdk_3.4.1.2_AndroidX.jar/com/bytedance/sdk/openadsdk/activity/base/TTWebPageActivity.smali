.class public Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;
.super Landroid/app/Activity;
.source "TTWebPageActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/d/d;


# static fields
.field private static final g:Ljava/lang/String;


# instance fields
.field private A:Lcom/bytedance/sdk/openadsdk/core/x;

.field private B:I

.field private C:Ljava/lang/String;

.field private D:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;

.field private H:I

.field private I:I

.field private J:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private K:Lorg/json/JSONArray;

.field private L:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

.field private final M:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;",
            ">;"
        }
    .end annotation
.end field

.field private N:Ljava/lang/String;

.field private O:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

.field a:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;

.field b:Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;

.field c:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;

.field final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field f:Lcom/bytedance/sdk/openadsdk/c/j;

.field private h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/content/Context;

.field private s:I

.field private t:Landroid/view/ViewStub;

.field private u:Landroid/view/ViewStub;

.field private v:Landroid/view/ViewStub;

.field private w:Landroid/widget/Button;

.field private x:Landroid/widget/ProgressBar;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 87
    const-class v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 85
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 127
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->H:I

    .line 128
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->I:I

    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->J:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->K:Lorg/json/JSONArray;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->M:Ljava/util/Map;

    .line 386
    const-string v0, "\u7acb\u5373\u4e0b\u8f7d"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->N:Ljava/lang/String;

    .line 396
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$12;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$12;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->O:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)Landroid/widget/ProgressBar;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->x:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private a(I)V
    .registers 3

    .line 606
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 607
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->j:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 608
    return-void

    .line 610
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->i()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_1e

    .line 613
    :cond_18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->j:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 614
    return-void

    .line 611
    :cond_1e
    :goto_1e
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;I)V
    .registers 2

    .line 85
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 2

    .line 85
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;Ljava/lang/String;)V
    .registers 2

    .line 85
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 6

    .line 299
    if-nez p1, :cond_3

    .line 300
    return-void

    .line 302
    :cond_3
    nop

    .line 303
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/f;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Q()Ljava/lang/String;

    move-result-object v1

    .line 305
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    .line 306
    :goto_16
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$11;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$11;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)V

    invoke-static {p1, v1, v3, v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/g$a;Ljava/lang/String;Z)V

    .line 322
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .line 429
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 430
    return-void

    .line 433
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->w:Landroid/widget/Button;

    if-eqz v0, :cond_13

    .line 434
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$13;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$13;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    .line 443
    :cond_13
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)Ljava/lang/String;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->F:Ljava/lang/String;

    return-object p0
.end method

.method private b(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 6

    .line 689
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->K:Lorg/json/JSONArray;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 690
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->K:Lorg/json/JSONArray;

    return-object p1

    .line 692
    :cond_d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 693
    return-object v1

    .line 695
    :cond_15
    const-string v0, "?id="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 696
    const-string v2, "&"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 697
    const/4 v3, -0x1

    if-eq v0, v3, :cond_3f

    if-eq v2, v3, :cond_3f

    add-int/lit8 v0, v0, 0x4

    if-lt v0, v2, :cond_2b

    goto :goto_3f

    .line 700
    :cond_2b
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 701
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 702
    return-object v1

    .line 704
    :cond_36
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 705
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 706
    return-object v0

    .line 698
    :cond_3f
    :goto_3f
    return-object v1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 2

    .line 85
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->b(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    return-void
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 2

    .line 325
    if-nez p1, :cond_3

    .line 326
    return-void

    .line 329
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Q()Ljava/lang/String;

    move-result-object p1

    .line 330
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/g;->a(Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)I
    .registers 3

    .line 85
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->H:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->H:I

    return v0
.end method

.method static synthetic c()Ljava/lang/String;
    .registers 1

    .line 85
    sget-object v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method private c(Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 8

    .line 878
    const/16 v0, 0x8

    if-nez p1, :cond_c

    .line 879
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->q:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_b

    .line 880
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 882
    :cond_b
    return-void

    .line 884
    :cond_c
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Q()Ljava/lang/String;

    move-result-object v1

    .line 885
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 886
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->q:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1d

    .line 887
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 889
    :cond_1d
    return-void

    .line 892
    :cond_1e
    nop

    .line 893
    nop

    .line 894
    nop

    .line 895
    nop

    .line 896
    :try_start_22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a1

    .line 897
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 898
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/c;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/c;

    move-result-object v1

    .line 899
    if-nez v1, :cond_3b

    .line 900
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->q:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3a

    .line 901
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 903
    :cond_3a
    return-void

    .line 905
    :cond_3b
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/c;->f()Ljava/lang/String;

    move-result-object v2

    .line 906
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 907
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->q:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4c

    .line 908
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 910
    :cond_4c
    return-void

    .line 912
    :cond_4d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->q:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    if-eqz v0, :cond_55

    .line 913
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 915
    :cond_55
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 916
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/c;->c()Ljava/lang/String;

    move-result-object v3

    .line 917
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/c;->g()Ljava/lang/String;

    move-result-object v1

    .line 918
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 919
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/f;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;

    move-result-object v1

    .line 921
    :cond_6b
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->m:Landroid/widget/TextView;

    const/4 v4, 0x1

    if-eqz p1, :cond_85

    .line 922
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->r:Landroid/content/Context;

    const-string v5, "tt_open_app_detail_developer"

    invoke-static {p1, v5}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 923
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v3, v5, v2

    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 924
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 927
    :cond_85
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->n:Landroid/widget/TextView;

    if-eqz p1, :cond_a1

    .line 928
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->r:Landroid/content/Context;

    const-string v3, "tt_open_landing_page_app_name"

    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 929
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    aput-object v0, v3, v4

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 930
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_a1
    .catchall {:try_start_22 .. :try_end_a1} :catchall_a2

    .line 935
    :cond_a1
    goto :goto_a3

    .line 933
    :catchall_a2
    move-exception p1

    .line 936
    :goto_a3
    return-void
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->G:Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;

    return-object p0
.end method

.method private d()V
    .registers 6

    .line 335
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->D:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    goto :goto_63

    .line 338
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->L:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    const/4 v1, 0x0

    if-nez v0, :cond_2f

    .line 339
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->B:I

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->C:Ljava/lang/String;

    .line 340
    :goto_22
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->D:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->L:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 342
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->O:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;Z)V

    .line 344
    :cond_2f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->L:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/app/Activity;)V

    .line 345
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->L:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    instance-of v2, v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    const/4 v3, 0x1

    if-eqz v2, :cond_47

    .line 346
    check-cast v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->f(Z)V

    .line 347
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->L:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->g(Z)V

    .line 349
    :cond_47
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->D:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->B:I

    const-string v4, "embeded_ad_landingpage"

    invoke-direct {v0, p0, v1, v4, v2}, Lcom/bytedance/sdk/openadsdk/core/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V

    .line 351
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Z)V

    .line 352
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/a/a;->c(Z)V

    .line 353
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->L:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->g()V

    .line 354
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->L:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 355
    return-void

    .line 336
    :cond_63
    :goto_63
    return-void
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)I
    .registers 3

    .line 85
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->I:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->I:I

    return v0
.end method

.method private e()V
    .registers 6

    .line 360
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->D:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_7b

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7b

    .line 361
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->v:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 362
    const-string v0, "tt_browser_download_btn"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->w:Landroid/widget/Button;

    .line 363
    if-eqz v0, :cond_7b

    .line 364
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->a(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->L:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-nez v0, :cond_4a

    .line 367
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->B:I

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    :cond_3b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->C:Ljava/lang/String;

    .line 368
    :goto_3d
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->D:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->L:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 370
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->O:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;Z)V

    .line 372
    :cond_4a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->L:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/app/Activity;)V

    .line 373
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->L:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    const/4 v2, 0x1

    if-eqz v1, :cond_5b

    .line 374
    check-cast v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->f(Z)V

    .line 376
    :cond_5b
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->D:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->B:I

    const-string v4, "embeded_ad_landingpage"

    invoke-direct {v0, p0, v1, v4, v3}, Lcom/bytedance/sdk/openadsdk/core/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V

    .line 377
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Z)V

    .line 378
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/a/a;->c(Z)V

    .line 379
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->w:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->w:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 381
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->L:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 384
    :cond_7b
    return-void
.end method

.method private f()Ljava/lang/String;
    .registers 2

    .line 389
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->D:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->af()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 390
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->D:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->af()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->N:Ljava/lang/String;

    .line 393
    :cond_16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->N:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)Ljava/util/Map;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->M:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->D:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method private g()V
    .registers 3

    .line 454
    const-string v0, "tt_browser_webview"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    .line 455
    const-string v0, "tt_browser_download_btn_stub"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->v:Landroid/view/ViewStub;

    .line 456
    const-string v0, "tt_browser_titlebar_view_stub"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->t:Landroid/view/ViewStub;

    .line 457
    const-string v0, "tt_browser_titlebar_dark_view_stub"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->u:Landroid/view/ViewStub;

    .line 458
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->k()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_fe

    goto :goto_51

    .line 463
    :pswitch_45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->u:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 464
    goto :goto_51

    .line 460
    :pswitch_4b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->t:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 461
    nop

    .line 469
    :goto_51
    const-string v0, "tt_titlebar_back"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->i:Landroid/widget/ImageView;

    .line 470
    if-eqz v0, :cond_69

    .line 471
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$14;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$14;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    :cond_69
    const-string v0, "tt_titlebar_close"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->j:Landroid/widget/ImageView;

    .line 489
    if-eqz v0, :cond_81

    .line 490
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    :cond_81
    const-string v0, "tt_titlebar_title"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->k:Landroid/widget/TextView;

    .line 498
    const-string v0, "tt_titlebar_dislike"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->l:Landroid/widget/TextView;

    .line 500
    const-string v0, "tt_titlebar_developer"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->m:Landroid/widget/TextView;

    .line 501
    const-string v0, "tt_titlebar_app_name"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->n:Landroid/widget/TextView;

    .line 502
    const-string v0, "tt_titlebar_app_detail"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->o:Landroid/widget/TextView;

    .line 503
    const-string v0, "tt_titlebar_app_privacy"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->p:Landroid/widget/TextView;

    .line 504
    const-string v0, "tt_titlebar_detail_layout"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->q:Landroid/widget/LinearLayout;

    .line 505
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_ef

    .line 506
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    :cond_ef
    const-string v0, "tt_browser_progress"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->x:Landroid/widget/ProgressBar;

    .line 515
    return-void

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_45
    .end packed-switch
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)Ljava/lang/String;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->C:Ljava/lang/String;

    return-object p0
.end method

.method private h()V
    .registers 4

    .line 518
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 519
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->D:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/x;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->A:Lcom/bytedance/sdk/openadsdk/core/x;

    .line 521
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->D:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 522
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v1

    .line 523
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->y:Ljava/lang/String;

    .line 524
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->z:Ljava/lang/String;

    .line 525
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->B:I

    .line 526
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(I)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->D:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 527
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->i(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    .line 528
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    .line 529
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/d/d;)Lcom/bytedance/sdk/openadsdk/core/x;

    .line 530
    return-void
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)V
    .registers 1

    .line 85
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->d()V

    return-void
.end method

.method private i()Z
    .registers 2

    .line 601
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->D:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->f(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)Ljava/lang/String;
    .registers 1

    .line 85
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->f()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private j()V
    .registers 6

    .line 643
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->D:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_5

    .line 644
    return-void

    .line 646
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->E:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->b(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 647
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->z:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result v1

    .line 648
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->z:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Ljava/lang/String;)I

    move-result v2

    .line 649
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->f()Lcom/bytedance/sdk/openadsdk/core/q;

    move-result-object v3

    .line 650
    if-eqz v0, :cond_41

    if-eqz v3, :cond_41

    if-lez v1, :cond_41

    if-gtz v2, :cond_24

    goto :goto_41

    .line 653
    :cond_24
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/m;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/d/m;-><init>()V

    .line 654
    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/d/m;->d:Lorg/json/JSONArray;

    .line 655
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->D:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->p()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 656
    if-nez v0, :cond_34

    .line 657
    return-void

    .line 659
    :cond_34
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot;->setAdCount(I)V

    .line 660
    new-instance v4, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$4;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)V

    invoke-interface {v3, v0, v1, v2, v4}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;ILcom/bytedance/sdk/openadsdk/core/q$b;)V

    .line 680
    return-void

    .line 651
    :cond_41
    :goto_41
    return-void
.end method

.method static synthetic k(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)Landroid/widget/Button;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->w:Landroid/widget/Button;

    return-object p0
.end method

.method private k()V
    .registers 3

    .line 855
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->c:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;

    if-nez v0, :cond_5

    .line 856
    return-void

    .line 858
    :cond_5
    const-string v1, "\u60a8\u5df2\u6210\u529f\u63d0\u4ea4\u53cd\u9988\uff0c\u8bf7\u52ff\u91cd\u590d\u63d0\u4ea4\u54e6\uff01"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;->a(Ljava/lang/String;)V

    .line 859
    return-void
.end method

.method static synthetic l(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    return-object p0
.end method

.method private l()V
    .registers 3

    .line 863
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->c:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;

    if-nez v0, :cond_5

    .line 864
    return-void

    .line 866
    :cond_5
    const-string v1, "\u611f\u8c22\u60a8\u7684\u53cd\u9988\uff01\n\u6211\u4eec\u5c06\u4e3a\u60a8\u5e26\u6765\u66f4\u4f18\u8d28\u7684\u5e7f\u544a\u4f53\u9a8c"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;->a(Ljava/lang/String;)V

    .line 867
    return-void
.end method

.method private m()V
    .registers 3

    .line 871
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->c:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;

    if-nez v0, :cond_5

    .line 872
    return-void

    .line 874
    :cond_5
    const-string v1, "\u8f93\u5165\u4e3a\u7a7a\u6216\u8005\u8f93\u5165\u7279\u6b8a\u5b57\u7b26\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;->a(Ljava/lang/String;)V

    .line 875
    return-void
.end method

.method static synthetic m(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)Z
    .registers 1

    .line 85
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->i()Z

    move-result p0

    return p0
.end method

.method static synthetic n(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->J:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic o(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->A:Lcom/bytedance/sdk/openadsdk/core/x;

    return-object p0
.end method

.method static synthetic p(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)V
    .registers 1

    .line 85
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->l()V

    return-void
.end method

.method static synthetic q(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)V
    .registers 1

    .line 85
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->m()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    .line 768
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 769
    return-void

    .line 771
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 772
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->k()V

    .line 773
    return-void

    .line 775
    :cond_13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->a:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;

    if-nez v0, :cond_1a

    .line 776
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->b()V

    .line 779
    :cond_1a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->a:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->a()V

    .line 780
    return-void
.end method

.method public a(ZLorg/json/JSONArray;)V
    .registers 3

    .line 761
    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_f

    .line 762
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->K:Lorg/json/JSONArray;

    .line 763
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->j()V

    .line 765
    :cond_f
    return-void
.end method

.method b()V
    .registers 5

    .line 782
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->b:Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;

    const v1, 0x1020002

    if-nez v0, :cond_2a

    .line 783
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->D:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {v0, p0, v2}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->b:Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;

    .line 784
    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$5;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$5;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->setCallback(Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$a;)V

    .line 811
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 812
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->b:Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 813
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->b:Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->setVisibility(I)V

    .line 815
    :cond_2a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->a:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;

    if-nez v0, :cond_4c

    .line 816
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->D:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->C:Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->a:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;

    .line 817
    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$6;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$6;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->setCallback(Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$a;)V

    .line 844
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 845
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->a:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 847
    :cond_4c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->c:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;

    if-nez v0, :cond_62

    .line 848
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->c:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;

    .line 849
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 850
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->c:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 852
    :cond_62
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 587
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 589
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/webkit/WebView;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_16

    .line 592
    :cond_f
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_16

    .line 596
    :cond_13
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 598
    :goto_16
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 447
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 449
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->e()V

    .line 450
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15

    .line 139
    iput-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->r:Landroid/content/Context;

    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    :try_start_5
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Landroid/content/Context;)V

    .line 143
    const-string p1, "tt_activity_ttlandingpage"

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->setContentView(I)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    .line 145
    goto :goto_13

    .line 144
    :catchall_12
    move-exception p1

    .line 148
    :goto_13
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->g()V

    .line 149
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->r:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->a(Z)Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->b(Z)Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->a(Landroid/webkit/WebView;)V

    .line 150
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 151
    const-string v1, "sdk_version"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->s:I

    .line 152
    const-string v1, "adid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->y:Ljava/lang/String;

    .line 153
    const-string v3, "log_extra"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->z:Ljava/lang/String;

    .line 154
    const/4 v3, -0x1

    const-string v4, "source"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->B:I

    .line 155
    const-string v3, "url"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 157
    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->E:Ljava/lang/String;

    .line 158
    const-string v5, "web_title"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 159
    const-string v7, "icon_url"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    const-string v7, "gecko_id"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->F:Ljava/lang/String;

    .line 161
    const-string v7, "event_tag"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->C:Ljava/lang/String;

    .line 164
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v8

    if-eqz v8, :cond_96

    .line 165
    const-string v8, "multi_process_materialmeta"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 166
    if-eqz p1, :cond_95

    .line 169
    :try_start_81
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->D:Lcom/bytedance/sdk/openadsdk/core/d/l;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_8c} :catch_8d

    .line 172
    goto :goto_95

    .line 170
    :catch_8d
    move-exception p1

    .line 171
    sget-object v8, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->g:Ljava/lang/String;

    const-string v9, "TTWebPageActivity - onCreate MultiGlobalInfo : "

    invoke-static {v8, v9, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    :cond_95
    :goto_95
    goto :goto_a7

    .line 175
    :cond_96
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/u;->c()Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->D:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 176
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/u;->g()V

    .line 178
    :goto_a7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->D:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz p1, :cond_b0

    .line 179
    const-string v8, "landing_page"

    invoke-virtual {p1, v8}, Lcom/bytedance/sdk/openadsdk/core/d/l;->c(Ljava/lang/String;)V

    .line 181
    :cond_b0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->D:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->c(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 182
    new-instance p1, Lcom/bytedance/sdk/openadsdk/c/j;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->D:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-direct {p1, p0, v8, v9}, Lcom/bytedance/sdk/openadsdk/c/j;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/webkit/WebView;)V

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Z)Lcom/bytedance/sdk/openadsdk/c/j;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->f:Lcom/bytedance/sdk/openadsdk/c/j;

    .line 183
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 185
    :try_start_c9
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->y:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    const-string v1, "is_multi_process"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 189
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->C:Ljava/lang/String;

    invoke-virtual {p1, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e2
    .catch Lorg/json/JSONException; {:try_start_c9 .. :try_end_e2} :catch_e3

    .line 192
    goto :goto_e4

    .line 190
    :catch_e3
    move-exception v1

    .line 193
    :goto_e4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->f:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Lorg/json/JSONObject;)V

    .line 194
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->h()V

    .line 195
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$1;

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->r:Landroid/content/Context;

    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->A:Lcom/bytedance/sdk/openadsdk/core/x;

    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->y:Ljava/lang/String;

    iget-object v12, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->f:Lcom/bytedance/sdk/openadsdk/c/j;

    move-object v7, v1

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/c/j;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 229
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->s:I

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/r;->a(Landroid/webkit/WebView;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 231
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_120

    .line 232
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 236
    :cond_120
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->r:Landroid/content/Context;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->D:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 237
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->loadUrl(Ljava/lang/String;)V

    .line 238
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$7;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->A:Lcom/bytedance/sdk/openadsdk/core/x;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->f:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-direct {v0, p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$7;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;Lcom/bytedance/sdk/openadsdk/core/x;Lcom/bytedance/sdk/openadsdk/c/j;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 251
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$8;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$8;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 270
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->k:Landroid/widget/TextView;

    if-eqz p1, :cond_157

    .line 271
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_154

    const-string v0, "tt_web_title_default"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_154
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    :cond_157
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->o:Landroid/widget/TextView;

    if-eqz p1, :cond_163

    .line 275
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$9;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$9;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    :cond_163
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->p:Landroid/widget/TextView;

    if-eqz p1, :cond_16f

    .line 284
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$10;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$10;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    :cond_16f
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->e()V

    .line 293
    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->a(I)V

    .line 294
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/gecko/a;->a()Lcom/bytedance/sdk/openadsdk/gecko/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/gecko/a;->b()Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->G:Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;

    .line 295
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->D:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/app/Activity;)V

    .line 296
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .line 711
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 713
    :try_start_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 714
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 715
    if-eqz v0, :cond_18

    .line 716
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_19

    .line 720
    :cond_18
    goto :goto_1a

    .line 719
    :catchall_19
    move-exception v0

    .line 723
    :goto_1a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->F:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 724
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->I:I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->H:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->D:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/d$a;->a(IILcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 726
    :cond_2b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/gecko/a;->a()Lcom/bytedance/sdk/openadsdk/gecko/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->G:Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/gecko/a;->a(Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;)V

    .line 728
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->r:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa;->a(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 729
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa;->a(Landroid/webkit/WebView;)V

    .line 730
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    .line 732
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->A:Lcom/bytedance/sdk/openadsdk/core/x;

    if-eqz v0, :cond_4a

    .line 733
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/x;->o()V

    .line 736
    :cond_4a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->L:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_51

    .line 737
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->d()V

    .line 740
    :cond_51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->M:Ljava/util/Map;

    if-eqz v0, :cond_7e

    .line 741
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 742
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_78

    .line 743
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->d()V

    .line 745
    :cond_78
    goto :goto_5d

    .line 746
    :cond_79
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->M:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 749
    :cond_7e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->f:Lcom/bytedance/sdk/openadsdk/c/j;

    if-eqz v0, :cond_85

    .line 750
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/j;->d()V

    .line 752
    :cond_85
    return-void
.end method

.method protected onPause()V
    .registers 4

    .line 566
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 567
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/u;->b(Z)V

    .line 568
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->A:Lcom/bytedance/sdk/openadsdk/core/x;

    if-eqz v0, :cond_12

    .line 569
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/x;->n()V

    .line 572
    :cond_12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->L:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_19

    .line 573
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->c()V

    .line 576
    :cond_19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->M:Ljava/util/Map;

    if-eqz v0, :cond_41

    .line 577
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 578
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_40

    .line 579
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->c()V

    .line 581
    :cond_40
    goto :goto_25

    .line 583
    :cond_41
    return-void
.end method

.method protected onResume()V
    .registers 4

    .line 534
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 535
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->A:Lcom/bytedance/sdk/openadsdk/core/x;

    if-eqz v0, :cond_a

    .line 536
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/x;->m()V

    .line 539
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->L:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_11

    .line 540
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    .line 543
    :cond_11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->M:Ljava/util/Map;

    if-eqz v0, :cond_39

    .line 544
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 545
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 546
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    .line 548
    :cond_38
    goto :goto_1d

    .line 550
    :cond_39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->f:Lcom/bytedance/sdk/openadsdk/c/j;

    if-eqz v0, :cond_40

    .line 551
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/j;->b()V

    .line 553
    :cond_40
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->j()V

    .line 554
    return-void
.end method

.method protected onStop()V
    .registers 2

    .line 558
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 559
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->f:Lcom/bytedance/sdk/openadsdk/c/j;

    if-eqz v0, :cond_a

    .line 560
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/j;->c()V

    .line 562
    :cond_a
    return-void
.end method
