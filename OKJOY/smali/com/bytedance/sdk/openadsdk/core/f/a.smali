.class public Lcom/bytedance/sdk/openadsdk/core/f/a;
.super Ljava/lang/Object;
.source "MIUIPermissionUtils.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/f/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/f/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    .line 28
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/f/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 30
    :goto_a
    return v0

    :cond_b
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/f/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_a
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 71
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/f/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPermissinKITKATNew\uff0cpermission\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v0, -0x1

    :try_start_1b
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_d2

    :cond_22
    :goto_22
    packed-switch v0, :pswitch_data_e0

    .line 85
    const-string v0, "android.permission."

    const-string v3, "android:"

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 88
    :goto_32
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 89
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AppOpsManager;->checkOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 90
    sget-object v4, Lcom/bytedance/sdk/openadsdk/core/f/a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkPermissinKITKATNew\uff0clocationOp,permission\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_68} :catch_ae

    .line 91
    if-eqz v0, :cond_cf

    .line 93
    :try_start_6a
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/f/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPermissinKITKATNew\uff0cfalse,permission\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_82} :catch_ca

    move v0, v1

    .line 98
    :goto_83
    return v0

    .line 74
    :sswitch_84
    :try_start_84
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    move v0, v1

    goto :goto_22

    :sswitch_8e
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    move v0, v2

    goto :goto_22

    :sswitch_98
    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v0, 0x2

    goto :goto_22

    .line 76
    :pswitch_a2
    const-string v0, "android:coarse_location"

    move-object v3, v0

    .line 77
    goto :goto_32

    .line 79
    :pswitch_a6
    const-string v0, "android:fine_location"

    move-object v3, v0

    .line 80
    goto :goto_32

    .line 82
    :pswitch_aa
    const-string v0, "android:read_phone_state"
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_ac} :catch_ae

    move-object v3, v0

    .line 83
    goto :goto_32

    .line 95
    :catch_ae
    move-exception v0

    move-object v1, v0

    move v0, v2

    .line 96
    :goto_b1
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/f/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6743\u9650\u68c0\u67e5\u51fa\u9519\u65f6\u9ed8\u8ba4\u8fd4\u56de\u6709\u6743\u9650\uff0c\u5f02\u5e38\u4ee3\u7801\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_83

    .line 95
    :catch_ca
    move-exception v0

    move-object v7, v0

    move v0, v1

    move-object v1, v7

    goto :goto_b1

    :cond_cf
    move v0, v2

    goto :goto_83

    .line 74
    nop

    :sswitch_data_d2
    .sparse-switch
        -0x70918bc1 -> :sswitch_8e
        -0x3c1ac56 -> :sswitch_84
        -0x550ba9 -> :sswitch_98
    .end sparse-switch

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_a2
        :pswitch_a6
        :pswitch_aa
    .end packed-switch
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 103
    :goto_f
    return v0

    .line 104
    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
