.class public Lcom/JoyFramework/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false

.field public static final b:I = 0x3e9

.field public static final c:I = 0x3ea

.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3

.field public static final h:I = 0x4

.field public static final i:I = 0x5

.field public static final j:I = 0x6

.field public static final k:I = 0x7

.field public static final l:I = 0x8

.field public static m:Lcom/JoyFramework/common/InitListener;

.field public static n:Lcom/JoyFramework/common/UserApiListenerInfo;

.field private static q:Z

.field private static r:Lcom/JoyFramework/common/LoginListener;

.field private static t:Lcom/JoyFramework/c/e;

.field private static u:Landroid/hardware/SensorManager;


# instance fields
.field private A:Lcom/JoyFramework/d/ao;

.field private B:Lcom/JoyFramework/common/LoginMessageInfo;

.field private C:Lcom/JoyFramework/remote/bean/w;

.field private D:Lcom/JoyFramework/common/IRealNameCallbackAdapter;

.field private E:Lcom/JoyFramework/common/IRealNameCallback;

.field private F:I

.field private G:I

.field private H:Z

.field private I:Z

.field private final J:Lcom/JoyFramework/d/at$a;

.field private K:Lcom/JoyFramework/common/IOnAdListener;

.field private L:Lcom/JoyFramework/d/ce;

.field private M:Lcom/JoyFramework/d/au;

.field private N:Lcom/JoyFramework/common/IPaymentCallback;

.field private O:Lcom/JoyFramework/d/bo;

.field public o:Landroid/app/Activity;

.field public p:Landroid/os/Handler;

.field private s:Lcom/JoyFramework/wight/k;

.field private v:Lcom/JoyFramework/common/ShakeSensorEventListener;

.field private w:Lcom/JoyFramework/common/InitListener;

.field private x:Z

.field private y:Lcom/JoyFramework/remote/bean/v;

.field private z:Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 97
    sput-boolean v0, Lcom/JoyFramework/c/e;->a:Z

    .line 112
    sput-boolean v0, Lcom/JoyFramework/c/e;->q:Z

    .line 119
    const/4 v0, 0x0

    sput-object v0, Lcom/JoyFramework/c/e;->t:Lcom/JoyFramework/c/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Lcom/JoyFramework/c/f;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/JoyFramework/c/f;-><init>(Lcom/JoyFramework/c/e;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/JoyFramework/c/e;->p:Landroid/os/Handler;

    .line 825
    iput-object v2, p0, Lcom/JoyFramework/c/e;->y:Lcom/JoyFramework/remote/bean/v;

    .line 1311
    iput-object v2, p0, Lcom/JoyFramework/c/e;->B:Lcom/JoyFramework/common/LoginMessageInfo;

    .line 1312
    iput-object v2, p0, Lcom/JoyFramework/c/e;->C:Lcom/JoyFramework/remote/bean/w;

    .line 1336
    iput-object v2, p0, Lcom/JoyFramework/c/e;->D:Lcom/JoyFramework/common/IRealNameCallbackAdapter;

    .line 1358
    iput-object v2, p0, Lcom/JoyFramework/c/e;->E:Lcom/JoyFramework/common/IRealNameCallback;

    .line 1458
    iput v4, p0, Lcom/JoyFramework/c/e;->F:I

    .line 1474
    iput v4, p0, Lcom/JoyFramework/c/e;->G:I

    .line 1505
    iput-boolean v3, p0, Lcom/JoyFramework/c/e;->H:Z

    .line 1545
    iput-boolean v3, p0, Lcom/JoyFramework/c/e;->I:Z

    .line 1615
    new-instance v0, Lcom/JoyFramework/c/p;

    invoke-direct {v0, p0}, Lcom/JoyFramework/c/p;-><init>(Lcom/JoyFramework/c/e;)V

    iput-object v0, p0, Lcom/JoyFramework/c/e;->J:Lcom/JoyFramework/d/at$a;

    .line 1732
    iput-object v2, p0, Lcom/JoyFramework/c/e;->K:Lcom/JoyFramework/common/IOnAdListener;

    .line 1748
    iput-object v2, p0, Lcom/JoyFramework/c/e;->L:Lcom/JoyFramework/d/ce;

    return-void
.end method

.method public static a()Lcom/JoyFramework/c/e;
    .registers 2

    .prologue
    .line 125
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_16

    .line 127
    :try_start_a
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "The JoyGameSDK \u5fc5\u987b\u5728\u4e3b\u7ebf\u7a0b\u8c03\u7528"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_12

    .line 128
    :catch_12
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 132
    :cond_16
    sget-object v0, Lcom/JoyFramework/c/e;->t:Lcom/JoyFramework/c/e;

    if-nez v0, :cond_29

    .line 133
    const-class v1, Lcom/JoyFramework/c/e;

    monitor-enter v1

    .line 134
    :try_start_1d
    sget-object v0, Lcom/JoyFramework/c/e;->t:Lcom/JoyFramework/c/e;

    if-nez v0, :cond_28

    .line 135
    new-instance v0, Lcom/JoyFramework/c/e;

    invoke-direct {v0}, Lcom/JoyFramework/c/e;-><init>()V

    sput-object v0, Lcom/JoyFramework/c/e;->t:Lcom/JoyFramework/c/e;

    .line 137
    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_2c

    .line 139
    :cond_29
    sget-object v0, Lcom/JoyFramework/c/e;->t:Lcom/JoyFramework/c/e;

    return-object v0

    .line 137
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method static synthetic a(Lcom/JoyFramework/c/e;Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/d/ce;
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/JoyFramework/c/e;->L:Lcom/JoyFramework/d/ce;

    return-object p1
.end method

.method static synthetic a(Lcom/JoyFramework/c/e;)V
    .registers 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/JoyFramework/c/e;->j()V

    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/c/e;Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/JoyFramework/c/e;->o(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/c/e;Landroid/app/Activity;Lcom/JoyFramework/common/LoginListener;)V
    .registers 3

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/JoyFramework/c/e;->d(Landroid/app/Activity;Lcom/JoyFramework/common/LoginListener;)V

    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/c/e;Lcom/JoyFramework/module/a/c;)V
    .registers 2

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/JoyFramework/c/e;->a(Lcom/JoyFramework/module/a/c;)V

    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/c/e;Lcom/JoyFramework/remote/bean/w;)V
    .registers 2

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/JoyFramework/c/e;->a(Lcom/JoyFramework/remote/bean/w;)V

    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/c/e;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/JoyFramework/c/e;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/c/e;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/JoyFramework/c/e;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lcom/JoyFramework/module/a/c;)V
    .registers 5

    .prologue
    .line 642
    iget-object v0, p0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    invoke-static {v0}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 644
    iget-object v0, p0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    invoke-static {v0}, Lcom/JoyFramework/d/ba;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 645
    iget-object v0, p0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 646
    iget-object v0, p0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    const-string v1, "android.permission.READ_PHONE_STATE"

    new-instance v2, Lcom/JoyFramework/c/y;

    invoke-direct {v2, p0, p1}, Lcom/JoyFramework/c/y;-><init>(Lcom/JoyFramework/c/e;Lcom/JoyFramework/module/a/c;)V

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/ba$b;)V

    .line 679
    :goto_26
    return-void

    .line 671
    :cond_27
    invoke-virtual {p1}, Lcom/JoyFramework/module/a/c;->a()V

    goto :goto_26

    .line 674
    :cond_2b
    invoke-virtual {p1}, Lcom/JoyFramework/module/a/c;->a()V

    goto :goto_26

    .line 677
    :cond_2f
    invoke-virtual {p1}, Lcom/JoyFramework/module/a/c;->a()V

    goto :goto_26
.end method

