.class public abstract Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoAuthType;,
        Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoConstellation;,
        Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoFriendListListener;,
        Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoGetUserInfoListener;,
        Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoShareListener;,
        Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoShareType;,
        Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoUserInfo;,
        Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooQueryAntiAddictionListener;,
        Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooRegRealNameListener;,
        Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooShareInfo;,
        Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooShareListener;,
        Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$UCShowVipPageListener;,
        Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$YybShareInfo;,
        Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$YybShareListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cwEntryThirdNearbyUser(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNAdapter;)V
    .registers 3

    return-void
.end method

.method public invoke(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 5

    return-void
.end method

.method public varargs isIn(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_24

    if-eqz p2, :cond_24

    array-length v1, p2

    if-lez v1, :cond_24

    array-length v1, p2

    const/4 v2, 0x0

    :goto_14
    if-lt v2, v1, :cond_17

    goto :goto_24

    :cond_17
    aget-object v3, p2, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v0, 0x1

    goto :goto_24

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_24
    :goto_24
    return v0
.end method

.method public abstract isSurportApi(Ljava/lang/String;)Z
.end method

.method public momoFeedback(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public momoGetFriendList(ILcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoFriendListListener;)V
    .registers 3

    return-void
.end method

.method public momoGetShareWithUiItent(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoShareListener;)V
    .registers 7

    return-void
.end method

.method public momoGetUserInfo(Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoGetUserInfoListener;)V
    .registers 2

    return-void
.end method

.method public momoGetUserInfo(Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoGetUserInfoListener;)V
    .registers 3

    return-void
.end method

.method public momoHideUserCenterLogo(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public momoShareToFeed(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoShareListener;)V
    .registers 6

    return-void
.end method

.method public momoShareToFriend(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoShareListener;)V
    .registers 6

    return-void
.end method

.method public momoShowUserCenter(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public momoShowUserCenterLogo(Landroid/app/Activity;I)V
    .registers 3

    return-void
.end method

.method public qihooQueryAntiAddiction(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooQueryAntiAddictionListener;)V
    .registers 3

    return-void
.end method

.method public qihooRegRealName(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooRegRealNameListener;)V
    .registers 3

    return-void
.end method

.method public qihooShare(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooShareInfo;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooShareListener;)V
    .registers 4

    return-void
.end method

.method public ucShowVipPage(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$UCShowVipPageListener;)V
    .registers 3

    return-void
.end method

.method public wxLogin(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public yybShare(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$YybShareInfo;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$YybShareListener;)V
    .registers 4

    return-void
.end method

.method public yybShareWithPhoto(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$YybShareInfo;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$YybShareListener;)V
    .registers 4

    return-void
.end method
