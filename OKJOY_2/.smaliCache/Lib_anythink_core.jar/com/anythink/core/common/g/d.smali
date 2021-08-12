.class public final Lcom/anythink/core/common/g/d;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:I

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 393
    const-string v0, ""

    sput-object v0, Lcom/anythink/core/common/g/d;->f:Ljava/lang/String;

    .line 394
    sput-object v0, Lcom/anythink/core/common/g/d;->g:Ljava/lang/String;

    .line 395
    sput-object v0, Lcom/anythink/core/common/g/d;->h:Ljava/lang/String;

    .line 396
    sput-object v0, Lcom/anythink/core/common/g/d;->i:Ljava/lang/String;

    .line 397
    sput-object v0, Lcom/anythink/core/common/g/d;->j:Ljava/lang/String;

    .line 398
    const/4 v1, 0x0

    sput v1, Lcom/anythink/core/common/g/d;->k:I

    .line 399
    sput-object v0, Lcom/anythink/core/common/g/d;->l:Ljava/lang/String;

    .line 400
    sput-object v0, Lcom/anythink/core/common/g/d;->m:Ljava/lang/String;

    .line 401
    sput-object v0, Lcom/anythink/core/common/g/d;->n:Ljava/lang/String;

    .line 402
    sput-object v0, Lcom/anythink/core/common/g/d;->o:Ljava/lang/String;

    .line 403
    sput-object v0, Lcom/anythink/core/common/g/d;->p:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method private static a(I)I
    .registers 1

    .line 495
    packed-switch p0, :pswitch_data_12

    .line 515
    const/4 p0, -0x1

    return p0

    .line 513
    :pswitch_5
    const p0, -0x43d11c

    return p0

    .line 511
    :pswitch_9
    const p0, -0x32dcd5

    return p0

    .line 501
    :pswitch_d
    const p0, -0x21e88e

    return p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_9
        :pswitch_d
        :pswitch_9
        :pswitch_9
        :pswitch_d
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_d
        :pswitch_9
        :pswitch_5
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    .line 98
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    const-string v1, "mcc"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_f

    .line 99
    return-object v1

    .line 105
    :cond_f
    :try_start_f
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/b/h;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/h;->b()Z

    move-result v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1f} :catch_26

    if-nez v0, :cond_22

    .line 106
    return-object v1

    .line 111
    :cond_22
    nop

    .line 112
    sget-object v0, Lcom/anythink/core/common/g/d;->o:Ljava/lang/String;

    return-object v0

    .line 108
    :catch_26
    move-exception v0

    .line 110
    return-object v1
.end method