.method private a(Lcom/JoyFramework/remote/bean/w;)V
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1208
    if-eqz p1, :cond_ca

    .line 1210
    iget-object v0, p0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/JoyFramework/c/e;->a(Landroid/app/Activity;)V

    .line 1211
    iget-object v0, p0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/JoyFramework/c/e;->p(Landroid/app/Activity;)V

    .line 1213
    iput v5, p0, Lcom/JoyFramework/c/e;->F:I

    .line 1214
    const/4 v0, -0x1

    iput v0, p0, Lcom/JoyFramework/c/e;->G:I

    .line 1215
    iput-boolean v4, p0, Lcom/JoyFramework/c/e;->H:Z

    .line 1216
    iput-boolean v4, p0, Lcom/JoyFramework/c/e;->I:Z

    .line 1218
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->i()I

    move-result v0

    if-nez v0, :cond_cb

    .line 1219
    sput-boolean v5, Lcom/JoyFramework/a/a;->o:Z

    .line 1225
    :goto_1f
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->a()I

    move-result v0

    if-nez v0, :cond_cf

    .line 1226
    sput-boolean v5, Lcom/JoyFramework/a/a;->r:Z

    .line 1232
    :goto_27
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->h()I

    move-result v0

    if-nez v0, :cond_d3

    .line 1233
    sput-boolean v5, Lcom/JoyFramework/a/a;->s:Z

    .line 1234
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->j()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/JoyFramework/a/a;->D:Ljava/lang/String;

    .line 1240
    :goto_35
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->d()Ljava/lang/String;

    move-result-object v0

    .line 1241
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d7

    .line 1242
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/JoyFramework/user/UserManager;->saveUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    :goto_52
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->k()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/JoyFramework/a/a;->A:Ljava/lang/String;

    .line 1248
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/JoyFramework/a/a;->B:Ljava/lang/String;

    .line 1249
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/JoyFramework/a/a;->C:Ljava/lang/String;

    .line 1251
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->f()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/JoyFramework/a/a;->b:Ljava/lang/String;

    .line 1253
    invoke-static {}, Lcom/JoyFramework/module/point/a;->a()Lcom/JoyFramework/module/point/a;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/point/a;->a(Landroid/content/Context;)V

    .line 1255
    new-instance v0, Lcom/JoyFramework/common/LoginMessageInfo;

    invoke-direct {v0}, Lcom/JoyFramework/common/LoginMessageInfo;-><init>()V

    .line 1256
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/common/LoginMessageInfo;->setUserCode(Ljava/lang/String;)V

    .line 1257
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 1258
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/common/LoginMessageInfo;->setUserName(Ljava/lang/String;)V

    .line 1262
    :goto_90
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/common/LoginMessageInfo;->setLoginToken(Ljava/lang/String;)V

    .line 1263
    iput-object v0, p0, Lcom/JoyFramework/c/e;->B:Lcom/JoyFramework/common/LoginMessageInfo;

    .line 1264
    iput-object p1, p0, Lcom/JoyFramework/c/e;->C:Lcom/JoyFramework/remote/bean/w;

    .line 1266
    sput-boolean v5, Lcom/JoyFramework/c/e;->a:Z

    .line 1267
    sput-boolean v4, Lcom/JoyFramework/a/a;->m:Z

    .line 1270
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->n()I

    move-result v0

    .line 1271
    if-nez v0, :cond_f4

    .line 1272
    sput-boolean v5, Lcom/JoyFramework/a/a;->q:Z

    .line 1277
    :goto_a7
    sget-boolean v0, Lcom/JoyFramework/a/a;->q:Z

    if-eqz v0, :cond_10c

    .line 1278
    sget-boolean v0, Lcom/JoyFramework/a/a;->o:Z

    if-nez v0, :cond_104

    .line 1281
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f7

    .line 1282
    sput-boolean v4, Lcom/JoyFramework/a/a;->t:Z

    .line 1290
    :goto_bd
    iget-object v0, p0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    if-eqz v0, :cond_100

    .line 1291
    sget-boolean v0, Lcom/JoyFramework/a/a;->t:Z

    if-eqz v0, :cond_fa

    .line 1292
    sget-object v0, Lcom/JoyFramework/a/a;->U:Ljava/lang/String;

    invoke-direct {p0, v0, v5}, Lcom/JoyFramework/c/e;->a(Ljava/lang/String;Z)V

    .line 1309
    :cond_ca
    :goto_ca
    return-void

    .line 1221
    :cond_cb
    sput-boolean v4, Lcom/JoyFramework/a/a;->o:Z

    goto/16 :goto_1f

    .line 1228
    :cond_cf
    sput-boolean v4, Lcom/JoyFramework/a/a;->r:Z

    goto/16 :goto_27

    .line 1236
    :cond_d3
    sput-boolean v4, Lcom/JoyFramework/a/a;->s:Z

    goto/16 :goto_35

    .line 1244
    :cond_d7
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/JoyFramework/user/UserManager;->saveUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_52

    .line 1260
    :cond_ec
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/common/LoginMessageInfo;->setUserName(Ljava/lang/String;)V

    goto :goto_90

    .line 1274
    :cond_f4
    sput-boolean v4, Lcom/JoyFramework/a/a;->q:Z

    goto :goto_a7

    .line 1285
    :cond_f7
    sput-boolean v5, Lcom/JoyFramework/a/a;->t:Z

    goto :goto_bd

    .line 1294
    :cond_fa
    sget-object v0, Lcom/JoyFramework/a/a;->T:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcom/JoyFramework/c/e;->a(Ljava/lang/String;Z)V

    goto :goto_ca

    .line 1297
    :cond_100
    invoke-virtual {p0, v4, v5}, Lcom/JoyFramework/c/e;->a(ZI)V

    goto :goto_ca

    .line 1301
    :cond_104
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/w;->p()I

    move-result v0

    invoke-virtual {p0, v5, v0}, Lcom/JoyFramework/c/e;->a(ZI)V

    goto :goto_ca

    .line 1305
    :cond_10c
    invoke-virtual {p0, v5, v4}, Lcom/JoyFramework/c/e;->a(ZI)V

    goto :goto_ca
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 373
    const-string v0, "DeathVersionCode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 374
    const-string v0, "DeathVersionCode"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 376
    sput-object v0, Lcom/JoyFramework/a/a;->ah:Ljava/lang/String;

    .line 381
    :cond_18
    const-string v0, "Sha1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 383
    const-string v0, "Sha1Slat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 384
    const-string v0, "Sha1Slat"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 386
    sput-object v0, Lcom/JoyFramework/a/a;->ai:Ljava/lang/String;

    .line 389
    :cond_36
    const-string v0, "Sha1"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 390
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7a

    .line 391
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/JoyFramework/d/ar;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 392
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 393
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 395
    array-length v5, v4

    move v0, v2

    :goto_5e
    if-ge v0, v5, :cond_c2

    aget-object v6, v4, v0

    .line 396
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7b

    move v0, v1

    .line 401
    :goto_69
    if-eqz v0, :cond_7e

    .line 403
    sput-boolean v2, Lcom/JoyFramework/a/a;->ag:Z

    .line 404
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notFormal"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 423
    :cond_7a
    :goto_7a
    return-void

    .line 395
    :cond_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 406
    :cond_7e
    sput-boolean v1, Lcom/JoyFramework/a/a;->ag:Z

    .line 407
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "notFormal"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_7a

    .line 410
    :cond_8e
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 412
    sput-boolean v2, Lcom/JoyFramework/a/a;->ag:Z

    .line 413
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notFormal"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_7a

    .line 415
    :cond_a4
    sput-boolean v1, Lcom/JoyFramework/a/a;->ag:Z

    .line 416
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "notFormal"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_7a

    .line 421
    :cond_b4
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notFormal"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_7a

    :cond_c2
    move v0, v2

    goto :goto_69
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 1371
    if-eqz p2, :cond_13

    .line 1372
    iget-object v0, p0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    new-instance v2, Lcom/JoyFramework/c/k;

    invoke-direct {v2, p0}, Lcom/JoyFramework/c/k;-><init>(Lcom/JoyFramework/c/e;)V

    const-string v3, "\u786e\u5b9a"

    const-string v4, "\u53d6\u6d88"

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$c;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1402
    :goto_12
    return-void

    .line 1390
    :cond_13
    iget-object v0, p0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    new-instance v1, Lcom/JoyFramework/c/l;

    invoke-direct {v1, p0}, Lcom/JoyFramework/c/l;-><init>(Lcom/JoyFramework/c/e;)V

    const-string v2, "\u786e\u5b9a"

    invoke-static {v0, p1, v1, v2, v5}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$e;Ljava/lang/String;Z)V

    goto :goto_12
.end method

.method static synthetic a(Lcom/JoyFramework/c/e;Z)Z
    .registers 2

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/JoyFramework/c/e;->x:Z

    return p1
.end method

.method static synthetic b(Lcom/JoyFramework/c/e;)Lcom/JoyFramework/wight/k;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/JoyFramework/c/e;->s:Lcom/JoyFramework/wight/k;

    return-object v0
.end method

.method private b(Landroid/app/Activity;Lcom/JoyFramework/common/LoginListener;)V
    .registers 6

    .prologue
    .line 738
    :try_start_0
    iput-object p1, p0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    .line 739
    sput-object p2, Lcom/JoyFramework/c/e;->r:Lcom/JoyFramework/common/LoginListener;

    .line 742
    sget-boolean v0, Lcom/JoyFramework/c/e;->a:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/JoyFramework/c/e;->x:Z

    if-nez v0, :cond_1c

    .line 743
    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/JoyFramework/module/login/LoginActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 753
    :goto_13
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 754
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 758
    :goto_1b
    return-void

    .line 745
    :cond_1c
    invoke-static {}, Lcom/JoyFramework/d/bw;->a()Ljava/util/List;

    move-result-object v0

    .line 746
    if-eqz v0, :cond_3b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3b

    .line 747
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/JoyFramework/module/login/SwitchAccountActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 748
    const-string v1, "showPage"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    goto :goto_13

    .line 755
    :catch_36
    move-exception v0

    .line 756
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b

    .line 750
    :cond_3b
    :try_start_3b
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/JoyFramework/module/login/LoginActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_42} :catch_36

    goto :goto_13
.end method

.method static synthetic b(Lcom/JoyFramework/c/e;Landroid/app/Activity;Lcom/JoyFramework/common/LoginListener;)V
    .registers 3

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/JoyFramework/c/e;->b(Landroid/app/Activity;Lcom/JoyFramework/common/LoginListener;)V

    return-void
.end method

.method private b(Landroid/app/Activity;Lcom/JoyFramework/common/ExtraDataInfo;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 1047
    const/4 v0, 0x0

    .line 1048
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1049
    const-string v3, "\u73a9\u5bb6\u4fe1\u606f\u63a5\u53e3\u53c2\u6570\u7f3a\u5931:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1050
    invoke-virtual {p2}, Lcom/JoyFramework/common/ExtraDataInfo;->getUserCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1051
    const-string v0, "\u8bf7\u4f20\u5165\u7528\u6237\u7f16\u53f7(UserCode)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1052
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .line 1055
    :cond_21
    invoke-virtual {p2}, Lcom/JoyFramework/common/ExtraDataInfo;->getScene_Id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1056
    const-string v0, "\u8bf7\u4f20\u5165\u573a\u666fid(Scene_Id)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1058
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .line 1060
    :cond_36
    invoke-virtual {p2}, Lcom/JoyFramework/common/ExtraDataInfo;->getRoleId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 1061
    const-string v0, "\u8bf7\u4f20\u5165\u89d2\u8272id(RoleId)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1063
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .line 1065
    :cond_4b
    invoke-virtual {p2}, Lcom/JoyFramework/common/ExtraDataInfo;->getRoleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 1066
    const-string v0, "\u8bf7\u4f20\u5165\u89d2\u8272\u540d(RoleName)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1068
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .line 1070
    :cond_60
    invoke-virtual {p2}, Lcom/JoyFramework/common/ExtraDataInfo;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 1071
    const-string v0, "\u8bf7\u4f20\u5165\u533a\u670did(ServerId)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1073
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .line 1075
    :cond_75
    invoke-virtual {p2}, Lcom/JoyFramework/common/ExtraDataInfo;->getServerName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 1076
    const-string v0, "\u8bf7\u4f20\u5165\u533a\u670d\u540d\u79f0(ServerName)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1078
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .line 1080
    :cond_8a
    invoke-virtual {p2}, Lcom/JoyFramework/common/ExtraDataInfo;->getLevel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 1081
    const-string v0, "\u8bf7\u4f20\u5165\u89d2\u8272\u7b49\u7ea7(Level),\u65e0\u5219\u4f20\u5165\u9ed8\u8ba4\u503c 0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1083
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .line 1085
    :cond_9f
    invoke-virtual {p2}, Lcom/JoyFramework/common/ExtraDataInfo;->getVip()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 1086
    const-string v0, "\u8bf7\u4f20\u5165vip\u7b49\u7ea7(Vip),\u65e0\u5219\u4f20\u5165\u9ed8\u8ba4\u503c 0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1088
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .line 1090
    :cond_b4
    invoke-virtual {p2}, Lcom/JoyFramework/common/ExtraDataInfo;->getCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c9

    .line 1091
    const-string v0, "\u8bf7\u4f20\u5165\u5143\u5b9d\u4f59\u989d(Currency),\u65e0\u5219\u4f20\u5165\u9ed8\u8ba4\u503c 0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1093
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .line 1095
    :cond_c9
    invoke-virtual {p2}, Lcom/JoyFramework/common/ExtraDataInfo;->getBalance()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f9

    .line 1096
    const-string v0, "\u8bf7\u4f20\u5165\u6e38\u620f\u5e01\u4f59\u989d(Balance),\u65e0\u5219\u4f20\u5165\u9ed8\u8ba4\u503c 0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1098
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1100
    :goto_dd
    if-eqz v1, :cond_f8

    .line 1101
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f8

    .line 1102
    const-string v0, "\u8bf7\u8865\u5168\u53c2\u6570\u540e\u91cd\u8bd5"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1103
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "\u786e\u5b9a"

    invoke-static {p1, v0, v2, v3}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$e;Ljava/lang/String;)V

    .line 1106
    :cond_f8
    return v1

    :cond_f9
    move v1, v0

    goto :goto_dd
