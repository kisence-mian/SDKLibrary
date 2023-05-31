.class public final Lcom/anythink/core/b/g/c;
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
    .registers 1

    .prologue
    .line 340
    const-string v0, ""

    sput-object v0, Lcom/anythink/core/b/g/c;->f:Ljava/lang/String;

    .line 341
    const-string v0, ""

    sput-object v0, Lcom/anythink/core/b/g/c;->g:Ljava/lang/String;

    .line 342
    const-string v0, ""

    sput-object v0, Lcom/anythink/core/b/g/c;->h:Ljava/lang/String;

    .line 343
    const-string v0, ""

    sput-object v0, Lcom/anythink/core/b/g/c;->i:Ljava/lang/String;

    .line 344
    const-string v0, ""

    sput-object v0, Lcom/anythink/core/b/g/c;->j:Ljava/lang/String;

    .line 345
    const/4 v0, 0x0

    sput v0, Lcom/anythink/core/b/g/c;->k:I

    .line 346
    const-string v0, ""

    sput-object v0, Lcom/anythink/core/b/g/c;->l:Ljava/lang/String;

    .line 347
    const-string v0, ""

    sput-object v0, Lcom/anythink/core/b/g/c;->m:Ljava/lang/String;

    .line 348
    const-string v0, ""

    sput-object v0, Lcom/anythink/core/b/g/c;->n:Ljava/lang/String;

    .line 349
    const-string v0, ""

    sput-object v0, Lcom/anythink/core/b/g/c;->o:Ljava/lang/String;

    .line 350
    const-string v0, ""

    sput-object v0, Lcom/anythink/core/b/g/c;->p:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method private static a(I)I
    .registers 2

    .prologue
    .line 437
    packed-switch p0, :pswitch_data_12

    .line 457
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 443
    :pswitch_5
    const v0, -0x21e88e

    goto :goto_4

    .line 453
    :pswitch_9
    const v0, -0x32dcd5

    goto :goto_4

    .line 455
    :pswitch_d
    const v0, -0x43d11c

    goto :goto_4

    .line 437
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_9
        :pswitch_5
        :pswitch_9
        :pswitch_9
        :pswitch_5
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_5
        :pswitch_9
        :pswitch_d
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 102
    :try_start_0
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/a/f;->a(Landroid/content/Context;)Lcom/anythink/core/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/f;->b()Z

    move-result v0

    if-nez v0, :cond_19

    .line 103
    const-string v0, ""
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 109
    :goto_14
    return-object v0

    .line 107
    :catch_15
    move-exception v0

    const-string v0, ""

    goto :goto_14

    .line 109
    :cond_19
    sget-object v0, Lcom/anythink/core/b/g/c;->o:Ljava/lang/String;

    goto :goto_14
.end method

