.class public Lcom/sigmob/sdk/base/a/c;
.super Lcom/sigmob/sdk/common/e/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/sdk/common/e/k<",
        "Lcom/sigmob/volley/j;",
        ">;"
    }
.end annotation


# static fields
.field private static c:I


# instance fields
.field private final b:Lcom/sigmob/sdk/base/a/c$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/sigmob/sdk/base/a/c;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/sigmob/sdk/base/a/c$a;)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p4}, Lcom/sigmob/sdk/common/e/k;-><init>(Ljava/lang/String;ILcom/sigmob/volley/o$a;)V

    iput-object p4, p0, Lcom/sigmob/sdk/base/a/c;->b:Lcom/sigmob/sdk/base/a/c$a;

    const/4 p1, 0x3

    if-gez p2, :cond_b

    move p2, v0

    goto :goto_e

    :cond_b
    if-le p2, p1, :cond_e

    move p2, p1

    :cond_e
    :goto_e
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/a/c;->b(Z)Lcom/sigmob/volley/m;

    new-instance p1, Lcom/sigmob/volley/d;

    const/16 p4, 0x2710

    const/4 v1, 0x0

    invoke-direct {p1, p3, p4, p2, v1}, Lcom/sigmob/volley/d;-><init>(IIIF)V

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/a/c;->a(Lcom/sigmob/volley/q;)Lcom/sigmob/volley/m;

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/a/c;->a(Z)Lcom/sigmob/volley/m;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/sigmob/sdk/base/a/c$a;)V
    .registers 5

    const/16 v0, 0x2710

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sigmob/sdk/base/a/c;-><init>(Ljava/lang/String;IILcom/sigmob/sdk/base/a/c$a;)V

    return-void
.end method

.method public static a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Z)I
    .registers 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdTracker(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_43

    :cond_15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/base/common/e;

    if-eqz p2, :cond_2c

    const-string v2, "js"

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/common/e;->a(Ljava/lang/String;)V

    :cond_2c
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v2

    instance-of v3, v2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v3, :cond_3d

    check-cast v2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v3, "_PLAYFIRSTFRAME_"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    invoke-static {v1, p0, p1}, Lcom/sigmob/sdk/base/a/c;->a(Lcom/sigmob/sdk/base/common/e;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    goto :goto_19

    :cond_41
    const/4 p0, 0x0

    return p0

    :cond_43
    :goto_43
    const/4 p0, -0x2

    return p0
.end method

.method public static a(Lcom/sigmob/sdk/base/common/e;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .registers 7

    if-eqz p0, :cond_58

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/e;->e()Lcom/sigmob/sdk/base/common/e$a;

    move-result-object p2

    sget-object v0, Lcom/sigmob/sdk/base/common/e$a;->a:Lcom/sigmob/sdk/base/common/e$a;

    if-ne p2, v0, :cond_58

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/e;->i()Z

    move-result p2

    if-nez p2, :cond_58

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->macroProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_23

    :cond_1f
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/e;->g()Ljava/lang/String;

    move-result-object p2

    :goto_23
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/e;->h()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/e;->b()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    new-instance v1, Lcom/sigmob/sdk/base/a/c;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/e;->f()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Lcom/sigmob/sdk/base/a/c$1;

    invoke-direct {v3, p0, p2, p1, v0}, Lcom/sigmob/sdk/base/a/c$1;-><init>(Lcom/sigmob/sdk/base/common/e;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Z)V

    invoke-direct {v1, p2, v2, v3}, Lcom/sigmob/sdk/base/a/c;-><init>(Ljava/lang/String;ILcom/sigmob/sdk/base/a/c$a;)V

    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->g()Lcom/sigmob/sdk/common/e/l;

    move-result-object v0

    if-nez v0, :cond_51

    const/4 v0, 0x0

    invoke-static {p0, p2, p1, v0}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/common/e;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/volley/t;)V

    const-string p0, "RequestQueue is null"

    invoke-static {p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void

    :cond_51
    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->a()Lcom/sigmob/sdk/common/e/l;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/common/e/l;->a(Lcom/sigmob/volley/m;)Lcom/sigmob/volley/m;

    :cond_58
    return-void
.end method

.method public static a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V
    .registers 7

    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/common/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3d

    :cond_d
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdTracker(Lcom/sigmob/sdk/base/common/a;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/base/common/e;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v2

    instance-of v3, v2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v3, :cond_35

    check-cast v2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v3, "_PLAYFIRSTFRAME_"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/common/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/sigmob/sdk/base/a/c;->a(Lcom/sigmob/sdk/base/common/e;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    goto :goto_18

    :cond_3d
    :goto_3d
    return-void
.end method

.method public static a_()V
    .registers 4

    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/e;->b(J)V

    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->g()Lcom/sigmob/sdk/common/e/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/e/l;->a()V

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/a;->a(Z)V

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/SDKConfig;->getADTrackerExpiredTime()J

    move-result-wide v0

    const/16 v2, 0xbb8

    invoke-static {v2, v0, v1}, Lcom/sigmob/sdk/base/common/e;->a(IJ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/base/common/e;

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/e;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sigmob/sdk/base/a/c;->a(Lcom/sigmob/sdk/base/common/e;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    goto :goto_26

    :cond_3b
    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/SDKConfig;->getADTrackerExpiredTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/e;->a(J)V

    return-void
.end method

.method static synthetic e()I
    .registers 1

    sget v0, Lcom/sigmob/sdk/base/a/c;->c:I

    return v0
.end method

.method static synthetic f()I
    .registers 2

    sget v0, Lcom/sigmob/sdk/base/a/c;->c:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sigmob/sdk/base/a/c;->c:I

    return v0
.end method


# virtual methods
.method protected a(Lcom/sigmob/volley/j;)Lcom/sigmob/volley/o;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/j;",
            ")",
            "Lcom/sigmob/volley/o<",
            "Lcom/sigmob/volley/j;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sigmob/volley/o;->a(Ljava/lang/Object;Lcom/sigmob/volley/b$a;)Lcom/sigmob/volley/o;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/sigmob/volley/t;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send tracking: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/a/c;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/sigmob/sdk/common/e/k;->a(Lcom/sigmob/volley/t;)V

    return-void
.end method

.method protected synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/sigmob/volley/j;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/a/c;->b(Lcom/sigmob/volley/j;)V

    return-void
.end method

.method protected b(Lcom/sigmob/volley/j;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/c;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/sigmob/sdk/base/a/c;->b:Lcom/sigmob/sdk/base/a/c$a;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send tracking: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/a/c;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " success"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    if-eqz v1, :cond_2b

    invoke-interface {v1, p1}, Lcom/sigmob/sdk/base/a/c$a;->a(Lcom/sigmob/volley/j;)V

    :cond_2b
    return-void

    :catchall_2c
    move-exception p1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public d()I
    .registers 2

    const/16 v0, 0x64

    return v0
.end method
