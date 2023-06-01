.class public Lcom/ssjj/fnsdk/platform/FNSpecialAdapterDemo;
.super Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/ssjj/fnsdk/platform/FNAdapterDemo;

.field private c:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooRegRealNameListener;

.field private d:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooQueryAntiAddictionListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/platform/FNSpecialAdapterDemo;->a:Landroid/app/Activity;

    iput-object v0, p0, Lcom/ssjj/fnsdk/platform/FNSpecialAdapterDemo;->b:Lcom/ssjj/fnsdk/platform/FNAdapterDemo;

    return-void
.end method

.method private a()Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoUserInfo;
    .registers 3

    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoUserInfo;

    invoke-direct {v0, p0}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoUserInfo;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;)V

    const-string v1, "111111111"

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoUserInfo;->userId:Ljava/lang/String;

    const-string v1, "fntest"

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoUserInfo;->name:Ljava/lang/String;

    const/16 v1, 0x12

    iput v1, v0, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoUserInfo;->age:I

    const-string v1, "1990-01-01"

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoUserInfo;->birthday:Ljava/lang/String;

    const-string v1, "M"

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoUserInfo;->sexFlag:Ljava/lang/String;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoUserInfo;->score:F

    const-string v1, "6\u5206\u949f\u524d"

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoUserInfo;->regTime:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNAdapter;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/platform/FNSpecialAdapterDemo;->a:Landroid/app/Activity;

    check-cast p2, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;

    iput-object p2, p0, Lcom/ssjj/fnsdk/platform/FNSpecialAdapterDemo;->b:Lcom/ssjj/fnsdk/platform/FNAdapterDemo;

    return-void
.end method