.method public static declared-synchronized a(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 589
    const-class v1, Lcom/anythink/core/b/g/c;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/anythink/core/b/g/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_43

    move-result v0

    if-nez v0, :cond_2e

    .line 591
    :try_start_b
    new-instance v0, Lorg/json/JSONObject;

    sget-object v2, Lcom/anythink/core/b/g/c;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 592
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_19} :catch_2c
    .catchall {:try_start_b .. :try_end_19} :catchall_43

    move-result v2

    if-eqz v2, :cond_1e

    .line 610
    :goto_1c
    monitor-exit v1

    return-void

    .line 595
    :cond_1e
    :try_start_1e
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 596
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/b/g/c;->a:Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2b} :catch_2c
    .catchall {:try_start_1e .. :try_end_2b} :catchall_43

    goto :goto_1c

    .line 600
    :catch_2c
    move-exception v0

    goto :goto_1c

    .line 603
    :cond_2e
    :try_start_2e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 604
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 605
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/b/g/c;->a:Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_40} :catch_41
    .catchall {:try_start_2e .. :try_end_40} :catchall_43

    goto :goto_1c

    .line 610
    :catch_41
    move-exception v0

    goto :goto_1c

    .line 589
    :catchall_43
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x3

    .line 63
    :try_start_2
    invoke-static {}, Lcom/anythink/core/b/g/c;->f()Ljava/lang/String;

    .line 64
    invoke-static {p0}, Lcom/anythink/core/b/g/c;->h(Landroid/content/Context;)Ljava/lang/String;

    .line 65
    invoke-static {p0}, Lcom/anythink/core/b/g/c;->f(Landroid/content/Context;)Ljava/lang/String;

    .line 66
    invoke-static {p0}, Lcom/anythink/core/b/g/c;->e(Landroid/content/Context;)I

    .line 67
    invoke-static {p0}, Lcom/anythink/core/b/g/c;->d(Landroid/content/Context;)I

    .line 68
    invoke-static {}, Lcom/anythink/core/b/g/c;->c()Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/anythink/core/b/g/c;->d()Ljava/lang/String;

    .line 70
    invoke-static {p0}, Lcom/anythink/core/b/g/c;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/anythink/core/b/g/c;->h()Ljava/lang/String;

    .line 72
    invoke-static {p0}, Lcom/anythink/core/b/g/c;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/anythink/core/b/g/c;->e()Ljava/lang/String;

    .line 74
    invoke-static {p0}, Lcom/anythink/core/b/g/c;->l(Landroid/content/Context;)Ljava/lang/String;

    .line 1567
    sget-object v0, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    const-string v2, "NETWORK_VERSION_NAME"

    const-string v3, ""

    invoke-static {p0, v0, v2, v3}, Lcom/anythink/core/b/g/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/b/g/c;->a:Ljava/lang/String;

    .line 76
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, p0}, Lcom/anythink/core/b/g/g;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 77
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 78
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 2025
    if-eqz v2, :cond_6b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6b

    const/4 v0, 0x1

    .line 79
    :goto_4f
    if-eqz v0, :cond_6a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_6a

    .line 80
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/b/g/c;->o:Ljava/lang/String;

    .line 81
    const/4 v0, 0x3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/b/g/c;->p:Ljava/lang/String;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6a} :catch_6d

    .line 91
    :cond_6a
    :goto_6a
    return-void

    :cond_6b
    move v0, v1

    .line 2025
    goto :goto_4f

    .line 91
    :catch_6d
    move-exception v0

    goto :goto_6a
.end method

.method public static a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 523
    sput-object p0, Lcom/anythink/core/b/g/c;->d:Ljava/lang/String;

    .line 524
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/b/a/d;->p:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/b/g/c;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 120
    :try_start_0
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/a/f;->a(Landroid/content/Context;)Lcom/anythink/core/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/f;->b()Z

    move-result v0

    if-nez v0, :cond_19

    .line 121
    const-string v0, ""
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 127
    :goto_14
    return-object v0

    .line 125
    :catch_15
    move-exception v0

    const-string v0, ""

    goto :goto_14

    .line 127
    :cond_19
    sget-object v0, Lcom/anythink/core/b/g/c;->p:Ljava/lang/String;

    goto :goto_14
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 139
    :try_start_0
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/a/f;->a(Landroid/content/Context;)Lcom/anythink/core/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/f;->b()Z

    move-result v0

    if-nez v0, :cond_19

    .line 140
    const-string v0, ""
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 158
    :goto_14
    return-object v0

    .line 143
    :catch_15
    move-exception v0

    const-string v0, ""

    goto :goto_14

    .line 146
    :cond_19
    :try_start_19
    sget-object v0, Lcom/anythink/core/b/g/c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    sput-object v0, Lcom/anythink/core/b/g/c;->e:Ljava/lang/String;

    if-nez v0, :cond_33

    .line 151
    const-string v0, ""

    sput-object v0, Lcom/anythink/core/b/g/c;->e:Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_33} :catch_36

    .line 158
    :cond_33
    :goto_33
    sget-object v0, Lcom/anythink/core/b/g/c;->e:Ljava/lang/String;

    goto :goto_14

    .line 155
    :catch_36
    move-exception v0

    const-string v0, ""

    sput-object v0, Lcom/anythink/core/b/g/c;->e:Ljava/lang/String;

    goto :goto_33
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    .prologue
    .line 168
    :try_start_0
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/a/f;->a(Landroid/content/Context;)Lcom/anythink/core/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/f;->b()Z

    move-result v0

    if-nez v0, :cond_19

    .line 169
    const-string v0, ""
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 174
    :goto_14
    return-object v0

    .line 172
    :catch_15
    move-exception v0

    const-string v0, ""

    goto :goto_14

    .line 174
    :cond_19
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_14
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 201
    :try_start_0
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/a/f;->a(Landroid/content/Context;)Lcom/anythink/core/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/f;->b()Z

    move-result v0

    if-nez v0, :cond_19

    .line 202
    const-string v0, ""
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 212
    :goto_14
    return-object v0

    .line 205
    :catch_15
    move-exception v0

    const-string v0, ""

    goto :goto_14

    .line 207
    :cond_19
    sget-object v0, Lcom/anythink/core/b/g/c;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 209
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 210
    sput-object v0, Lcom/anythink/core/b/g/c;->l:Ljava/lang/String;

    goto :goto_14

    .line 212
    :cond_32
    sget-object v0, Lcom/anythink/core/b/g/c;->l:Ljava/lang/String;

    goto :goto_14