.end method

.method private b(Landroid/app/Activity;Lcom/JoyFramework/common/PaymentInfo;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 873
    const/4 v0, 0x0

    .line 874
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 875
    const-string v3, "\u5145\u503c\u63a5\u53e3\u53c2\u6570\u7f3a\u5931:\n "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 876
    invoke-virtual {p2}, Lcom/JoyFramework/common/PaymentInfo;->getUserCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 877
    const-string v0, "\u8bf7\u4f20\u5165\u7528\u6237\u7f16\u53f7(UserCode)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 879
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .line 881
    :cond_21
    invoke-virtual {p2}, Lcom/JoyFramework/common/PaymentInfo;->getRoleId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 882
    const-string v0, "\u8bf7\u4f20\u5165\u89d2\u8272id(RoleId)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 884
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .line 886
    :cond_36
    invoke-virtual {p2}, Lcom/JoyFramework/common/PaymentInfo;->getRoleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 887
    const-string v0, "\u8bf7\u4f20\u5165\u89d2\u8272\u540d(RoleName)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 889
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .line 891
    :cond_4b
    invoke-virtual {p2}, Lcom/JoyFramework/common/PaymentInfo;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 892
    const-string v0, "\u8bf7\u4f20\u5165\u533a\u670did(ServerId)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 894
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .line 896
    :cond_60
    invoke-virtual {p2}, Lcom/JoyFramework/common/PaymentInfo;->getServerName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 897
    const-string v0, "\u8bf7\u4f20\u5165\u533a\u670d\u540d\u79f0(ServerName)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 899
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .line 901
    :cond_75
    invoke-virtual {p2}, Lcom/JoyFramework/common/PaymentInfo;->getLevel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 902
    const-string v0, "\u8bf7\u4f20\u5165\u89d2\u8272\u7b49\u7ea7(Level),\u65e0\u5219\u4f20\u5165\u9ed8\u8ba4\u503c 0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 904
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .line 906
    :cond_8a
    invoke-virtual {p2}, Lcom/JoyFramework/common/PaymentInfo;->getVip()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 907
    const-string v0, "\u8bf7\u4f20\u5165vip\u7b49\u7ea7(Vip),\u65e0\u5219\u4f20\u5165\u9ed8\u8ba4\u503c 0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 909
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .line 911
    :cond_9f
    invoke-virtual {p2}, Lcom/JoyFramework/common/PaymentInfo;->getCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 912
    const-string v0, "\u8bf7\u4f20\u5165\u5143\u5b9d\u4f59\u989d(Currency),\u65e0\u5219\u4f20\u5165\u9ed8\u8ba4\u503c 0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 914
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .line 916
    :cond_b4
    invoke-virtual {p2}, Lcom/JoyFramework/common/PaymentInfo;->getBalance()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e4

    .line 917
    const-string v0, "\u8bf7\u4f20\u5165\u6e38\u620f\u5e01\u4f59\u989d(Balance),\u65e0\u5219\u4f20\u5165\u9ed8\u8ba4\u503c 0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 919
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 921
    :goto_c8
    if-eqz v1, :cond_e3

    .line 922
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e3

    .line 923
    const-string v0, "\u8bf7\u8865\u5168\u53c2\u6570\u540e\u91cd\u8bd5"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 924
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "\u786e\u5b9a"

    invoke-static {p1, v0, v2, v3}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$e;Ljava/lang/String;)V

    .line 927
    :cond_e3
    return v1

    :cond_e4
    move v1, v0

    goto :goto_c8
.end method

.method static synthetic b(Lcom/JoyFramework/c/e;Z)Z
    .registers 2

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/JoyFramework/c/e;->H:Z

    return p1
.end method

.method static synthetic c(Lcom/JoyFramework/c/e;)Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/JoyFramework/c/e;->z:Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;

    return-object v0
.end method

