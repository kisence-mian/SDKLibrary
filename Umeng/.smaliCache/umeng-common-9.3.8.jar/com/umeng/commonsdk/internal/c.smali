.class public Lcom/umeng/commonsdk/internal/c;
.super Ljava/lang/Object;
.source "UMInternalDataProtocol.java"

# interfaces
.implements Lcom/umeng/commonsdk/framework/UMLogDataProtocol;


# static fields
.field private static b:I = 0x0

.field private static final c:Ljava/lang/String; = "info"

.field private static final d:Ljava/lang/String; = "stat"

.field private static e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Z


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 71
    const/4 v0, 0x1

    sput v0, Lcom/umeng/commonsdk/internal/c;->b:I

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/commonsdk/internal/c;->e:Ljava/lang/Class;

    .line 77
    sput-object v0, Lcom/umeng/commonsdk/internal/c;->f:Ljava/lang/reflect/Method;

    .line 78
    sput-object v0, Lcom/umeng/commonsdk/internal/c;->g:Ljava/lang/reflect/Method;

    .line 79
    sput-object v0, Lcom/umeng/commonsdk/internal/c;->h:Ljava/lang/reflect/Method;

    .line 83
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/commonsdk/internal/c;->i:Z

    .line 86
    invoke-static {}, Lcom/umeng/commonsdk/internal/c;->c()V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    if-eqz p1, :cond_b

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    .line 147
    :cond_b
    return-void
.end method