.method public static declared-synchronized a(ILjava/lang/String;)V
    .registers 5

    const-class v0, Lcom/anythink/core/common/g/d;

    monitor-enter v0

    .line 662
    :try_start_3
    sget-object v1, Lcom/anythink/core/common/g/d;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_46

    if-nez v1, :cond_2f

    .line 664
    :try_start_b
    new-instance v1, Lorg/json/JSONObject;

    sget-object v2, Lcom/anythink/core/common/g/d;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 665
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1a} :catch_2d
    .catchall {:try_start_b .. :try_end_1a} :catchall_46

    if-eqz v2, :cond_1e

    .line 666
    monitor-exit v0

    return-void

    .line 668
    :cond_1e
    :try_start_1e
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 669
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/anythink/core/common/g/d;->a:Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2b} :catch_2d
    .catchall {:try_start_1e .. :try_end_2b} :catchall_46

    .line 673
    :goto_2b
    monitor-exit v0

    return-void

    .line 671
    :catch_2d
    move-exception p0

    goto :goto_2b

    .line 676
    :cond_2f
    :try_start_2f
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 677
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 678
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/anythink/core/common/g/d;->a:Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_41} :catch_43
    .catchall {:try_start_2f .. :try_end_41} :catchall_46

    .line 681
    monitor-exit v0

    return-void

    .line 679
    :catch_43
    move-exception p0

    .line 683
    monitor-exit v0

    return-void

    .line 661
    :catchall_46
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    .line 61
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/g/d;->f()Ljava/lang/String;

    .line 62
    invoke-static {p0}, Lcom/anythink/core/common/g/d;->h(Landroid/content/Context;)Ljava/lang/String;

    .line 63
    invoke-static {p0}, Lcom/anythink/core/common/g/d;->f(Landroid/content/Context;)Ljava/lang/String;

    .line 64
    invoke-static {p0}, Lcom/anythink/core/common/g/d;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 65
    invoke-static {p0}, Lcom/anythink/core/common/g/d;->d(Landroid/content/Context;)I

    .line 66
    invoke-static {}, Lcom/anythink/core/common/g/d;->c()Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/anythink/core/common/g/d;->d()Ljava/lang/String;

    .line 68
    invoke-static {p0}, Lcom/anythink/core/common/g/d;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/anythink/core/common/g/d;->h()Ljava/lang/String;

    .line 70
    invoke-static {p0}, Lcom/anythink/core/common/g/d;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/anythink/core/common/g/d;->e()Ljava/lang/String;

    .line 72
    invoke-static {p0}, Lcom/anythink/core/common/g/d;->k(Landroid/content/Context;)Ljava/lang/String;

    .line 73
    nop

    .line 1640
    sget-object v0, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    const-string v1, "NETWORK_VERSION_NAME"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/anythink/core/common/g/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/common/g/d;->a:Ljava/lang/String;

    .line 74
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, p0}, Lcom/anythink/core/common/g/h;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 75
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 76
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    .line 77
    nop

    .line 2042
    const/4 v0, 0x0

    if-eqz p0, :cond_51

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_51

    const/4 v1, 0x1

    goto :goto_52

    :cond_51
    move v1, v0

    .line 77
    :goto_52
    if-eqz v1, :cond_6b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_6b

    .line 78
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/common/g/d;->o:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/anythink/core/common/g/d;->p:Ljava/lang/String;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6b} :catch_6c

    .line 86
    :cond_6b
    return-void

    .line 82
    :catch_6c
    move-exception p0

    .line 89
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 4

    .line 596
    sput-object p0, Lcom/anythink/core/common/g/d;->d:Ljava/lang/String;

    .line 597
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/common/b/e;->q:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/g/d;->d:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method public static b()Ljava/lang/String;
    .registers 2

    .line 121
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    const-string v1, "mnc"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_f

    .line 122
    return-object v1

    .line 128
    :cond_f
    :try_start_f
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/b/h;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/h;->b()Z

    move-result v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1f} :catch_26

    if-nez v0, :cond_22

    .line 129
    return-object v1

    .line 134
    :cond_22
    nop

    .line 135
    sget-object v0, Lcom/anythink/core/common/g/d;->p:Ljava/lang/String;

    return-object v0

    .line 131
    :catch_26
    move-exception v0

    .line 133
    return-object v1
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 147
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    const-string v1, "android_id"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_f

    .line 148
    return-object v2

    .line 152
    :cond_f
    :try_start_f
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/b/h;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/h;->b()Z

    move-result v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1f} :catch_40

    if-nez v0, :cond_22

    .line 153
    return-object v2

    .line 157
    :cond_22
    nop

    .line 159
    :try_start_23
    sget-object v0, Lcom/anythink/core/common/g/d;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 163
    sput-object p0, Lcom/anythink/core/common/g/d;->e:Ljava/lang/String;

    if-nez p0, :cond_39

    .line 164
    sput-object v2, Lcom/anythink/core/common/g/d;->e:Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_39} :catch_3a

    .line 169
    :cond_39
    goto :goto_3d

    .line 167
    :catch_3a
    move-exception p0

    .line 168
    sput-object v2, Lcom/anythink/core/common/g/d;->e:Ljava/lang/String;

    .line 171
    :goto_3d
    sget-object p0, Lcom/anythink/core/common/g/d;->e:Ljava/lang/String;

    return-object p0

    .line 155
    :catch_40
    move-exception p0

    .line 156
    return-object v2
.end method

.method static synthetic b(Ljava/lang/String;)Z
    .registers 2

    .line 3862
    const-string v0, "^[0-]+$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    .line 42
    return p0
.end method

