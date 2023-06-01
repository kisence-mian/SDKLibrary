.class Lcom/ssjj/fnsdk/core/bv;
.super Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;


# instance fields
.field private a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    return-void
.end method


# virtual methods
.method protected a(Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    return-void
.end method

.method public cwEntryThirdNearbyUser(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    if-eqz v0, :cond_e

    const-string v0, "cwEntryThirdNearbyUser"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;->cwEntryThirdNearbyUser(Landroid/app/Activity;)V

    :cond_e
    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNAdapter;)V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;->init(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNAdapter;)V

    :cond_7
    return-void
.end method

.method public invoke(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SsjjFNSpecial.invoke -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    if-eqz v0, :cond_19

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;->invoke(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    :cond_19
    return-void
.end method

.method public isSurportApi(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;->isSurportApi(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public momoFeedback(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    if-eqz v0, :cond_e

    const-string v0, "momoFeedback"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;->momoFeedback(Landroid/app/Activity;)V

    :cond_e
    return-void
.end method

.method public momoGetFriendList(ILcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoFriendListListener;)V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    if-eqz v0, :cond_e

    const-string v0, "momoGetFriendList"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;->momoGetFriendList(ILcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoFriendListListener;)V

    :cond_e
    return-void
.end method

.method public momoGetShareWithUiItent(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoShareListener;)V
    .registers 15

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    if-eqz v0, :cond_14

    const-string v0, "momoGetShareWithUiItent"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;->momoGetShareWithUiItent(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoShareListener;)V

    :cond_14
    return-void
.end method

.method public momoGetUserInfo(Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoGetUserInfoListener;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    if-eqz v0, :cond_e

    const-string v0, "momoGetUserInfo"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;->momoGetUserInfo(Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoGetUserInfoListener;)V

    :cond_e
    return-void
.end method

.method public momoGetUserInfo(Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoGetUserInfoListener;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "momoGetUserInfo, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;->momoGetUserInfo(Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoGetUserInfoListener;)V

    :cond_1b
    return-void
.end method

.method public momoHideUserCenterLogo(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    if-eqz v0, :cond_e

    const-string v0, "momoHideUserCenterLogo"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;->momoHideUserCenterLogo(Landroid/app/Activity;)V

    :cond_e
    return-void
.end method

.method public momoShareToFeed(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoShareListener;)V
    .registers 13

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    if-eqz v0, :cond_13

    const-string v0, "momoShareToFeed"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;->momoShareToFeed(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoShareListener;)V

    :cond_13
    return-void
.end method

.method public momoShareToFriend(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoShareListener;)V
    .registers 13

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    if-eqz v0, :cond_13

    const-string v0, "momoShareToFriend"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;->momoShareToFriend(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoShareListener;)V

    :cond_13
    return-void
.end method

.method public momoShowUserCenter(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    if-eqz v0, :cond_e

    const-string v0, "momoShowUserCenter"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;->momoShowUserCenter(Landroid/app/Activity;)V

    :cond_e
    return-void
.end method

.method public momoShowUserCenterLogo(Landroid/app/Activity;I)V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    if-eqz v0, :cond_e

    const-string v0, "momoShowUserCenterLogo"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;->momoShowUserCenterLogo(Landroid/app/Activity;I)V

    :cond_e
    return-void
.end method

.method public qihooQueryAntiAddiction(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooQueryAntiAddictionListener;)V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    if-eqz v0, :cond_e

    const-string v0, "qihooQueryAntiAddiction"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;->qihooQueryAntiAddiction(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooQueryAntiAddictionListener;)V

    :cond_e
    return-void
.end method

.method public qihooRegRealName(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooRegRealNameListener;)V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    if-eqz v0, :cond_e

    const-string v0, "qihooRegRealName"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;->qihooRegRealName(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooRegRealNameListener;)V

    :cond_e
    return-void
.end method

.method public qihooShare(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooShareInfo;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooShareListener;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    if-eqz v0, :cond_e

    const-string v0, "qihooShare"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;->qihooShare(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooShareInfo;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooShareListener;)V

    :cond_e
    return-void
.end method

.method public ucShowVipPage(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$UCShowVipPageListener;)V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    if-eqz v0, :cond_e

    const-string v0, "ucShowVipPage"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;->ucShowVipPage(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$UCShowVipPageListener;)V

    :cond_e
    return-void
.end method

.method public wxLogin(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    if-eqz v0, :cond_e

    const-string v0, "wxLogin"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;->wxLogin(Landroid/app/Activity;)V

    :cond_e
    return-void
.end method

.method public yybShare(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$YybShareInfo;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$YybShareListener;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    if-eqz v0, :cond_e

    const-string v0, "yybShare"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;->yybShare(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$YybShareInfo;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$YybShareListener;)V

    :cond_e
    return-void
.end method

.method public yybShareWithPhoto(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$YybShareInfo;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$YybShareListener;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    if-eqz v0, :cond_e

    const-string v0, "yybShareWithPhoto"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bv;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;->yybShareWithPhoto(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$YybShareInfo;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$YybShareListener;)V

    :cond_e
    return-void
.end method