.method public isSurportApi(Ljava/lang/String;)Z
    .registers 17

    sget-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_qihooRegRealName:Ljava/lang/String;

    sget-object v1, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_qihooQueryAntiAddiction:Ljava/lang/String;

    sget-object v2, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_qihooShare:Ljava/lang/String;

    sget-object v3, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_ucShowVipPage:Ljava/lang/String;

    sget-object v4, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_momoFeedback:Ljava/lang/String;

    sget-object v5, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_momoGetFriendList:Ljava/lang/String;

    sget-object v6, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_momoGetShareWithUiItent:Ljava/lang/String;

    sget-object v7, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_momoGetUserInfo:Ljava/lang/String;

    sget-object v8, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_momoShareToFeed:Ljava/lang/String;

    sget-object v9, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_momoShowUserCenterLogo:Ljava/lang/String;

    sget-object v10, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_momoHideUserCenterLogo:Ljava/lang/String;

    sget-object v11, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_momoShowUserCenter:Ljava/lang/String;

    sget-object v12, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_momoShareToFriend:Ljava/lang/String;

    sget-object v13, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_yybShare:Ljava/lang/String;

    sget-object v14, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_yybShareWithPhoto:Ljava/lang/String;

    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    move-object/from16 v2, p1

    invoke-virtual {p0, v2, v0}, Lcom/ssjj/fnsdk/platform/FNSpecialAdapterDemo;->isIn(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public momoFeedback(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "momoFeedback"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public momoGetFriendList(ILcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoFriendListListener;)V
    .registers 5

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/FNSpecialAdapterDemo;->a:Landroid/app/Activity;

    const-string v0, "momoGetFriendList"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    if-eqz p2, :cond_25

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/ssjj/fnsdk/platform/FNSpecialAdapterDemo;->a()Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoUserInfo;

    move-result-object v0

    const-string v1, "MomoUser"

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoUserInfo;->name:Ljava/lang/String;

    const-string v1, "2222222222"

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p2, p1}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoFriendListListener;->onFriendListSuccess(Ljava/util/ArrayList;)V

    :cond_25
    return-void
.end method

.method public momoGetShareWithUiItent(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoShareListener;)V
    .registers 7

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/FNSpecialAdapterDemo;->a:Landroid/app/Activity;

    const-string p2, "momoGetShareWithUiItent"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    if-eqz p6, :cond_11

    invoke-interface {p6}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoShareListener;->onShareSuccess()V

    :cond_11
    return-void
.end method

.method public momoGetUserInfo(Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoGetUserInfoListener;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/platform/FNSpecialAdapterDemo;->a:Landroid/app/Activity;

    const-string v1, "momoGetUserInfo"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    if-eqz p1, :cond_15

    invoke-direct {p0}, Lcom/ssjj/fnsdk/platform/FNSpecialAdapterDemo;->a()Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoUserInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoGetUserInfoListener;->onGetInfoSuccess(Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoUserInfo;)V

    :cond_15
    return-void
.end method

.method public momoGetUserInfo(Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoGetUserInfoListener;)V
    .registers 6

    iget-object v0, p0, Lcom/ssjj/fnsdk/platform/FNSpecialAdapterDemo;->a:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "momoGetUserInfo, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    if-eqz p2, :cond_39

    invoke-direct {p0}, Lcom/ssjj/fnsdk/platform/FNSpecialAdapterDemo;->a()Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoUserInfo;

    move-result-object v0

    iput-object p1, v0, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoUserInfo;->userId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\u7684\u7528\u6237\u540d"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoUserInfo;->name:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoGetUserInfoListener;->onGetInfoSuccess(Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoUserInfo;)V

    :cond_39
    return-void
.end method

.method public momoHideUserCenterLogo(Landroid/app/Activity;)V
    .registers 4

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/FNSpecialAdapterDemo;->a:Landroid/app/Activity;

    const-string v0, "momoHideUserCenterLogo"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public momoShareToFeed(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoShareListener;)V
    .registers 6

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/FNSpecialAdapterDemo;->a:Landroid/app/Activity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "momoShareToFeed, "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    if-eqz p5, :cond_1e

    invoke-interface {p5}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoShareListener;->onShareSuccess()V

    :cond_1e
    return-void
.end method

.method public momoShareToFriend(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoShareListener;)V
    .registers 6

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/FNSpecialAdapterDemo;->a:Landroid/app/Activity;

    const-string p2, "momoShareToFriend"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    if-eqz p5, :cond_11

    invoke-interface {p5}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoShareListener;->onShareSuccess()V

    :cond_11
    return-void
.end method

.method public momoShowUserCenter(Landroid/app/Activity;)V
    .registers 4

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/FNSpecialAdapterDemo;->a:Landroid/app/Activity;

    const-string v0, "momoShowUserCenter"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public momoShowUserCenterLogo(Landroid/app/Activity;I)V
    .registers 5

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/FNSpecialAdapterDemo;->a:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "momoShowUserCenterLogo, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public qihooQueryAntiAddiction(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooQueryAntiAddictionListener;)V
    .registers 4

    iput-object p2, p0, Lcom/ssjj/fnsdk/platform/FNSpecialAdapterDemo;->d:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooQueryAntiAddictionListener;

    const-string p2, "qihooQueryAntiAddiction"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/FNSpecialAdapterDemo;->d:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooQueryAntiAddictionListener;

    if-eqz p1, :cond_15

    const-string p2, "2"

    invoke-interface {p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooQueryAntiAddictionListener;->onCompleted(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public qihooRegRealName(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooRegRealNameListener;)V
    .registers 4

    iput-object p2, p0, Lcom/ssjj/fnsdk/platform/FNSpecialAdapterDemo;->c:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooRegRealNameListener;

    const-string p2, "qihooRegRealName"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/FNSpecialAdapterDemo;->c:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooRegRealNameListener;

    if-eqz p1, :cond_15

    const-string p2, ""

    invoke-interface {p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooRegRealNameListener;->onCompleted(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public qihooShare(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooShareInfo;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooShareListener;)V
    .registers 5

    const-string p2, "qihooShare"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    if-eqz p3, :cond_11

    const-string p1, "weixin_friends"

    invoke-interface {p3, p1}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooShareListener;->onSuccess(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public ucShowVipPage(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$UCShowVipPageListener;)V
    .registers 4

    const-string p2, "ucShowVipPage"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public yybShare(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$YybShareInfo;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$YybShareListener;)V
    .registers 5

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/FNSpecialAdapterDemo;->a:Landroid/app/Activity;

    const-string p2, "yybShare"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-interface {p3}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$YybShareListener;->onSuccess()V

    return-void
.end method

.method public yybShareWithPhoto(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$YybShareInfo;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$YybShareListener;)V
    .registers 5

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/FNSpecialAdapterDemo;->a:Landroid/app/Activity;

    const-string p2, "yybShareWithPhoto"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-interface {p3}, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$YybShareListener;->onSuccess()V

    return-void
.end method