.method public static c()Ljava/lang/String;
    .registers 2

    .line 180
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    const-string v1, "model"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_f

    .line 181
    return-object v1

    .line 186
    :cond_f
    :try_start_f
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/b/h;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/h;->b()Z

    move-result v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1f} :catch_26

    if-nez v0, :cond_22

    .line 187
    return-object v1

    .line 191
    :cond_22
    nop

    .line 192
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0

    .line 189
    :catch_26
    move-exception v0

    .line 190
    return-object v1
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 223
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_f

    .line 224
    return-object v1

    .line 229
    :cond_f
    :try_start_f
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/b/h;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/h;->b()Z

    move-result v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1f} :catch_3f

    if-nez v0, :cond_22

    .line 230
    return-object v1

    .line 234
    :cond_22
    nop

    .line 235
    sget-object v0, Lcom/anythink/core/common/g/d;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 237
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    .line 238
    sput-object p0, Lcom/anythink/core/common/g/d;->l:Ljava/lang/String;

    return-object p0

    .line 240
    :cond_3c
    sget-object p0, Lcom/anythink/core/common/g/d;->l:Ljava/lang/String;

    return-object p0

    .line 232
    :catch_3f
    move-exception p0

    .line 233
    return-object v1
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 2

    .line 862
    const-string v0, "^[0-]+$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static d(Landroid/content/Context;)I
    .registers 3

    .line 251
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    const-string v1, "orient"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 252
    const/4 p0, 0x0

    return p0

    .line 255
    :cond_e
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 257
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 259
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1c

    .line 260
    return v0

    .line 261
    :cond_1c
    nop

    .line 262
    const/4 p0, 0x1

    return p0
.end method

.method public static d()Ljava/lang/String;
    .registers 2

    .line 203
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    const-string v1, "brand"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_f

    .line 204
    return-object v1

    .line 208
    :cond_f
    :try_start_f
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/b/h;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/h;->b()Z

    move-result v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1f} :catch_26

    if-nez v0, :cond_22

    .line 209
    return-object v1

    .line 213
    :cond_22
    nop

    .line 214
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0

    .line 211
    :catch_26
    move-exception v0

    .line 212
    return-object v1
.end method

.method public static e()Ljava/lang/String;
    .registers 3

    .line 521
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    const-string v1, "timezone"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_f

    .line 522
    return-object v1

    .line 527
    :cond_f
    :try_start_f
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/b/h;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/h;->b()Z

    move-result v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1f} :catch_3e

    if-nez v0, :cond_22

    .line 528
    return-object v1

    .line 532
    :cond_22
    nop

    .line 534
    :try_start_23
    sget-object v0, Lcom/anythink/core/common/g/d;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 535
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 536
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 537
    sput-object v0, Lcom/anythink/core/common/g/d;->m:Ljava/lang/String;
    :try_end_38
    .catchall {:try_start_23 .. :try_end_38} :catchall_3a

    return-object v0

    .line 543
    :cond_39
    goto :goto_3b

    .line 539
    :catchall_3a
    move-exception v0

    .line 545
    :goto_3b
    sget-object v0, Lcom/anythink/core/common/g/d;->m:Ljava/lang/String;

    return-object v0

    .line 530
    :catch_3e
    move-exception v0

    .line 531
    return-object v1
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 276
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    const-string v1, "app_vc"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_f

    .line 277
    return-object v1

    .line 280
    :cond_f
    sget v0, Lcom/anythink/core/common/g/d;->k:I

    if-nez v0, :cond_39

    .line 282
    :try_start_13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 283
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput p0, Lcom/anythink/core/common/g/d;->k:I

    .line 284
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lcom/anythink/core/common/g/d;->k:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_33} :catch_34

    return-object p0

    .line 286
    :catch_34
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 287
    return-object v1

    .line 290
    :cond_39
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lcom/anythink/core/common/g/d;->k:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f()Ljava/lang/String;
    .registers 2

    .line 554
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    const-string v1, "os_vc"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_f

    .line 555
    return-object v1

    .line 559
    :cond_f
    :try_start_f
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/b/h;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/h;->b()Z

    move-result v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1f} :catch_36

    if-nez v0, :cond_22

    .line 560
    return-object v1

    .line 564
    :cond_22
    nop

    .line 566
    sget-object v0, Lcom/anythink/core/common/g/d;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2591
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 568
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/common/g/d;->h:Ljava/lang/String;

    .line 571
    :cond_33
    sget-object v0, Lcom/anythink/core/common/g/d;->h:Ljava/lang/String;

    return-object v0

    .line 562
    :catch_36
    move-exception v0

    .line 563
    return-object v1
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 299
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    const-string v1, "app_vn"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_f

    .line 300
    return-object v1

    .line 304
    :cond_f
    :try_start_f
    sget-object v0, Lcom/anythink/core/common/g/d;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 305
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 306
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 307
    sput-object p0, Lcom/anythink/core/common/g/d;->j:Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_28} :catch_2d

    return-object p0

    .line 312
    :cond_29
    nop

    .line 313
    sget-object p0, Lcom/anythink/core/common/g/d;->j:Ljava/lang/String;

    return-object p0

    .line 310
    :catch_2d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    return-object v1
