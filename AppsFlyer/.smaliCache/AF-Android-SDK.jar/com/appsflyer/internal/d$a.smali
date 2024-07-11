.class final Lcom/appsflyer/internal/d$a;
.super Ljava/util/HashMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/d$a$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static AFInAppEventType:I

.field private static AFKeystoreWrapper:C

.field private static AFLogger$LogLevel:I

.field private static AFVersionDeclaration:C

.field private static AppsFlyer2dXConversionCallback:I

.field private static getLevel:C

.field private static values:C


# instance fields
.field private final AFInAppEventParameterName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final valueOf:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/appsflyer/internal/d$a;->AFLogger$LogLevel:I

    const/4 v0, 0x1

    sput v0, Lcom/appsflyer/internal/d$a;->AppsFlyer2dXConversionCallback:I

    const/16 v0, 0x56

    sput v0, Lcom/appsflyer/internal/d$a;->AFInAppEventType:I

    const/16 v0, 0x96a

    sput-char v0, Lcom/appsflyer/internal/d$a;->AFVersionDeclaration:C

    const/16 v0, 0x5592

    sput-char v0, Lcom/appsflyer/internal/d$a;->values:C

    const v0, 0xdfa7

    sput-char v0, Lcom/appsflyer/internal/d$a;->getLevel:C

    const v0, 0x8720

    sput-char v0, Lcom/appsflyer/internal/d$a;->AFKeystoreWrapper:C

    return-void
.end method

