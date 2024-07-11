.class public final Lcom/yxcorp/kuaishou/addfp/android/a/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ""

    sput-object v0, Lcom/yxcorp/kuaishou/addfp/android/a/d;->a:Ljava/lang/String;

    sput-object v0, Lcom/yxcorp/kuaishou/addfp/android/a/d;->b:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .registers 4

    const-class v0, Lcom/yxcorp/kuaishou/addfp/android/a/d;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/yxcorp/kuaishou/addfp/android/a/d;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    sget-object v1, Lcom/yxcorp/kuaishou/addfp/android/a/d;->a:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_37

    monitor-exit v0

    return-object v1

    :cond_f
    :try_start_f
    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/android/Orange;->a()Lcom/yxcorp/kuaishou/addfp/android/Orange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yxcorp/kuaishou/addfp/android/Orange;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nammm :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->b(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    sput-object v1, Lcom/yxcorp/kuaishou/addfp/android/a/d;->a:Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_f .. :try_end_31} :catchall_37

    monitor-exit v0

    return-object v1

    :cond_33
    :try_start_33
    const-string v1, "KWE_OTHER"
    :try_end_35
    .catchall {:try_start_33 .. :try_end_35} :catchall_3c

    monitor-exit v0

    return-object v1

    :catchall_37
    move-exception v1

    :try_start_38
    const-string v1, "KWE_PE"
    :try_end_3a
    .catchall {:try_start_38 .. :try_end_3a} :catchall_3c

    monitor-exit v0

    return-object v1

    :catchall_3c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    :try_start_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yxcorp/kuaishou/addfp/android/b/e;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    const-string v0, ""

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_65

    const/16 v2, 0x1d

    const-string v3, "KWE"

    if-lt v1, v2, :cond_33

    :try_start_16
    invoke-static {p0}, Lcom/yxcorp/kuaishou/addfp/android/b/a;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_1e
    const/4 v2, 0x2

    if-ge v1, v2, :cond_61

    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_30

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_2d
    .catchall {:try_start_16 .. :try_end_2d} :catchall_65

    if-nez v4, :cond_30

    move-object v0, v2

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_33
    :try_start_33
    invoke-static {p0}, Lcom/yxcorp/kuaishou/addfp/android/b/f;->a(Landroid/content/Context;)Lcom/yxcorp/kuaishou/addfp/android/b/f;

    move-result-object v1

    iget-object v1, v1, Lcom/yxcorp/kuaishou/addfp/android/b/f;->a:Lcom/yxcorp/kuaishou/addfp/android/b/h;

    invoke-virtual {v1}, Lcom/yxcorp/kuaishou/addfp/android/b/h;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_3e

    goto :goto_3f

    :catchall_3e
    move-exception v1

    :goto_3f
    :try_start_3f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4b

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    :cond_4b
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    :cond_58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_61

    const-string p0, "KWE_N"
    :try_end_60
    .catchall {:try_start_3f .. :try_end_60} :catchall_65

    return-object p0

    :cond_61
    return-object v0

    :cond_62
    const-string p0, "KWE_PN"

    return-object p0

    :catchall_65
    move-exception p0

    const-string p0, "KWE_PE"

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return-object p0

    :catchall_9
    move-exception p0

    invoke-static {p0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return p0

    :catchall_9
    move-exception p0

    const/4 p0, 0x0

    return p0
.end method

.method public static declared-synchronized b()Ljava/lang/String;
    .registers 5

    const-class v0, Lcom/yxcorp/kuaishou/addfp/android/a/d;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/yxcorp/kuaishou/addfp/android/a/d;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    sget-object v1, Lcom/yxcorp/kuaishou/addfp/android/a/d;->b:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_73

    monitor-exit v0

    return-object v1

    :cond_f
    :try_start_f
    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/android/Orange;->a()Lcom/yxcorp/kuaishou/addfp/android/Orange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yxcorp/kuaishou/addfp/android/Orange;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "user dis :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->b(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_67

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_35
    array-length v4, v1

    if-ge v3, v4, :cond_42

    aget-byte v4, v1, v3

    xor-int/lit16 v4, v4, 0xa5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :cond_42
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fuels:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\r"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/yxcorp/kuaishou/addfp/android/a/d;->b:Ljava/lang/String;

    :cond_67
    sget-object v1, Lcom/yxcorp/kuaishou/addfp/android/a/d;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_77

    sget-object v1, Lcom/yxcorp/kuaishou/addfp/android/a/d;->b:Ljava/lang/String;
    :try_end_71
    .catchall {:try_start_f .. :try_end_71} :catchall_73

    monitor-exit v0

    return-object v1

    :catchall_73
    move-exception v1

    :try_start_74
    invoke-static {v1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    :cond_77
    const-string v1, "KWE_N"

    sput-object v1, Lcom/yxcorp/kuaishou/addfp/android/a/d;->b:Ljava/lang/String;
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_7d

    monitor-exit v0

    return-object v1

    :catchall_7d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    :try_start_2
    const-string v1, "android.permission.READ_PHONE_STATE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/yxcorp/kuaishou/addfp/android/b/e;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_49

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_15

    goto :goto_48

    :cond_15
    :try_start_15
    invoke-static {p0}, Lcom/yxcorp/kuaishou/addfp/android/b/f;->a(Landroid/content/Context;)Lcom/yxcorp/kuaishou/addfp/android/b/f;

    move-result-object v1

    iget-object v1, v1, Lcom/yxcorp/kuaishou/addfp/android/b/f;->a:Lcom/yxcorp/kuaishou/addfp/android/b/h;

    invoke-virtual {v1}, Lcom/yxcorp/kuaishou/addfp/android/b/h;->a()Ljava/lang/String;

    move-result-object v1
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_20

    goto :goto_22

    :catchall_20
    move-exception v1

    move-object v1, v0

    :goto_22
    :try_start_22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, "KWE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    :cond_30
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_47

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_42
    .catchall {:try_start_22 .. :try_end_42} :catchall_49

    if-eqz v1, :cond_45

    goto :goto_48

    :cond_45
    move-object v0, p0

    goto :goto_48

    :cond_47
    move-object v0, v1

    :cond_48
    :goto_48
    return-object v0

    :catchall_49
    move-exception p0

    invoke-static {p0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "="

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "&"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_13

    return-object p0

    :catchall_13
    move-exception p0

    invoke-static {p0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    const-string p0, "KWE_PE"

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    sget-object v0, Lcom/yxcorp/kuaishou/addfp/android/a/b;->a:Lcom/yxcorp/kuaishou/addfp/android/a/a;

    invoke-virtual {v0}, Lcom/yxcorp/kuaishou/addfp/android/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/a;->a()Lcom/yxcorp/kuaishou/addfp/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lcom/yxcorp/kuaishou/addfp/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_19

    if-nez v0, :cond_16

    return-object p0

    :cond_16
    const-string p0, "KWE_N"

    return-object p0

    :catchall_19
    move-exception p0

    invoke-static {p0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    const-string p0, "KWE_PE"

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    const-string v0, "k_w_o_d_out_dtt"

    const-string v1, "KWE_N"

    :try_start_4
    invoke-static {p0, v0}, Lcom/yxcorp/kuaishou/addfp/android/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_cb

    const-string v5, "Lm91a2R0ZnQ="

    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v7, "android.permission.READ_EXTERNAL_STORAGE"

    if-eqz v4, :cond_38

    :try_start_16
    filled-new-array {v7, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/yxcorp/kuaishou/addfp/android/b/e;->b(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v4

    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/android/b/a;->a()Z

    if-eqz v4, :cond_35

    invoke-static {p0}, Lcom/yxcorp/kuaishou/addfp/android/a/c;->a(Landroid/content/Context;)Lcom/yxcorp/kuaishou/addfp/android/a/c;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/yxcorp/kuaishou/addfp/android/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_56

    invoke-static {p0, v0, v3}, Lcom/yxcorp/kuaishou/addfp/android/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_56

    :cond_35
    const-string v0, "KWE_PN"

    goto :goto_57

    :cond_38
    filled-new-array {v7, v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yxcorp/kuaishou/addfp/android/b/e;->b(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/android/b/a;->a()Z

    if-eqz v0, :cond_56

    invoke-static {p0}, Lcom/yxcorp/kuaishou/addfp/android/a/c;->a(Landroid/content/Context;)Lcom/yxcorp/kuaishou/addfp/android/a/c;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/yxcorp/kuaishou/addfp/android/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-static {p0, v2}, Lcom/yxcorp/kuaishou/addfp/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_56
    :goto_56
    move-object v0, v1

    :goto_57
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d1

    :cond_63
    invoke-static {p0}, Lcom/yxcorp/kuaishou/addfp/android/a/c;->a(Landroid/content/Context;)Lcom/yxcorp/kuaishou/addfp/android/a/c;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/yxcorp/kuaishou/addfp/android/a/c;->a(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    if-eqz v1, :cond_73

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-nez v2, :cond_7b

    :cond_73
    invoke-static {p0}, Lcom/yxcorp/kuaishou/addfp/android/a/c;->a(Landroid/content/Context;)Lcom/yxcorp/kuaishou/addfp/android/a/c;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/yxcorp/kuaishou/addfp/android/a/c;->a(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    :cond_7b
    if-eqz v1, :cond_c9

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    if-lez p0, :cond_c9

    const/4 p0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :goto_9a
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3
    :try_end_9e
    .catchall {:try_start_16 .. :try_end_9e} :catchall_cb

    if-eqz v3, :cond_be

    const/16 v3, 0xa

    if-ge p0, v3, :cond_be

    :try_start_a4
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v3, :cond_b9

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b9
    .catchall {:try_start_a4 .. :try_end_b9} :catchall_bc

    :cond_b9
    add-int/lit8 p0, p0, 0x1

    goto :goto_9a

    :catchall_bc
    move-exception v3

    goto :goto_9a

    :cond_be
    :try_start_be
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-lez p0, :cond_c9

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_c8
    .catchall {:try_start_be .. :try_end_c8} :catchall_cb

    return-object p0

    :cond_c9
    move-object v1, v0

    goto :goto_d1

    :catchall_cb
    move-exception p0

    invoke-static {p0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    const-string v1, "KWE_PE"

    :cond_d1
    :goto_d1
    return-object v1
.end method
