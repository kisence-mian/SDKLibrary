.class public Lcom/kwad/sdk/core/response/b/a;
.super Ljava/lang/Object;


# direct methods
.method public static A(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adPreloadInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;->preloadId:Ljava/lang/String;

    return-object p0
.end method

.method public static B(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/core/response/model/AdInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->E(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v1

    packed-switch v1, :pswitch_data_36

    return-object v0

    :pswitch_d
    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adMaterialInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo;

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo;->materialFeatureList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    iget v2, v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->featureType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_15

    iget-object v2, v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->materialUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->materialUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_34
    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x2
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public static C(Lcom/kwad/sdk/core/response/model/AdInfo;)Z
    .registers 2

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->E(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static D(Lcom/kwad/sdk/core/response/model/AdInfo;)Z
    .registers 2

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->y(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    move-result-object p0

    iget p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->featureType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public static E(Lcom/kwad/sdk/core/response/model/AdInfo;)I
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adMaterialInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo;

    iget p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo;->materialType:I

    packed-switch p0, :pswitch_data_10

    const/4 p0, 0x0

    return p0

    :pswitch_9
    const/4 p0, 0x3

    return p0

    :pswitch_b
    const/4 p0, 0x2

    return p0

    :pswitch_d
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_b
        :pswitch_9
    .end packed-switch
.end method

.method public static F(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/core/response/model/AdInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->videoPlayedNS:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    :try_start_f
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_2f

    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_28} :catch_2b

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :catch_2b
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_2f
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3d

    const/4 p0, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3d
    return-object v0
.end method

.method public static G(Lcom/kwad/sdk/core/response/model/AdInfo;)Z
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->mABParams:Lcom/kwad/sdk/core/response/model/ABParams;

    iget p0, p0, Lcom/kwad/sdk/core/response/model/ABParams;->videoBlackAreaClick:I

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static H(Lcom/kwad/sdk/core/response/model/AdInfo;)Z
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->mABParams:Lcom/kwad/sdk/core/response/model/ABParams;

    iget p0, p0, Lcom/kwad/sdk/core/response/model/ABParams;->videoBlackAreaNewStyle:I

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static I(Lcom/kwad/sdk/core/response/model/AdInfo;)Z
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->mABParams:Lcom/kwad/sdk/core/response/model/ABParams;

    iget v0, v0, Lcom/kwad/sdk/core/response/model/ABParams;->showVideoAtH5:I

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adConversionInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;->h5Url:Ljava/lang/String;

    invoke-static {p0}, Lcom/kwad/sdk/utils/ab;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public static J(Lcom/kwad/sdk/core/response/model/AdInfo;)[I
    .registers 4

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_3e

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->mABParams:Lcom/kwad/sdk/core/response/model/ABParams;

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/ABParams;->drawActionBarTimes:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    return-object v1

    :cond_13
    :try_start_13
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    if-ge v2, v0, :cond_1d

    return-object v1

    :cond_1d
    const/4 v0, 0x0

    aget-object v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    const/4 v0, 0x1

    aget-object v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    const/4 v0, 0x2

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    aput p0, v1, v0
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_38} :catch_39

    goto :goto_3d

    :catch_39
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :goto_3d
    return-object v1

    :array_3e
    .array-data 4
        0x3
        0x3
        0x3
    .end array-data
.end method

.method public static K(Lcom/kwad/sdk/core/response/model/AdInfo;)I
    .registers 4

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->J(Lcom/kwad/sdk/core/response/model/AdInfo;)[I

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_9

    return v1

    :cond_9
    const/4 v0, 0x0

    aget v2, p0, v0

    if-lez v2, :cond_10

    aget v1, p0, v0

    :cond_10
    return v1
.end method

.method public static L(Lcom/kwad/sdk/core/response/model/AdInfo;)I
    .registers 5

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->J(Lcom/kwad/sdk/core/response/model/AdInfo;)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_a

    const/4 p0, 0x6

    return p0

    :cond_a
    const/4 v1, 0x1

    aget v3, v0, v1

    if-lez v3, :cond_11

    aget v2, v0, v1

    :cond_11
    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->K(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result p0

    add-int/2addr v2, p0

    return v2
.end method

.method public static M(Lcom/kwad/sdk/core/response/model/AdInfo;)I
    .registers 5

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->J(Lcom/kwad/sdk/core/response/model/AdInfo;)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_b

    const/16 p0, 0x9

    return p0

    :cond_b
    const/4 v1, 0x2

    aget v3, v0, v1

    if-lez v3, :cond_12

    aget v2, v0, v1

    :cond_12
    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->L(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result p0

    add-int/2addr v2, p0

    return v2
.end method

.method public static N(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/c;
    .registers 12

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->c(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->d(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v1

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->e(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v2

    invoke-static {v0}, Lcom/kwad/sdk/utils/ab;->a(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_23

    invoke-static {v0}, Lcom/kwad/sdk/utils/ab;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23

    if-eqz v1, :cond_23

    if-eqz v2, :cond_23

    const/4 p0, 0x0

    move v10, p0

    move-object v6, v0

    move v7, v1

    move v8, v2

    goto :goto_33

    :cond_23
    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->f(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->g(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v1

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->h(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v2

    move-object v6, v0

    move v7, v1

    move v8, v2

    move v10, v4

    :goto_33
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "frameUrl="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " useCover="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " isAd="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AdInfoHelper"

    invoke-static {v0, p0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/kwad/sdk/core/response/model/c;

    const/4 v9, 0x1

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/kwad/sdk/core/response/model/c;-><init>(Ljava/lang/String;IIZZ)V

    return-object p0
.end method

.method public static O(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadSafeInfo:Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;->webPageTipbarText:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    return-object p0

    :cond_b
    const-string p0, "\u60a8\u8bbf\u95ee\u7684\u7f51\u7ad9\u7531\u7b2c\u4e09\u65b9\u63d0\u4f9b"

    return-object p0
.end method

.method public static P(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadSafeInfo:Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;

    return-object p0
.end method

.method public static Q(Lcom/kwad/sdk/core/response/model/AdInfo;)Z
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadSafeInfo:Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;

    iget-boolean p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;->webPageTipbarSwitch:Z

    return p0
.end method

.method public static R(Lcom/kwad/sdk/core/response/model/AdInfo;)I
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_25

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->UNKNOWN:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-ne v1, p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->START:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-eq v1, p0, :cond_23

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->DOWNLOADING:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-eq v1, p0, :cond_23

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->PROGRESS:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-eq v1, p0, :cond_23

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->PAUSED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-ne v1, p0, :cond_1c

    goto :goto_23

    :cond_1c
    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->FINISHED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-ne v1, p0, :cond_22

    const/4 p0, 0x3

    return p0

    :cond_22
    return v0

    :cond_23
    :goto_23
    const/4 p0, 0x2

    return p0

    :cond_25
    return v0
.end method

.method public static S(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->corporationName:Ljava/lang/String;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static T(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadSafeInfo:Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;->permissionInfo:Ljava/lang/String;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static U(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadSafeInfo:Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;->appPrivacyUrl:Ljava/lang/String;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static V(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appVersion:Ljava/lang/String;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static W(Lcom/kwad/sdk/core/response/model/AdInfo;)J
    .registers 3

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-wide v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->packageSize:J

    return-wide v0

    :cond_7
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static X(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_c

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adConversionInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;

    if-nez v0, :cond_7

    goto :goto_c

    :cond_7
    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adConversionInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;->playableUrl:Ljava/lang/String;

    return-object p0

    :cond_c
    :goto_c
    const/4 p0, 0x0

    return-object p0
.end method

.method private static Y(Lcom/kwad/sdk/core/response/model/AdInfo;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adConversionInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adConversionInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;->playableStyleInfo:Lcom/kwad/sdk/core/response/model/AdInfo$PlayableStyleInfo;

    if-nez v1, :cond_e

    goto :goto_1a

    :cond_e
    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adConversionInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;->playableStyleInfo:Lcom/kwad/sdk/core/response/model/AdInfo$PlayableStyleInfo;

    iget p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$PlayableStyleInfo;->playableOrientation:I

    if-eqz p0, :cond_19

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1a

    :cond_19
    const/4 v0, 0x1

    :cond_1a
    :goto_1a
    return v0
.end method

.method private static Z(Lcom/kwad/sdk/core/response/model/AdInfo;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adConversionInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adConversionInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;->playableStyleInfo:Lcom/kwad/sdk/core/response/model/AdInfo$PlayableStyleInfo;

    if-nez v1, :cond_e

    goto :goto_1a

    :cond_e
    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adConversionInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;->playableStyleInfo:Lcom/kwad/sdk/core/response/model/AdInfo$PlayableStyleInfo;

    iget p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$PlayableStyleInfo;->playableOrientation:I

    const/4 v1, 0x1

    if-eqz p0, :cond_19

    if-ne p0, v1, :cond_1a

    :cond_19
    move v0, v1

    :cond_1a
    :goto_1a
    return v0
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    const-string v0, "\u7ee7\u7eed\u4e0b\u8f7d"

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u8f7d\u4e2d  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->z(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    move-result-object p0

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->materialUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_12

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mAdScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mAdScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    invoke-virtual {p0}, Lcom/kwad/sdk/internal/api/SceneImpl;->getAdStyle()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_12

    const-string p0, "\u5b89\u88c5\u83b7\u53d6\u5956\u52b1"

    return-object p0

    :cond_12
    const-string p0, "\u7acb\u5373\u5b89\u88c5"

    return-object p0
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdInfo;Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_31

    if-eqz p1, :cond_31

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adConversionInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;

    if-nez v1, :cond_a

    goto :goto_31

    :cond_a
    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adConversionInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;->playableUrl:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adConversionInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;->playableStyleInfo:Lcom/kwad/sdk/core/response/model/AdInfo$PlayableStyleInfo;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adConversionInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;->playableUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    move v1, v2

    goto :goto_28

    :cond_27
    move v1, v0

    :goto_28
    invoke-static {p0, p1}, Lcom/kwad/sdk/core/response/b/a;->b(Lcom/kwad/sdk/core/response/model/AdInfo;Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_31

    if-eqz v1, :cond_31

    move v0, v2

    :cond_31
    :goto_31
    return v0
.end method

.method public static b(Lcom/kwad/sdk/core/response/model/AdInfo;)I
    .registers 1

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->z(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    move-result-object p0

    iget p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->videoDuration:I

    return p0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    const-string v0, "\u7acb\u5373\u6253\u5f00"

    return-object v0
.end method

.method public static b(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7ee7\u7eed\u4e0b\u8f7d "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/kwad/sdk/core/response/model/AdInfo;Landroid/content/Context;)Z
    .registers 2

    invoke-static {p1}, Lcom/kwad/sdk/utils/t;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->Z(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result p0

    goto :goto_f

    :cond_b
    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->Y(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result p0

    :goto_f
    return p0
.end method

.method public static c(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->z(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    move-result-object p0

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->firstFrame:Ljava/lang/String;

    return-object p0
.end method

.method public static d(Lcom/kwad/sdk/core/response/model/AdInfo;)I
    .registers 1

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->z(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    move-result-object p0

    iget p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->videoWidth:I

    return p0
.end method

.method public static e(Lcom/kwad/sdk/core/response/model/AdInfo;)I
    .registers 1

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->z(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    move-result-object p0

    iget p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->videoHeight:I

    return p0
.end method

.method public static f(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->z(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    move-result-object p0

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->coverUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static g(Lcom/kwad/sdk/core/response/model/AdInfo;)I
    .registers 1

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->z(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    move-result-object p0

    iget p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->width:I

    return p0
.end method

.method public static h(Lcom/kwad/sdk/core/response/model/AdInfo;)I
    .registers 1

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->z(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    move-result-object p0

    iget p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->height:I

    return p0
.end method

.method public static i(Lcom/kwad/sdk/core/response/model/AdInfo;)J
    .registers 3

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->z(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    move-result-object p0

    iget-wide v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->photoId:J

    return-wide v0
.end method

.method public static j(Lcom/kwad/sdk/core/response/model/AdInfo;)Z
    .registers 3

    const-class v0, Lcom/kwad/sdk/plugin/DevelopMangerPlugin;

    invoke-static {v0}, Lcom/kwad/sdk/plugin/f;->a(Ljava/lang/Class;)Lcom/kwad/sdk/plugin/d;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/plugin/DevelopMangerPlugin;

    const-string v1, "KEY_SKIP_FIVE_SECOND"

    invoke-interface {v0, v1}, Lcom/kwad/sdk/plugin/DevelopMangerPlugin;->a(Ljava/lang/String;)Lcom/kwad/sdk/plugin/DevelopMangerPlugin$DevelopValue;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/kwad/sdk/plugin/DevelopMangerPlugin$DevelopValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1b
    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->enableSkipAd:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_23

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    return v0
.end method

.method public static k(Lcom/kwad/sdk/core/response/model/AdInfo;)J
    .registers 5

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->skipSecond:I

    int-to-long v0, p0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static l(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adDescription:Ljava/lang/String;

    return-object p0
.end method

.method public static m(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appIconUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static n(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appName:Ljava/lang/String;

    return-object p0
.end method

.method public static o(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static p(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appDownloadCountDesc:Ljava/lang/String;

    return-object p0
.end method

.method public static q(Lcom/kwad/sdk/core/response/model/AdInfo;)F
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appScore:I

    if-gtz v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appScore:I

    int-to-float p0, p0

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public static r(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adSourceDescription:Ljava/lang/String;

    invoke-static {v0}, Lcom/kwad/sdk/utils/ab;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p0, "\u5e7f\u544a"

    goto :goto_11

    :cond_d
    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adSourceDescription:Ljava/lang/String;

    :goto_11
    return-object p0
.end method

.method public static s(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adActionDescription:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->t(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result p0

    if-eqz p0, :cond_13

    const-string p0, "\u7acb\u5373\u4e0b\u8f7d"

    goto :goto_15

    :cond_13
    const-string p0, "\u67e5\u770b\u8be6\u60c5"

    :goto_15
    move-object v0, p0

    :cond_16
    return-object v0
.end method

.method public static t(Lcom/kwad/sdk/core/response/model/AdInfo;)Z
    .registers 2

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->u(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static u(Lcom/kwad/sdk/core/response/model/AdInfo;)I
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adOperationType:I

    packed-switch p0, :pswitch_data_e

    const/4 p0, 0x0

    return p0

    :pswitch_9
    const/4 p0, 0x2

    return p0

    :pswitch_b
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_9
    .end packed-switch
.end method

.method public static v(Lcom/kwad/sdk/core/response/model/AdInfo;)I
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->ecpm:I

    return p0
.end method

.method public static w(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adConversionInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;->h5Url:Ljava/lang/String;

    return-object p0
.end method

.method public static x(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adConversionInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;->deeplinkUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static y(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;
    .registers 4

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adMaterialInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo;

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo;->materialFeatureList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    if-nez v0, :cond_17

    goto :goto_8

    :cond_17
    iget v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->featureType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    iget-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->materialUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    return-object v0

    :cond_25
    const-string p0, "AdInfoHelper"

    const-string v0, "getImageMaterialFeature in null"

    invoke-static {p0, v0}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    invoke-direct {p0}, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;-><init>()V

    return-object p0
.end method

.method public static z(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;
    .registers 4

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adMaterialInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo;

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo;->materialFeatureList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    if-nez v0, :cond_17

    goto :goto_8

    :cond_17
    iget v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->featureType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    iget-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->materialUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    return-object v0

    :cond_25
    const-string p0, "AdInfoHelper"

    const-string v0, "getVideoMaterialFeature in null"

    invoke-static {p0, v0}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    invoke-direct {p0}, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;-><init>()V

    return-object p0
.end method
