.class Lcom/ssjj/fnsdk/core/util/cutout/d;
.super Lcom/ssjj/fnsdk/core/util/cutout/AbsFNCutoutAdapter;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/util/cutout/AbsFNCutoutAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public adaptCutout(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public getCutoutSize(Landroid/app/Activity;)[I
    .registers 3

    const/16 p1, 0x144

    const/16 v0, 0x50

    filled-new-array {p1, v0}, [I

    move-result-object p1

    return-object p1
.end method

.method public hasCutout(Landroid/app/Activity;)Z
    .registers 3

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return p1

    :catch_b
    move-exception p1

    const/4 p1, 0x0

    return p1
.end method