.end method

.method public static d(Landroid/content/Context;)I
    .registers 4

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 225
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 227
    if-ne v2, v0, :cond_f

    .line 233
    :goto_e
    return v0

    .line 229
    :cond_f
    if-ne v2, v1, :cond_13

    move v0, v1

    .line 230
    goto :goto_e

    :cond_13
    move v0, v1

    .line 233
    goto :goto_e
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    .prologue
    .line 185
    :try_start_0
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/a/f;->a(Landroid/content/Context;)Lcom/anythink/core/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/f;->b()Z

    move-result v0

    if-nez v0, :cond_19

    .line 186
    const-string v0, ""
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 191
    :goto_14
    return-object v0

    .line 189
    :catch_15
    move-exception v0

    const-string v0, ""

    goto :goto_14

    .line 191
    :cond_19
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    goto :goto_14
.end method

.method public static e(Landroid/content/Context;)I
    .registers 4

    .prologue
    .line 243
    sget v0, Lcom/anythink/core/b/g/c;->k:I

    if-nez v0, :cond_1c

    .line 245
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 246
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 247
    sput v0, Lcom/anythink/core/b/g/c;->k:I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_16

    .line 253
    :goto_15
    return v0

    .line 249
    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 250
    const/4 v0, -0x1

    goto :goto_15

    .line 253
    :cond_1c
    sget v0, Lcom/anythink/core/b/g/c;->k:I

    goto :goto_15
.end method

.method public static e()Ljava/lang/String;
    .registers 4

    .prologue
    .line 464
    :try_start_0
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/a/f;->a(Landroid/content/Context;)Lcom/anythink/core/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/f;->b()Z

    move-result v0

    if-nez v0, :cond_19

    .line 465
    const-string v0, ""
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 482
    :goto_14
    return-object v0

    .line 468
    :catch_15
    move-exception v0

    const-string v0, ""

    goto :goto_14

    .line 471
    :cond_19
    :try_start_19
    sget-object v0, Lcom/anythink/core/b/g/c;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 472
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 473
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 474
    sput-object v0, Lcom/anythink/core/b/g/c;->m:Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_2f} :catch_30

    goto :goto_14

    :catch_30
    move-exception v0

    .line 482
    :cond_31
    sget-object v0, Lcom/anythink/core/b/g/c;->m:Ljava/lang/String;

    goto :goto_14
.end method