.end method

.method public static g()Ljava/lang/String;
    .registers 2

    .line 575
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    const-string v1, "os_vn"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 576
    const-string v0, ""

    return-object v0

    .line 579
    :cond_f
    sget-object v0, Lcom/anythink/core/common/g/d;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 580
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/anythink/core/common/g/d;->g:Ljava/lang/String;

    .line 582
    :cond_1b
    sget-object v0, Lcom/anythink/core/common/g/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 330
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    const-string v1, "screen"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_f

    .line 331
    return-object v1

    .line 336
    :cond_f
    :try_start_f
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/b/h;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/h;->b()Z

    move-result v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1f} :catch_4f

    if-nez v0, :cond_22

    .line 337
    return-object v1

    .line 341
    :cond_22
    nop

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2319
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2320
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2325
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 2326
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 342
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 339
    :catch_4f
    move-exception p0

    .line 340
    return-object v1
.end method

.method public static h()Ljava/lang/String;
    .registers 4

    .line 608
    const-string v0, ""

    :try_start_2
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/b/h;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/h;->b()Z

    move-result v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_33

    if-nez v1, :cond_15

    .line 609
    return-object v0

    .line 613
    :cond_15
    nop

    .line 615
    sget-object v1, Lcom/anythink/core/common/g/d;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 616
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/e;->q:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/anythink/core/common/g/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/common/g/d;->d:Ljava/lang/String;

    .line 618
    :cond_30
    sget-object v0, Lcom/anythink/core/common/g/d;->d:Ljava/lang/String;

    return-object v0

    .line 611
    :catch_33
    move-exception v1

    .line 612
    return-object v0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 349
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    const-string v1, "package_name"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_f

    .line 350
    return-object v1

    .line 354
    :cond_f
    :try_start_f
    sget-object v0, Lcom/anythink/core/common/g/d;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 355
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 356
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 357
    sput-object p0, Lcom/anythink/core/common/g/d;->i:Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_28} :catch_2d

    return-object p0

    .line 362
    :cond_29
    nop

    .line 364
    sget-object p0, Lcom/anythink/core/common/g/d;->i:Ljava/lang/String;

    return-object p0

    .line 360
    :catch_2d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 361
    return-object v1
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 375
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    const-string v1, "it_src"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_f

    .line 376
    return-object v1

    .line 380
    :cond_f
    :try_start_f
    sget-object v0, Lcom/anythink/core/common/g/d;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 381
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p0}, Lcom/anythink/core/common/g/d;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 382
    sput-object p0, Lcom/anythink/core/common/g/d;->b:Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_25} :catch_2a

    return-object p0

    .line 387
    :cond_26
    nop

    .line 389
    sget-object p0, Lcom/anythink/core/common/g/d;->b:Ljava/lang/String;

    return-object p0

    .line 385
    :catch_2a
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 386
    return-object v1
.end method