.method private c(Landroid/app/Activity;Lcom/JoyFramework/common/LoginListener;)V
    .registers 6

    .prologue
    .line 767
    iget-object v0, p0, Lcom/JoyFramework/c/e;->y:Lcom/JoyFramework/remote/bean/v;

    if-nez v0, :cond_8

    .line 768
    invoke-direct {p0, p1, p2}, Lcom/JoyFramework/c/e;->b(Landroid/app/Activity;Lcom/JoyFramework/common/LoginListener;)V

    .line 795
    :goto_7
    return-void

    .line 771
    :cond_8
    iget-object v0, p0, Lcom/JoyFramework/c/e;->y:Lcom/JoyFramework/remote/bean/v;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/v;->f()Lcom/JoyFramework/remote/bean/as;

    move-result-object v0

    .line 772
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/as;->a()Ljava/lang/String;

    move-result-object v1

    .line 773
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 774
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 776
    invoke-direct {p0, p1, p2}, Lcom/JoyFramework/c/e;->d(Landroid/app/Activity;Lcom/JoyFramework/common/LoginListener;)V

    goto :goto_7

    .line 779
    :cond_24
    new-instance v1, Lcom/JoyFramework/module/a/n;

    invoke-direct {v1, p1}, Lcom/JoyFramework/module/a/n;-><init>(Landroid/content/Context;)V

    .line 780
    new-instance v2, Lcom/JoyFramework/c/aa;

    invoke-direct {v2, p0, p1, p2}, Lcom/JoyFramework/c/aa;-><init>(Lcom/JoyFramework/c/e;Landroid/app/Activity;Lcom/JoyFramework/common/LoginListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/JoyFramework/module/a/n;->a(Lcom/JoyFramework/remote/bean/as;Lcom/JoyFramework/module/a/n$a;)V

    goto :goto_7

    .line 793
    :cond_32
    invoke-direct {p0, p1, p2}, Lcom/JoyFramework/c/e;->d(Landroid/app/Activity;Lcom/JoyFramework/common/LoginListener;)V

    goto :goto_7
.end method

.method static synthetic c(Lcom/JoyFramework/c/e;Z)Z
    .registers 2

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/JoyFramework/c/e;->I:Z

    return p1
.end method

.method static synthetic d(Lcom/JoyFramework/c/e;)Lcom/JoyFramework/common/IOnAdListener;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/JoyFramework/c/e;->K:Lcom/JoyFramework/common/IOnAdListener;

    return-object v0
.end method

.method private d(Landroid/app/Activity;Lcom/JoyFramework/common/LoginListener;)V
    .registers 6

    .prologue
    .line 805
    iget-object v0, p0, Lcom/JoyFramework/c/e;->y:Lcom/JoyFramework/remote/bean/v;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/v;->a()Lcom/JoyFramework/remote/bean/z;

    move-result-object v0

    .line 806
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/z;->a()I

    move-result v1

    if-nez v1, :cond_20

    .line 808
    new-instance v1, Lcom/JoyFramework/module/a/k;

    invoke-direct {v1, p1}, Lcom/JoyFramework/module/a/k;-><init>(Landroid/content/Context;)V

    .line 809
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/z;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/JoyFramework/c/ab;

    invoke-direct {v2, p0, p1, p2}, Lcom/JoyFramework/c/ab;-><init>(Lcom/JoyFramework/c/e;Landroid/app/Activity;Lcom/JoyFramework/common/LoginListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/JoyFramework/module/a/k;->a(Ljava/lang/String;Lcom/JoyFramework/module/a/k$a;)V

    .line 823
    :goto_1f
    return-void

    .line 821
    :cond_20
    invoke-direct {p0, p1, p2}, Lcom/JoyFramework/c/e;->b(Landroid/app/Activity;Lcom/JoyFramework/common/LoginListener;)V

    goto :goto_1f
.end method

.method private d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1198
    return-void
.end method

.method private e(I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 1557
    sget v0, Lcom/JoyFramework/a/a;->p:I

    if-lez v0, :cond_2d

    sget-boolean v0, Lcom/JoyFramework/a/a;->q:Z

    if-eqz v0, :cond_2d

    .line 1558
    const-string v0, "polling ...."

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callValidMonitorPolling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    iget-boolean v0, p0, Lcom/JoyFramework/c/e;->H:Z

    if-eqz v0, :cond_2a

    .line 1561
    invoke-static {}, Lcom/JoyFramework/d/b/a;->a()V

    .line 1563
    iput-boolean v3, p0, Lcom/JoyFramework/c/e;->H:Z

    .line 1565
    :cond_2a
    packed-switch p1, :pswitch_data_46

    .line 1586
    :cond_2d
    :goto_2d
    return-void

    .line 1568
    :pswitch_2e
    iget-boolean v0, p0, Lcom/JoyFramework/c/e;->I:Z

    if-eqz v0, :cond_2d

    .line 1569
    invoke-static {}, Lcom/JoyFramework/d/b/a;->a()V

    .line 1571
    iput-boolean v3, p0, Lcom/JoyFramework/c/e;->I:Z

    goto :goto_2d

    .line 1575
    :pswitch_38
    iget-boolean v0, p0, Lcom/JoyFramework/c/e;->I:Z

    if-nez v0, :cond_2d

    .line 1577
    sget v0, Lcom/JoyFramework/a/a;->p:I

    invoke-static {v0}, Lcom/JoyFramework/d/b/a;->a(I)V

    .line 1579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/c/e;->I:Z

    goto :goto_2d

    .line 1565
    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_38
    .end packed-switch
.end method

.method static synthetic e(Lcom/JoyFramework/c/e;)V
    .registers 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/JoyFramework/c/e;->l()V

    return-void
.end method

.method static synthetic f(Lcom/JoyFramework/c/e;)I
    .registers 2

    .prologue
    .line 95
    iget v0, p0, Lcom/JoyFramework/c/e;->F:I

    return v0
.end method

.method static synthetic g(Lcom/JoyFramework/c/e;)Lcom/JoyFramework/common/IPaymentCallback;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/JoyFramework/c/e;->N:Lcom/JoyFramework/common/IPaymentCallback;

    return-object v0
.end method

.method static synthetic i()Lcom/JoyFramework/common/LoginListener;
    .registers 1

    .prologue
    .line 95
    sget-object v0, Lcom/JoyFramework/c/e;->r:Lcom/JoyFramework/common/LoginListener;

    return-object v0
.end method

.method private j()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 258
    iget-boolean v0, p0, Lcom/JoyFramework/c/e;->I:Z

    if-eqz v0, :cond_a

    .line 259
    iput-boolean v1, p0, Lcom/JoyFramework/c/e;->I:Z

    .line 260
    invoke-static {}, Lcom/JoyFramework/d/b/a;->a()V

    .line 262
    :cond_a
    iget-boolean v0, p0, Lcom/JoyFramework/c/e;->H:Z

    if-eqz v0, :cond_13

    .line 263
    iput-boolean v1, p0, Lcom/JoyFramework/c/e;->H:Z

    .line 264
    invoke-static {}, Lcom/JoyFramework/d/b/a;->a()V

    .line 266
    :cond_13
    return-void
.end method

.method private k()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 562
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notFormal"

    invoke-static {v0, v1, v4}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 564
    sget-boolean v1, Lcom/JoyFramework/a/a;->ag:Z

    if-nez v1, :cond_11

    if-eqz v0, :cond_1f

    .line 565
    :cond_11
    const-string v0, "\u68c0\u6d4b\u5230\u6e38\u620f\u88ab\u975e\u6cd5\u76d7\u7528\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d\u6b63\u7248"

    .line 566
    iget-object v1, p0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    new-instance v2, Lcom/JoyFramework/c/w;

    invoke-direct {v2, p0}, Lcom/JoyFramework/c/w;-><init>(Lcom/JoyFramework/c/e;)V

    const-string v3, "\u786e\u5b9a"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$e;Ljava/lang/String;Z)V

    .line 574
    :cond_1f
    return-void
.end method

.method private l()V
    .registers 2

    .prologue
    .line 577
    invoke-static {}, Lcom/JoyFramework/d/a;->a()V

    .line 578
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 579
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 580
    return-void
.end method

.method private m()V
    .registers 3

    .prologue
    .line 1516
    sget v0, Lcom/JoyFramework/a/a;->p:I

    if-lez v0, :cond_1f

    sget-boolean v0, Lcom/JoyFramework/a/a;->q:Z

    if-eqz v0, :cond_1f

    sget-boolean v0, Lcom/JoyFramework/a/a;->t:Z

    if-eqz v0, :cond_1f

    .line 1517
    iget-boolean v0, p0, Lcom/JoyFramework/c/e;->H:Z

    if-nez v0, :cond_1f

    .line 1518
    const-string v0, "polling ...."

    const-string v1, "callVisitorPolling "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    sget v0, Lcom/JoyFramework/a/a;->p:I

    invoke-static {v0}, Lcom/JoyFramework/d/b/a;->a(I)V

    .line 1521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/c/e;->H:Z

    .line 1524
    :cond_1f
    return-void
.end method

.method private o(Landroid/app/Activity;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 274
    const-string v0, "TapTapAppId"

    .line 275
    const-string v0, "TapTapLocal"

    .line 276
    const-string v0, "TapTapSite"

    .line 277
    const-string v0, "TapTapUpdateVersionCode"

    .line 278
    const-string v0, "TapTapUpdateWebsite"

    .line 279
    const-string v0, "TopOnDebug"

    .line 280
    const-string v0, "IndeConfig"

    .line 281
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "TapTapAppId"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "TapTapLocal"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "TapTapSite"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "TapTapUpdateVersionCode"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "TapTapUpdateWebsite"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "TopOnDebug"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "IndeConfig"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/JoyFramework/remote/a/a;->a(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/JoyFramework/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/JoyFramework/a/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/JoyFramework/remote/b/d/f;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-static {}, Lcom/JoyFramework/remote/b/d/b;->a()Lcom/JoyFramework/remote/b/d/b;

    move-result-object v1

    new-instance v2, Lcom/JoyFramework/remote/b/c/b;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/JoyFramework/c/s;

    invoke-direct {v5, p0, p1}, Lcom/JoyFramework/c/s;-><init>(Lcom/JoyFramework/c/e;Landroid/app/Activity;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/JoyFramework/remote/b/c/b;-><init>(Ljava/lang/Boolean;Landroid/content/Context;Lcom/JoyFramework/remote/b/c/c;)V

    invoke-virtual {v1, v0, v2}, Lcom/JoyFramework/remote/b/d/b;->l(Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    .line 361
    new-instance v1, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v1}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 362
    return-void
.end method

.method private p(Landroid/app/Activity;)V
    .registers 8

    .prologue
    .line 515
    if-nez p1, :cond_3

    .line 559
    :goto_2
    return-void

    .line 518
    :cond_3
    sget-object v0, Lcom/JoyFramework/a/a;->ah:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 519
    const-string v0, "checkDeathVersionSha1"

    const-string v1, " have no update now !!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-direct {p0}, Lcom/JoyFramework/c/e;->k()V

    goto :goto_2

    .line 523
    :cond_16
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/ar;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 524
    sget-object v1, Lcom/JoyFramework/a/a;->ah:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    .line 526
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_3f

    .line 527
    const-string v0, "checkDeathVersionSha1"

    const-string v1, " thia app is lasted version !!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-direct {p0}, Lcom/JoyFramework/c/e;->k()V

    goto :goto_2

    .line 531
    :cond_3f
    const-string v1, "\u8bf7\u66f4\u65b0\u81f3\u5b98\u65b9\u6700\u65b0\u7248\u672c"

    .line 532
    new-instance v2, Lcom/JoyFramework/c/v;

    invoke-direct {v2, p0, p1}, Lcom/JoyFramework/c/v;-><init>(Lcom/JoyFramework/c/e;Landroid/app/Activity;)V

    const-string v3, "\u786e\u5b9a"

    const-string v4, "\u53d6\u6d88"

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/JoyFramework/d/e;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$c;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 1175
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1176
    const-string v0, ""

    .line 1178
    :goto_8
    return-object v0

    :cond_9
    invoke-static {p1, p2}, Lcom/JoyFramework/d/ar;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public a(I)V
    .registers 4

    .prologue
    .line 583
    iget-object v0, p0, Lcom/JoyFramework/c/e;->p:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 584
    iput p1, v0, Landroid/os/Message;->what:I

    .line 585
    iget-object v1, p0, Lcom/JoyFramework/c/e;->p:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 586
    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .registers 5

    .prologue
    .line 589
    iget-object v0, p0, Lcom/JoyFramework/c/e;->p:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 590
    iput p1, v0, Landroid/os/Message;->what:I

    .line 591
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 592
    iget-object v1, p0, Lcom/JoyFramework/c/e;->p:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 593
    return-void
.end method

.method public a(ILjava/lang/Object;I)V
    .registers 8

    .prologue
    .line 596
    iget-object v0, p0, Lcom/JoyFramework/c/e;->p:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 597
    iput p1, v0, Landroid/os/Message;->what:I

    .line 598
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 599
    iget-object v1, p0, Lcom/JoyFramework/c/e;->p:Landroid/os/Handler;

    int-to-long v2, p3

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 600
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 432
    if-nez p1, :cond_4

    .line 506
    :goto_3
    return-void

    .line 435
    :cond_4
    sget-object v0, Lcom/JoyFramework/a/a;->ad:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 436
    const-string v0, "checkAppUpdate"

    const-string v1, " have no update now !!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 439
    :cond_14
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/ar;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 440
    sget-object v1, Lcom/JoyFramework/a/a;->ad:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    .line 441
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_3a

    .line 442
    const-string v0, "checkAppUpdate"

    const-string v1, " thia app is lasted version !!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 447
    :cond_3a
    :try_start_3a
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.taptap"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_48
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3a .. :try_end_48} :catch_5c

    move-result-object v0

    .line 448
    if-eqz v0, :cond_67

    .line 449
    const/4 v0, 0x1

    .line 457
    :goto_4c
    const-string v1, "\u5168\u65b0\u7248\u672c\u5df2\u53d1\u5e03\uff0c\u8bf7\u66f4\u65b0\u540e\u8fdb\u5165\u6e38\u620f"

    .line 458
    new-instance v2, Lcom/JoyFramework/c/t;

    invoke-direct {v2, p0, v0, p1}, Lcom/JoyFramework/c/t;-><init>(Lcom/JoyFramework/c/e;ZLandroid/app/Activity;)V

    const-string v3, "\u786e\u5b9a"

    const-string v4, "\u53d6\u6d88"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/JoyFramework/d/e;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$c;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 451
    :catch_5c
    move-exception v0

    .line 452
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 453
    const-string v0, "joy-TapTap"

    const-string v1, "\u624b\u673a\u68c0\u6d4b\u6ca1\u6709TapTap\u5e94\u7528\uff0c\u65e0\u5f71\u54cd\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    move v0, v5

    goto :goto_4c
.end method

.method public a(Landroid/app/Activity;IILandroid/content/Intent;)V
    .registers 6

    .prologue
    .line 1709
    :try_start_0
    iget-object v0, p0, Lcom/JoyFramework/c/e;->O:Lcom/JoyFramework/d/bo;

    if-nez v0, :cond_b

    .line 1710
    new-instance v0, Lcom/JoyFramework/d/bo;

    invoke-direct {v0}, Lcom/JoyFramework/d/bo;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/c/e;->O:Lcom/JoyFramework/d/bo;

    .line 1712
    :cond_b
    iget-object v0, p0, Lcom/JoyFramework/c/e;->O:Lcom/JoyFramework/d/bo;

    invoke-virtual {v0, p1, p2}, Lcom/JoyFramework/d/bo;->a(Landroid/app/Activity;I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 1717
    :goto_10
    return-void

    .line 1713
    :catch_11
    move-exception v0

    .line 1714
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method

.method public a(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .registers 5

    .prologue
    .line 1861
    invoke-static {p1, p2, p3, p4}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    .line 1862
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/JoyFramework/common/ExitListener;)V
    .registers 6

    .prologue
    .line 936
    sget-boolean v0, Lcom/JoyFramework/d/e;->a:Z

    if-nez v0, :cond_b

    .line 937
    invoke-static {}, Lcom/JoyFramework/module/point/a;->a()Lcom/JoyFramework/module/point/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/module/point/a;->c()V

    .line 939
    :cond_b
    new-instance v0, Lcom/JoyFramework/wight/k;

    const-string v1, "JoyGame_Dialog_theme"

    const-string v2, "style"

    invoke-static {p1, v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/JoyFramework/c/g;

    invoke-direct {v2, p0, p1, p2}, Lcom/JoyFramework/c/g;-><init>(Lcom/JoyFramework/c/e;Landroid/app/Activity;Lcom/JoyFramework/common/ExitListener;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/JoyFramework/wight/k;-><init>(Landroid/content/Context;ILcom/JoyFramework/wight/k$a;)V

    iput-object v0, p0, Lcom/JoyFramework/c/e;->s:Lcom/JoyFramework/wight/k;

    .line 969
    iget-object v0, p0, Lcom/JoyFramework/c/e;->s:Lcom/JoyFramework/wight/k;

    new-instance v1, Lcom/JoyFramework/c/h;

    invoke-direct {v1, p0}, Lcom/JoyFramework/c/h;-><init>(Lcom/JoyFramework/c/e;)V

    invoke-virtual {v0, v1}, Lcom/JoyFramework/wight/k;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 979
    if-eqz p1, :cond_36

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_36

    .line 980
    iget-object v0, p0, Lcom/JoyFramework/c/e;->s:Lcom/JoyFramework/wight/k;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/k;->show()V

    .line 983
    :cond_36
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/JoyFramework/common/ExtraDataInfo;)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 999
    if-nez p1, :cond_4

    .line 1037
    :cond_3
    :goto_3
    return-void

    .line 1001
    :cond_4
    if-nez p2, :cond_e

    .line 1002
    const-string v1, "\u73a9\u5bb6\u4fe1\u606f\u63a5\u53e3 ExtraDataInfo \u5bf9\u8c61\u4e0d\u80fd\u4e3anull "

    new-array v0, v0, [Z

    invoke-static {p1, v1, v0}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_3

    .line 1005
    :cond_e
    sget-boolean v1, Lcom/JoyFramework/c/e;->a:Z

    if-eqz v1, :cond_3

    .line 1009
    invoke-virtual {p2}, Lcom/JoyFramework/common/ExtraDataInfo;->getScene_Id()Ljava/lang/String;

    move-result-object v1

    .line 1010
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1011
    const-string v0, "\u73a9\u5bb6\u4fe1\u606f\u63a5\u53e3\u672a\u4f20\u5165 scene_id\uff0c\u8bf7\u786e\u4fdd\u4f20\u5165\u6b63\u786e\u7684\u573a\u666f\u3002"

    const/4 v1, 0x0

    const-string v2, "\u786e\u5b9a"

    invoke-static {p1, v0, v1, v2}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$e;Ljava/lang/String;)V

    goto :goto_3

    .line 1015
    :cond_25
    invoke-virtual {p2}, Lcom/JoyFramework/common/ExtraDataInfo;->getScene_Id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "enterServer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 1016
    invoke-virtual {p2}, Lcom/JoyFramework/common/ExtraDataInfo;->getScene_Id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "createRole"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 1017
    invoke-virtual {p2}, Lcom/JoyFramework/common/ExtraDataInfo;->getScene_Id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "levelUp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    :cond_49
    const/4 v0, 0x1

    .line 1018
    :cond_4a
    if-eqz v0, :cond_52

    invoke-direct {p0, p1, p2}, Lcom/JoyFramework/c/e;->b(Landroid/app/Activity;Lcom/JoyFramework/common/ExtraDataInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1022
    :cond_52
    invoke-virtual {p2}, Lcom/JoyFramework/common/ExtraDataInfo;->getPower()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1023
    const-string v0, "0"

    invoke-virtual {p2, v0}, Lcom/JoyFramework/common/ExtraDataInfo;->setPower(Ljava/lang/String;)V

    .line 1025
    :cond_61
    new-instance v0, Lcom/JoyFramework/module/a/a;

    invoke-direct {v0}, Lcom/JoyFramework/module/a/a;-><init>()V

    .line 1026
    invoke-virtual {v0, p1, p2}, Lcom/JoyFramework/module/a/a;->a(Landroid/content/Context;Lcom/JoyFramework/common/ExtraDataInfo;)V

    .line 1027
    invoke-virtual {p2}, Lcom/JoyFramework/common/ExtraDataInfo;->getScene_Id()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enterServer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1028
    sget v0, Lcom/JoyFramework/a/a;->G:I

    if-lez v0, :cond_3

    .line 1029
    invoke-static {}, Lcom/JoyFramework/user/OnLineUser;->getInstance()Lcom/JoyFramework/user/OnLineUser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/JoyFramework/user/OnLineUser;->setContext(Landroid/content/Context;)V

    .line 1031
    invoke-static {}, Lcom/JoyFramework/user/OnLineUser;->getInstance()Lcom/JoyFramework/user/OnLineUser;

    move-result-object v0

    invoke-virtual {p2}, Lcom/JoyFramework/common/ExtraDataInfo;->getServerId()Ljava/lang/String;

    move-result-object v1

    .line 1032
    invoke-virtual {p2}, Lcom/JoyFramework/common/ExtraDataInfo;->getServerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/JoyFramework/common/ExtraDataInfo;->getRoleId()Ljava/lang/String;

    move-result-object v3

    .line 1033
    invoke-virtual {p2}, Lcom/JoyFramework/common/ExtraDataInfo;->getRoleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/JoyFramework/user/User;->getUserName()Ljava/lang/String;

    move-result-object v5

    .line 1031
    invoke-virtual/range {v0 .. v5}, Lcom/JoyFramework/user/OnLineUser;->saveOnLineRoleInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public a(Landroid/app/Activity;Lcom/JoyFramework/common/IOnAdListener;)V
    .registers 5

    .prologue
    .line 1741
    iput-object p2, p0, Lcom/JoyFramework/c/e;->K:Lcom/JoyFramework/common/IOnAdListener;

    .line 1742
    iget-object v0, p0, Lcom/JoyFramework/c/e;->L:Lcom/JoyFramework/d/ce;

    if-eqz v0, :cond_d

    .line 1743
    iget-object v0, p0, Lcom/JoyFramework/c/e;->L:Lcom/JoyFramework/d/ce;

    iget-object v1, p0, Lcom/JoyFramework/c/e;->K:Lcom/JoyFramework/common/IOnAdListener;

    invoke-virtual {v0, v1}, Lcom/JoyFramework/d/ce;->a(Lcom/JoyFramework/common/IOnAdListener;)V

    .line 1745
    :cond_d
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/JoyFramework/common/IRealNameCallback;)V
    .registers 3

    .prologue
    .line 1361
    iput-object p2, p0, Lcom/JoyFramework/c/e;->E:Lcom/JoyFramework/common/IRealNameCallback;

    .line 1362
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/JoyFramework/common/IRealNameCallbackAdapter;)V
    .registers 6

    .prologue
    .line 1339
    iput-object p2, p0, Lcom/JoyFramework/c/e;->D:Lcom/JoyFramework/common/IRealNameCallbackAdapter;

    .line 1340
    sget-boolean v0, Lcom/JoyFramework/a/a;->o:Z

    if-nez v0, :cond_2e

    .line 1341
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1342
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1344
    const-string v1, "showingType"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1345
    sget-boolean v1, Lcom/JoyFramework/a/a;->q:Z

    if-eqz v1, :cond_27

    .line 1346
    const-string v1, "notAllowClose"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1350
    :goto_23
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1356
    :cond_26
    :goto_26
    return-void

    .line 1348
    :cond_27
    const-string v1, "notAllowClose"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_23

    .line 1352
    :cond_2e
    iget-object v0, p0, Lcom/JoyFramework/c/e;->D:Lcom/JoyFramework/common/IRealNameCallbackAdapter;

    if-eqz v0, :cond_26

    .line 1353
    iget-object v0, p0, Lcom/JoyFramework/c/e;->D:Lcom/JoyFramework/common/IRealNameCallbackAdapter;

    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/JoyFramework/c/e;->G:I

    invoke-virtual {v0, v1, v2}, Lcom/JoyFramework/common/IRealNameCallbackAdapter;->realName(Ljava/lang/String;I)V

    goto :goto_26
.end method

.method public a(Landroid/app/Activity;Lcom/JoyFramework/common/IShareCallback;)V
    .registers 4

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/JoyFramework/c/e;->O:Lcom/JoyFramework/d/bo;

    if-nez v0, :cond_b

    .line 1834
    new-instance v0, Lcom/JoyFramework/d/bo;

    invoke-direct {v0}, Lcom/JoyFramework/d/bo;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/c/e;->O:Lcom/JoyFramework/d/bo;

    .line 1836
    :cond_b
    iget-object v0, p0, Lcom/JoyFramework/c/e;->O:Lcom/JoyFramework/d/bo;

    invoke-virtual {v0, p1, p2}, Lcom/JoyFramework/d/bo;->a(Landroid/app/Activity;Lcom/JoyFramework/common/IShareCallback;)V

    .line 1838
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/JoyFramework/common/LoginListener;)V
    .registers 3

    .prologue
    .line 727
    invoke-direct {p0, p1, p2}, Lcom/JoyFramework/c/e;->c(Landroid/app/Activity;Lcom/JoyFramework/common/LoginListener;)V

    .line 728
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/JoyFramework/common/PaymentInfo;)V
    .registers 5

    .prologue
    .line 851
    iput-object p1, p0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    .line 852
    if-nez p2, :cond_d

    .line 853
    const-string v0, "\u5145\u503c\u63a5\u53e3 PaymentInfo \u5bf9\u8c61\u4e0d\u80fd\u4e3anull "

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-static {p1, v0, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 863
    :cond_c
    :goto_c
    return-void

    .line 856
    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/JoyFramework/c/e;->b(Landroid/app/Activity;Lcom/JoyFramework/common/PaymentInfo;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 860
    new-instance v0, Lcom/JoyFramework/module/b/a;

    invoke-direct {v0, p1}, Lcom/JoyFramework/module/b/a;-><init>(Landroid/content/Context;)V

    .line 861
    invoke-virtual {v0, p1, p2}, Lcom/JoyFramework/module/b/a;->a(Landroid/content/Context;Lcom/JoyFramework/common/PaymentInfo;)V

    goto :goto_c
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/common/IOnAdListener$Ad_Type;)V
    .registers 8

    .prologue
    const/4 v3, 0x1

    .line 1757
    iget-object v0, p0, Lcom/JoyFramework/c/e;->L:Lcom/JoyFramework/d/ce;

    if-nez v0, :cond_1b

    .line 1758
    iget-object v0, p0, Lcom/JoyFramework/c/e;->K:Lcom/JoyFramework/common/IOnAdListener;

    if-nez v0, :cond_12

    .line 1759
    const-string v0, "\u8fd8\u672a\u8c03\u7528\u5e7f\u544a\u521d\u59cb\u5316\uff0c\u8bf7\u91cd\u542f\u6e38\u620f\u540e\u518d\u8bd5"

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-static {p1, v0, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 1785
    :goto_11
    :pswitch_11
    return-void

    .line 1762
    :cond_12
    new-instance v0, Lcom/JoyFramework/d/ce;

    iget-object v1, p0, Lcom/JoyFramework/c/e;->K:Lcom/JoyFramework/common/IOnAdListener;

    invoke-direct {v0, p1, v1}, Lcom/JoyFramework/d/ce;-><init>(Landroid/app/Activity;Lcom/JoyFramework/common/IOnAdListener;)V

    iput-object v0, p0, Lcom/JoyFramework/c/e;->L:Lcom/JoyFramework/d/ce;

    .line 1766
    :cond_1b
    sget-object v0, Lcom/JoyFramework/c/r;->a:[I

    invoke-virtual {p3}, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5a

    goto :goto_11

    .line 1771
    :pswitch_27
    iget-object v0, p0, Lcom/JoyFramework/c/e;->L:Lcom/JoyFramework/d/ce;

    invoke-virtual {v0, p1, p2}, Lcom/JoyFramework/d/ce;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1772
    invoke-static {}, Lcom/JoyFramework/d/bf;->a()Lcom/JoyFramework/d/bf;

    move-result-object v0

    const-string v1, "Banner\u5e7f\u544a"

    const-string v2, "\u70b9\u51fb\u64ad\u653eBanner\u5e7f\u544a"

    invoke-virtual {v0, p2, v1, v3, v2}, Lcom/JoyFramework/d/bf;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_11

    .line 1775
    :pswitch_38
    iget-object v0, p0, Lcom/JoyFramework/c/e;->L:Lcom/JoyFramework/d/ce;

    invoke-virtual {v0, p1, p2}, Lcom/JoyFramework/d/ce;->c(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1776
    invoke-static {}, Lcom/JoyFramework/d/bf;->a()Lcom/JoyFramework/d/bf;

    move-result-object v0

    const-string v1, "\u63d2\u5c4f\u5e7f\u544a"

    const-string v2, "\u70b9\u51fb\u64ad\u653e\u63d2\u5c4f\u5e7f\u544a"

    invoke-virtual {v0, p2, v1, v3, v2}, Lcom/JoyFramework/d/bf;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_11

    .line 1779
    :pswitch_49
    iget-object v0, p0, Lcom/JoyFramework/c/e;->L:Lcom/JoyFramework/d/ce;

    invoke-virtual {v0, p1, p2}, Lcom/JoyFramework/d/ce;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1780
    invoke-static {}, Lcom/JoyFramework/d/bf;->a()Lcom/JoyFramework/d/bf;

    move-result-object v0

    const-string v1, "\u6fc0\u52b1\u5e7f\u544a"

    const-string v2, "\u70b9\u51fb\u64ad\u653e\u6fc0\u52b1\u5e7f\u544a"

    invoke-virtual {v0, p2, v1, v3, v2}, Lcom/JoyFramework/d/bf;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_11

    .line 1766
    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_11
        :pswitch_27
        :pswitch_38
        :pswitch_49
    .end packed-switch
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 1888
    new-instance v0, Lcom/taptap/sdk/TapTapSdk$Config;

    invoke-direct {v0}, Lcom/taptap/sdk/TapTapSdk$Config;-><init>()V

    .line 1889
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->isPortraitOrientation()Z

    move-result v1

    .line 1890
    if-eqz v1, :cond_4e

    .line 1891
    sget v1, Lcom/taptap/sdk/TapTapSdk;->ORIENTATION_PORTRAIT:I

    iput v1, v0, Lcom/taptap/sdk/TapTapSdk$Config;->orientation:I

    .line 1897
    :goto_f
    sget-object v1, Lcom/JoyFramework/a/a;->ab:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 1898
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 1899
    const-string v1, "China"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 1900
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    iput-object v1, v0, Lcom/taptap/sdk/TapTapSdk$Config;->locale:Ljava/util/Locale;

    .line 1919
    :goto_29
    sget-object v1, Lcom/JoyFramework/a/a;->ac:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 1920
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 1921
    const-string v1, "io"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 1922
    const-string v1, "io"

    iput-object v1, v0, Lcom/taptap/sdk/TapTapSdk$Config;->site:Ljava/lang/String;

    .line 1936
    :cond_43
    :goto_43
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/taptap/sdk/TapTapSdk$Config;->uri:Ljava/lang/String;

    .line 1937
    sget-object v1, Lcom/JoyFramework/a/a;->aa:Ljava/lang/String;

    iput-object v1, v0, Lcom/taptap/sdk/TapTapSdk$Config;->appid:Ljava/lang/String;

    .line 1938
    invoke-static {p1, v0}, Lcom/taptap/sdk/TapTapSdk;->openTapTapForum(Landroid/app/Activity;Lcom/taptap/sdk/TapTapSdk$Config;)V

    .line 1939
    return-void

    .line 1893
    :cond_4e
    sget v1, Lcom/taptap/sdk/TapTapSdk;->ORIENTATION_LANDSCAPE:I

    iput v1, v0, Lcom/taptap/sdk/TapTapSdk$Config;->orientation:I

    goto :goto_f

    .line 1901
    :cond_53
    const-string v1, "US"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 1902
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iput-object v1, v0, Lcom/taptap/sdk/TapTapSdk$Config;->locale:Ljava/util/Locale;

    goto :goto_29

    .line 1904
    :cond_60
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    iput-object v1, v0, Lcom/taptap/sdk/TapTapSdk$Config;->locale:Ljava/util/Locale;

    goto :goto_29

    .line 1907
    :cond_65
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    iput-object v1, v0, Lcom/taptap/sdk/TapTapSdk$Config;->locale:Ljava/util/Locale;

    goto :goto_29

    .line 1911
    :cond_6a
    const-string v1, "China"

    sget-object v2, Lcom/JoyFramework/a/a;->ab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 1912
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    iput-object v1, v0, Lcom/taptap/sdk/TapTapSdk$Config;->locale:Ljava/util/Locale;

    goto :goto_29

    .line 1913
    :cond_79
    const-string v1, "US"

    sget-object v2, Lcom/JoyFramework/a/a;->ab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 1914
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iput-object v1, v0, Lcom/taptap/sdk/TapTapSdk$Config;->locale:Ljava/util/Locale;

    goto :goto_29

    .line 1916
    :cond_88
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    iput-object v1, v0, Lcom/taptap/sdk/TapTapSdk$Config;->locale:Ljava/util/Locale;

    goto :goto_29

    .line 1924
    :cond_8d
    const-string v1, "cn"

    iput-object v1, v0, Lcom/taptap/sdk/TapTapSdk$Config;->site:Ljava/lang/String;

    goto :goto_43

    .line 1929
    :cond_92
    const-string v1, "io"

    sget-object v2, Lcom/JoyFramework/a/a;->ac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 1930
    const-string v1, "io"

    iput-object v1, v0, Lcom/taptap/sdk/TapTapSdk$Config;->site:Ljava/lang/String;

    goto :goto_43

    .line 1932
    :cond_a1
    const-string v1, "cn"

    iput-object v1, v0, Lcom/taptap/sdk/TapTapSdk$Config;->site:Ljava/lang/String;

    goto :goto_43
.end method

.method public a(Landroid/content/Context;Lcom/JoyFramework/common/InitListener;)V
    .registers 6

    .prologue
    .line 688
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    .line 689
    sput-object p2, Lcom/JoyFramework/c/e;->m:Lcom/JoyFramework/common/InitListener;

    .line 691
    new-instance v0, Lcom/JoyFramework/module/a/c;

    sget-object v1, Lcom/JoyFramework/a/a;->e:Ljava/lang/String;

    sget-object v2, Lcom/JoyFramework/a/a;->f:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcom/JoyFramework/module/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    invoke-direct {p0, v0}, Lcom/JoyFramework/c/e;->a(Lcom/JoyFramework/module/a/c;)V

    .line 693
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/common/InitListener;)V
    .registers 14

    .prologue
    const/4 v6, 0x0

    .line 611
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    .line 612
    sput-object p4, Lcom/JoyFramework/c/e;->m:Lcom/JoyFramework/common/InitListener;

    .line 614
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/ar;->c(Landroid/content/Context;)Z

    move-result v0

    .line 615
    if-nez v0, :cond_2c

    .line 616
    iget-object v7, p0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    const-string v8, "\u65e0\u6cd5\u8fde\u63a5\u5230\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    new-instance v0, Lcom/JoyFramework/c/x;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/JoyFramework/c/x;-><init>(Lcom/JoyFramework/c/e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/common/InitListener;)V

    const-string v4, "\u8bbe\u7f6e"

    const-string v5, "\u91cd\u8bd5"

    move-object v1, v7

    move-object v2, v8

    move-object v3, v0

    move v7, v6

    invoke-static/range {v1 .. v7}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$c;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 639
    :goto_2b
    return-void

    .line 636
    :cond_2c
    new-instance v0, Lcom/JoyFramework/module/a/c;

    invoke-direct {v0, p1, p2, p3}, Lcom/JoyFramework/module/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-direct {p0, v0}, Lcom/JoyFramework/c/e;->a(Lcom/JoyFramework/module/a/c;)V

    goto :goto_2b
.end method

.method public a(Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 1704
    return-void
.end method

.method public a(Lcom/JoyFramework/common/IPaymentCallback;)V
    .registers 3

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/JoyFramework/c/e;->M:Lcom/JoyFramework/d/au;

    if-nez v0, :cond_b

    .line 1802
    new-instance v0, Lcom/JoyFramework/d/au;

    invoke-direct {v0}, Lcom/JoyFramework/d/au;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/c/e;->M:Lcom/JoyFramework/d/au;

    .line 1804
    :cond_b
    iput-object p1, p0, Lcom/JoyFramework/c/e;->N:Lcom/JoyFramework/common/IPaymentCallback;

    .line 1805
    return-void
.end method

.method public a(Lcom/JoyFramework/common/InitListener;)V
    .registers 2

    .prologue
    .line 714
    if-eqz p1, :cond_4

    .line 715
    iput-object p1, p0, Lcom/JoyFramework/c/e;->w:Lcom/JoyFramework/common/InitListener;

    .line 717
    :cond_4
    return-void
.end method

.method public a(Lcom/JoyFramework/common/UserApiListenerInfo;)V
    .registers 2

    .prologue
    .line 989
    sput-object p1, Lcom/JoyFramework/c/e;->n:Lcom/JoyFramework/common/UserApiListenerInfo;

    .line 990
    return-void
.end method

.method public a(Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;)V
    .registers 2

    .prologue
    .line 844
    iput-object p1, p0, Lcom/JoyFramework/c/e;->z:Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;

    .line 845
    return-void
.end method

.method public a(Lcom/JoyFramework/remote/bean/v;)V
    .registers 2

    .prologue
    .line 833
    iput-object p1, p0, Lcom/JoyFramework/c/e;->y:Lcom/JoyFramework/remote/bean/v;

    .line 834
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 701
    iget-object v0, p0, Lcom/JoyFramework/c/e;->w:Lcom/JoyFramework/common/InitListener;

    if-eqz v0, :cond_9

    .line 702
    iget-object v0, p0, Lcom/JoyFramework/c/e;->w:Lcom/JoyFramework/common/InitListener;

    invoke-interface {v0, p1}, Lcom/JoyFramework/common/InitListener;->initSuccess(Ljava/lang/String;)V

    .line 704
    :cond_9
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 1122
    sput-boolean p1, Lcom/JoyFramework/c/e;->q:Z

    .line 1123
    return-void
.end method

.method public a(ZI)V
    .registers 5

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/JoyFramework/c/e;->B:Lcom/JoyFramework/common/LoginMessageInfo;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/JoyFramework/c/e;->C:Lcom/JoyFramework/remote/bean/w;

    if-eqz v0, :cond_25

    .line 1322
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/JoyFramework/c/e;->B:Lcom/JoyFramework/common/LoginMessageInfo;

    invoke-virtual {p0, v0, v1}, Lcom/JoyFramework/c/e;->a(ILjava/lang/Object;)V

    .line 1324
    iget-object v0, p0, Lcom/JoyFramework/c/e;->A:Lcom/JoyFramework/d/ao;

    if-nez v0, :cond_19

    .line 1325
    new-instance v0, Lcom/JoyFramework/d/ao;

    invoke-direct {v0}, Lcom/JoyFramework/d/ao;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/c/e;->A:Lcom/JoyFramework/d/ao;

    .line 1327
    :cond_19
    iget-object v0, p0, Lcom/JoyFramework/c/e;->A:Lcom/JoyFramework/d/ao;

    iget-object v1, p0, Lcom/JoyFramework/c/e;->C:Lcom/JoyFramework/remote/bean/w;

    invoke-virtual {v0, v1}, Lcom/JoyFramework/d/ao;->a(Lcom/JoyFramework/remote/bean/w;)V

    .line 1328
    if-eqz p1, :cond_26

    .line 1329
    invoke-virtual {p0, p2}, Lcom/JoyFramework/c/e;->d(I)V

    .line 1334
    :cond_25
    :goto_25
    return-void

    .line 1331
    :cond_26
    invoke-virtual {p0}, Lcom/JoyFramework/c/e;->g()V

    goto :goto_25
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 1972
    iget-object v0, p0, Lcom/JoyFramework/c/e;->L:Lcom/JoyFramework/d/ce;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 1973
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/JoyFramework/c/e;->L:Lcom/JoyFramework/d/ce;

    invoke-virtual {v0, p1, p2}, Lcom/JoyFramework/d/ce;->d(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    goto :goto_5
.end method

.method public b()V
    .registers 2

    .prologue
    .line 1113
    invoke-static {}, Lcom/JoyFramework/user/OnLineUser;->getInstance()Lcom/JoyFramework/user/OnLineUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/OnLineUser;->resetAlreadySave()V

    .line 1114
    return-void
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 1461
    iput p1, p0, Lcom/JoyFramework/c/e;->F:I

    .line 1462
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .registers 8

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1131
    sget-boolean v0, Lcom/JoyFramework/c/e;->q:Z

    if-eqz v0, :cond_46

    .line 1133
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1134
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1135
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1136
    const-string v2, "joy_welcome"

    const-string v3, "layout"

    .line 1137
    invoke-static {p1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    .line 1136
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1138
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1139
    new-instance v2, Lcom/JoyFramework/c/i;

    invoke-direct {v2, p0}, Lcom/JoyFramework/c/i;-><init>(Lcom/JoyFramework/c/e;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1146
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v4, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1147
    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1148
    new-instance v3, Lcom/JoyFramework/c/j;

    invoke-direct {v3, p0, v1, v0}, Lcom/JoyFramework/c/j;-><init>(Lcom/JoyFramework/c/e;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1165
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1166
    const/4 v0, 0x0

    sput-boolean v0, Lcom/JoyFramework/c/e;->q:Z

    .line 1168
    :cond_46
    return-void
.end method

.method public b(Landroid/app/Activity;Lcom/JoyFramework/common/IRealNameCallbackAdapter;)V
    .registers 5

    .prologue
    .line 1951
    if-nez p2, :cond_3

    .line 1961
    :goto_2
    return-void

    .line 1952
    :cond_3
    sget-boolean v0, Lcom/JoyFramework/a/a;->q:Z

    if-eqz v0, :cond_2d

    .line 1953
    sget-boolean v0, Lcom/JoyFramework/a/a;->o:Z

    if-nez v0, :cond_1b

    .line 1954
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/JoyFramework/common/IRealNameCallbackAdapter;->notRealName(Ljava/lang/String;)V

    goto :goto_2

    .line 1956
    :cond_1b
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/JoyFramework/c/e;->G:I

    invoke-virtual {p2, v0, v1}, Lcom/JoyFramework/common/IRealNameCallbackAdapter;->realName(Ljava/lang/String;I)V

    goto :goto_2

    .line 1959
    :cond_2d
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/JoyFramework/common/IRealNameCallbackAdapter;->realName(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    if-eqz v0, :cond_e

    .line 1411
    iget-object v0, p0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    new-instance v1, Lcom/JoyFramework/c/m;

    invoke-direct {v1, p0, p1}, Lcom/JoyFramework/c/m;-><init>(Lcom/JoyFramework/c/e;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1455
    :cond_e
    return-void
.end method

.method public b(Z)V
    .registers 2

    .prologue
    .line 1721
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1182
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "joySdkVersion"

    invoke-static {v0, v1}, Lcom/JoyFramework/d/ar;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1183
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 1186
    :goto_10
    return-object v0

    :cond_11
    const-string v0, "5.7"

    goto :goto_10
.end method

.method public c(Landroid/app/Activity;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 1171
    const-string v0, "joyAgent"

    invoke-static {p1, v0}, Lcom/JoyFramework/d/ar;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .registers 2

    .prologue
    .line 1477
    iput p1, p0, Lcom/JoyFramework/c/e;->G:I

    .line 1478
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/JoyFramework/c/e;->N:Lcom/JoyFramework/common/IPaymentCallback;

    if-eqz v0, :cond_12

    .line 1814
    iget-object v0, p0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    new-instance v1, Lcom/JoyFramework/c/q;

    invoke-direct {v1, p0, p1}, Lcom/JoyFramework/c/q;-><init>(Lcom/JoyFramework/c/e;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1822
    :cond_12
    return-void
.end method

.method public c(Z)V
    .registers 2

    .prologue
    .line 1729
    sput-boolean p1, Lcom/JoyFramework/a/a;->M:Z

    .line 1730
    return-void
.end method

.method public d(I)V
    .registers 5

    .prologue
    .line 1533
    const/4 v0, 0x0

    iput v0, p0, Lcom/JoyFramework/c/e;->F:I

    .line 1534
    iput p1, p0, Lcom/JoyFramework/c/e;->G:I

    .line 1535
    iget-object v0, p0, Lcom/JoyFramework/c/e;->E:Lcom/JoyFramework/common/IRealNameCallback;

    if-eqz v0, :cond_1a

    .line 1536
    iget-object v0, p0, Lcom/JoyFramework/c/e;->E:Lcom/JoyFramework/common/IRealNameCallback;

    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/JoyFramework/common/IRealNameCallback;->realName(Ljava/lang/String;I)V

    .line 1538
    :cond_1a
    invoke-direct {p0, p1}, Lcom/JoyFramework/c/e;->e(I)V

    .line 1539
    iget-object v0, p0, Lcom/JoyFramework/c/e;->D:Lcom/JoyFramework/common/IRealNameCallbackAdapter;

    if-eqz v0, :cond_34

    .line 1540
    iget-object v0, p0, Lcom/JoyFramework/c/e;->D:Lcom/JoyFramework/common/IRealNameCallbackAdapter;

    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/JoyFramework/c/e;->G:I

    invoke-virtual {v0, v1, v2}, Lcom/JoyFramework/common/IRealNameCallbackAdapter;->realName(Ljava/lang/String;I)V

    .line 1542
    :cond_34
    return-void
.end method

.method public d(Landroid/app/Activity;)V
    .registers 6

    .prologue
    .line 1591
    invoke-static {p1}, Lcom/JoyFramework/d/a/a;->a(Landroid/content/Context;)Lcom/JoyFramework/d/a/a;

    .line 1593
    :try_start_3
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Lcom/JoyFramework/c/e;->u:Landroid/hardware/SensorManager;

    .line 1594
    new-instance v0, Lcom/JoyFramework/common/ShakeSensorEventListener;

    invoke-direct {v0}, Lcom/JoyFramework/common/ShakeSensorEventListener;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/c/e;->v:Lcom/JoyFramework/common/ShakeSensorEventListener;

    .line 1596
    sget-object v0, Lcom/JoyFramework/c/e;->u:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/JoyFramework/c/e;->v:Lcom/JoyFramework/common/ShakeSensorEventListener;

    sget-object v2, Lcom/JoyFramework/c/e;->u:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    .line 1597
    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x2

    .line 1596
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_23} :catch_38

    .line 1605
    :goto_23
    :try_start_23
    invoke-static {p1}, Lcom/JoyFramework/d/ba;->c(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1606
    new-instance v0, Lcom/JoyFramework/d/at;

    iget-object v1, p0, Lcom/JoyFramework/c/e;->J:Lcom/JoyFramework/d/at$a;

    invoke-direct {v0, v1}, Lcom/JoyFramework/d/at;-><init>(Lcom/JoyFramework/d/at$a;)V

    .line 1607
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/d/at;->a(Landroid/content/Context;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_37} :catch_3d

    .line 1613
    :cond_37
    :goto_37
    return-void

    .line 1600
    :catch_38
    move-exception v0

    .line 1601
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23

    .line 1609
    :catch_3d
    move-exception v0

    .line 1610
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_37
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 1190
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/User;->isLogin()Z

    move-result v0

    return v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 1470
    iget v0, p0, Lcom/JoyFramework/c/e;->F:I

    return v0
.end method

.method public e(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 1643
    return-void
.end method

.method public f()I
    .registers 2

    .prologue
    .line 1486
    iget v0, p0, Lcom/JoyFramework/c/e;->G:I

    return v0
.end method

.method public f(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 1649
    :try_start_0
    sget-boolean v0, Lcom/JoyFramework/d/e;->a:Z

    if-nez v0, :cond_b

    .line 1650
    invoke-static {}, Lcom/JoyFramework/module/point/a;->a()Lcom/JoyFramework/module/point/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/module/point/a;->c()V

    .line 1651
    :cond_b
    invoke-static {}, Lcom/JoyFramework/d/e;->d()V

    .line 1652
    invoke-static {}, Lcom/JoyFramework/d/e;->b()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 1656
    :goto_11
    return-void

    .line 1653
    :catch_12
    move-exception v0

    .line 1654
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public g()V
    .registers 3

    .prologue
    .line 1494
    const/4 v0, 0x1

    iput v0, p0, Lcom/JoyFramework/c/e;->F:I

    .line 1495
    iget-object v0, p0, Lcom/JoyFramework/c/e;->E:Lcom/JoyFramework/common/IRealNameCallback;

    if-eqz v0, :cond_18

    .line 1496
    iget-object v0, p0, Lcom/JoyFramework/c/e;->E:Lcom/JoyFramework/common/IRealNameCallback;

    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/JoyFramework/common/IRealNameCallback;->notRealName(Ljava/lang/String;)V

    .line 1498
    :cond_18
    iget-object v0, p0, Lcom/JoyFramework/c/e;->D:Lcom/JoyFramework/common/IRealNameCallbackAdapter;

    if-eqz v0, :cond_2d

    .line 1499
    iget-object v0, p0, Lcom/JoyFramework/c/e;->D:Lcom/JoyFramework/common/IRealNameCallbackAdapter;

    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/common/IRealNameCallbackAdapter;->notRealName(Ljava/lang/String;)V

    .line 1501
    :cond_2d
    invoke-direct {p0}, Lcom/JoyFramework/c/e;->m()V

    .line 1502
    return-void
.end method

.method public g(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 1661
    :try_start_0
    invoke-static {}, Lcom/JoyFramework/module/point/a;->a()Lcom/JoyFramework/module/point/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/JoyFramework/module/point/a;->b(Landroid/content/Context;)V

    .line 1662
    sget-object v0, Lcom/JoyFramework/c/e;->u:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/JoyFramework/c/e;->v:Lcom/JoyFramework/common/ShakeSensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 1666
    :goto_e
    return-void

    .line 1663
    :catch_f
    move-exception v0

    .line 1664
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method public h()V
    .registers 2

    .prologue
    .line 1794
    iget-object v0, p0, Lcom/JoyFramework/c/e;->M:Lcom/JoyFramework/d/au;

    if-nez v0, :cond_b

    .line 1795
    new-instance v0, Lcom/JoyFramework/d/au;

    invoke-direct {v0}, Lcom/JoyFramework/d/au;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/c/e;->M:Lcom/JoyFramework/d/au;

    .line 1797
    :cond_b
    iget-object v0, p0, Lcom/JoyFramework/c/e;->M:Lcom/JoyFramework/d/au;

    invoke-virtual {v0}, Lcom/JoyFramework/d/au;->a()V

    .line 1798
    return-void
.end method

.method public h(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 1677
    :try_start_0
    sget-boolean v0, Lcom/JoyFramework/c/e;->a:Z

    if-eqz v0, :cond_b

    .line 1678
    invoke-static {}, Lcom/JoyFramework/module/point/a;->a()Lcom/JoyFramework/module/point/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/module/point/a;->b()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1683
    :cond_b
    :goto_b
    return-void

    .line 1680
    :catch_c
    move-exception v0

    .line 1681
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public i(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 1688
    :try_start_0
    sget-boolean v0, Lcom/JoyFramework/d/e;->a:Z

    if-nez v0, :cond_b

    .line 1689
    invoke-static {}, Lcom/JoyFramework/module/point/a;->a()Lcom/JoyFramework/module/point/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/module/point/a;->c()V

    .line 1690
    :cond_b
    invoke-static {}, Lcom/JoyFramework/d/e;->d()V

    .line 1691
    invoke-static {}, Lcom/JoyFramework/d/e;->b()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 1696
    :goto_11
    return-void

    .line 1693
    :catch_12
    move-exception v0

    .line 1694
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public j(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 1700
    return-void
.end method

.method public k(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/JoyFramework/c/e;->O:Lcom/JoyFramework/d/bo;

    if-nez v0, :cond_b

    .line 1847
    new-instance v0, Lcom/JoyFramework/d/bo;

    invoke-direct {v0}, Lcom/JoyFramework/d/bo;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/c/e;->O:Lcom/JoyFramework/d/bo;

    .line 1849
    :cond_b
    iget-object v0, p0, Lcom/JoyFramework/c/e;->O:Lcom/JoyFramework/d/bo;

    invoke-virtual {v0, p1}, Lcom/JoyFramework/d/bo;->a(Landroid/app/Activity;)V

    .line 1850
    return-void
.end method

.method public l(Landroid/app/Activity;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1865
    invoke-static {p1}, Lcom/JoyFramework/d/aj;->a(Landroid/content/Context;)Lcom/JoyFramework/d/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/d/aj;->c()I

    move-result v0

    .line 1866
    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 1867
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1873
    :goto_16
    return-void

    .line 1868
    :cond_17
    if-nez v0, :cond_21

    .line 1869
    const-string v0, "\u66f4\u591a\u6e38\u620f\u52a0\u8f7d\u4e2d\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    new-array v1, v2, [Z

    invoke-static {p1, v0, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_16

    .line 1871
    :cond_21
    const-string v0, "\u6682\u65e0\u66f4\u591a\u6e38\u620f"

    new-array v1, v2, [Z

    invoke-static {p1, v0, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_16
.end method

.method public m(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 1943
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1944
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1946
    const-string v1, "showingType"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1947
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1948
    return-void
.end method

.method public n(Landroid/app/Activity;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 1964
    sget-boolean v0, Lcom/JoyFramework/c/e;->a:Z

    if-eqz v0, :cond_11

    .line 1965
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 1967
    :goto_10
    return-object v0

    :cond_11
    const-string v0, ""

    goto :goto_10
.end method