.method public static f()Ljava/lang/String;
    .registers 1

    .prologue
    .line 491
    :try_start_0
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/a/f;->a(Landroid/content/Context;)Lcom/anythink/core/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/f;->b()Z

    move-result v0

    if-nez v0, :cond_19

    .line 492
    const-string v0, ""
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 502
    :goto_14
    return-object v0

    .line 495
    :catch_15
    move-exception v0

    const-string v0, ""

    goto :goto_14

    .line 497
    :cond_19
    sget-object v0, Lcom/anythink/core/b/g/c;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2518
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 499
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/b/g/c;->h:Ljava/lang/String;

    .line 502
    :cond_29
    sget-object v0, Lcom/anythink/core/b/g/c;->h:Ljava/lang/String;

    goto :goto_14
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 264
    :try_start_0
    sget-object v0, Lcom/anythink/core/b/g/c;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 266
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 267
    sput-object v0, Lcom/anythink/core/b/g/c;->j:Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    .line 273
    :goto_19
    return-object v0

    .line 270
    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 271
    const-string v0, ""

    goto :goto_19

    .line 273
    :cond_21
    sget-object v0, Lcom/anythink/core/b/g/c;->j:Ljava/lang/String;

    goto :goto_19
.end method

.method public static g()Ljava/lang/String;
    .registers 1

    .prologue
    .line 506
    sget-object v0, Lcom/anythink/core/b/g/c;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 507
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/anythink/core/b/g/c;->g:Ljava/lang/String;

    .line 509
    :cond_c
    sget-object v0, Lcom/anythink/core/b/g/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 291
    :try_start_0
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/a/f;->a(Landroid/content/Context;)Lcom/anythink/core/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/f;->b()Z

    move-result v0

    if-nez v0, :cond_19

    .line 292
    const-string v0, ""
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 297
    :goto_14
    return-object v0

    .line 295
    :catch_15
    move-exception v0

    const-string v0, ""

    goto :goto_14

    .line 297
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2279
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2280
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2285
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2286
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public static h()Ljava/lang/String;
    .registers 4

    .prologue
    .line 535
    :try_start_0
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/a/f;->a(Landroid/content/Context;)Lcom/anythink/core/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/f;->b()Z

    move-result v0

    if-nez v0, :cond_19

    .line 536
    const-string v0, ""
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 545
    :goto_14
    return-object v0

    .line 539
    :catch_15
    move-exception v0

    const-string v0, ""

    goto :goto_14

    .line 542
    :cond_19
    sget-object v0, Lcom/anythink/core/b/g/c;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 543
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/b/a/d;->p:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/b/g/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/b/g/c;->d:Ljava/lang/String;

    .line 545
    :cond_35
    sget-object v0, Lcom/anythink/core/b/g/c;->d:Ljava/lang/String;

    goto :goto_14
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 306
    :try_start_0
    sget-object v0, Lcom/anythink/core/b/g/c;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 307
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 308
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 309
    sput-object v0, Lcom/anythink/core/b/g/c;->i:Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    .line 316
    :goto_19
    return-object v0

    .line 312
    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 313
    const-string v0, ""

    goto :goto_19

    .line 316
    :cond_21
    sget-object v0, Lcom/anythink/core/b/g/c;->i:Ljava/lang/String;

    goto :goto_19
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 327
    :try_start_0
    sget-object v0, Lcom/anythink/core/b/g/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 328
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p0}, Lcom/anythink/core/b/g/c;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    sput-object v0, Lcom/anythink/core/b/g/c;->b:Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 336
    :goto_16
    return-object v0

    .line 332
    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 333
    const-string v0, ""

    goto :goto_16

    .line 336
    :cond_1e
    sget-object v0, Lcom/anythink/core/b/g/c;->b:Ljava/lang/String;

    goto :goto_16
.end method

.method public static i()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 576
    sget-object v0, Lcom/anythink/core/b/g/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 578
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    sget-object v1, Lcom/anythink/core/b/g/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_10

    .line 584
    :goto_f
    return-object v0

    :catch_10
    move-exception v0

    :cond_11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_f