.method public static i()Lorg/json/JSONObject;
    .registers 2

    .line 649
    sget-object v0, Lcom/anythink/core/common/g/d;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 651
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    sget-object v1, Lcom/anythink/core/common/g/d;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_10

    .line 652
    return-object v0

    .line 653
    :catch_10
    move-exception v0

    .line 657
    :cond_11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public static declared-synchronized j()Ljava/lang/String;
    .registers 6

    const-class v0, Lcom/anythink/core/common/g/d;

    monitor-enter v0

    .line 686
    :try_start_3
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    const-string v2, "ua"

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 687
    const-string v1, ""
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_84

    monitor-exit v0

    return-object v1

    .line 691
    :cond_13
    :try_start_13
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/b/h;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/h;->b()Z

    move-result v1

    if-nez v1, :cond_29

    .line 692
    const-string v1, ""
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_27} :catch_7f
    .catchall {:try_start_13 .. :try_end_27} :catchall_84

    monitor-exit v0

    return-object v1

    .line 696
    :cond_29
    nop

    .line 698
    :try_start_2a
    sget-object v1, Lcom/anythink/core/common/g/d;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 699
    sget-object v1, Lcom/anythink/core/common/g/d;->f:Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_84

    monitor-exit v0

    return-object v1

    .line 701
    :cond_36
    :try_start_36
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 702
    invoke-static {}, Lcom/anythink/core/common/g/d;->c()Ljava/lang/String;

    move-result-object v2

    .line 703
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 704
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7b

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7b

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7b

    .line 705
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Mozilla/5.0 (Linux; Android "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "; "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Build/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.133 Mobile Safari/535.19"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_79
    .catchall {:try_start_36 .. :try_end_79} :catchall_84

    monitor-exit v0

    return-object v1

    .line 708
    :cond_7b
    :try_start_7b
    const-string v1, ""
    :try_end_7d
    .catchall {:try_start_7b .. :try_end_7d} :catchall_84

    monitor-exit v0

    return-object v1

    .line 694
    :catch_7f
    move-exception v1

    .line 695
    :try_start_80
    const-string v1, ""
    :try_end_82
    .catchall {:try_start_80 .. :try_end_82} :catchall_84

    monitor-exit v0

    return-object v1

    .line 685
    :catchall_84
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 448
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    const-string v1, "network_type"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_f

    .line 449
    return-object v1

    .line 453
    :cond_f
    :try_start_f
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/b/h;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/h;->b()Z

    move-result v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1f} :catch_80

    if-nez v0, :cond_22

    .line 454
    return-object v1

    .line 458
    :cond_22
    nop

    .line 462
    const-string v0, "-1"

    if-nez p0, :cond_28

    .line 463
    return-object v0

    .line 466
    :cond_28
    :try_start_28
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 467
    if-nez v1, :cond_33

    .line 468
    return-object v0

    .line 470
    :cond_33
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v2, p0}, Lcom/anythink/core/common/g/h;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 472
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 473
    if-nez v1, :cond_42

    .line 474
    return-object v0

    .line 476
    :cond_42
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4c

    .line 477
    const-string p0, "-2"

    return-object p0

    .line 479
    :cond_4c
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 480
    if-nez p0, :cond_57

    .line 481
    return-object v0

    .line 483
    :cond_57
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2495
    packed-switch p0, :pswitch_data_82

    .line 2515
    const/4 p0, -0x1

    goto :goto_70

    .line 2513
    :pswitch_65
    const p0, -0x43d11c

    goto :goto_70

    .line 2511
    :pswitch_69
    const p0, -0x32dcd5

    goto :goto_70

    .line 2501
    :pswitch_6d
    const p0, -0x21e88e

    .line 484
    :goto_70
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_78} :catch_7b

    return-object p0

    .line 489
    :cond_79
    nop

    .line 490
    return-object v0

    .line 487
    :catch_7b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 488
    return-object v0

    .line 456
    :catch_80
    move-exception p0

    .line 457
    return-object v1

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_6d
        :pswitch_69
        :pswitch_6d
        :pswitch_69
        :pswitch_69
        :pswitch_6d
        :pswitch_69
        :pswitch_69
        :pswitch_69
        :pswitch_6d
        :pswitch_69
        :pswitch_65
        :pswitch_69
        :pswitch_69
    .end packed-switch
.end method

.method private static k()I
    .registers 1

    .line 591
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 626
    sget-object v0, Lcom/anythink/core/common/g/d;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 628
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 629
    const-string v0, "com.android.vending"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 630
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 631
    sput-object p0, Lcom/anythink/core/common/g/d;->n:Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_18

    return-object p0

    .line 632
    :catch_18
    move-exception p0

    .line 633
    const-string p0, ""

    return-object p0

    .line 636
    :cond_1c
    sget-object p0, Lcom/anythink/core/common/g/d;->n:Ljava/lang/String;

    return-object p0
.end method

.method public static l(Landroid/content/Context;)V
    .registers 5

    .line 718
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    const-string v1, "ua"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 719
    return-void

    .line 723
    :cond_d
    :try_start_d
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/b/h;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/h;->b()Z

    move-result v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1d} :catch_8b

    if-nez v0, :cond_20

    .line 724
    return-void

    .line 728
    :cond_20
    nop

    .line 730
    sget-object v0, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    const-string v1, "local_ua"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/anythink/core/common/g/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/common/g/d;->f:Ljava/lang/String;

    .line 731
    sget-object v0, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    const-string v3, "local_os"

    invoke-static {p0, v0, v3, v2}, Lcom/anythink/core/common/g/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 733
    sget-object v2, Lcom/anythink/core/common/g/d;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_46

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 734
    return-void

    .line 736
    :cond_46
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v0, v2, :cond_56

    .line 737
    sget-object p0, Lcom/anythink/core/common/g/d;->f:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 738
    return-void

    .line 744
    :cond_56
    :try_start_56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_63

    .line 745
    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/common/g/d;->f:Ljava/lang/String;

    goto :goto_72

    .line 747
    :cond_63
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/common/g/d;->f:Ljava/lang/String;

    .line 750
    :goto_72
    sget-object v0, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/g/d;->f:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    sget-object v0, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {p0, v0, v3, v1}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_80} :catch_83
    .catchall {:try_start_56 .. :try_end_80} :catchall_81

    goto :goto_84

    .line 757
    :catchall_81
    move-exception p0

    goto :goto_85

    .line 752
    :catch_83
    move-exception p0

    .line 758
    :goto_84
    nop

    .line 760
    :goto_85
    sget-object p0, Lcom/anythink/core/common/g/d;->f:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 761
    return-void

    .line 726
    :catch_8b
    move-exception p0

    .line 727
    return-void
