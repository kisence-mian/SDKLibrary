.class public Lcom/tencent/bugly/crashreport/common/info/b;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 53

    .line 43
    const-string v0, "/su"

    const-string v1, "/su/bin/su"

    const-string v2, "/sbin/su"

    const-string v3, "/data/local/xbin/su"

    const-string v4, "/data/local/bin/su"

    const-string v5, "/data/local/su"

    const-string v6, "/system/xbin/su"

    const-string v7, "/system/bin/su"

    const-string v8, "/system/sd/xbin/su"

    const-string v9, "/system/bin/failsafe/su"

    const-string v10, "/system/bin/cufsdosck"

    const-string v11, "/system/xbin/cufsdosck"

    const-string v12, "/system/bin/cufsmgr"

    const-string v13, "/system/xbin/cufsmgr"

    const-string v14, "/system/bin/cufaevdd"

    const-string v15, "/system/xbin/cufaevdd"

    const-string v16, "/system/bin/conbb"

    const-string v17, "/system/xbin/conbb"

    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/crashreport/common/info/b;->a:[Ljava/lang/String;

    .line 64
    const-string v1, "com.ami.duosupdater.ui"

    const-string v2, "com.ami.launchmetro"

    const-string v3, "com.ami.syncduosservices"

    const-string v4, "com.bluestacks.home"

    const-string v5, "com.bluestacks.windowsfilemanager"

    const-string v6, "com.bluestacks.settings"

    const-string v7, "com.bluestacks.bluestackslocationprovider"

    const-string v8, "com.bluestacks.appsettings"

    const-string v9, "com.bluestacks.bstfolder"

    const-string v10, "com.bluestacks.BstCommandProcessor"

    const-string v11, "com.bluestacks.s2p"

    const-string v12, "com.bluestacks.setup"

    const-string v13, "com.kaopu001.tiantianserver"

    const-string v14, "com.kpzs.helpercenter"

    const-string v15, "com.kaopu001.tiantianime"

    const-string v16, "com.android.development_settings"

    const-string v17, "com.android.development"

    const-string v18, "com.android.customlocale2"

    const-string v19, "com.genymotion.superuser"

    const-string v20, "com.genymotion.clipboardproxy"

    const-string v21, "com.uc.xxzs.keyboard"

    const-string v22, "com.uc.xxzs"

    const-string v23, "com.blue.huang17.agent"

    const-string v24, "com.blue.huang17.launcher"

    const-string v25, "com.blue.huang17.ime"

    const-string v26, "com.microvirt.guide"

    const-string v27, "com.microvirt.market"

    const-string v28, "com.microvirt.memuime"

    const-string v29, "cn.itools.vm.launcher"

    const-string v30, "cn.itools.vm.proxy"

    const-string v31, "cn.itools.vm.softkeyboard"

    const-string v32, "cn.itools.avdmarket"

    const-string v33, "com.syd.IME"

    const-string v34, "com.bignox.app.store.hd"

    const-string v35, "com.bignox.launcher"

    const-string v36, "com.bignox.app.phone"

    const-string v37, "com.bignox.app.noxservice"

    const-string v38, "com.android.noxpush"

    const-string v39, "com.haimawan.push"

    const-string v40, "me.haima.helpcenter"

    const-string v41, "com.windroy.launcher"

    const-string v42, "com.windroy.superuser"

    const-string v43, "com.windroy.launcher"

    const-string v44, "com.windroy.ime"

    const-string v45, "com.android.flysilkworm"

    const-string v46, "com.android.emu.inputservice"

    const-string v47, "com.tiantian.ime"

    const-string v48, "com.microvirt.launcher"

    const-string v49, "me.le8.androidassist"

    const-string v50, "com.vphone.helper"

    const-string v51, "com.vphone.launcher"

    const-string v52, "com.duoyi.giftcenter.giftcenter"

    filled-new-array/range {v1 .. v52}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/crashreport/common/info/b;->b:[Ljava/lang/String;

    .line 119
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    const-string v2, "/system/lib/libc_malloc_debug_qemu.so"

    const-string v3, "/sys/qemu_trace"

    const-string v4, "/system/bin/qemu-props"

    const-string v5, "/dev/socket/qemud"

    const-string v6, "/dev/qemu_pipe"

    const-string v7, "/dev/socket/baseband_genyd"

    const-string v8, "/dev/socket/genyd"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/crashreport/common/info/b;->c:[Ljava/lang/String;

    .line 845
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/crashreport/common/info/b;->d:Ljava/lang/String;

    .line 846
    sput-object v0, Lcom/tencent/bugly/crashreport/common/info/b;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    .line 137
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_3

    return-object v0

    .line 138
    :catchall_3
    move-exception v0

    .line 139
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 140
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 143
    :cond_d
    const-string v0, "fail"

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 209
    nop

    .line 210
    const-string v0, "fail"

    if-nez p0, :cond_6

    .line 211
    return-object v0

    .line 215
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "android_id"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    if-nez v0, :cond_15

    .line 217
    const-string p0, "null"

    goto :goto_2a

    .line 219
    :cond_15
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1a

    .line 225
    goto :goto_2a

    .line 221
    :catchall_1a
    move-exception p0

    .line 222
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result p0

    if-nez p0, :cond_29

    .line 223
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v1, "Failed to get Android ID."

    invoke-static {v1, p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 226
    :cond_29
    move-object p0, v0

    :goto_2a
    return-object p0
.end method

.method public static a(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 6

    .line 319
    nop

    .line 320
    const/4 v0, 0x0

    const-string v1, "fail"

    if-eqz p1, :cond_4e

    .line 321
    :try_start_6
    const-string p1, "ro.product.cpu.abilist"

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 322
    invoke-static {p1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 323
    :cond_18
    const-string p1, "ro.product.cpu.abi"

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 325
    :cond_1e
    invoke-static {p1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4b

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    goto :goto_4b

    .line 328
    :cond_2b
    const-class p0, Lcom/tencent/bugly/crashreport/common/info/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ABI list: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 329
    const-string p0, ","

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object v0, p0, v2

    goto :goto_4e

    .line 326
    :cond_4b
    :goto_4b
    goto :goto_4e

    .line 336
    :catchall_4c
    move-exception p0

    goto :goto_64

    .line 332
    :cond_4e
    :goto_4e
    if-nez v0, :cond_56

    .line 333
    const-string p0, "os.arch"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    :cond_56
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_63
    .catchall {:try_start_6 .. :try_end_63} :catchall_4c

    return-object p0

    .line 337
    :goto_64
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_6d

    .line 338
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 341
    :cond_6d
    return-object v1
.end method

.method public static b()Ljava/lang/String;
    .registers 2

    .line 153
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_3

    return-object v0

    .line 154
    :catchall_3
    move-exception v0

    .line 155
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 156
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    :cond_d
    const-string v0, "fail"

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 259
    nop

    .line 260
    const-string v0, "fail"

    if-nez p0, :cond_6

    .line 261
    return-object v0

    .line 264
    :cond_6
    :try_start_6
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 266
    if-eqz p0, :cond_18

    .line 267
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 268
    if-nez v0, :cond_18

    .line 269
    const-string v0, "null"
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    .line 274
    :cond_18
    goto :goto_22

    .line 272
    :catchall_19
    move-exception p0

    .line 273
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v1, "Failed to get SIM serial number."

    invoke-static {v1, p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 275
    :goto_22
    return-object v0
.end method

.method public static c()I
    .registers 2

    .line 169
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_3

    return v0

    .line 170
    :catchall_3
    move-exception v0

    .line 171
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 172
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 175
    :cond_d
    const/4 v0, -0x1

    return v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 585
    const-string v0, "unknown"

    .line 587
    :try_start_2
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 589
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 590
    if-nez v1, :cond_12

    .line 591
    const/4 p0, 0x0

    return-object p0

    .line 593
    :cond_12
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 594
    const-string v0, "WIFI"

    goto/16 :goto_83

    .line 595
    :cond_1d
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_78

    .line 596
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 598
    if-eqz p0, :cond_78

    .line 599
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    .line 600
    packed-switch p0, :pswitch_data_84

    .line 647
    new-instance v1, Ljava/lang/StringBuilder;

    goto :goto_64

    .line 644
    :pswitch_37
    const-string v0, "HSPA+"

    .line 645
    goto :goto_83

    .line 641
    :pswitch_3a
    const-string v0, "eHRPD"

    .line 642
    goto :goto_83

    .line 638
    :pswitch_3d
    const-string v0, "LTE"

    .line 639
    goto :goto_83

    .line 635
    :pswitch_40
    const-string v0, "EVDO_B"

    .line 636
    goto :goto_83

    .line 632
    :pswitch_43
    const-string v0, "iDen"

    .line 633
    goto :goto_83

    .line 617
    :pswitch_46
    const-string v0, "HSPA"

    .line 618
    goto :goto_83

    .line 614
    :pswitch_49
    const-string v0, "HSUPA"

    .line 615
    goto :goto_83

    .line 611
    :pswitch_4c
    const-string v0, "HSDPA"

    .line 612
    goto :goto_83

    .line 629
    :pswitch_4f
    const-string v0, "1xRTT"

    .line 630
    goto :goto_83

    .line 626
    :pswitch_52
    const-string v0, "EVDO_A"

    .line 627
    goto :goto_83

    .line 623
    :pswitch_55
    const-string v0, "EVDO_0"

    .line 624
    goto :goto_83

    .line 620
    :pswitch_58
    const-string v0, "CDMA"

    .line 621
    goto :goto_83

    .line 608
    :pswitch_5b
    const-string v0, "UMTS"

    .line 609
    goto :goto_83

    .line 605
    :pswitch_5e
    const-string v0, "EDGE"

    .line 606
    goto :goto_83

    .line 602
    :pswitch_61
    const-string v0, "GPRS"

    .line 603
    goto :goto_83

    .line 647
    :goto_64
    const-string v2, "MOBILE("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_77} :catch_79

    move-object v0, p0

    .line 655
    :cond_78
    goto :goto_83

    .line 651
    :catch_79
    move-exception p0

    .line 652
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_83

    .line 653
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 656
    :cond_83
    :goto_83
    return-object v0

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_61
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
    .end packed-switch
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    .line 187
    const-string v0, "null"

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 665
    const-string v0, "ro.miui.ui.version.name"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 666
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "fail"

    if-nez v1, :cond_24

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 667
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "XiaoMi/MIUI/"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 671
    :cond_24
    const-string v0, "ro.build.version.emui"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 672
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 673
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "HuaWei/EMOTION/"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 677
    :cond_46
    const-string v0, "ro.lenovo.series"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 678
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6e

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 679
    const-string v0, "ro.build.version.incremental"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lenovo/VIBE/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 684
    :cond_6e
    const-string v0, "ro.build.nubia.rom.name"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 685
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a0

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Zte/NUBIA/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.build.nubia.rom.code"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 691
    :cond_a0
    const-string v0, "ro.meizu.product.model"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 692
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "ro.build.display.id"

    if-nez v1, :cond_c8

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Meizu/FLYME/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 697
    :cond_c8
    const-string v0, "ro.build.version.opporom"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 698
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_ea

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ea

    .line 699
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Oppo/COLOROS/"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 703
    :cond_ea
    const-string v0, "ro.vivo.os.build.display.id"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 704
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10c

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10c

    .line 705
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "vivo/FUNTOUCH/"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 709
    :cond_10c
    const-string v0, "ro.aa.romver"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 710
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    const-string v4, "/"

    if-nez v1, :cond_13e

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13e

    .line 711
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "htc/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.build.description"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 715
    :cond_13e
    const-string v0, "ro.lewa.version"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 716
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16c

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16c

    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tcl/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, v3}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 721
    :cond_16c
    const-string v0, "ro.gn.gnromvernumber"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 722
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19a

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19a

    .line 723
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "amigo/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, v3}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 727
    :cond_19a
    const-string v0, "ro.build.tyd.kbstyle_version"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 728
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1bc

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1bc

    .line 729
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "dido/"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 733
    :cond_1bc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.build.fingerprint"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.build.rom.id"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e()Ljava/lang/String;
    .registers 1

    .line 199
    const-string v0, "null"

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 742
    const-string v0, "ro.board.platform"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f()Ljava/lang/String;
    .registers 1

    .line 249
    const-string v0, "null"

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 820
    const-string v1, "ro.genymotion.version"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 821
    const-string v3, "\n"

    const-string v4, "|"

    if-eqz v2, :cond_1d

    .line 822
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    :cond_1d
    const-string v1, "androVM.vbox_dpi"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 829
    if-eqz v2, :cond_31

    .line 830
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    :cond_31
    const-string v1, "qemu.sf.fake_camera"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 837
    if-eqz p0, :cond_42

    .line 838
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    :cond_42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g()Ljava/lang/String;
    .registers 2

    .line 285
    :try_start_0
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_3

    return-object v0

    .line 286
    :catchall_3
    move-exception v0

    .line 287
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to get hardware serial number."

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 288
    const-string v0, "fail"

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 857
    sget-object v1, Lcom/tencent/bugly/crashreport/common/info/b;->d:Ljava/lang/String;

    const-string v2, "ro.secure"

    if-nez v1, :cond_11

    .line 858
    invoke-static {p0, v2}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/bugly/crashreport/common/info/b;->d:Ljava/lang/String;

    .line 860
    :cond_11
    sget-object v1, Lcom/tencent/bugly/crashreport/common/info/b;->d:Ljava/lang/String;

    const-string v3, "\n"

    const-string v4, "|"

    if-eqz v1, :cond_27

    .line 861
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    sget-object v1, Lcom/tencent/bugly/crashreport/common/info/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    :cond_27
    sget-object v1, Lcom/tencent/bugly/crashreport/common/info/b;->e:Ljava/lang/String;

    const-string v2, "ro.debuggable"

    if-nez v1, :cond_33

    .line 868
    invoke-static {p0, v2}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/bugly/crashreport/common/info/b;->e:Ljava/lang/String;

    .line 870
    :cond_33
    sget-object p0, Lcom/tencent/bugly/crashreport/common/info/b;->e:Ljava/lang/String;

    if-eqz p0, :cond_45

    .line 871
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    sget-object p0, Lcom/tencent/bugly/crashreport/common/info/b;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    :cond_45
    const/4 p0, 0x0

    .line 879
    :try_start_46
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/self/status"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_87

    .line 880
    nop

    .line 881
    :cond_53
    :try_start_53
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_61

    .line 882
    const-string v2, "TracerPid:"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 883
    :cond_61
    if-eqz p0, :cond_78

    .line 887
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 888
    const-string v2, "tracer_pid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    :cond_78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_7c
    .catchall {:try_start_53 .. :try_end_7c} :catchall_85

    .line 896
    :try_start_7c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_80

    .line 901
    goto :goto_84

    .line 899
    :catch_80
    move-exception v0

    .line 900
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 901
    :goto_84
    return-object p0

    .line 893
    :catchall_85
    move-exception p0

    goto :goto_8b

    :catchall_87
    move-exception v1

    move-object v5, v1

    move-object v1, p0

    move-object p0, v5

    .line 894
    :goto_8b
    :try_start_8b
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_9e

    .line 896
    if-eqz v1, :cond_99

    .line 898
    :try_start_90
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_94

    .line 901
    :goto_93
    goto :goto_99

    .line 899
    :catch_94
    move-exception p0

    .line 900
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_93

    .line 904
    :cond_99
    :goto_99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 896
    :catchall_9e
    move-exception p0

    if-eqz v1, :cond_a9

    .line 898
    :try_start_a1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a5

    .line 901
    goto :goto_a9

    .line 899
    :catch_a5
    move-exception v0

    .line 900
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 901
    :cond_a9
    :goto_a9
    throw p0
.end method

.method public static h()J
    .registers 4

    .line 349
    nop

    .line 351
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 352
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 354
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1a

    int-to-long v0, v0

    .line 355
    mul-long/2addr v0, v2

    .line 360
    goto :goto_26

    .line 356
    :catchall_1a
    move-exception v0

    .line 357
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 358
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 361
    :cond_24
    const-wide/16 v0, -0x1

    :goto_26
    return-wide v0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 976
    const-string v1, "gsm.sim.state"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 977
    const-string v3, "|"

    if-eqz v2, :cond_18

    .line 978
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    :cond_18
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    const-string v1, "gsm.sim.state2"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 985
    if-eqz p0, :cond_2e

    .line 986
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i()J
    .registers 4

    .line 369
    nop

    .line 371
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 372
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 374
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1a

    int-to-long v0, v0

    .line 375
    mul-long/2addr v0, v2

    .line 380
    goto :goto_26

    .line 376
    :catchall_1a
    move-exception v0

    .line 377
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 378
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 381
    :cond_24
    const-wide/16 v0, -0x1

    :goto_26
    return-wide v0
.end method

.method public static i(Landroid/content/Context;)Z
    .registers 5

    .line 1030
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/b;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_47

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    sget-object v2, Lcom/tencent/bugly/crashreport/common/info/b;->c:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_37

    new-instance v3, Ljava/io/File;

    if-nez v1, :cond_22

    aget-object v2, v2, v1

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_34

    goto :goto_2d

    :cond_22
    aget-object v2, v2, v1

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_34

    :goto_2d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_37
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3f

    const/4 p0, 0x0

    goto :goto_43

    :cond_3f
    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_43
    if-eqz p0, :cond_46

    goto :goto_47

    :cond_46
    return v0

    :cond_47
    :goto_47
    const/4 p0, 0x1

    return p0
.end method

.method public static j()J
    .registers 6

    .line 388
    const-string v0, "/proc/meminfo"

    .line 389
    nop

    .line 390
    nop

    .line 392
    const/4 v1, 0x0

    :try_start_5
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_7b

    .line 393
    :try_start_a
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v3, 0x800

    invoke-direct {v0, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_76

    .line 394
    :try_start_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_74

    .line 395
    if-nez v1, :cond_36

    .line 396
    :try_start_17
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 416
    goto :goto_25

    .line 412
    :catch_1b
    move-exception v0

    .line 413
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 414
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 418
    :cond_25
    :goto_25
    :try_start_25
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    .line 425
    goto :goto_33

    .line 421
    :catch_29
    move-exception v0

    .line 422
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 423
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 425
    :cond_33
    :goto_33
    const-wide/16 v0, -0x1

    return-wide v0

    .line 398
    :cond_36
    :try_start_36
    const-string v3, ":\\s+"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 399
    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 400
    const-string v3, "kb"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 401
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_54
    .catchall {:try_start_36 .. :try_end_54} :catchall_74

    const/16 v1, 0xa

    shl-long/2addr v3, v1

    .line 402
    :try_start_57
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    .line 416
    goto :goto_65

    .line 412
    :catch_5b
    move-exception v0

    .line 413
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 414
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 418
    :cond_65
    :goto_65
    :try_start_65
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    .line 425
    goto :goto_73

    .line 421
    :catch_69
    move-exception v0

    .line 422
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_73

    .line 423
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 425
    :cond_73
    :goto_73
    return-wide v3

    .line 403
    :catchall_74
    move-exception v1

    goto :goto_7f

    :catchall_76
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_7f

    :catchall_7b
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    .line 404
    :goto_7f
    :try_start_7f
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_88

    .line 405
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_88
    .catchall {:try_start_7f .. :try_end_88} :catchall_ac

    .line 409
    :cond_88
    if-eqz v0, :cond_98

    .line 411
    :try_start_8a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e

    .line 416
    goto :goto_98

    .line 412
    :catch_8e
    move-exception v0

    .line 413
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_98

    .line 414
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 418
    :cond_98
    :goto_98
    if-eqz v2, :cond_a9

    .line 420
    :try_start_9a
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9e

    .line 425
    :cond_9d
    :goto_9d
    goto :goto_a9

    .line 421
    :catch_9e
    move-exception v0

    .line 422
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_9d

    .line 423
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9d

    .line 429
    :cond_a9
    :goto_a9
    const-wide/16 v0, -0x2

    return-wide v0

    .line 409
    :catchall_ac
    move-exception v1

    if-eqz v0, :cond_bd

    .line 411
    :try_start_af
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_b3

    .line 416
    goto :goto_bd

    .line 412
    :catch_b3
    move-exception v0

    .line 413
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_bd

    .line 414
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 418
    :cond_bd
    :goto_bd
    if-eqz v2, :cond_cd

    .line 420
    :try_start_bf
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_c3

    .line 425
    goto :goto_cd

    .line 421
    :catch_c3
    move-exception v0

    .line 422
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_cd

    .line 423
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 425
    :cond_cd
    :goto_cd
    throw v1
.end method

.method public static j(Landroid/content/Context;)Z
    .registers 2

    .line 1083
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/b;->l(Landroid/content/Context;)I

    move-result p0

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->v()I

    move-result v0

    or-int/2addr p0, v0

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->w()I

    move-result v0

    or-int/2addr p0, v0

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->u()I

    move-result v0

    or-int/2addr p0, v0

    if-lez p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public static k()J
    .registers 14

    .line 436
    const-string v0, ""

    const-string v1, "kb"

    const-string v2, ":\\s+"

    const-string v3, "/proc/meminfo"

    .line 437
    nop

    .line 438
    nop

    .line 440
    const/4 v4, 0x0

    :try_start_b
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_f5

    .line 441
    :try_start_10
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v6, 0x800

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_f3

    .line 442
    :try_start_17
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 443
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_f0

    .line 444
    const-wide/16 v6, -0x1

    if-nez v4, :cond_3f

    .line 445
    :try_start_22
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26

    .line 485
    goto :goto_30

    .line 481
    :catch_26
    move-exception v0

    .line 482
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 483
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 487
    :cond_30
    :goto_30
    :try_start_30
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    .line 494
    goto :goto_3e

    .line 490
    :catch_34
    move-exception v0

    .line 491
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 492
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 494
    :cond_3e
    :goto_3e
    return-wide v6

    .line 447
    :cond_3f
    const/4 v8, 0x2

    :try_start_40
    invoke-virtual {v4, v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 448
    const/4 v9, 0x1

    aget-object v4, v4, v9

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 449
    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 450
    const-wide/16 v10, 0x0

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const/16 v4, 0xa

    shl-long/2addr v12, v4

    add-long/2addr v12, v10

    .line 453
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10
    :try_end_61
    .catchall {:try_start_40 .. :try_end_61} :catchall_f0

    .line 454
    if-nez v10, :cond_80

    .line 455
    :try_start_63
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    .line 485
    goto :goto_71

    .line 481
    :catch_67
    move-exception v0

    .line 482
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_71

    .line 483
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 487
    :cond_71
    :goto_71
    :try_start_71
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75

    .line 494
    goto :goto_7f

    .line 490
    :catch_75
    move-exception v0

    .line 491
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_7f

    .line 492
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 494
    :cond_7f
    :goto_7f
    return-wide v6

    .line 457
    :cond_80
    :try_start_80
    invoke-virtual {v10, v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 458
    aget-object v10, v10, v9

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 459
    invoke-virtual {v10, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 460
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    shl-long/2addr v10, v4

    add-long/2addr v12, v10

    .line 462
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10
    :try_end_9c
    .catchall {:try_start_80 .. :try_end_9c} :catchall_f0

    .line 463
    if-nez v10, :cond_bb

    .line 464
    :try_start_9e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_a2

    .line 485
    goto :goto_ac

    .line 481
    :catch_a2
    move-exception v0

    .line 482
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_ac

    .line 483
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 487
    :cond_ac
    :goto_ac
    :try_start_ac
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b0

    .line 494
    goto :goto_ba

    .line 490
    :catch_b0
    move-exception v0

    .line 491
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_ba

    .line 492
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 494
    :cond_ba
    :goto_ba
    return-wide v6

    .line 466
    :cond_bb
    :try_start_bb
    invoke-virtual {v10, v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 467
    aget-object v2, v2, v9

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 468
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_d1
    .catchall {:try_start_bb .. :try_end_d1} :catchall_f0

    shl-long/2addr v0, v4

    add-long/2addr v12, v0

    .line 471
    :try_start_d3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_d7

    .line 485
    goto :goto_e1

    .line 481
    :catch_d7
    move-exception v0

    .line 482
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_e1

    .line 483
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 487
    :cond_e1
    :goto_e1
    :try_start_e1
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_e5

    .line 494
    goto :goto_ef

    .line 490
    :catch_e5
    move-exception v0

    .line 491
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_ef

    .line 492
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 494
    :cond_ef
    :goto_ef
    return-wide v12

    .line 472
    :catchall_f0
    move-exception v0

    move-object v4, v3

    goto :goto_f7

    :catchall_f3
    move-exception v0

    goto :goto_f7

    :catchall_f5
    move-exception v0

    move-object v5, v4

    .line 473
    :goto_f7
    :try_start_f7
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_100

    .line 474
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_100
    .catchall {:try_start_f7 .. :try_end_100} :catchall_124

    .line 478
    :cond_100
    if-eqz v4, :cond_110

    .line 480
    :try_start_102
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_105} :catch_106

    .line 485
    goto :goto_110

    .line 481
    :catch_106
    move-exception v0

    .line 482
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_110

    .line 483
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 487
    :cond_110
    :goto_110
    if-eqz v5, :cond_121

    .line 489
    :try_start_112
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_115} :catch_116

    .line 494
    :cond_115
    :goto_115
    goto :goto_121

    .line 490
    :catch_116
    move-exception v0

    .line 491
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_115

    .line 492
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_115

    .line 498
    :cond_121
    :goto_121
    const-wide/16 v0, -0x2

    return-wide v0

    .line 478
    :catchall_124
    move-exception v0

    if-eqz v4, :cond_135

    .line 480
    :try_start_127
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_12a
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_12a} :catch_12b

    .line 485
    goto :goto_135

    .line 481
    :catch_12b
    move-exception v1

    .line 482
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_135

    .line 483
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 487
    :cond_135
    :goto_135
    if-eqz v5, :cond_145

    .line 489
    :try_start_137
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_13a
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_13a} :catch_13b

    .line 494
    goto :goto_145

    .line 490
    :catch_13b
    move-exception v1

    .line 491
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_145

    .line 492
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 494
    :cond_145
    :goto_145
    throw v0
.end method

.method private static k(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 1040
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1041
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1042
    const/4 v1, 0x0

    :goto_a
    sget-object v2, Lcom/tencent/bugly/crashreport/common/info/b;->b:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_21

    .line 1044
    :try_start_f
    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1045
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_1c} :catch_1d

    .line 1048
    goto :goto_1e

    .line 1046
    :catch_1d
    move-exception v2

    .line 1042
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1050
    :cond_21
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_29

    const/4 p0, 0x0

    return-object p0

    :cond_29
    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static l(Landroid/content/Context;)I
    .registers 3

    .line 1114
    nop

    .line 1115
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1117
    :try_start_5
    const-string v0, "de.robv.android.xposed.installer"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_c

    .line 1118
    const/4 v0, 0x1

    .line 1121
    goto :goto_e

    .line 1119
    :catch_c
    move-exception v0

    const/4 v0, 0x0

    .line 1123
    :goto_e
    :try_start_e
    const-string v1, "com.saurik.substrate"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_16

    .line 1124
    or-int/lit8 v0, v0, 0x2

    .line 1127
    goto :goto_17

    .line 1125
    :catch_16
    move-exception p0

    .line 1129
    :goto_17
    return v0
.end method

.method public static l()J
    .registers 4

    .line 508
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->t()Z

    move-result v0

    if-nez v0, :cond_9

    .line 509
    const-wide/16 v0, 0x0

    return-wide v0

    .line 513
    :cond_9
    :try_start_9
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    .line 515
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_22

    int-to-long v2, v0

    .line 516
    int-to-long v0, v1

    mul-long/2addr v2, v0

    return-wide v2

    .line 517
    :catchall_22
    move-exception v0

    .line 518
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 519
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 522
    :cond_2c
    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method public static m()J
    .registers 4

    .line 532
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->t()Z

    move-result v0

    if-nez v0, :cond_9

    .line 533
    const-wide/16 v0, 0x0

    return-wide v0

    .line 537
    :cond_9
    :try_start_9
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    .line 539
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_22

    int-to-long v2, v0

    .line 540
    int-to-long v0, v1

    mul-long/2addr v2, v0

    return-wide v2

    .line 541
    :catchall_22
    move-exception v0

    .line 542
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 543
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 546
    :cond_2c
    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method public static n()Ljava/lang/String;
    .registers 2

    .line 553
    nop

    .line 555
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_a

    .line 560
    goto :goto_16

    .line 556
    :catchall_a
    move-exception v0

    .line 557
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 558
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 561
    :cond_14
    const-string v0, "fail"

    :goto_16
    return-object v0
.end method

.method public static o()Ljava/lang/String;
    .registers 2

    .line 568
    nop

    .line 570
    :try_start_1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_4

    .line 575
    goto :goto_10

    .line 571
    :catchall_4
    move-exception v0

    .line 572
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 573
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 576
    :cond_e
    const-string v0, "fail"

    :goto_10
    return-object v0
.end method

.method public static p()Z
    .registers 7

    .line 751
    nop

    .line 752
    sget-object v0, Lcom/tencent/bugly/crashreport/common/info/b;->a:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1c

    aget-object v5, v0, v3

    .line 753
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 754
    nop

    .line 755
    move v0, v4

    goto :goto_1d

    .line 752
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_1c
    move v0, v2

    .line 758
    :goto_1d
    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v1, :cond_2d

    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v3, "test-keys"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    move v1, v4

    goto :goto_2e

    :cond_2d
    move v1, v2

    .line 759
    :goto_2e
    if-nez v1, :cond_34

    if-eqz v0, :cond_33

    goto :goto_34

    :cond_33
    return v2

    :cond_34
    :goto_34
    return v4
.end method

.method public static q()Ljava/lang/String;
    .registers 8

    .line 768
    const-string v0, "/sys/block/mmcblk0/device/cid"

    const-string v1, "/sys/block/mmcblk0/device/name"

    const-string v2, ","

    const-string v3, "/sys/block/mmcblk0/device/type"

    .line 770
    const/4 v4, 0x0

    :try_start_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 771
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_30

    .line 772
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_91

    .line 773
    :try_start_23
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 774
    if-eqz v3, :cond_2c

    .line 775
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    :cond_2c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    goto :goto_31

    .line 771
    :cond_30
    move-object v6, v4

    .line 779
    :goto_31
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 781
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_49
    .catchall {:try_start_23 .. :try_end_49} :catchall_8f

    .line 782
    :try_start_49
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 783
    if-eqz v1, :cond_52

    .line 784
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    :cond_52
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_55
    .catchall {:try_start_49 .. :try_end_55} :catchall_57

    move-object v6, v3

    goto :goto_5a

    .line 797
    :catchall_57
    move-exception v0

    move-object v6, v3

    goto :goto_93

    .line 788
    :cond_5a
    :goto_5a
    :try_start_5a
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 790
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_72
    .catchall {:try_start_5a .. :try_end_72} :catchall_8f

    .line 791
    :try_start_72
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 792
    if-eqz v0, :cond_7b

    .line 793
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7b
    .catchall {:try_start_72 .. :try_end_7b} :catchall_7d

    .line 796
    :cond_7b
    move-object v6, v1

    goto :goto_80

    .line 797
    :catchall_7d
    move-exception v0

    move-object v6, v1

    goto :goto_93

    .line 796
    :cond_80
    :goto_80
    :try_start_80
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_84
    .catchall {:try_start_80 .. :try_end_84} :catchall_8f

    .line 801
    if-eqz v6, :cond_8e

    .line 803
    :try_start_86
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    .line 806
    goto :goto_8e

    .line 804
    :catch_8a
    move-exception v1

    .line 805
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 806
    :cond_8e
    :goto_8e
    return-object v0

    .line 797
    :catchall_8f
    move-exception v0

    goto :goto_93

    :catchall_91
    move-exception v0

    move-object v6, v4

    .line 799
    :goto_93
    if-eqz v6, :cond_9d

    .line 803
    :try_start_95
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_99

    .line 806
    goto :goto_9d

    .line 804
    :catch_99
    move-exception v0

    .line 805
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 806
    :cond_9d
    :goto_9d
    return-object v4
.end method

.method public static r()Ljava/lang/String;
    .registers 9

    .line 914
    const-string v0, "/sys/class/power_supply/battery/capacity"

    const-string v1, "/sys/class/power_supply/usb/online"

    const-string v2, "\n"

    const-string v3, "/sys/class/power_supply/ac/online"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 915
    nop

    .line 917
    const/4 v5, 0x0

    :try_start_f
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_a8

    const-string v7, "|"

    if-eqz v6, :cond_40

    .line 919
    :try_start_1c
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_a8

    .line 920
    :try_start_26
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 921
    if-eqz v3, :cond_37

    .line 922
    const-string v5, "ac_online"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    :cond_37
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3a
    .catchall {:try_start_26 .. :try_end_3a} :catchall_3c

    move-object v5, v6

    goto :goto_40

    .line 953
    :catchall_3c
    move-exception v0

    move-object v5, v6

    goto/16 :goto_a9

    .line 928
    :cond_40
    :goto_40
    :try_start_40
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_71

    .line 931
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_58
    .catchall {:try_start_40 .. :try_end_58} :catchall_a8

    .line 932
    :try_start_58
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 933
    if-eqz v1, :cond_69

    .line 934
    const-string v5, "usb_online"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    :cond_69
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6c
    .catchall {:try_start_58 .. :try_end_6c} :catchall_6e

    move-object v5, v3

    goto :goto_71

    .line 953
    :catchall_6e
    move-exception v0

    move-object v5, v3

    goto :goto_a9

    .line 940
    :cond_71
    :goto_71
    :try_start_71
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 943
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_89
    .catchall {:try_start_71 .. :try_end_89} :catchall_a8

    .line 945
    :try_start_89
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 946
    if-eqz v0, :cond_9a

    .line 947
    const-string v2, "battery_capacity"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    :cond_9a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9d
    .catchall {:try_start_89 .. :try_end_9d} :catchall_9f

    move-object v5, v1

    goto :goto_a2

    .line 953
    :catchall_9f
    move-exception v0

    move-object v5, v1

    goto :goto_a9

    .line 956
    :cond_a2
    :goto_a2
    if-eqz v5, :cond_b4

    .line 958
    :try_start_a4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    goto :goto_ae

    .line 953
    :catchall_a8
    move-exception v0

    .line 956
    :goto_a9
    if-eqz v5, :cond_b4

    .line 958
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_ae} :catch_af

    .line 961
    :goto_ae
    goto :goto_b4

    .line 959
    :catch_af
    move-exception v0

    .line 960
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_ae

    .line 964
    :cond_b4
    :goto_b4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static s()J
    .registers 8

    .line 1000
    nop

    .line 1001
    nop

    .line 1004
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/proc/uptime"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_39

    .line 1005
    :try_start_11
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 1006
    if-eqz v2, :cond_2d

    .line 1007
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    .line 1008
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-float v4, v4

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_36

    sub-float/2addr v4, v0

    move v1, v4

    .line 1013
    :cond_2d
    :try_start_2d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    .line 1018
    :goto_30
    goto :goto_47

    .line 1016
    :catch_31
    move-exception v0

    .line 1017
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_30

    .line 1010
    :catchall_36
    move-exception v2

    move-object v2, v3

    goto :goto_3a

    :catchall_39
    move-exception v3

    .line 1011
    :goto_3a
    :try_start_3a
    const-string v3, "Failed to get boot time of device."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_49

    .line 1013
    if-eqz v2, :cond_47

    .line 1015
    :try_start_43
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_31

    goto :goto_30

    .line 1021
    :cond_47
    :goto_47
    float-to-long v0, v1

    return-wide v0

    .line 1013
    :catchall_49
    move-exception v0

    if-eqz v2, :cond_54

    .line 1015
    :try_start_4c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    .line 1018
    goto :goto_54

    .line 1016
    :catch_50
    move-exception v1

    .line 1017
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 1018
    :cond_54
    :goto_54
    throw v0
.end method

.method private static t()Z
    .registers 2

    .line 299
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_f

    if-eqz v0, :cond_e

    .line 300
    const/4 v0, 0x1

    return v0

    .line 306
    :cond_e
    goto :goto_19

    .line 302
    :catchall_f
    move-exception v0

    .line 303
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 304
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 307
    :cond_19
    :goto_19
    const/4 v0, 0x0

    return v0
.end method

.method private static u()I
    .registers 5

    .line 1092
    nop

    .line 1094
    const/16 v0, 0x100

    :try_start_3
    const-string v1, "android.app.ActivityManagerNative"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1095
    const-string v2, "getDefault"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1096
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1097
    const/4 v2, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1098
    const-string v2, "$Proxy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2b} :catch_30

    if-eqz v1, :cond_2e

    .line 1099
    goto :goto_2f

    .line 1098
    :cond_2e
    move v0, v3

    .line 1103
    :goto_2f
    goto :goto_32

    .line 1101
    :catch_30
    move-exception v1

    .line 1102
    nop

    .line 1104
    :goto_32
    return v0
.end method

.method private static v()I
    .registers 9

    .line 1138
    nop

    .line 1140
    :try_start_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "detect hook"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_9

    .line 1141
    :catch_9
    move-exception v0

    .line 1142
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 1143
    array-length v1, v0

    .line 1144
    nop

    .line 1145
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 1146
    :goto_13
    if-ge v2, v1, :cond_79

    .line 1147
    aget-object v5, v0, v2

    .line 1148
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "de.robv.android.xposed.XposedBridge"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "main"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 1150
    or-int/lit8 v3, v3, 0x4

    .line 1152
    :cond_31
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "handleHookedMethod"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 1154
    or-int/lit8 v3, v3, 0x8

    .line 1156
    :cond_49
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.saurik.substrate.MS$2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "invoked"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 1158
    or-int/lit8 v3, v3, 0x10

    .line 1160
    :cond_63
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.internal.os.ZygoteInit"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 1161
    add-int/lit8 v4, v4, 0x1

    .line 1162
    const/4 v5, 0x2

    if-ne v4, v5, :cond_76

    .line 1163
    or-int/lit8 v3, v3, 0x20

    .line 1166
    :cond_76
    add-int/lit8 v2, v2, 0x1

    .line 1167
    goto :goto_13

    .line 1168
    :cond_79
    return v3
.end method

.method private static w()I
    .registers 8

    .line 1178
    nop

    .line 1179
    nop

    .line 1182
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_4
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1183
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/proc/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/maps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v6, "utf-8"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_33
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_33} :catch_ae
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_33} :catch_a2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_33} :catch_96
    .catchall {:try_start_4 .. :try_end_33} :catchall_94

    .line 1186
    :cond_33
    :goto_33
    :try_start_33
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 1187
    const-string v4, ".so"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_49

    const-string v4, ".jar"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1188
    :cond_49
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 1192
    :cond_59
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1193
    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_85

    .line 1194
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1195
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "xposed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 1196
    or-int/lit8 v0, v0, 0x40

    .line 1198
    :cond_78
    check-cast v2, Ljava/lang/String;

    const-string v4, "com.saurik.substrate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_80
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_33 .. :try_end_80} :catch_92
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_80} :catch_90
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_80} :catch_8e
    .catchall {:try_start_33 .. :try_end_80} :catchall_bb

    if-eqz v2, :cond_84

    .line 1199
    or-int/lit16 v0, v0, 0x80

    .line 1201
    :cond_84
    goto :goto_5d

    .line 1209
    :cond_85
    :try_start_85
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89

    .line 1214
    :goto_88
    goto :goto_ba

    .line 1212
    :catch_89
    move-exception v1

    .line 1213
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_88

    .line 1206
    :catch_8e
    move-exception v1

    goto :goto_99

    .line 1204
    :catch_90
    move-exception v1

    goto :goto_a5

    .line 1202
    :catch_92
    move-exception v1

    goto :goto_b1

    .line 1209
    :catchall_94
    move-exception v0

    goto :goto_bd

    .line 1206
    :catch_96
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    .line 1207
    :goto_99
    :try_start_99
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_bb

    .line 1209
    if-eqz v3, :cond_ba

    .line 1211
    :try_start_9e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_89

    goto :goto_88

    .line 1204
    :catch_a2
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    .line 1205
    :goto_a5
    :try_start_a5
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_bb

    .line 1209
    if-eqz v3, :cond_ba

    .line 1211
    :try_start_aa
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_89

    goto :goto_88

    .line 1202
    :catch_ae
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    .line 1203
    :goto_b1
    :try_start_b1
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_bb

    .line 1209
    if-eqz v3, :cond_ba

    .line 1211
    :try_start_b6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_89

    goto :goto_88

    .line 1217
    :cond_ba
    :goto_ba
    return v0

    .line 1209
    :catchall_bb
    move-exception v0

    move-object v1, v3

    :goto_bd
    if-eqz v1, :cond_c7

    .line 1211
    :try_start_bf
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_c3

    .line 1214
    goto :goto_c7

    .line 1212
    :catch_c3
    move-exception v1

    .line 1213
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1214
    :cond_c7
    :goto_c7
    throw v0
.end method