.end method

.method public static j(Landroid/content/Context;)I
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 359
    if-nez p0, :cond_5

    move v0, v1

    .line 387
    :goto_4
    return v0

    .line 363
    :cond_5
    :try_start_5
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 364
    if-nez v0, :cond_11

    move v0, v1

    .line 365
    goto :goto_4

    .line 367
    :cond_11
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v2, p0}, Lcom/anythink/core/b/g/g;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 369
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 370
    if-nez v0, :cond_21

    move v0, v1

    .line 371
    goto :goto_4

    .line 373
    :cond_21
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2a

    .line 374
    const/4 v0, -0x2

    goto :goto_4

    .line 376
    :cond_2a
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 377
    if-nez v0, :cond_36

    move v0, v1

    .line 378
    goto :goto_4

    .line 380
    :cond_36
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_39} :catch_3b

    move-result v0

    goto :goto_4

    .line 384
    :catch_3b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 385
    goto :goto_4

    :cond_41
    move v0, v1

    .line 387
    goto :goto_4
.end method

.method public static declared-synchronized j()Ljava/lang/String;
    .registers 6

    .prologue
    .line 614
    const-class v1, Lcom/anythink/core/b/g/c;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/a/f;->a(Landroid/content/Context;)Lcom/anythink/core/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/f;->b()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 615
    const-string v0, ""
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_17} :catch_19
    .catchall {:try_start_3 .. :try_end_17} :catchall_6f

    .line 631
    :goto_17
    monitor-exit v1

    return-object v0

    .line 618
    :catch_19
    move-exception v0

    :try_start_1a
    const-string v0, ""

    goto :goto_17

    .line 621
    :cond_1d
    sget-object v0, Lcom/anythink/core/b/g/c;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 622
    sget-object v0, Lcom/anythink/core/b/g/c;->f:Ljava/lang/String;

    goto :goto_17

    .line 624
    :cond_28
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 625
    invoke-static {}, Lcom/anythink/core/b/g/c;->c()Ljava/lang/String;

    move-result-object v2

    .line 626
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 627
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6c

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6c

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6c

    .line 628
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Mozilla/5.0 (Linux; Android "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "; "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Build/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.133 Mobile Safari/535.19"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 631
    :cond_6c
    const-string v0, ""
    :try_end_6e
    .catchall {:try_start_1a .. :try_end_6e} :catchall_6f

    goto :goto_17

    .line 614
    :catchall_6f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static k()I
    .registers 1

    .prologue
    .line 518
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static k(Landroid/content/Context;)I
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 396
    :try_start_1
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/a/f;->a(Landroid/content/Context;)Lcom/anythink/core/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/f;->b()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_15

    move-result v0

    if-nez v0, :cond_18

    move v0, v1

    .line 2455
    :goto_14
    return v0

    .line 400
    :catch_15
    move-exception v0

    move v0, v1

    goto :goto_14

    .line 404
    :cond_18
    if-nez p0, :cond_1c

    move v0, v1

    .line 405
    goto :goto_14

    .line 408
    :cond_1c
    :try_start_1c
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 409
    if-nez v0, :cond_28

    move v0, v1

    .line 410
    goto :goto_14

    .line 412
    :cond_28
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v2, p0}, Lcom/anythink/core/b/g/g;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 414
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 415
    if-nez v0, :cond_38

    move v0, v1

    .line 416
    goto :goto_14

    .line 418
    :cond_38
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_41

    .line 419
    const/4 v0, -0x2

    goto :goto_14

    .line 421
    :cond_41
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 422
    if-nez v0, :cond_4d

    move v0, v1

    .line 423
    goto :goto_14

    .line 425
    :cond_4d
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_50} :catch_62

    move-result v0

    .line 2437
    packed-switch v0, :pswitch_data_6a

    move v0, v1

    .line 426
    goto :goto_14

    .line 2443
    :pswitch_56
    const v0, -0x21e88e

    goto :goto_14

    .line 2453
    :pswitch_5a
    const v0, -0x32dcd5

    goto :goto_14

    .line 2455
    :pswitch_5e
    const v0, -0x43d11c

    goto :goto_14

    .line 429
    :catch_62
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 430
    goto :goto_14

    :cond_68
    move v0, v1

    .line 432
    goto :goto_14

    .line 2437
    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_56
        :pswitch_56
        :pswitch_5a
        :pswitch_56
        :pswitch_5a
        :pswitch_5a
        :pswitch_56
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_56
        :pswitch_5a
        :pswitch_5e
        :pswitch_5a
        :pswitch_5a
    .end packed-switch
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 553
    sget-object v0, Lcom/anythink/core/b/g/c;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 555
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 556
    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 557
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 558
    sput-object v0, Lcom/anythink/core/b/g/c;->n:Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_18

    .line 563
    :goto_17
    return-object v0

    .line 560
    :catch_18
    move-exception v0

    const-string v0, ""

    goto :goto_17

    .line 563
    :cond_1c
    sget-object v0, Lcom/anythink/core/b/g/c;->n:Ljava/lang/String;

    goto :goto_17