.method constructor <init>(Ljava/util/Map;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 389
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 390
    iput-object p1, p0, Lcom/appsflyer/internal/d$a;->AFInAppEventParameterName:Ljava/util/Map;

    .line 391
    iput-object p2, p0, Lcom/appsflyer/internal/d$a;->valueOf:Landroid/content/Context;

    .line 392
    invoke-direct {p0}, Lcom/appsflyer/internal/d$a;->AFKeystoreWrapper()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/appsflyer/internal/d$a;->AFInAppEventParameterName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    return-void
.end method

.method private AFInAppEventParameterName()Ljava/lang/String;
    .registers 21

    .line 489
    move-object/from16 v1, p0

    const-string v2, "\u0a02\u2dcf\uda49\u0b94\u878b\u72b1\ub4c3\ua4da\u831d\ua277\ub7ba\u24f8\u94f9\u2b68\u240e\u34c7\u05ac\u5c67\u82ca\u8510\ue4d9\u8e73\u7291\ua2ca\u35dd\u45b6\ucd5e\ucb82\uebdf\ub299\uc7b6\ub65f\u2875\u6b50\ub2a4\u0012\ubde7\u1b33\uf618\u7be9\u87a7\u641e\u1c06\u7525\uae0f\u0525"

    const-string v3, "data:"

    const-string v4, ""

    .line 454
    nop

    .line 456
    const/4 v5, 0x5

    const-wide/16 v6, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x1

    const/4 v10, 0x0

    :try_start_10
    iget-object v0, v1, Lcom/appsflyer/internal/d$a;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v11

    shr-int/2addr v11, v8

    add-int/lit8 v11, v11, 0x6

    const-string v12, "\u0003\uffff\n\ufff5\ufffc\ufff7\u0006\u0003\ufff7\n\t\ufffb"

    const-string v13, "content:"

    invoke-static {v13}, Landroid/webkit/URLUtil;->isContentUrl(Ljava/lang/String;)Z

    move-result v13

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v14

    shr-int/2addr v14, v8

    add-int/lit16 v14, v14, 0xc0

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v15

    rsub-int/lit8 v15, v15, 0xc

    invoke-static {v11, v12, v13, v14, v15}, Lcom/appsflyer/internal/d$a;->AFInAppEventParameterName(ILjava/lang/String;ZII)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    iget-object v11, v1, Lcom/appsflyer/internal/d$a;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-static {v10}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v12

    cmp-long v14, v12, v6

    add-int/lit8 v14, v14, 0x9

    const-string v12, "\ufffb\u000f\u0008\ufffd\u0002\uffde\ufffb\u000e\uffff\u0000\u0003\u000c\r\u000e\uffe6"

    invoke-static {v3}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v13

    xor-int/2addr v13, v9

    const/16 v15, 0x30

    invoke-static {v4, v15, v10}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v15

    rsub-int v15, v15, 0xbb

    invoke-static {v10, v10}, Landroid/view/View;->resolveSize(II)I

    move-result v16

    add-int/lit8 v6, v16, 0xf

    invoke-static {v14, v12, v13, v15, v6}, Lcom/appsflyer/internal/d$a;->AFInAppEventParameterName(ILjava/lang/String;ZII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 458
    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v7

    shr-int/2addr v7, v8

    rsub-int/lit8 v7, v7, 0x3

    const-string v11, "\u0002\ufffd\uffff\u0005\ufffd"

    invoke-static {v10}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v12

    xor-int/2addr v12, v9

    invoke-static {v10, v10}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v13

    rsub-int v13, v13, 0x87

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    rsub-int/lit8 v14, v14, 0x5

    invoke-static {v7, v11, v12, v13, v14}, Lcom/appsflyer/internal/d$a;->AFInAppEventParameterName(ILjava/lang/String;ZII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 459
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v11

    shr-int/2addr v11, v8

    rsub-int/lit8 v11, v11, 0x1

    const-string v12, "\uffe8\uffe5\uffe9\u001e-"

    const-string v13, "about:"

    invoke-static {v13}, Landroid/webkit/URLUtil;->isAboutUrl(Ljava/lang/String;)Z

    move-result v13

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v14

    shr-int/2addr v14, v8

    add-int/lit16 v14, v14, 0x9b

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v19, v15, v17

    rsub-int/lit8 v15, v19, 0x6

    invoke-static {v11, v12, v13, v14, v15}, Lcom/appsflyer/internal/d$a;->AFInAppEventParameterName(ILjava/lang/String;ZII)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 461
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/ai;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_e9} :catch_eb

    move-object v6, v0

    goto :goto_124

    .line 463
    :catch_eb
    move-exception v0

    .line 464
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/appsflyer/internal/d$a;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\u90e8\u0693\u0560\u53ff\u5482\ub035\u6583\uabf3\ud8f6\u2839\u20a6\uf7df\u4c35\ufd81\u5113\u6e7a\u67bb\ucc33\u12ed\u5bbc"

    invoke-static {v6}, Lcom/appsflyer/internal/d$a;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 469
    :goto_124
    const/4 v7, 0x0

    const/4 v11, 0x2

    :try_start_126
    iget-object v0, v1, Lcom/appsflyer/internal/d$a;->valueOf:Landroid/content/Context;

    new-instance v12, Landroid/content/IntentFilter;

    const-string v13, "\u9fed\u49b8\udcdb\u5a6e\u7d4f\u51b6\ubb79\ubebc\u10af\uaa73\u93cd\u6939\u7bd4\u37b6\ud442\u8c97\u2066\u34b1\u240e\u34c7\u5a9f\udd70\ufd35\u36f2\uec54\ud766\u6a1f\uc0fc\u68f6\ua5d2\uf25f\u4085\u087d\u3e54\u1904\u8114\u7ce6\u9c3f"

    invoke-static {v13}, Lcom/appsflyer/internal/d$a;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_13b} :catch_296

    .line 471
    const/16 v12, -0xa8c

    if-eqz v0, :cond_167

    .line 489
    sget v13, Lcom/appsflyer/internal/d$a;->AFLogger$LogLevel:I

    add-int/lit8 v13, v13, 0x1f

    rem-int/lit16 v14, v13, 0x80

    sput v14, Lcom/appsflyer/internal/d$a;->AppsFlyer2dXConversionCallback:I

    rem-int/2addr v13, v11

    const-string v14, "\uc23c\u0ca3\u7270\ud37c\u1f1f\u66ed\u94f9\u2b68\u1fca\uc18b\ua91e\u79bb"

    if-nez v13, :cond_15b

    :try_start_14c
    invoke-static {v14}, Lcom/appsflyer/internal/d$a;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x1c70

    .line 472
    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    goto :goto_167

    .line 471
    :cond_15b
    invoke-static {v14}, Lcom/appsflyer/internal/d$a;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    .line 472
    invoke-virtual {v0, v13, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    :cond_167
    :goto_167
    nop

    .line 474
    iget-object v0, v1, Lcom/appsflyer/internal/d$a;->valueOf:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_170} :catch_296

    .line 475
    if-eqz v0, :cond_1ed

    .line 472
    sget v13, Lcom/appsflyer/internal/d$a;->AppsFlyer2dXConversionCallback:I

    add-int/lit8 v13, v13, 0x13

    rem-int/lit16 v14, v13, 0x80

    sput v14, Lcom/appsflyer/internal/d$a;->AFLogger$LogLevel:I

    rem-int/2addr v13, v11

    const-string v14, ",\uffec\uffea"

    if-eqz v13, :cond_1a9

    :try_start_17f
    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v13

    ushr-int/lit8 v13, v13, 0x52

    shl-int v13, v11, v13

    invoke-static {v3}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v3, v9

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v15

    shr-int/lit8 v15, v15, 0x5b

    add-int/lit16 v15, v15, 0x33e

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    add-int/lit8 v5, v16, 0x2

    invoke-static {v13, v14, v3, v15, v5}, Lcom/appsflyer/internal/d$a;->AFInAppEventParameterName(ILjava/lang/String;ZII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1ed

    :pswitch_1a8
    goto :goto_1d7

    .line 475
    :cond_1a9
    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v5

    shr-int/2addr v5, v8

    add-int/lit8 v5, v5, 0x3

    invoke-static {v3}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v3, v9

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v13

    shr-int/2addr v13, v8

    rsub-int v13, v13, 0xa2

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x3

    invoke-static {v5, v14, v3, v13, v15}, Lcom/appsflyer/internal/d$a;->AFInAppEventParameterName(ILjava/lang/String;ZII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1ce
    .catch Ljava/lang/Exception; {:try_start_17f .. :try_end_1ce} :catch_296

    if-eqz v0, :cond_1d2

    .line 472
    const/4 v0, 0x0

    goto :goto_1d3

    :cond_1d2
    const/4 v0, 0x1

    :goto_1d3
    packed-switch v0, :pswitch_data_302

    goto :goto_1ed

    :goto_1d7
    sget v0, Lcom/appsflyer/internal/d$a;->AFLogger$LogLevel:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/d$a;->AppsFlyer2dXConversionCallback:I

    rem-int/2addr v0, v11

    if-nez v0, :cond_1e4

    const/4 v5, 0x5

    goto :goto_1e6

    :cond_1e4
    const/16 v5, 0x63

    :goto_1e6
    packed-switch v5, :pswitch_data_308

    const/4 v0, 0x1

    goto :goto_1ef

    .line 475
    :pswitch_1eb
    const/4 v0, 0x1

    goto :goto_1ef

    :cond_1ed
    :goto_1ed
    nop

    .line 489
    const/4 v0, 0x0

    .line 476
    :goto_1ef
    :try_start_1ef
    iget-object v3, v1, Lcom/appsflyer/internal/d$a;->valueOf:Landroid/content/Context;

    const-string v5, "l\ucb49\u7bd4\u37b6\u6c45\udfc5\u0bce\u8564"

    invoke-static {v5}, Lcom/appsflyer/internal/d$a;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    const/4 v5, -0x1

    .line 477
    invoke-virtual {v3, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 478
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v13

    neg-int v13, v13

    const-string v14, "\u0000"

    invoke-static {v4}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v15

    invoke-static {v4, v10, v10}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v7

    rsub-int v7, v7, 0xb8

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v19

    shr-int/lit8 v19, v19, 0x10

    add-int/lit8 v11, v19, 0x1

    invoke-static {v13, v14, v15, v7, v11}, Lcom/appsflyer/internal/d$a;->AFInAppEventParameterName(ILjava/lang/String;ZII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\u2015\u6fce\ud797\u17e7"

    invoke-static {v7}, Lcom/appsflyer/internal/d$a;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\u2015\u6fce\u4beb\u21a3"

    invoke-static {v5}, Lcom/appsflyer/internal/d$a;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u2015\u6fce\ufe5a\u9d2c"

    invoke-static {v3}, Lcom/appsflyer/internal/d$a;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/appsflyer/internal/d$a;->AFInAppEventParameterName:Ljava/util/Map;

    .line 482
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1495
    invoke-static {v0}, Lcom/appsflyer/internal/d$a$d;->AFInAppEventType(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/d$a$d;->AFInAppEventType([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/d$a$d;->valueOf([B)Ljava/lang/String;

    move-result-object v0

    .line 483
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_295
    .catch Ljava/lang/Exception; {:try_start_1ef .. :try_end_295} :catch_296

    goto :goto_2e9

    .line 485
    :catch_296
    move-exception v0

    .line 486
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/appsflyer/internal/d$a;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4, v4, v10}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-static {v10, v10}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v4

    shr-int/2addr v4, v8

    add-int/lit16 v4, v4, 0xab

    invoke-static {v10, v10}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v5

    const-string v7, "\u001c\uffdc\u001b\uffdc\u001b\uffdd\uffdd\u000e\u0013\u001f\u000c\u0018\u0011\uffdb\u001c\uffdb"

    const-wide/16 v11, 0x0

    cmp-long v8, v5, v11

    rsub-int/lit8 v5, v8, 0xf

    invoke-static {v2, v7, v3, v4, v5}, Lcom/appsflyer/internal/d$a;->AFInAppEventParameterName(ILjava/lang/String;ZII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 489
    :goto_2e9
    nop

    .line 472
    sget v2, Lcom/appsflyer/internal/d$a;->AFLogger$LogLevel:I

    add-int/lit8 v2, v2, 0x29

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/d$a;->AppsFlyer2dXConversionCallback:I

    const/4 v3, 0x2

    rem-int/2addr v2, v3

    if-nez v2, :cond_2f7

    const/4 v9, 0x0

    :cond_2f7
    packed-switch v9, :pswitch_data_30e

    .line 489
    return-object v0

    .line 472
    :pswitch_2fb
    const/4 v2, 0x0

    :try_start_2fc
    array-length v2, v2
    :try_end_2fd
    .catchall {:try_start_2fc .. :try_end_2fd} :catchall_2fe

    return-object v0

    :catchall_2fe
    move-exception v0

    move-object v2, v0

    throw v2

    nop

    :pswitch_data_302
    .packed-switch 0x0
        :pswitch_1a8
    .end packed-switch

    :pswitch_data_308
    .packed-switch 0x63
        :pswitch_1eb
    .end packed-switch

    :pswitch_data_30e
    .packed-switch 0x0
        :pswitch_2fb
    .end packed-switch
.end method

.method private static AFInAppEventParameterName(ILjava/lang/String;ZII)Ljava/lang/String;
    .registers 12

    .line 2152
    nop

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 2152
    const/4 v2, 0x0

    goto :goto_8

    :cond_7
    const/4 v2, 0x1

    :goto_8
    const/4 v3, 0x2

    packed-switch v2, :pswitch_data_a2

    sget v2, Lcom/appsflyer/internal/d$a;->AppsFlyer2dXConversionCallback:I

    add-int/lit8 v2, v2, 0x1b

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/d$a;->AFLogger$LogLevel:I

    rem-int/2addr v2, v3

    if-eqz v2, :cond_23

    goto :goto_19

    :goto_18
    :pswitch_18
    goto :goto_28

    :goto_19
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/16 v2, 0x5f

    :try_start_1f
    div-int/2addr v2, v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_21

    goto :goto_18

    :catchall_21
    move-exception p0

    throw p0

    .line 0
    :cond_23
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    goto :goto_18

    :goto_28
    check-cast p1, [C

    .line 2114
    nop

    .line 2115
    new-array v2, p4, [C

    .line 2119
    const/4 v4, 0x0

    :goto_2e
    if-ge v4, p4, :cond_33

    .line 2152
    const/16 v5, 0x24

    goto :goto_35

    :cond_33
    const/16 v5, 0x2c

    :goto_35
    packed-switch v5, :pswitch_data_a8

    .line 2121
    aget-char v5, p1, v4

    .line 2123
    add-int/2addr v5, p3

    int-to-char v5, v5

    aput-char v5, v2, v4

    .line 2124
    aget-char v5, v2, v4

    sget v6, Lcom/appsflyer/internal/d$a;->AFInAppEventType:I

    sub-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v2, v4

    .line 2119
    add-int/lit8 v4, v4, 0x1

    goto :goto_8e

    .line 2128
    :pswitch_49
    if-lez p0, :cond_4d

    .line 2152
    const/4 p1, 0x1

    goto :goto_4e

    :cond_4d
    const/4 p1, 0x0

    :goto_4e
    packed-switch p1, :pswitch_data_ae

    .line 2130
    nop

    .line 2132
    new-array p1, p4, [C

    .line 2134
    invoke-static {v2, v1, p1, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2135
    sub-int p3, p4, p0

    invoke-static {p1, v1, v2, p3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2136
    invoke-static {p1, p0, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2140
    :pswitch_5f
    if-eqz p2, :cond_88

    .line 2152
    sget p0, Lcom/appsflyer/internal/d$a;->AFLogger$LogLevel:I

    add-int/lit8 p0, p0, 0x59

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/d$a;->AppsFlyer2dXConversionCallback:I

    rem-int/2addr p0, v3

    if-nez p0, :cond_6c

    .line 2142
    :cond_6c
    new-array p0, p4, [C

    .line 2144
    nop

    :goto_6f
    if-ge v1, p4, :cond_86

    .line 2152
    sget p1, Lcom/appsflyer/internal/d$a;->AFLogger$LogLevel:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/d$a;->AppsFlyer2dXConversionCallback:I

    rem-int/2addr p1, v3

    if-nez p1, :cond_7c

    .line 2146
    :cond_7c
    sub-int p1, p4, v1

    sub-int/2addr p1, v0

    aget-char p1, v2, p1

    aput-char p1, p0, v1

    .line 2144
    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    .line 2149
    :cond_86
    nop

    .line 2152
    move-object v2, p0

    :cond_88
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :goto_8e
    sget v5, Lcom/appsflyer/internal/d$a;->AFLogger$LogLevel:I

    add-int/lit8 v5, v5, 0x19

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/d$a;->AppsFlyer2dXConversionCallback:I

    rem-int/2addr v5, v3

    if-nez v5, :cond_9b

    const/4 v5, 0x2

    goto :goto_9d

    :cond_9b
    const/16 v5, 0x4c

    :goto_9d
    packed-switch v5, :pswitch_data_b4

    :pswitch_a0
    goto :goto_2e

    nop

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_18
    .end packed-switch

    :pswitch_data_a8
    .packed-switch 0x2c
        :pswitch_49
    .end packed-switch

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_5f
    .end packed-switch

    :pswitch_data_b4
    .packed-switch 0x4c
        :pswitch_a0
    .end packed-switch
.end method

.method private static varargs AFInAppEventType([Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 414
    nop

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 397
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    const/4 v3, 0x3

    if-ge v2, v3, :cond_e

    .line 414
    const/16 v4, 0x48

    goto :goto_10

    :cond_e
    const/16 v4, 0x13

    :goto_10
    packed-switch v4, :pswitch_data_9e

    .line 401
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 402
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    goto :goto_36

    .line 397
    :pswitch_26
    aget-object v3, p0, v2

    .line 398
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 414
    :goto_36
    sget v4, Lcom/appsflyer/internal/d$a;->AFLogger$LogLevel:I

    add-int/lit8 v4, v4, 0x4d

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/d$a;->AppsFlyer2dXConversionCallback:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_42

    :cond_42
    const/4 v4, 0x0

    .line 405
    :goto_43
    const/4 v5, 0x1

    if-ge v4, v0, :cond_48

    .line 414
    const/4 v6, 0x1

    goto :goto_49

    :cond_48
    const/4 v6, 0x0

    :goto_49
    packed-switch v6, :pswitch_data_a4

    sget v6, Lcom/appsflyer/internal/d$a;->AppsFlyer2dXConversionCallback:I

    add-int/lit8 v6, v6, 0x31

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/d$a;->AFLogger$LogLevel:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_64

    goto :goto_64

    :pswitch_59
    sget p0, Lcom/appsflyer/internal/d$a;->AFLogger$LogLevel:I

    add-int/lit8 p0, p0, 0x7b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/d$a;->AppsFlyer2dXConversionCallback:I

    rem-int/lit8 p0, p0, 0x2

    return-object v2

    .line 406
    :cond_64
    :goto_64
    const/4 v6, 0x0

    .line 407
    const/4 v7, 0x0

    :goto_66
    if-ge v7, v3, :cond_90

    .line 414
    sget v8, Lcom/appsflyer/internal/d$a;->AppsFlyer2dXConversionCallback:I

    add-int/lit8 v8, v8, 0x61

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/appsflyer/internal/d$a;->AFLogger$LogLevel:I

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_74

    .line 407
    :cond_74
    aget-object v8, p0, v7

    .line 408
    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 409
    if-nez v6, :cond_7e

    .line 414
    const/4 v9, 0x0

    goto :goto_7f

    :cond_7e
    const/4 v9, 0x1

    :goto_7f
    packed-switch v9, :pswitch_data_aa

    .line 409
    goto :goto_89

    :pswitch_83
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    xor-int/2addr v8, v6

    .line 414
    nop

    .line 409
    :goto_89
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 407
    add-int/lit8 v7, v7, 0x1

    goto :goto_66

    .line 411
    :cond_90
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 412
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    :pswitch_data_9e
    .packed-switch 0x48
        :pswitch_26
    .end packed-switch

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_59
    .end packed-switch

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_83
    .end packed-switch
.end method

.method private AFKeystoreWrapper()Ljava/lang/String;
    .registers 12

    .line 448
    nop

    .line 420
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 421
    iget-object v1, p0, Lcom/appsflyer/internal/d$a;->AFInAppEventParameterName:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    const-string v4, "\u0003\uffff\n\ufff5\ufffc\ufff7\u0006\u0003\ufff7\n\t\ufffb"

    invoke-static {v2}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    shr-int/lit8 v7, v7, 0x16

    add-int/lit16 v7, v7, 0xc0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    add-int/lit8 v8, v8, 0xc

    invoke-static {v3, v4, v5, v7, v8}, Lcom/appsflyer/internal/d$a;->AFInAppEventParameterName(ILjava/lang/String;ZII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 422
    iget-object v3, p0, Lcom/appsflyer/internal/d$a;->AFInAppEventParameterName:Ljava/util/Map;

    const-string v4, "\u97d2\u5377\u94f9\u2b68\udcdb\u5a6e"

    invoke-static {v4}, Lcom/appsflyer/internal/d$a;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4c} :catch_df

    .line 424
    const/4 v4, 0x2

    const/4 v5, 0x4

    if-nez v3, :cond_93

    .line 448
    sget v3, Lcom/appsflyer/internal/d$a;->AppsFlyer2dXConversionCallback:I

    add-int/lit8 v3, v3, 0x29

    rem-int/lit16 v7, v3, 0x80

    sput v7, Lcom/appsflyer/internal/d$a;->AFLogger$LogLevel:I

    rem-int/2addr v3, v4

    if-eqz v3, :cond_5b

    .line 425
    :cond_5b
    :try_start_5b
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/2addr v3, v5

    const-string v7, "\ufff6\u0013\u0003\u0002\ufff8\u0002\ufff5\u0006"

    const-string v8, "http://"

    invoke-static {v8}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v8

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v9

    shr-int/lit8 v9, v9, 0x8

    add-int/lit16 v9, v9, 0xa2

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x8

    invoke-static {v3, v7, v8, v9, v10}, Lcom/appsflyer/internal/d$a;->AFInAppEventParameterName(ILjava/lang/String;ZII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_80} :catch_df

    .line 448
    sget v7, Lcom/appsflyer/internal/d$a;->AppsFlyer2dXConversionCallback:I

    add-int/lit8 v7, v7, 0x13

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/d$a;->AFLogger$LogLevel:I

    rem-int/2addr v7, v4

    if-eqz v7, :cond_8e

    const/16 v7, 0x30

    goto :goto_90

    :cond_8e
    const/16 v7, 0x4e

    :goto_90
    packed-switch v7, :pswitch_data_10a

    .line 428
    :cond_93
    :pswitch_93
    :try_start_93
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 431
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v2

    aput-object v3, v1, v6

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {v1}, Lcom/appsflyer/internal/d$a;->AFInAppEventType([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 434
    if-le v1, v5, :cond_b4

    .line 448
    const/4 v3, 0x1

    goto :goto_b5

    :cond_b4
    const/4 v3, 0x0

    :goto_b5
    packed-switch v3, :pswitch_data_110

    goto :goto_bd

    .line 435
    :pswitch_b9
    invoke-virtual {v0, v5, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_cd

    .line 439
    :goto_bd
    if-ge v1, v5, :cond_c1

    .line 448
    const/4 v3, 0x0

    goto :goto_c2

    :cond_c1
    const/4 v3, 0x1

    :goto_c2
    packed-switch v3, :pswitch_data_116

    .line 440
    add-int/lit8 v1, v1, 0x1

    .line 441
    const/16 v3, 0x31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_bd

    .line 444
    :goto_cd
    :pswitch_cd
    const-string v1, "\uf1b1\ufc7e\ue4d9\u8e73"

    invoke-static {v1}, Lcom/appsflyer/internal/d$a;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_de} :catch_df

    return-object v0

    .line 446
    :catch_df
    move-exception v0

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u57c0\u1b98\uda49\u0b94\u878b\u72b1\ub4c3\ua4da\u831d\ua277\ub7ba\u24f8\u94f9\u2b68\u240e\u34c7\u05ac\u5c67\u82ca\u8510\ue4d9\u8e73\u82ca\u8510\u58b8\u2544\uebdf\ub299\uc7b6\ub65f\u2875\u6b50\ub2a4\u0012\ubde7\u1b33\uf618\u7be9\u87a7\u641e\u1c06\u7525\uae0f\u0525"

    invoke-static {v2}, Lcom/appsflyer/internal/d$a;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 448
    const-string v0, "\ub0a3\u24a8\ue4d9\u8e73\uce57\u35c7\uce57\u35c7"

    invoke-static {v0}, Lcom/appsflyer/internal/d$a;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_10a
    .packed-switch 0x4e
        :pswitch_93
    .end packed-switch

    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_b9
    .end packed-switch

    :pswitch_data_116
    .packed-switch 0x1
        :pswitch_cd
    .end packed-switch
.end method

.method private static valueOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 3124
    sget v0, Lcom/appsflyer/internal/d$a;->AppsFlyer2dXConversionCallback:I

    add-int/lit8 v1, v0, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/d$a;->AFLogger$LogLevel:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    if-eqz v1, :cond_c

    .line 0
    :cond_c
    const/4 v1, 0x0

    if-eqz p0, :cond_11

    .line 3124
    const/4 v3, 0x0

    goto :goto_13

    :cond_11
    const/16 v3, 0x31

    :goto_13
    packed-switch v3, :pswitch_data_62

    goto :goto_24

    :pswitch_17
    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/d$a;->AFLogger$LogLevel:I

    rem-int/2addr v0, v2

    if-eqz v0, :cond_20

    .line 0
    :cond_20
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :goto_24
    check-cast p0, [C

    .line 3104
    array-length v0, p0

    new-array v0, v0, [C

    .line 3106
    nop

    .line 3107
    new-array v2, v2, [C

    const/4 v3, 0x0

    .line 3108
    :goto_2d
    array-length v4, p0

    if-ge v3, v4, :cond_33

    .line 3124
    const/16 v4, 0x28

    goto :goto_35

    :cond_33
    const/16 v4, 0x20

    :goto_35
    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_68

    .line 3121
    aget-char p0, v0, v1

    .line 3124
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v5, p0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_61

    .line 3110
    :pswitch_41
    aget-char v4, p0, v3

    aput-char v4, v2, v1

    .line 3111
    add-int/lit8 v4, v3, 0x1

    aget-char v6, p0, v4

    aput-char v6, v2, v5

    .line 3112
    sget-char v6, Lcom/appsflyer/internal/d$a;->AFKeystoreWrapper:C

    sget-char v7, Lcom/appsflyer/internal/d$a;->values:C

    sget-char v8, Lcom/appsflyer/internal/d$a;->AFVersionDeclaration:C

    sget-char v9, Lcom/appsflyer/internal/d$a;->getLevel:C

    invoke-static {v2, v6, v7, v8, v9}, Lcom/appsflyer/internal/ce;->AFKeystoreWrapper([CCCCC)V

    .line 3117
    aget-char v6, v2, v1

    aput-char v6, v0, v3

    .line 3118
    aget-char v5, v2, v5

    aput-char v5, v0, v4

    .line 3119
    add-int/lit8 v3, v3, 0x2

    goto :goto_2d

    .line 3124
    :goto_61
    return-object v1

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_17
    .end packed-switch

    :pswitch_data_68
    .packed-switch 0x28
        :pswitch_41
    .end packed-switch
.end method
