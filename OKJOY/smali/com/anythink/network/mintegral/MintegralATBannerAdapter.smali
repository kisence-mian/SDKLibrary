.class public Lcom/anythink/network/mintegral/MintegralATBannerAdapter;
.super Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;


# instance fields
.field a:Lcom/mintegral/msdk/out/MTGBannerView;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

.field g:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->b:Ljava/lang/String;

    .line 30
    const-string v0, "{}"

    iput-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->e:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/anythink/banner/api/ATBannerView;)V
    .registers 10

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v1, -0x1

    .line 103
    new-instance v2, Lcom/mintegral/msdk/out/MTGBannerView;

    invoke-direct {v2, p1}, Lcom/mintegral/msdk/out/MTGBannerView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->a:Lcom/mintegral/msdk/out/MTGBannerView;

    .line 107
    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_d4

    :cond_15
    move v2, v1

    :goto_16
    packed-switch v2, :pswitch_data_e6

    .line 125
    const/4 v3, 0x4

    .line 126
    const/16 v2, 0x140

    .line 127
    const/16 v0, 0x32

    .line 130
    :goto_1e
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    if-lez v2, :cond_b4

    int-to-float v2, v2

    invoke-static {p1, v2}, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->dip2px(Landroid/content/Context;F)I

    move-result v2

    :goto_27
    if-lez v0, :cond_2e

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->dip2px(Landroid/content/Context;F)I

    move-result v1

    :cond_2e
    invoke-direct {v4, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 131
    const/16 v0, 0x11

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 133
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->a:Lcom/mintegral/msdk/out/MTGBannerView;

    new-instance v1, Lcom/mintegral/msdk/out/BannerSize;

    invoke-direct {v1, v3, v5, v5}, Lcom/mintegral/msdk/out/BannerSize;-><init>(III)V

    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/out/MTGBannerView;->init(Lcom/mintegral/msdk/out/BannerSize;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->a:Lcom/mintegral/msdk/out/MTGBannerView;

    new-instance v1, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$2;

    invoke-direct {v1, p0, p2}, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$2;-><init>(Lcom/anythink/network/mintegral/MintegralATBannerAdapter;Lcom/anythink/banner/api/ATBannerView;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/out/MTGBannerView;->setBannerAdListener(Lcom/mintegral/msdk/out/BannerAdListener;)V

    .line 189
    iget v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->g:I

    if-lez v0, :cond_b7

    .line 190
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->a:Lcom/mintegral/msdk/out/MTGBannerView;

    iget v1, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->g:I

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/out/MTGBannerView;->setRefreshTime(I)V

    .line 195
    :goto_56
    if-eqz p2, :cond_5d

    .line 196
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->a:Lcom/mintegral/msdk/out/MTGBannerView;

    invoke-virtual {p2, v0, v4}, Lcom/anythink/banner/api/ATBannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    :cond_5d
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_bd

    .line 201
    :try_start_65
    invoke-static {}, Lcom/mintegral/msdk/out/CustomInfoManager;->getInstance()Lcom/mintegral/msdk/out/CustomInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->b:Ljava/lang/String;

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mintegral/msdk/out/CustomInfoManager;->setCustomInfo(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_71} :catch_d2

    .line 204
    :goto_71
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->a:Lcom/mintegral/msdk/out/MTGBannerView;

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/out/MTGBannerView;->loadFromBid(Ljava/lang/String;)V

    .line 212
    :goto_78
    return-void

    .line 107
    :sswitch_79
    const-string v6, "320x90"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v5

    goto :goto_16

    :sswitch_83
    const-string v6, "300x250"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v3

    goto :goto_16

    :sswitch_8d
    const-string v6, "smart"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v4

    goto :goto_16

    :sswitch_97
    const-string v6, "320x50"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v0

    goto/16 :goto_16

    .line 110
    :pswitch_a2
    const/16 v2, 0x140

    .line 111
    const/16 v0, 0x5a

    .line 112
    goto/16 :goto_1e

    .line 115
    :pswitch_a8
    const/16 v2, 0x12c

    .line 116
    const/16 v0, 0xfa

    move v3, v4

    .line 117
    goto/16 :goto_1e

    :pswitch_af
    move v2, v1

    move v3, v0

    move v0, v1

    .line 122
    goto/16 :goto_1e

    :cond_b4
    move v2, v1

    .line 130
    goto/16 :goto_27

    .line 192
    :cond_b7
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->a:Lcom/mintegral/msdk/out/MTGBannerView;

    invoke-virtual {v0, v5}, Lcom/mintegral/msdk/out/MTGBannerView;->setRefreshTime(I)V

    goto :goto_56

    .line 207
    :cond_bd
    :try_start_bd
    invoke-static {}, Lcom/mintegral/msdk/out/CustomInfoManager;->getInstance()Lcom/mintegral/msdk/out/CustomInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->b:Ljava/lang/String;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mintegral/msdk/out/CustomInfoManager;->setCustomInfo(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_ca
    .catch Ljava/lang/Throwable; {:try_start_bd .. :try_end_ca} :catch_d0

    .line 210
    :goto_ca
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->a:Lcom/mintegral/msdk/out/MTGBannerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/MTGBannerView;->load()V

    goto :goto_78

    :catch_d0
    move-exception v0

    goto :goto_ca

    :catch_d2
    move-exception v0

    goto :goto_71

    .line 107
    :sswitch_data_d4
    .sparse-switch
        -0x215ddd38 -> :sswitch_83
        0x68795c9 -> :sswitch_8d
        0x59df59c2 -> :sswitch_97
        0x59df5a3e -> :sswitch_79
    .end sparse-switch

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_a2
        :pswitch_a8
        :pswitch_af
    .end packed-switch
.end method

.method static synthetic a(Lcom/anythink/network/mintegral/MintegralATBannerAdapter;Landroid/content/Context;Lcom/anythink/banner/api/ATBannerView;)V
    .registers 10

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v1, -0x1

    .line 23
    .line 1103
    new-instance v2, Lcom/mintegral/msdk/out/MTGBannerView;

    invoke-direct {v2, p1}, Lcom/mintegral/msdk/out/MTGBannerView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->a:Lcom/mintegral/msdk/out/MTGBannerView;

    .line 1107
    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_d4

    :cond_15
    move v2, v1

    :goto_16
    packed-switch v2, :pswitch_data_e6

    .line 1125
    const/4 v3, 0x4

    .line 1126
    const/16 v2, 0x140

    .line 1127
    const/16 v0, 0x32

    .line 1130
    :goto_1e
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    if-lez v2, :cond_b4

    int-to-float v2, v2

    invoke-static {p1, v2}, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->dip2px(Landroid/content/Context;F)I

    move-result v2

    :goto_27
    if-lez v0, :cond_2e

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->dip2px(Landroid/content/Context;F)I

    move-result v1

    :cond_2e
    invoke-direct {v4, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1131
    const/16 v0, 0x11

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1133
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->a:Lcom/mintegral/msdk/out/MTGBannerView;

    new-instance v1, Lcom/mintegral/msdk/out/BannerSize;

    invoke-direct {v1, v3, v5, v5}, Lcom/mintegral/msdk/out/BannerSize;-><init>(III)V

    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/out/MTGBannerView;->init(Lcom/mintegral/msdk/out/BannerSize;Ljava/lang/String;)V

    .line 1135
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->a:Lcom/mintegral/msdk/out/MTGBannerView;

    new-instance v1, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$2;

    invoke-direct {v1, p0, p2}, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$2;-><init>(Lcom/anythink/network/mintegral/MintegralATBannerAdapter;Lcom/anythink/banner/api/ATBannerView;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/out/MTGBannerView;->setBannerAdListener(Lcom/mintegral/msdk/out/BannerAdListener;)V

    .line 1189
    iget v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->g:I

    if-lez v0, :cond_b7

    .line 1190
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->a:Lcom/mintegral/msdk/out/MTGBannerView;

    iget v1, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->g:I

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/out/MTGBannerView;->setRefreshTime(I)V

    .line 1195
    :goto_56
    if-eqz p2, :cond_5d

    .line 1196
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->a:Lcom/mintegral/msdk/out/MTGBannerView;

    invoke-virtual {p2, v0, v4}, Lcom/anythink/banner/api/ATBannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1199
    :cond_5d
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_bd

    .line 1201
    :try_start_65
    invoke-static {}, Lcom/mintegral/msdk/out/CustomInfoManager;->getInstance()Lcom/mintegral/msdk/out/CustomInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->b:Ljava/lang/String;

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mintegral/msdk/out/CustomInfoManager;->setCustomInfo(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_71} :catch_d2

    .line 1204
    :goto_71
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->a:Lcom/mintegral/msdk/out/MTGBannerView;

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/out/MTGBannerView;->loadFromBid(Ljava/lang/String;)V

    :goto_78
    return-void

    .line 1107
    :sswitch_79
    const-string v6, "320x90"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v5

    goto :goto_16

    :sswitch_83
    const-string v6, "300x250"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v3

    goto :goto_16

    :sswitch_8d
    const-string v6, "smart"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v4

    goto :goto_16

    :sswitch_97
    const-string v6, "320x50"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v0

    goto/16 :goto_16

    .line 1110
    :pswitch_a2
    const/16 v2, 0x140

    .line 1111
    const/16 v0, 0x5a

    .line 1112
    goto/16 :goto_1e

    .line 1115
    :pswitch_a8
    const/16 v2, 0x12c

    .line 1116
    const/16 v0, 0xfa

    move v3, v4

    .line 1117
    goto/16 :goto_1e

    :pswitch_af
    move v2, v1

    move v3, v0

    move v0, v1

    .line 1122
    goto/16 :goto_1e

    :cond_b4
    move v2, v1

    .line 1130
    goto/16 :goto_27

    .line 1192
    :cond_b7
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->a:Lcom/mintegral/msdk/out/MTGBannerView;

    invoke-virtual {v0, v5}, Lcom/mintegral/msdk/out/MTGBannerView;->setRefreshTime(I)V

    goto :goto_56

    .line 1207
    :cond_bd
    :try_start_bd
    invoke-static {}, Lcom/mintegral/msdk/out/CustomInfoManager;->getInstance()Lcom/mintegral/msdk/out/CustomInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->b:Ljava/lang/String;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mintegral/msdk/out/CustomInfoManager;->setCustomInfo(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_ca
    .catch Ljava/lang/Throwable; {:try_start_bd .. :try_end_ca} :catch_d0

    .line 1210
    :goto_ca
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->a:Lcom/mintegral/msdk/out/MTGBannerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/MTGBannerView;->load()V

    goto :goto_78

    :catch_d0
    move-exception v0

    goto :goto_ca

    :catch_d2
    move-exception v0

    goto :goto_71

    .line 1107
    :sswitch_data_d4
    .sparse-switch
        -0x215ddd38 -> :sswitch_83
        0x68795c9 -> :sswitch_8d
        0x59df59c2 -> :sswitch_97
        0x59df5a3e -> :sswitch_79
    .end sparse-switch

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_a2
        :pswitch_a8
        :pswitch_af
    .end packed-switch
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .registers 4

    .prologue
    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 217
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public clean()V
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->a:Lcom/mintegral/msdk/out/MTGBannerView;

    if-eqz v0, :cond_c

    .line 233
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->a:Lcom/mintegral/msdk/out/MTGBannerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/MTGBannerView;->release()V

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->a:Lcom/mintegral/msdk/out/MTGBannerView;

    .line 236
    :cond_c
    return-void
.end method

.method public getBannerView()Landroid/view/View;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->a:Lcom/mintegral/msdk/out/MTGBannerView;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 240
    invoke-static {}, Lcom/anythink/network/mintegral/MintegralATInitManager;->getInstance()Lcom/anythink/network/mintegral/MintegralATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/mintegral/MintegralATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 227
    invoke-static {}, Lcom/anythink/network/mintegral/MintegralATConst;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadBannerAd(Lcom/anythink/banner/api/ATBannerView;Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/banner/unitgroup/api/CustomBannerListener;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/banner/api/ATBannerView;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/ATMediationSetting;",
            "Lcom/anythink/banner/unitgroup/api/CustomBannerListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    iput-object p5, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->f:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    .line 38
    const-string v0, ""

    .line 39
    const-string v1, ""

    .line 40
    const-string v2, "appid"

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 41
    const-string v0, "appid"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    :cond_18
    const-string v2, "appkey"

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 44
    const-string v1, "appkey"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    :cond_2a
    const-string v2, "unitid"

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 47
    const-string v2, "unitid"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->b:Ljava/lang/String;

    .line 49
    :cond_3e
    const-string v2, "size"

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 50
    const-string v2, "size"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->c:Ljava/lang/String;

    .line 52
    :cond_52
    const-string v2, "payload"

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 53
    const-string v2, "payload"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->d:Ljava/lang/String;

    .line 56
    :cond_66
    const-string v2, "tp_info"

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 57
    const-string v2, "tp_info"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->e:Ljava/lang/String;

    .line 60
    :cond_7a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8e

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8e

    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 61
    :cond_8e
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->f:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_a1

    .line 62
    const-string v0, "4001"

    const-string v1, ""

    const-string v2, "appid\u3001appkey or unitid is empty."

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->f:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    invoke-interface {v1, p0, v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdLoadFail(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Lcom/anythink/core/api/AdError;)V

    .line 100
    :cond_a1
    :goto_a1
    return-void

    .line 68
    :cond_a2
    instance-of v0, p2, Landroid/app/Activity;

    if-nez v0, :cond_ba

    .line 69
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->f:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_a1

    .line 70
    const-string v0, "4001"

    const-string v1, ""

    const-string v2, "Context must be activity."

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->f:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    invoke-interface {v1, p0, v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdLoadFail(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_a1

    .line 76
    :cond_ba
    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->g:I

    .line 78
    :try_start_bd
    const-string v0, "nw_rft"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 79
    const-string v0, "nw_rft"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->g:I

    .line 80
    iget v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->g:I

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->g:I
    :try_end_e0
    .catch Ljava/lang/Throwable; {:try_start_bd .. :try_end_e0} :catch_ed

    .line 86
    :cond_e0
    :goto_e0
    invoke-static {}, Lcom/anythink/network/mintegral/MintegralATInitManager;->getInstance()Lcom/anythink/network/mintegral/MintegralATInitManager;

    move-result-object v0

    new-instance v1, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$1;-><init>(Lcom/anythink/network/mintegral/MintegralATBannerAdapter;Landroid/content/Context;Lcom/anythink/banner/api/ATBannerView;)V

    invoke-virtual {v0, p2, p3, v1}, Lcom/anythink/network/mintegral/MintegralATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/mintegral/MintegralATInitManager$InitCallback;)V

    goto :goto_a1

    .line 83
    :catch_ed
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e0
.end method