.end method

.method public static declared-synchronized m(Landroid/content/Context;)V
    .registers 6

    const-class v0, Lcom/anythink/core/common/g/d;

    monitor-enter v0

    .line 770
    :try_start_3
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_55

    if-nez v1, :cond_13

    .line 771
    monitor-exit v0

    return-void

    .line 774
    :cond_13
    :try_start_13
    invoke-static {p0}, Lcom/anythink/core/common/g/d;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 775
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 2862
    const-string v2, "^[0-]+$"

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 775
    if-eqz v2, :cond_29

    .line 776
    :cond_25
    invoke-static {p0}, Lcom/anythink/core/common/g/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 778
    :cond_29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_37

    .line 780
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 782
    :cond_37
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p0

    invoke-static {v1}, Lcom/anythink/core/common/g/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anythink/core/common/b/g;->i(Ljava/lang/String;)V

    .line 785
    const-string p0, ""

    const-string v1, "3"

    const-string v2, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_13 .. :try_end_53} :catchall_55

    .line 786
    monitor-exit v0

    return-void

    .line 769
    :catchall_55
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static n(Landroid/content/Context;)I
    .registers 1

    .line 319
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 320
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method private static o(Landroid/content/Context;)I
    .registers 1

    .line 325
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 326
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method private static p(Landroid/content/Context;)I
    .registers 4

    .line 412
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 413
    return v0

    .line 416
    :cond_4
    :try_start_4
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 417
    if-nez v1, :cond_f

    .line 418
    return v0

    .line 420
    :cond_f
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v2, p0}, Lcom/anythink/core/common/g/h;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 422
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 423
    if-nez v1, :cond_1e

    .line 424
    return v0

    .line 426
    :cond_1e
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_27

    .line 427
    const/4 p0, -0x2

    return p0

    .line 429
    :cond_27
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 430
    if-nez p0, :cond_32

    .line 431
    return v0

    .line 433
    :cond_32
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_36} :catch_39

    .line 434
    return p0

    .line 439
    :cond_37
    nop

    .line 440
    return v0

    .line 437
    :catch_39
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 438
    return v0
.end method

.method private static q(Landroid/content/Context;)V
    .registers 4

    .line 640
    sget-object v0, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    const-string v1, "NETWORK_VERSION_NAME"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/anythink/core/common/g/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/anythink/core/common/g/d;->a:Ljava/lang/String;

    .line 641
    return-void
.end method

.method private static r(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 796
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    const-string v1, "gaid"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 797
    const-string p0, ""

    return-object p0

    .line 800
    :cond_f
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->b()Lcom/anythink/core/api/IExHandler;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 801
    const-string p0, ""

    return-object p0

    .line 804
    :cond_1c
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 805
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 807
    new-instance v2, Lcom/anythink/core/common/g/d$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/anythink/core/common/g/d$1;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 847
    :try_start_2c
    monitor-enter v0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2d} :catch_44

    .line 848
    const-wide/16 v2, 0x7d0

    :try_start_2f
    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 849
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_41

    .line 850
    :try_start_33
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 851
    const/4 p0, 0x0

    aget-object v0, v1, p0

    if-eqz v0, :cond_3e

    aget-object p0, v1, p0

    return-object p0

    :cond_3e
    const-string p0, ""
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_40} :catch_44

    return-object p0

    .line 849
    :catchall_41
    move-exception p0

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    :try_start_43
    throw p0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_44} :catch_44

    .line 852
    :catch_44
    move-exception p0

    .line 857
    const-string p0, ""

    return-object p0
.end method
