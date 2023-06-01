.class public Lcom/ssjj/fnsdk/core/SsjjFNSpecial;
.super Lcom/ssjj/fnsdk/core/bv;


# static fields
.field private static a:Lcom/ssjj/fnsdk/core/SsjjFNSpecial;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNSpecial;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecial;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/bv;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSpecial;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNSpecial;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecial;

    if-nez v0, :cond_b

    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNSpecial;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNSpecial;-><init>()V

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNSpecial;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecial;

    :cond_b
    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNSpecial;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecial;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic cwEntryThirdNearbyUser(Landroid/app/Activity;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/ssjj/fnsdk/core/bv;->cwEntryThirdNearbyUser(Landroid/app/Activity;)V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNAdapter;)V
    .registers 7

    const-string v0, "com.ssjj.fnsdk.platform.FNSpecialAdapter"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_16} :catch_17

    goto :goto_19

    :catch_17
    move-exception v0

    move-object v0, v1

    :goto_19
    if-eqz v0, :cond_26

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/core/SsjjFNSpecial;->a(Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;)V

    :try_start_1e
    invoke-super {p0, p1, p2}, Lcom/ssjj/fnsdk/core/bv;->init(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNAdapter;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception p1

    invoke-virtual {p0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSpecial;->a(Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;)V

    :cond_26
    :goto_26
    return-void
.end method

.method public bridge synthetic invoke(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Lcom/ssjj/fnsdk/core/bv;->invoke(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method public bridge synthetic isSurportApi(Ljava/lang/String;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/ssjj/fnsdk/core/bv;->isSurportApi(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic momoFeedback(Landroid/app/Activity;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/ssjj/fnsdk/core/bv;->momoFeedback(Landroid/app/Activity;)V

    return-void
.end method

.method public bridge synthetic momoGetFriendList(ILcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoFriendListListener;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/ssjj/fnsdk/core/bv;->momoGetFriendList(ILcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoFriendListListener;)V

    return-void
.end method

.method public bridge synthetic momoGetShareWithUiItent(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoShareListener;)V
    .registers 7

    invoke-super/range {p0 .. p6}, Lcom/ssjj/fnsdk/core/bv;->momoGetShareWithUiItent(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoShareListener;)V

    return-void
.end method

.method public bridge synthetic momoGetUserInfo(Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoGetUserInfoListener;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/ssjj/fnsdk/core/bv;->momoGetUserInfo(Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoGetUserInfoListener;)V

    return-void
.end method

.method public bridge synthetic momoGetUserInfo(Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoGetUserInfoListener;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/ssjj/fnsdk/core/bv;->momoGetUserInfo(Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoGetUserInfoListener;)V

    return-void
.end method

.method public bridge synthetic momoHideUserCenterLogo(Landroid/app/Activity;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/ssjj/fnsdk/core/bv;->momoHideUserCenterLogo(Landroid/app/Activity;)V

    return-void
.end method

.method public bridge synthetic momoShareToFeed(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoShareListener;)V
    .registers 6

    invoke-super/range {p0 .. p5}, Lcom/ssjj/fnsdk/core/bv;->momoShareToFeed(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoShareListener;)V

    return-void
.end method

.method public bridge synthetic momoShareToFriend(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoShareListener;)V
    .registers 6

    invoke-super/range {p0 .. p5}, Lcom/ssjj/fnsdk/core/bv;->momoShareToFriend(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoShareListener;)V

    return-void
.end method

.method public bridge synthetic momoShowUserCenter(Landroid/app/Activity;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/ssjj/fnsdk/core/bv;->momoShowUserCenter(Landroid/app/Activity;)V

    return-void
.end method

.method public bridge synthetic momoShowUserCenterLogo(Landroid/app/Activity;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/ssjj/fnsdk/core/bv;->momoShowUserCenterLogo(Landroid/app/Activity;I)V

    return-void
.end method

.method public bridge synthetic qihooQueryAntiAddiction(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooQueryAntiAddictionListener;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/ssjj/fnsdk/core/bv;->qihooQueryAntiAddiction(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooQueryAntiAddictionListener;)V

    return-void
.end method

.method public bridge synthetic qihooRegRealName(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooRegRealNameListener;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/ssjj/fnsdk/core/bv;->qihooRegRealName(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooRegRealNameListener;)V

    return-void
.end method

.method public bridge synthetic qihooShare(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooShareInfo;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooShareListener;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/bv;->qihooShare(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooShareInfo;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooShareListener;)V

    return-void
.end method

.method public bridge synthetic ucShowVipPage(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$UCShowVipPageListener;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/ssjj/fnsdk/core/bv;->ucShowVipPage(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$UCShowVipPageListener;)V

    return-void
.end method

.method public bridge synthetic wxLogin(Landroid/app/Activity;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/ssjj/fnsdk/core/bv;->wxLogin(Landroid/app/Activity;)V

    return-void
.end method

.method public bridge synthetic yybShare(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$YybShareInfo;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$YybShareListener;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/bv;->yybShare(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$YybShareInfo;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$YybShareListener;)V

    return-void
.end method

.method public bridge synthetic yybShareWithPhoto(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$YybShareInfo;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$YybShareListener;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/bv;->yybShareWithPhoto(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$YybShareInfo;Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$YybShareListener;)V

    return-void
.end method