.end method

.method public static declared-synchronized m(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 640
    const-class v1, Lcom/anythink/core/b/g/c;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/a/f;->a(Landroid/content/Context;)Lcom/anythink/core/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/f;->b()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_8e
    .catchall {:try_start_3 .. :try_end_12} :catchall_89

    move-result v0

    if-nez v0, :cond_17

    .line 680
    :cond_15
    :goto_15
    monitor-exit v1

    return-void

    .line 646
    :cond_17
    :try_start_17
    sget-object v0, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    const-string v2, "local_ua"

    const-string v3, ""

    invoke-static {p0, v0, v2, v3}, Lcom/anythink/core/b/g/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/b/g/c;->f:Ljava/lang/String;

    .line 647
    sget-object v0, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    const-string v2, "local_os"

    const-string v3, ""

    invoke-static {p0, v0, v2, v3}, Lcom/anythink/core/b/g/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 649
    sget-object v2, Lcom/anythink/core/b/g/c;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 652
    :cond_3d
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v0, v2, :cond_50

    .line 653
    sget-object v0, Lcom/anythink/core/b/g/c;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4c
    .catchall {:try_start_17 .. :try_end_4c} :catchall_89

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_15

    .line 660
    :cond_50
    :try_start_50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_77

    .line 661
    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/b/g/c;->f:Ljava/lang/String;

    .line 666
    :goto_5c
    sget-object v0, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    const-string v2, "local_ua"

    sget-object v3, Lcom/anythink/core/b/g/c;->f:Ljava/lang/String;

    invoke-static {p0, v0, v2, v3}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    sget-object v0, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    const-string v2, "local_os"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {p0, v0, v2, v3}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_6e} :catch_87
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_6e} :catch_8c
    .catchall {:try_start_50 .. :try_end_6e} :catchall_89

    .line 676
    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/anythink/core/b/g/c;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_73
    .catchall {:try_start_6e .. :try_end_73} :catchall_89

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_15

    .line 663
    :cond_77
    :try_start_77
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/b/g/c;->f:Ljava/lang/String;
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_86} :catch_87
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_86} :catch_8c
    .catchall {:try_start_77 .. :try_end_86} :catchall_89

    goto :goto_5c

    .line 674
    :catch_87
    move-exception v0

    goto :goto_6e

    .line 640
    :catchall_89
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_8c
    move-exception v0

    goto :goto_6e

    .line 644
    :catch_8e
    move-exception v0

    goto :goto_15
.end method

.method private static n(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 280
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method private static o(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 286
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method private static p(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 567
    sget-object v0, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    const-string v1, "NETWORK_VERSION_NAME"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/anythink/core/b/g/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/b/g/c;->a:Ljava/lang/String;

    .line 568
    return-void
.end method