.method static synthetic a(Lcom/umeng/commonsdk/internal/c;)Landroid/content/Context;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 609
    nop

    .line 611
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_5} :catch_6

    .line 613
    goto :goto_8

    .line 612
    :catch_6
    move-exception p0

    const/4 p0, 0x0

    .line 614
    :goto_8
    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    .line 155
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 156
    const-string v1, "appkey"

    invoke-static {p1}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v1, "app_version"

    invoke-static {p1}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string v1, "os"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const/4 v1, 0x0

    sget-object v2, Lcom/umeng/commonsdk/statistics/UMServerURL;->ZCFG_PATH:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildZeroEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_45

    .line 161
    const-string v0, "MobclickRT"

    if-eqz p1, :cond_3f

    :try_start_31
    const-string v1, "exception"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 162
    const-string p1, "--->>> \u6784\u5efa\u96f6\u53f7\u62a5\u6587\u5931\u8d25."

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void

    .line 165
    :cond_3f
    const-string p1, "--->>> \u6784\u5efa\u96f6\u53f7\u62a5\u6587 \u6210\u529f!!!"

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_31 .. :try_end_44} :catchall_45

    goto :goto_46

    .line 166
    :catchall_45
    move-exception p1

    :goto_46
    nop

    .line 167
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/umeng/commonsdk/listener/OnGetOaidListener;)V
    .registers 4

    .line 235
    if-nez p0, :cond_3

    .line 236
    return-void

    .line 238
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 239
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/commonsdk/internal/c$2;

    invoke-direct {v1, p0, p1}, Lcom/umeng/commonsdk/internal/c$2;-><init>(Landroid/content/Context;Lcom/umeng/commonsdk/listener/OnGetOaidListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 247
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 248
    return-void
.end method

.method public static b()Ljava/lang/String;
    .registers 5

    .line 129
    nop

    .line 130
    sget-object v0, Lcom/umeng/commonsdk/internal/c;->e:Ljava/lang/Class;

    const-string v1, ""

    if-eqz v0, :cond_25

    sget-object v2, Lcom/umeng/commonsdk/internal/c;->f:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_25

    sget-object v3, Lcom/umeng/commonsdk/internal/c;->h:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_25

    .line 132
    const/4 v3, 0x0

    :try_start_10
    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_23

    .line 134
    sget-object v2, Lcom/umeng/commonsdk/internal/c;->h:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_24

    move-object v1, v0

    .line 138
    :cond_23
    goto :goto_25

    .line 136
    :catchall_24
    move-exception v0

    .line 140
    :cond_25
    :goto_25
    return-object v1
.end method

.method private static b(Landroid/content/Context;)V
    .registers 3

    .line 199
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/commonsdk/internal/c$1;

    invoke-direct {v1, p0}, Lcom/umeng/commonsdk/internal/c$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 231
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 232
    return-void
.end method

.method private static c()V
    .registers 5

    .line 91
    :try_start_0
    const-string v0, "com.umeng.umzid.ZIDManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_38

    .line 93
    sput-object v0, Lcom/umeng/commonsdk/internal/c;->e:Ljava/lang/Class;

    .line 94
    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_17

    .line 96
    sput-object v0, Lcom/umeng/commonsdk/internal/c;->f:Ljava/lang/reflect/Method;

    .line 98
    :cond_17
    sget-object v0, Lcom/umeng/commonsdk/internal/c;->e:Ljava/lang/Class;

    const-string v1, "getZID"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_2a

    .line 100
    sput-object v0, Lcom/umeng/commonsdk/internal/c;->g:Ljava/lang/reflect/Method;

    .line 102
    :cond_2a
    sget-object v0, Lcom/umeng/commonsdk/internal/c;->e:Ljava/lang/Class;

    const-string v1, "getSDKVersion"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_38

    .line 104
    sput-object v0, Lcom/umeng/commonsdk/internal/c;->h:Ljava/lang/reflect/Method;
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_39

    .line 110
    :cond_38
    goto :goto_3a

    .line 108
    :catchall_39
    move-exception v0

    .line 111
    :goto_3a
    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .registers 3

    .line 254
    const-string v0, "header_device_oaid"

    invoke-static {v0}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 255
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_16

    .line 256
    new-instance v0, Lcom/umeng/commonsdk/internal/c$3;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/internal/c$3;-><init>(Landroid/content/Context;)V

    .line 278
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/internal/c;->a(Landroid/content/Context;Lcom/umeng/commonsdk/listener/OnGetOaidListener;)V

    .line 281
    :cond_16
    return-void
.end method

.method private d()V
    .registers 13

    .line 173
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/ak;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/ak;

    move-result-object v0

    .line 174
    const-string v1, "stf"

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/ak;->a(Ljava/lang/String;)Lcom/umeng/analytics/pro/al;

    move-result-object v2

    .line 175
    if-eqz v2, :cond_57

    .line 176
    const-string v3, "MobclickRT"

    const-string v4, "--->>> [\u6709\u72b6\u6001]\u4e8c\u7ea7\u7f13\u5b58\u8bb0\u5f55\u6784\u5efa\u6210\u771f\u6b63\u4fe1\u5c01\u3002"

    invoke-static {v3, v4}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :try_start_15
    iget-object v4, v2, Lcom/umeng/analytics/pro/al;->a:Ljava/lang/String;

    .line 179
    iget-object v10, v2, Lcom/umeng/analytics/pro/al;->b:Ljava/lang/String;

    .line 180
    new-instance v7, Lorg/json/JSONObject;

    iget-object v5, v2, Lcom/umeng/analytics/pro/al;->c:Ljava/lang/String;

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 181
    new-instance v8, Lorg/json/JSONObject;

    iget-object v5, v2, Lcom/umeng/analytics/pro/al;->d:Ljava/lang/String;

    invoke-direct {v8, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 182
    iget-object v9, v2, Lcom/umeng/analytics/pro/al;->e:Ljava/lang/String;

    .line 183
    iget-object v11, v2, Lcom/umeng/analytics/pro/al;->f:Ljava/lang/String;

    .line 185
    new-instance v5, Lcom/umeng/commonsdk/statistics/b;

    invoke-direct {v5}, Lcom/umeng/commonsdk/statistics/b;-><init>()V

    .line 186
    iget-object v2, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {v5 .. v11}, Lcom/umeng/commonsdk/statistics/b;->a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 187
    if-eqz v2, :cond_4a

    const-string v5, "exception"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 188
    const-string v2, "--->>> [\u6709\u72b6\u6001]\u4e8c\u7ea7\u7f13\u5b58\u8bb0\u5f55\u6784\u5efa\u771f\u6b63\u4fe1\u5c01 \u5931\u8d25\u3002\u5220\u9664\u4e8c\u7ea7\u7f13\u5b58\u8bb0\u5f55"

    invoke-static {v3, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    .line 190
    :cond_4a
    const-string v2, "--->>> [\u6709\u72b6\u6001]\u4e8c\u7ea7\u7f13\u5b58\u8bb0\u5f55\u6784\u5efa\u771f\u6b63\u4fe1\u5c01 \u6210\u529f! \u5220\u9664\u4e8c\u7ea7\u7f13\u5b58\u8bb0\u5f55\u3002"

    invoke-static {v3, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :goto_4f
    invoke-virtual {v0, v1, v4}, Lcom/umeng/analytics/pro/ak;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/ak;->b()V
    :try_end_55
    .catchall {:try_start_15 .. :try_end_55} :catchall_56

    goto :goto_57

    .line 194
    :catchall_56
    move-exception v0

    .line 196
    :cond_57
    :goto_57
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .registers 12

    .line 618
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 619
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 621
    :try_start_8
    const-string v1, "com.umeng.umzid.ZIDManager"

    invoke-static {v1}, Lcom/umeng/commonsdk/internal/c;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 622
    const-string v2, "getInstance"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 623
    if-eqz v2, :cond_4c

    .line 624
    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 625
    if-eqz v2, :cond_4c

    .line 626
    const-string v4, "com.umeng.umzid.IZIDCompletionCallback"

    invoke-static {v4}, Lcom/umeng/commonsdk/internal/c;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 627
    const-string v5, "init"

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v3

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const/4 v8, 0x2

    aput-object v4, v7, v8

    invoke-virtual {v1, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_3c
    .catchall {:try_start_8 .. :try_end_3c} :catchall_4d

    .line 628
    if-eqz v1, :cond_4c

    .line 630
    :try_start_3e
    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v3

    aput-object p1, v4, v9

    const/4 p1, 0x0

    aput-object p1, v4, v8

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_4b

    .line 632
    goto :goto_4c

    .line 631
    :catchall_4b
    move-exception p1

    .line 637
    :cond_4c
    :goto_4c
    goto :goto_4e

    .line 636
    :catchall_4d
    move-exception p1

    .line 638
    :goto_4e
    return-void
.end method

.method private e()V
    .registers 3

    .line 288
    sget-boolean v0, Lcom/umeng/commonsdk/internal/c;->i:Z

    const-string v1, "header_device_oaid"

    if-nez v0, :cond_20

    .line 289
    invoke-static {v1}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 290
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_29

    .line 291
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/commonsdk/internal/c;->i:Z

    .line 292
    new-instance v0, Lcom/umeng/commonsdk/internal/c$4;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/internal/c$4;-><init>(Lcom/umeng/commonsdk/internal/c;)V

    .line 316
    iget-object v1, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/internal/c;->a(Landroid/content/Context;Lcom/umeng/commonsdk/listener/OnGetOaidListener;)V

    .line 317
    goto :goto_29

    .line 320
    :cond_20
    invoke-static {v1}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 321
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/commonsdk/internal/c;->i:Z

    .line 324
    :cond_29
    :goto_29
    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .registers 3

    .line 650
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 651
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "umeng_zcfg_flag"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 652
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_31

    .line 654
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    .line 656
    goto :goto_31

    .line 655
    :catchall_30
    move-exception p0

    .line 658
    :cond_31
    :goto_31
    return-void
.end method

.method private f()V
    .registers 3

    .line 333
    const-string v0, "header_device_oaid"

    invoke-static {v0}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 336
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_32

    .line 337
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/commonsdk/internal/c;->i:Z

    .line 338
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigureImpl;->registerInterruptFlag()V

    .line 340
    iget-object v1, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/UMConfigureImpl;->init(Landroid/content/Context;)V

    .line 342
    sget v1, Lcom/umeng/commonsdk/internal/c;->b:I

    add-int/2addr v1, v0

    sput v1, Lcom/umeng/commonsdk/internal/c;->b:I

    .line 344
    const-string v0, "MobclickRT"

    const-string v1, "--->>> \u8981\u8bfb\u53d6 oaid\uff0c\u9700\u7b49\u5f85\u8bfb\u53d6\u7ed3\u679c."

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    new-instance v0, Lcom/umeng/commonsdk/internal/c$5;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/internal/c$5;-><init>(Lcom/umeng/commonsdk/internal/c;)V

    .line 360
    invoke-static {v0}, Lcom/umeng/commonsdk/UMConfigureImpl;->registerMessageSendListener(Lcom/umeng/commonsdk/utils/onMessageSendListener;)V

    .line 362
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/internal/c;->b(Landroid/content/Context;)V

    .line 365
    :cond_32
    return-void
.end method

.method private g()V
    .registers 2

    .line 641
    sget v0, Lcom/umeng/commonsdk/internal/c;->b:I

    if-gtz v0, :cond_c

    .line 642
    invoke-direct {p0}, Lcom/umeng/commonsdk/internal/c;->h()V

    .line 645
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/internal/c;->d(Landroid/content/Context;)V

    .line 647
    :cond_c
    return-void
.end method

.method private h()V
    .registers 5

    .line 661
    const-string v0, "MobclickRT"

    const-string v1, "--->>> \u771f\u5b9e\u6784\u5efa\u6761\u4ef6\u6ee1\u8db3\uff0c\u5f00\u59cb\u6784\u5efa\u4e1a\u52a1\u4fe1\u5c01\u3002"

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 663
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/internal/c;->e(Landroid/content/Context;)V

    .line 668
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/a;->a(Landroid/content/Context;)V

    .line 670
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    const/16 v1, 0x2010

    .line 671
    invoke-static {v0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    .line 670
    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 674
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    const v1, 0x8011

    .line 675
    invoke-static {v0}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object v2

    .line 674
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 678
    :cond_35
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 7

    .line 114
    nop

    .line 115
    sget-object v0, Lcom/umeng/commonsdk/internal/c;->e:Ljava/lang/Class;

    const-string v1, ""

    if-eqz v0, :cond_2a

    sget-object v2, Lcom/umeng/commonsdk/internal/c;->f:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_2a

    sget-object v3, Lcom/umeng/commonsdk/internal/c;->g:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_2a

    .line 117
    const/4 v3, 0x0

    :try_start_10
    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_28

    .line 119
    sget-object v2, Lcom/umeng/commonsdk/internal/c;->g:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    aput-object v5, v4, v3

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_29

    move-object v1, v0

    .line 123
    :cond_28
    goto :goto_2a

    .line 121
    :catchall_29
    move-exception v0

    .line 125
    :cond_2a
    :goto_2a
    return-object v1
.end method

.method public removeCacheData(Ljava/lang/Object;)V
    .registers 2

    .line 683
    return-void
.end method

.method public setupReportData(J)Lorg/json/JSONObject;
    .registers 3

    .line 687
    const/4 p1, 0x0

    return-object p1
.end method

.method public workEvent(Ljava/lang/Object;I)V
    .registers 10

    .line 370
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "[internal] workEvent"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "walle"

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    nop

    .line 373
    const-string v1, "[internal] workEvent send envelope"

    const-string v4, "com.umeng.commonsdk.internal.utils.UMInternalUtilsAgent"

    const/4 v5, 0x2

    const-string v6, "MobclickRT"

    packed-switch p2, :pswitch_data_2d2

    :pswitch_18
    goto/16 :goto_2d0

    .line 537
    :pswitch_1a
    :try_start_1a
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/debug/SelfChecker;->doCheck(Landroid/content/Context;)Z
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_21

    .line 540
    goto/16 :goto_2d0

    .line 538
    :catchall_21
    move-exception p1

    .line 542
    goto/16 :goto_2d0

    .line 500
    :pswitch_24
    const-string p1, "--->>> \u6b63\u5e38\u51b7\u542f\u52a8\u6d41\u7a0b\uff0c\u63a5\u6536\u5230\u4e91\u63a7\u914d\u7f6e\u52a0\u8f7d\u6210\u529f\u901a\u77e5\u3002"

    invoke-static {v6, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/internal/c;->c(Landroid/content/Context;)V

    .line 502
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/a;->a(Landroid/content/Context;)V

    .line 505
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/internal/c;->d(Landroid/content/Context;)V

    .line 507
    goto/16 :goto_2d0

    .line 488
    :pswitch_3a
    const-string p1, "--->>> \u6210\u529f\u63a5\u6536\u5230(OAID)\u8bfb\u53d6\u7ed3\u675f\u901a\u77e5\u3002"

    invoke-static {v6, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    sget p1, Lcom/umeng/commonsdk/internal/c;->b:I

    sub-int/2addr p1, v0

    sput p1, Lcom/umeng/commonsdk/internal/c;->b:I

    .line 490
    invoke-direct {p0}, Lcom/umeng/commonsdk/internal/c;->g()V

    .line 491
    goto/16 :goto_2d0

    .line 586
    :pswitch_49
    const-string p1, "--->>> \u4e91\u63a7\u4e0b\u53d1\u53c2\u6570\u66f4\u65b0\uff0c\u89e6\u53d1 \u4f2a\u51b7\u542f\u52a8\u3002"

    invoke-static {v6, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-static {}, Lcom/umeng/commonsdk/statistics/b;->a()V

    .line 588
    invoke-direct {p0}, Lcom/umeng/commonsdk/internal/c;->e()V

    .line 589
    const-string p1, "header_foreground_count"

    invoke-static {p1}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_75

    .line 590
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->eventHasExist()Z

    move-result p1

    if-nez p1, :cond_75

    .line 591
    const-string p1, "--->>> \u4e91\u63a7\u4e0b\u53d1\u53c2\u6570\u66f4\u65b0 \u524d\u53f0\u8ba1\u6570\u5668\u529f\u80fd \u6253\u5f00\uff0c\u89e6\u53d1 5\u79d2\u5468\u671f\u68c0\u67e5\u673a\u5236"

    invoke-static {v6, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    const/16 v1, 0x2015

    .line 593
    invoke-static {v0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x1388

    .line 592
    invoke-static/range {v0 .. v5}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEventEx(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;J)V

    .line 596
    :cond_75
    const-string p1, "header_first_resume"

    invoke-static {p1}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2d0

    .line 597
    const-string p1, "--->>> \u4e91\u63a7\u4e0b\u53d1\u53c2\u6570\u66f4\u65b0 FirstResume\u529f\u80fd \u6253\u5f00\uff0c\u89e6\u53d1 trigger"

    invoke-static {v6, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/k;

    move-result-object p1

    iget-object p2, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/pro/k;->b(Landroid/content/Context;)V

    goto/16 :goto_2d0

    .line 549
    :pswitch_8f
    :try_start_8f
    const-string p1, "--->>> \u89e6\u53d12\u53f7\u4ed3\u9057\u7559\u4fe1\u5c01\u68c0\u67e5\u52a8\u4f5c\u3002"

    invoke-static {v6, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    nop

    .line 551
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/umeng/commonsdk/stateless/d;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    .line 552
    iget-object p2, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/umeng/commonsdk/stateless/d;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p2

    .line 553
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b9

    .line 554
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_b9

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_b9

    .line 556
    const/4 v3, 0x1

    .line 561
    :cond_b9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d1

    .line 562
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_d1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_d1

    .line 565
    goto :goto_d2

    .line 569
    :cond_d1
    move v0, v3

    :goto_d2
    if-eqz v0, :cond_eb

    .line 570
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->a()Z

    move-result p1

    if-nez p1, :cond_e5

    .line 571
    new-instance p1, Lcom/umeng/commonsdk/stateless/b;

    iget-object p2, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/stateless/b;-><init>(Landroid/content/Context;)V

    .line 572
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->b()V

    .line 573
    goto :goto_f0

    .line 574
    :cond_e5
    const-string p1, "--->>> \u89e6\u53d12\u53f7\u4ed3\u9057\u7559\u4fe1\u5c01\u68c0\u67e5\uff0cSender\u5df2\u521b\u5efa\uff0c\u4e0d\u9700\u8981\u5904\u7406\u3002"

    invoke-static {v6, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f0

    .line 577
    :cond_eb
    const-string p1, "--->>> \u89e6\u53d12\u53f7\u4ed3\u9057\u7559\u4fe1\u5c01\u68c0\u67e5\uff0c\u6ca1\u6709\u9700\u8981\u5904\u7406\u7684\u76ee\u5f55\uff0c\u4e0d\u9700\u8981\u5904\u7406\u3002"

    invoke-static {v6, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f0
    .catchall {:try_start_8f .. :try_end_f0} :catchall_f2

    .line 582
    :goto_f0
    goto/16 :goto_2d0

    .line 580
    :catchall_f2
    move-exception p1

    .line 584
    goto/16 :goto_2d0

    .line 544
    :pswitch_f5
    iget-object p2, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->buildEnvelope(Landroid/content/Context;Ljava/lang/Object;)V

    .line 546
    goto/16 :goto_2d0

    .line 509
    :pswitch_fc
    const-string p1, "--->>> [\u6709\u72b6\u6001]\u63a5\u6536\u5230\u6d88\u8d39\u4e8c\u7ea7\u7f13\u5b58\u6570\u636e\u901a\u77e5."

    invoke-static {v6, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/ak;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/ak;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ak;->c()Z

    move-result p1

    if-eqz p1, :cond_113

    .line 511
    const-string p1, "--->>> [\u6709\u72b6\u6001]\u5df2\u6d88\u8d39\u5b8c\u6bd5,\u4e8c\u7ea7\u7f13\u5b58\u6570\u636e\u5e93\u4e3a\u7a7a."

    invoke-static {v6, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    return-void

    .line 515
    :cond_113
    invoke-direct {p0}, Lcom/umeng/commonsdk/internal/c;->d()V

    .line 517
    const p1, 0x8011

    invoke-static {p1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->eventHasExist(I)Z

    move-result p2

    if-nez p2, :cond_2d0

    .line 518
    iget-object p2, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    .line 519
    invoke-static {p2}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object v0

    const/4 v1, 0x0

    .line 518
    invoke-static {p2, p1, v0, v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    goto/16 :goto_2d0

    .line 493
    :pswitch_12f
    const-string p1, "--->>> \u96f6\u53f7\u62a5\u6587\u6d41\u7a0b\uff0c\u63a5\u6536\u5230\u4e91\u63a7\u914d\u7f6e\u52a0\u8f7d\u6210\u529f\u901a\u77e5(\u6210\u529f\u6536\u5230\u96f6\u53f7\u62a5\u6587\u5e94\u7b54)\u3002"

    invoke-static {v6, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-direct {p0}, Lcom/umeng/commonsdk/internal/c;->f()V

    .line 495
    sget p1, Lcom/umeng/commonsdk/internal/c;->b:I

    sub-int/2addr p1, v0

    sput p1, Lcom/umeng/commonsdk/internal/c;->b:I

    .line 496
    invoke-direct {p0}, Lcom/umeng/commonsdk/internal/c;->g()V

    .line 498
    goto/16 :goto_2d0

    .line 526
    :pswitch_141
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    sget-object p2, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_ZeroEnv:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/framework/UMFrUtils;->hasEnvelopeFile(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result p1

    if-nez p1, :cond_157

    .line 527
    const-string p1, "--->>> \u6784\u5efa\u96f6\u53f7\u62a5\u6587"

    invoke-static {v6, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/internal/c;->a(Landroid/content/Context;)V

    goto/16 :goto_2d0

    .line 530
    :cond_157
    const-string p1, "--->>> \u96f6\u53f7\u62a5\u6587\u4fe1\u5c01\u6587\u4ef6\u5df2\u5b58\u5728\uff0c\u5c1d\u8bd5\u53d1\u9001\u4e4b!"

    invoke-static {v6, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    goto/16 :goto_2d0

    .line 482
    :pswitch_15e
    check-cast p1, Lcom/umeng/commonsdk/vchannel/b;

    .line 484
    iget-object p2, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/vchannel/Sender;->handleEvent(Landroid/content/Context;Lcom/umeng/commonsdk/vchannel/b;)V

    .line 486
    goto/16 :goto_2d0

    .line 395
    :pswitch_167
    :try_start_167
    new-array p1, v0, [Ljava/lang/Object;

    aput-object v1, p1, v3

    invoke-static {v2, p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 397
    const-string p2, "i_sdk_v"

    const-string v1, "1.2.0"

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 398
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 399
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 400
    const-string v4, "inner"

    invoke-virtual {p2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 401
    iget-object v1, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 402
    if-eqz p1, :cond_1a2

    const-string p2, "exception"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1a2

    .line 404
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "[internal] workEvent send envelope back, result is ok"

    aput-object p2, p1, v3

    invoke-static {v2, p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1a2
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_1a2} :catch_1a4

    .line 407
    :cond_1a2
    goto/16 :goto_2d0

    .line 406
    :catch_1a4
    move-exception p1

    .line 408
    goto/16 :goto_2d0

    .line 473
    :pswitch_1a7
    iget-object p2, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 474
    const-string v0, "info"

    invoke-virtual {p2, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 475
    if-eqz p2, :cond_1c4

    .line 476
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    check-cast p1, Ljava/lang/String;

    const-string v0, "stat"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 479
    :cond_1c4
    goto/16 :goto_2d0

    .line 460
    :pswitch_1c6
    :try_start_1c6
    const-string p2, "com.umeng.commonsdk.internal.utils.InfoPreferenceAgent"

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 461
    if-eqz p2, :cond_1f0

    .line 462
    const-string v1, "saveUA"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v0

    invoke-virtual {p2, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 463
    check-cast p1, Ljava/lang/String;

    .line 464
    new-array v2, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    aput-object v4, v2, v3

    aput-object p1, v2, v0

    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1eb
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c6 .. :try_end_1eb} :catch_1ef
    .catchall {:try_start_1c6 .. :try_end_1eb} :catchall_1ec

    goto :goto_1f0

    .line 467
    :catchall_1ec
    move-exception p1

    .line 470
    goto/16 :goto_2d0

    .line 466
    :catch_1ef
    move-exception p1

    .line 468
    :cond_1f0
    :goto_1f0
    goto/16 :goto_2d0

    .line 446
    :pswitch_1f2
    :try_start_1f2
    const-string p1, "com.umeng.commonsdk.internal.utils.ApplicationLayerUtilAgent"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 447
    if-eqz p1, :cond_214

    .line 448
    const-string p2, "wifiChange"

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 449
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    aput-object v1, v0, v3

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1f2 .. :try_end_20f} :catch_213
    .catchall {:try_start_1f2 .. :try_end_20f} :catchall_210

    goto :goto_214

    .line 452
    :catchall_210
    move-exception p1

    .line 455
    goto/16 :goto_2d0

    .line 451
    :catch_213
    move-exception p1

    .line 453
    :cond_214
    :goto_214
    goto/16 :goto_2d0

    .line 427
    :pswitch_216
    new-array p2, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[internal] workEvent cache station, event is "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v3

    invoke-static {v2, p2}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    :try_start_234
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 432
    if-eqz p2, :cond_25c

    .line 433
    const-string v1, "saveBaseStationStrength"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v0

    invoke-virtual {p2, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 434
    check-cast p1, Ljava/lang/String;

    .line 435
    new-array v2, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    aput-object v4, v2, v3

    aput-object p1, v2, v0

    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_257
    .catch Ljava/lang/ClassNotFoundException; {:try_start_234 .. :try_end_257} :catch_25b
    .catchall {:try_start_234 .. :try_end_257} :catchall_258

    goto :goto_25c

    .line 438
    :catchall_258
    move-exception p1

    .line 441
    goto/16 :goto_2d0

    .line 437
    :catch_25b
    move-exception p1

    .line 439
    :cond_25c
    :goto_25c
    goto/16 :goto_2d0

    .line 410
    :pswitch_25e
    new-array p2, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[internal] workEvent cache battery, event is "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v3

    invoke-static {v2, p2}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    :try_start_27c
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 415
    if-eqz p2, :cond_2a3

    .line 416
    const-string v1, "saveBattery"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v0

    invoke-virtual {p2, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 417
    check-cast p1, Ljava/lang/String;

    .line 418
    new-array v2, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    aput-object v4, v2, v3

    aput-object p1, v2, v0

    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_27c .. :try_end_29f} :catch_2a2
    .catchall {:try_start_27c .. :try_end_29f} :catchall_2a0

    goto :goto_2a3

    .line 421
    :catchall_2a0
    move-exception p1

    .line 424
    goto :goto_2d0

    .line 420
    :catch_2a2
    move-exception p1

    .line 422
    :cond_2a3
    :goto_2a3
    goto :goto_2d0

    .line 376
    :pswitch_2a4
    :try_start_2a4
    new-array p1, v0, [Ljava/lang/Object;

    aput-object v1, p1, v3

    invoke-static {v2, p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2ab
    .catch Ljava/lang/Exception; {:try_start_2a4 .. :try_end_2ab} :catch_2ce

    .line 379
    :try_start_2ab
    const-string p1, "com.umeng.commonsdk.internal.UMInternalManagerAgent"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 380
    if-eqz p1, :cond_2cc

    .line 381
    const-string p2, "sendInternalEnvelopeByStateful2"

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 382
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/umeng/commonsdk/internal/c;->a:Landroid/content/Context;

    aput-object v1, v0, v3

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2ab .. :try_end_2c8} :catch_2cb
    .catchall {:try_start_2ab .. :try_end_2c8} :catchall_2c9

    goto :goto_2cc

    .line 386
    :catchall_2c9
    move-exception p1

    goto :goto_2cd

    .line 385
    :catch_2cb
    move-exception p1

    .line 387
    :cond_2cc
    :goto_2cc
    nop

    .line 389
    :goto_2cd
    goto :goto_2d0

    .line 388
    :catch_2ce
    move-exception p1

    .line 391
    nop

    .line 606
    :cond_2d0
    :goto_2d0
    return-void

    nop

    :pswitch_data_2d2
    .packed-switch 0x8001
        :pswitch_2a4
        :pswitch_18
        :pswitch_25e
        :pswitch_216
        :pswitch_18
        :pswitch_1f2
        :pswitch_1c6
        :pswitch_1a7
        :pswitch_167
        :pswitch_18
        :pswitch_15e
        :pswitch_18
        :pswitch_141
        :pswitch_18
        :pswitch_18
        :pswitch_12f
        :pswitch_fc
        :pswitch_f5
        :pswitch_8f
        :pswitch_49
        :pswitch_18
        :pswitch_3a
        :pswitch_24
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_1a
    .end packed-switch
.end method
