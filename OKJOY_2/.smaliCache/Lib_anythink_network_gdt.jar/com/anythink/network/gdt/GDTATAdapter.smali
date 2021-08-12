.class public Lcom/anythink/network/gdt/GDTATAdapter;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;

# interfaces
.implements Lcom/anythink/network/gdt/a;


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->h:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->i:I

    .line 38
    const/4 v0, 0x2

    iput v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->c:I

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/gdt/GDTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .registers 14

    .line 47
    :try_start_0
    iget v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->d:I

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_d0

    .line 55
    iget v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->c:I

    goto :goto_2f

    .line 50
    :pswitch_9
    nop

    .line 1080
    new-instance v0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATAdapter;->a:Ljava/lang/String;

    new-instance v3, Lcom/anythink/network/gdt/GDTATAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/anythink/network/gdt/GDTATAdapter$1;-><init>(Lcom/anythink/network/gdt/GDTATAdapter;Landroid/content/Context;)V

    invoke-direct {v0, p1, v2, v3}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeADUnifiedListener;)V

    .line 1110
    iget v2, p0, Lcom/anythink/network/gdt/GDTATAdapter;->g:I

    if-eq v2, v1, :cond_1d

    .line 1111
    invoke-virtual {v0, v2}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->setMaxVideoDuration(I)V

    .line 1113
    :cond_1d
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    iget v1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->f:I

    invoke-static {p1, v1}, Lcom/anythink/network/gdt/GDTATInitManager;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->setVideoPlayPolicy(I)V

    .line 1114
    iget p1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->b:I

    invoke-virtual {v0, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->loadData(I)V

    .line 51
    return-void

    .line 55
    :goto_2f
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_4f

    .line 57
    new-instance v0, Lcom/anythink/network/gdt/GDTATNativeExpressAd;

    iget-object v6, p0, Lcom/anythink/network/gdt/GDTATAdapter;->a:Ljava/lang/String;

    iget v7, p0, Lcom/anythink/network/gdt/GDTATAdapter;->h:I

    iget v8, p0, Lcom/anythink/network/gdt/GDTATAdapter;->i:I

    iget v9, p0, Lcom/anythink/network/gdt/GDTATAdapter;->e:I

    iget v10, p0, Lcom/anythink/network/gdt/GDTATAdapter;->f:I

    iget v11, p0, Lcom/anythink/network/gdt/GDTATAdapter;->g:I

    move-object v4, v0

    move-object v5, p1

    invoke-direct/range {v4 .. v11}, Lcom/anythink/network/gdt/GDTATNativeExpressAd;-><init>(Landroid/content/Context;Ljava/lang/String;IIIII)V

    .line 59
    nop

    .line 1127
    iput-object p0, v0, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->c:Lcom/anythink/network/gdt/a;

    .line 1128
    iget-object p1, v0, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->a:Lcom/qq/e/ads/nativ/NativeExpressAD;

    invoke-virtual {p1, v3}, Lcom/qq/e/ads/nativ/NativeExpressAD;->loadAD(I)V

    .line 60
    return-void

    .line 62
    :cond_4f
    nop

    .line 2119
    new-instance v0, Lcom/anythink/network/gdt/GDTATAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/anythink/network/gdt/GDTATAdapter$2;-><init>(Lcom/anythink/network/gdt/GDTATAdapter;Landroid/content/Context;)V

    .line 2149
    nop

    .line 2150
    const/4 v2, -0x2

    .line 2151
    iget v4, p0, Lcom/anythink/network/gdt/GDTATAdapter;->h:I

    if-lez v4, :cond_66

    .line 2152
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    iget v4, p0, Lcom/anythink/network/gdt/GDTATAdapter;->h:I

    int-to-float v4, v4

    invoke-static {p1, v4}, Lcom/anythink/network/gdt/GDTATInitManager;->a(Landroid/content/Context;F)I

    move-result v4

    goto :goto_67

    .line 2151
    :cond_66
    move v4, v1

    .line 2154
    :goto_67
    iget v5, p0, Lcom/anythink/network/gdt/GDTATAdapter;->i:I

    if-lez v5, :cond_75

    .line 2155
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    iget v2, p0, Lcom/anythink/network/gdt/GDTATAdapter;->i:I

    int-to-float v2, v2

    invoke-static {p1, v2}, Lcom/anythink/network/gdt/GDTATInitManager;->a(Landroid/content/Context;F)I

    move-result v2

    .line 2158
    :cond_75
    new-instance v5, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;

    iget-object v6, p0, Lcom/anythink/network/gdt/GDTATAdapter;->a:Ljava/lang/String;

    invoke-direct {v5, p1, v6, v0}, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/nativ/express2/NativeExpressAD2$AdLoadListener;)V

    .line 2159
    invoke-virtual {v5, v4, v2}, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;->setAdSize(II)V

    .line 2163
    iget p1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->f:I

    packed-switch p1, :pswitch_data_d6

    .line 2171
    sget-object p1, Lcom/qq/e/ads/nativ/express2/VideoOption2$AutoPlayPolicy;->WIFI:Lcom/qq/e/ads/nativ/express2/VideoOption2$AutoPlayPolicy;

    goto :goto_8c

    .line 2168
    :pswitch_87
    sget-object p1, Lcom/qq/e/ads/nativ/express2/VideoOption2$AutoPlayPolicy;->NEVER:Lcom/qq/e/ads/nativ/express2/VideoOption2$AutoPlayPolicy;

    .line 2169
    goto :goto_8c

    .line 2165
    :pswitch_8a
    sget-object p1, Lcom/qq/e/ads/nativ/express2/VideoOption2$AutoPlayPolicy;->ALWAYS:Lcom/qq/e/ads/nativ/express2/VideoOption2$AutoPlayPolicy;

    .line 2175
    :goto_8c
    new-instance v0, Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;

    invoke-direct {v0}, Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;-><init>()V

    iget v2, p0, Lcom/anythink/network/gdt/GDTATAdapter;->e:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_98

    move v2, v3

    goto :goto_99

    :cond_98
    move v2, v4

    .line 2176
    :goto_99
    invoke-virtual {v0, v2}, Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;->setAutoPlayMuted(Z)Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;

    move-result-object v0

    iget v2, p0, Lcom/anythink/network/gdt/GDTATAdapter;->e:I

    if-ne v2, v3, :cond_a2

    goto :goto_a3

    :cond_a2
    move v3, v4

    .line 2177
    :goto_a3
    invoke-virtual {v0, v3}, Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;->setDetailPageMuted(Z)Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;

    move-result-object v0

    .line 2178
    invoke-virtual {v0, p1}, Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;->setAutoPlayPolicy(Lcom/qq/e/ads/nativ/express2/VideoOption2$AutoPlayPolicy;)Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;

    move-result-object p1

    .line 2180
    iget v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->g:I

    if-eq v0, v1, :cond_b2

    .line 2181
    invoke-virtual {p1, v0}, Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;->setMaxVideoDuration(I)Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;

    .line 2184
    :cond_b2
    invoke-virtual {p1}, Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;->build()Lcom/qq/e/ads/nativ/express2/VideoOption2;

    move-result-object p1

    .line 2185
    invoke-virtual {v5, p1}, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;->setVideoOption2(Lcom/qq/e/ads/nativ/express2/VideoOption2;)V

    .line 2187
    iget p1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->b:I

    invoke-virtual {v5, p1}, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;->loadAd(I)V
    :try_end_be
    .catchall {:try_start_0 .. :try_end_be} :catchall_bf

    .line 71
    return-void

    .line 67
    :catchall_bf
    move-exception p1

    .line 68
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz v0, :cond_cf

    .line 69
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-interface {v0, v1, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_cf
    return-void

    :pswitch_data_d0
    .packed-switch 0x2
        :pswitch_9
    .end packed-switch

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_8a
        :pswitch_87
    .end packed-switch
.end method

.method static synthetic a(Lcom/anythink/network/gdt/GDTATAdapter;Landroid/content/Context;)V
    .registers 14

    .line 3047
    :try_start_0
    iget v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->d:I

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_d0

    .line 3055
    iget v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->c:I

    goto :goto_2f

    .line 3050
    :pswitch_9
    nop

    .line 3080
    new-instance v0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATAdapter;->a:Ljava/lang/String;

    new-instance v3, Lcom/anythink/network/gdt/GDTATAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/anythink/network/gdt/GDTATAdapter$1;-><init>(Lcom/anythink/network/gdt/GDTATAdapter;Landroid/content/Context;)V

    invoke-direct {v0, p1, v2, v3}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeADUnifiedListener;)V

    .line 3110
    iget v2, p0, Lcom/anythink/network/gdt/GDTATAdapter;->g:I

    if-eq v2, v1, :cond_1d

    .line 3111
    invoke-virtual {v0, v2}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->setMaxVideoDuration(I)V

    .line 3113
    :cond_1d
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    iget v1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->f:I

    invoke-static {p1, v1}, Lcom/anythink/network/gdt/GDTATInitManager;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->setVideoPlayPolicy(I)V

    .line 3114
    iget p1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->b:I

    invoke-virtual {v0, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->loadData(I)V

    .line 3051
    return-void

    .line 3055
    :goto_2f
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_4f

    .line 3057
    new-instance v0, Lcom/anythink/network/gdt/GDTATNativeExpressAd;

    iget-object v6, p0, Lcom/anythink/network/gdt/GDTATAdapter;->a:Ljava/lang/String;

    iget v7, p0, Lcom/anythink/network/gdt/GDTATAdapter;->h:I

    iget v8, p0, Lcom/anythink/network/gdt/GDTATAdapter;->i:I

    iget v9, p0, Lcom/anythink/network/gdt/GDTATAdapter;->e:I

    iget v10, p0, Lcom/anythink/network/gdt/GDTATAdapter;->f:I

    iget v11, p0, Lcom/anythink/network/gdt/GDTATAdapter;->g:I

    move-object v4, v0

    move-object v5, p1

    invoke-direct/range {v4 .. v11}, Lcom/anythink/network/gdt/GDTATNativeExpressAd;-><init>(Landroid/content/Context;Ljava/lang/String;IIIII)V

    .line 3059
    nop

    .line 3127
    iput-object p0, v0, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->c:Lcom/anythink/network/gdt/a;

    .line 3128
    iget-object p1, v0, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->a:Lcom/qq/e/ads/nativ/NativeExpressAD;

    invoke-virtual {p1, v3}, Lcom/qq/e/ads/nativ/NativeExpressAD;->loadAD(I)V

    .line 3060
    return-void

    .line 3062
    :cond_4f
    nop

    .line 4119
    new-instance v0, Lcom/anythink/network/gdt/GDTATAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/anythink/network/gdt/GDTATAdapter$2;-><init>(Lcom/anythink/network/gdt/GDTATAdapter;Landroid/content/Context;)V

    .line 4149
    nop

    .line 4150
    const/4 v2, -0x2

    .line 4151
    iget v4, p0, Lcom/anythink/network/gdt/GDTATAdapter;->h:I

    if-lez v4, :cond_66

    .line 4152
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    iget v4, p0, Lcom/anythink/network/gdt/GDTATAdapter;->h:I

    int-to-float v4, v4

    invoke-static {p1, v4}, Lcom/anythink/network/gdt/GDTATInitManager;->a(Landroid/content/Context;F)I

    move-result v4

    goto :goto_67

    .line 4151
    :cond_66
    move v4, v1

    .line 4154
    :goto_67
    iget v5, p0, Lcom/anythink/network/gdt/GDTATAdapter;->i:I

    if-lez v5, :cond_75

    .line 4155
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    iget v2, p0, Lcom/anythink/network/gdt/GDTATAdapter;->i:I

    int-to-float v2, v2

    invoke-static {p1, v2}, Lcom/anythink/network/gdt/GDTATInitManager;->a(Landroid/content/Context;F)I

    move-result v2

    .line 4158
    :cond_75
    new-instance v5, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;

    iget-object v6, p0, Lcom/anythink/network/gdt/GDTATAdapter;->a:Ljava/lang/String;

    invoke-direct {v5, p1, v6, v0}, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/nativ/express2/NativeExpressAD2$AdLoadListener;)V

    .line 4159
    invoke-virtual {v5, v4, v2}, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;->setAdSize(II)V

    .line 4163
    iget p1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->f:I

    packed-switch p1, :pswitch_data_d6

    .line 4171
    sget-object p1, Lcom/qq/e/ads/nativ/express2/VideoOption2$AutoPlayPolicy;->WIFI:Lcom/qq/e/ads/nativ/express2/VideoOption2$AutoPlayPolicy;

    goto :goto_8c

    .line 4168
    :pswitch_87
    sget-object p1, Lcom/qq/e/ads/nativ/express2/VideoOption2$AutoPlayPolicy;->NEVER:Lcom/qq/e/ads/nativ/express2/VideoOption2$AutoPlayPolicy;

    .line 4169
    goto :goto_8c

    .line 4165
    :pswitch_8a
    sget-object p1, Lcom/qq/e/ads/nativ/express2/VideoOption2$AutoPlayPolicy;->ALWAYS:Lcom/qq/e/ads/nativ/express2/VideoOption2$AutoPlayPolicy;

    .line 4175
    :goto_8c
    new-instance v0, Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;

    invoke-direct {v0}, Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;-><init>()V

    iget v2, p0, Lcom/anythink/network/gdt/GDTATAdapter;->e:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_98

    move v2, v3

    goto :goto_99

    :cond_98
    move v2, v4

    .line 4176
    :goto_99
    invoke-virtual {v0, v2}, Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;->setAutoPlayMuted(Z)Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;

    move-result-object v0

    iget v2, p0, Lcom/anythink/network/gdt/GDTATAdapter;->e:I

    if-ne v2, v3, :cond_a2

    goto :goto_a3

    :cond_a2
    move v3, v4

    .line 4177
    :goto_a3
    invoke-virtual {v0, v3}, Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;->setDetailPageMuted(Z)Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;

    move-result-object v0

    .line 4178
    invoke-virtual {v0, p1}, Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;->setAutoPlayPolicy(Lcom/qq/e/ads/nativ/express2/VideoOption2$AutoPlayPolicy;)Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;

    move-result-object p1

    .line 4180
    iget v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->g:I

    if-eq v0, v1, :cond_b2

    .line 4181
    invoke-virtual {p1, v0}, Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;->setMaxVideoDuration(I)Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;

    .line 4184
    :cond_b2
    invoke-virtual {p1}, Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;->build()Lcom/qq/e/ads/nativ/express2/VideoOption2;

    move-result-object p1

    .line 4185
    invoke-virtual {v5, p1}, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;->setVideoOption2(Lcom/qq/e/ads/nativ/express2/VideoOption2;)V

    .line 4187
    iget p1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->b:I

    invoke-virtual {v5, p1}, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;->loadAd(I)V
    :try_end_be
    .catchall {:try_start_0 .. :try_end_be} :catchall_bf

    .line 3071
    return-void

    .line 3067
    :catchall_bf
    move-exception p1

    .line 3068
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz v0, :cond_cf

    .line 3069
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-interface {p0, v0, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_cf
    return-void

    :pswitch_data_d0
    .packed-switch 0x2
        :pswitch_9
    .end packed-switch

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_8a
        :pswitch_87
    .end packed-switch
.end method

.method static synthetic b(Lcom/anythink/network/gdt/GDTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .registers 5

    .line 80
    new-instance v0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->a:Ljava/lang/String;

    new-instance v2, Lcom/anythink/network/gdt/GDTATAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/anythink/network/gdt/GDTATAdapter$1;-><init>(Lcom/anythink/network/gdt/GDTATAdapter;Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeADUnifiedListener;)V

    .line 110
    iget v1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->g:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_14

    .line 111
    invoke-virtual {v0, v1}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->setMaxVideoDuration(I)V

    .line 113
    :cond_14
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    iget v1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->f:I

    invoke-static {p1, v1}, Lcom/anythink/network/gdt/GDTATInitManager;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->setVideoPlayPolicy(I)V

    .line 114
    iget p1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->b:I

    invoke-virtual {v0, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->loadData(I)V

    .line 116
    return-void
.end method

.method static synthetic c(Lcom/anythink/network/gdt/GDTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method private c(Landroid/content/Context;)V
    .registers 8

    .line 119
    new-instance v0, Lcom/anythink/network/gdt/GDTATAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/anythink/network/gdt/GDTATAdapter$2;-><init>(Lcom/anythink/network/gdt/GDTATAdapter;Landroid/content/Context;)V

    .line 149
    nop

    .line 150
    nop

    .line 151
    iget v1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->h:I

    const/4 v2, -0x1

    if-lez v1, :cond_17

    .line 152
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    iget v1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->h:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Lcom/anythink/network/gdt/GDTATInitManager;->a(Landroid/content/Context;F)I

    move-result v1

    goto :goto_18

    .line 151
    :cond_17
    move v1, v2

    .line 154
    :goto_18
    iget v3, p0, Lcom/anythink/network/gdt/GDTATAdapter;->i:I

    if-lez v3, :cond_27

    .line 155
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    iget v3, p0, Lcom/anythink/network/gdt/GDTATAdapter;->i:I

    int-to-float v3, v3

    invoke-static {p1, v3}, Lcom/anythink/network/gdt/GDTATInitManager;->a(Landroid/content/Context;F)I

    move-result v3

    goto :goto_28

    .line 154
    :cond_27
    const/4 v3, -0x2

    .line 158
    :goto_28
    new-instance v4, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;

    iget-object v5, p0, Lcom/anythink/network/gdt/GDTATAdapter;->a:Ljava/lang/String;

    invoke-direct {v4, p1, v5, v0}, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/nativ/express2/NativeExpressAD2$AdLoadListener;)V

    .line 159
    invoke-virtual {v4, v1, v3}, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;->setAdSize(II)V

    .line 163
    iget p1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->f:I

    packed-switch p1, :pswitch_data_74

    .line 171
    sget-object p1, Lcom/qq/e/ads/nativ/express2/VideoOption2$AutoPlayPolicy;->WIFI:Lcom/qq/e/ads/nativ/express2/VideoOption2$AutoPlayPolicy;

    goto :goto_40

    .line 168
    :pswitch_3a
    sget-object p1, Lcom/qq/e/ads/nativ/express2/VideoOption2$AutoPlayPolicy;->NEVER:Lcom/qq/e/ads/nativ/express2/VideoOption2$AutoPlayPolicy;

    .line 169
    goto :goto_40

    .line 165
    :pswitch_3d
    sget-object p1, Lcom/qq/e/ads/nativ/express2/VideoOption2$AutoPlayPolicy;->ALWAYS:Lcom/qq/e/ads/nativ/express2/VideoOption2$AutoPlayPolicy;

    .line 166
    nop

    .line 175
    :goto_40
    new-instance v0, Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;

    invoke-direct {v0}, Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;-><init>()V

    iget v1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->e:I

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_4d

    move v1, v5

    goto :goto_4e

    :cond_4d
    move v1, v3

    .line 176
    :goto_4e
    invoke-virtual {v0, v1}, Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;->setAutoPlayMuted(Z)Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;

    move-result-object v0

    iget v1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->e:I

    if-ne v1, v5, :cond_57

    move v3, v5

    .line 177
    :cond_57
    invoke-virtual {v0, v3}, Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;->setDetailPageMuted(Z)Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;

    move-result-object v0

    .line 178
    invoke-virtual {v0, p1}, Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;->setAutoPlayPolicy(Lcom/qq/e/ads/nativ/express2/VideoOption2$AutoPlayPolicy;)Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;

    move-result-object p1

    .line 180
    iget v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->g:I

    if-eq v0, v2, :cond_66

    .line 181
    invoke-virtual {p1, v0}, Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;->setMaxVideoDuration(I)Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;

    .line 184
    :cond_66
    invoke-virtual {p1}, Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;->build()Lcom/qq/e/ads/nativ/express2/VideoOption2;

    move-result-object p1

    .line 185
    invoke-virtual {v4, p1}, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;->setVideoOption2(Lcom/qq/e/ads/nativ/express2/VideoOption2;)V

    .line 187
    iget p1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->b:I

    invoke-virtual {v4, p1}, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;->loadAd(I)V

    .line 188
    return-void

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_3a
    .end packed-switch
.end method

.method static synthetic d(Lcom/anythink/network/gdt/GDTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic e(Lcom/anythink/network/gdt/GDTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic f(Lcom/anythink/network/gdt/GDTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic g(Lcom/anythink/network/gdt/GDTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic h(Lcom/anythink/network/gdt/GDTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic i(Lcom/anythink/network/gdt/GDTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic j(Lcom/anythink/network/gdt/GDTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic k(Lcom/anythink/network/gdt/GDTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic l(Lcom/anythink/network/gdt/GDTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic m(Lcom/anythink/network/gdt/GDTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic n(Lcom/anythink/network/gdt/GDTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .registers 1

    .line 288
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 192
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/gdt/GDTATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    .line 297
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/gdt/GDTATInitManager;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 197
    const-string v0, "key_height"

    const-string v1, "gdtad_height"

    const-string v2, "key_width"

    const-string v3, "gdtad_width"

    const-string v4, "request_ad_num"

    .line 198
    nop

    .line 200
    const-string v5, "app_id"

    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, ""

    if-eqz v6, :cond_1e

    .line 201
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1f

    .line 200
    :cond_1e
    move-object v5, v7

    .line 203
    :goto_1f
    const-string v6, "unit_id"

    invoke-interface {p2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30

    .line 204
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_31

    .line 203
    :cond_30
    move-object v6, v7

    .line 207
    :goto_31
    const-string v8, "unit_version"

    invoke-interface {p2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_47

    .line 208
    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/anythink/network/gdt/GDTATAdapter;->c:I

    .line 211
    :cond_47
    const-string v8, "unit_type"

    invoke-interface {p2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5d

    .line 212
    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/anythink/network/gdt/GDTATAdapter;->d:I

    .line 215
    :cond_5d
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_131

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6b

    goto/16 :goto_131

    .line 223
    :cond_6b
    nop

    .line 225
    const/4 v5, 0x1

    :try_start_6d
    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_80

    .line 226
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_7f} :catch_82

    goto :goto_81

    .line 225
    :cond_80
    move v4, v5

    .line 229
    :goto_81
    goto :goto_84

    .line 228
    :catch_82
    move-exception v4

    move v4, v5

    .line 231
    :goto_84
    iput v4, p0, Lcom/anythink/network/gdt/GDTATAdapter;->b:I

    .line 233
    iput-object v6, p0, Lcom/anythink/network/gdt/GDTATAdapter;->a:Ljava/lang/String;

    .line 239
    :try_start_88
    invoke-interface {p3, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 240
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/anythink/network/gdt/GDTATAdapter;->h:I

    goto :goto_b1

    .line 241
    :cond_9d
    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 242
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/anythink/network/gdt/GDTATAdapter;->h:I

    .line 245
    :cond_b1
    :goto_b1
    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 246
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/anythink/network/gdt/GDTATAdapter;->i:I

    goto :goto_df

    .line 247
    :cond_c6
    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_da

    .line 248
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/anythink/network/gdt/GDTATAdapter;->i:I
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_da} :catch_db

    .line 252
    :cond_da
    goto :goto_df

    .line 251
    :catch_db
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 254
    :goto_df
    const/4 p3, 0x0

    .line 255
    nop

    .line 256
    const/4 v0, -0x1

    .line 257
    const-string v1, "video_muted"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f6

    .line 258
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 260
    :cond_f6
    const-string v1, "video_autoplay"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10a

    .line 261
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 263
    :cond_10a
    const-string v1, "video_duration"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11e

    .line 264
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 267
    :cond_11e
    iput p3, p0, Lcom/anythink/network/gdt/GDTATAdapter;->e:I

    .line 268
    iput v5, p0, Lcom/anythink/network/gdt/GDTATAdapter;->f:I

    .line 269
    iput v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->g:I

    .line 271
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    move-result-object p3

    new-instance v0, Lcom/anythink/network/gdt/GDTATAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/anythink/network/gdt/GDTATAdapter$3;-><init>(Lcom/anythink/network/gdt/GDTATAdapter;Landroid/content/Context;)V

    invoke-virtual {p3, p1, p2, v0}, Lcom/anythink/network/gdt/GDTATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/gdt/GDTATInitManager$OnInitCallback;)V

    .line 284
    return-void

    .line 216
    :cond_131
    :goto_131
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz p1, :cond_13c

    .line 217
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    const-string p2, "GTD appid or unitId is empty."

    invoke-interface {p1, v7, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_13c
    return-void
.end method

.method public notifyError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 309
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz v0, :cond_9

    .line 310
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    invoke-interface {v0, p1, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_9
    return-void
.end method

.method public varargs notifyLoaded([Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)V
    .registers 3

    .line 302
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz v0, :cond_9

    .line 303
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    invoke-interface {v0, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 305
    :cond_9
    return-void
.end method
