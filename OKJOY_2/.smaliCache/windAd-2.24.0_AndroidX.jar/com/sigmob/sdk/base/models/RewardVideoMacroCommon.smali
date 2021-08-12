.class public Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;
.super Lcom/sigmob/sdk/base/models/BaseMacroCommon;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final _ADSCENE_:Ljava/lang/String; = "_ADSCENE_"

.field public static final _BEGINTIME_:Ljava/lang/String; = "_BEGINTIME_"

.field public static final _BEHAVIOR_:Ljava/lang/String; = "_BEHAVIOR_"

.field public static final _CLICKID_:Ljava/lang/String; = "_CLICKID_"

.field public static final _COMPLETED_:Ljava/lang/String; = "_COMPLETED_"

.field public static final _DOWNX_:Ljava/lang/String; = "_DOWNX_"

.field public static final _DOWNY_:Ljava/lang/String; = "_DOWNY_"

.field public static final _ENDTIME_:Ljava/lang/String; = "_ENDTIME_"

.field public static final _HEIGHT_:Ljava/lang/String; = "_HEIGHT_"

.field public static final _IS_TRUNCATION_:Ljava/lang/String; = "_ISTRUNCATION_"

.field public static final _PLAYFIRSTFRAME_:Ljava/lang/String; = "_PLAYFIRSTFRAME_"

.field public static final _PLAYLASTFRAME_:Ljava/lang/String; = "_PLAYLASTFRAME_"

.field public static final _PROGRESS_:Ljava/lang/String; = "_PROGRESS_"

.field public static final _SCENE_:Ljava/lang/String; = "_SCENE_"

.field public static final _SETCLOSETIME_:Ljava/lang/String; = "_SETCLOSETIME_"

.field public static final _SHOWSKIPTIME_:Ljava/lang/String; = "_SHOWSKIPTIME_"

.field public static final _SLOTHEIGHT_:Ljava/lang/String; = "_SLOTHEIGHT_"

.field public static final _SLOTWIDTH_:Ljava/lang/String; = "_SLOTWIDTH_"

.field public static final _STATUS_:Ljava/lang/String; = "_STATUS_"

.field public static final _TYPE_:Ljava/lang/String; = "_TYPE_"

.field public static final _UPX_:Ljava/lang/String; = "_UPX_"

.field public static final _UPY_:Ljava/lang/String; = "_UPY_"

.field public static final _VIDEOTIME_:Ljava/lang/String; = "_VIDEOTIME_"

.field public static final _VMD5_:Ljava/lang/String; = "_VMD5_"

.field public static final _VURL_:Ljava/lang/String; = "_VURL_"

.field public static final _WIDTH_:Ljava/lang/String; = "_WIDTH_"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/sdk/base/models/BaseMacroCommon;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->a:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "unFind"

    const/4 v1, -0x1

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_92

    goto :goto_65

    :sswitch_b
    const-string v2, "_SLOTWIDTH_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_65

    const/4 v1, 0x5

    goto :goto_65

    :sswitch_15
    const-string v2, "_STATUS_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_65

    const/4 v1, 0x2

    goto :goto_65

    :sswitch_1f
    const-string v2, "_WIDTH_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_65

    const/4 v1, 0x6

    goto :goto_65

    :sswitch_29
    const-string v2, "_BEHAVIOR_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_65

    const/4 v1, 0x3

    goto :goto_65

    :sswitch_33
    const-string v2, "_SCENE_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_65

    const/4 v1, 0x1

    goto :goto_65

    :sswitch_3d
    const-string v2, "_HEIGHT_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_65

    const/16 v1, 0x8

    goto :goto_65

    :sswitch_48
    const-string v2, "_SLOTHEIGHT_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_65

    const/4 v1, 0x7

    goto :goto_65

    :sswitch_52
    const-string v2, "_TYPE_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_65

    const/4 v1, 0x0

    goto :goto_65

    :sswitch_5c
    const-string v2, "_BEGINTIME_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_90

    if-eqz p0, :cond_65

    const/4 v1, 0x4

    :cond_65
    :goto_65
    const-string p0, "0"

    packed-switch v1, :pswitch_data_b8

    goto :goto_8f

    :pswitch_6b
    :try_start_6b
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/a;->Q()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7a
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/a;->Q()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :pswitch_88
    return-object p0

    :pswitch_89
    const-string p0, "2"

    :pswitch_8b
    return-object p0

    :pswitch_8c
    const-string p0, "1"
    :try_end_8e
    .catchall {:try_start_6b .. :try_end_8e} :catchall_90

    return-object p0

    :goto_8f
    return-object v0

    :catchall_90
    move-exception p0

    return-object v0

    :sswitch_data_92
    .sparse-switch
        -0x5eca2e18 -> :sswitch_5c
        -0x591a3c9a -> :sswitch_52
        -0x2779fd65 -> :sswitch_48
        -0x18cb3927 -> :sswitch_3d
        0x32e2ea92 -> :sswitch_33
        0x3520a2ce -> :sswitch_29
        0x3a0a7c98 -> :sswitch_1f
        0x4647616e -> :sswitch_15
        0x7ba1c096 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_8c
        :pswitch_8b
        :pswitch_8b
        :pswitch_89
        :pswitch_88
        :pswitch_7a
        :pswitch_7a
        :pswitch_6b
        :pswitch_6b
    .end packed-switch
.end method


# virtual methods
.method public addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public macroProcess(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const-string v0, "macroProcess() called with:["

    const-string v1, "]"

    const-string v2, "]["

    const-string v3, "_([A-Z,0-9])+_"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    :try_start_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "macroProcess() called with: origin url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    :cond_26
    :goto_26
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_ce

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_58
    .catchall {:try_start_10 .. :try_end_58} :catchall_e5

    const-string v7, "unFind"

    if-nez v6, :cond_67

    :try_start_5c
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_67

    :goto_62
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_26

    :cond_67
    invoke-static {v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_8f
    .catchall {:try_start_5c .. :try_end_8f} :catchall_e5

    if-nez v6, :cond_92

    goto :goto_62

    :cond_92
    :try_start_92
    iget-object v5, p0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->a:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "macroProcess() called with: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    if-eqz v5, :cond_26

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_c2
    .catchall {:try_start_92 .. :try_end_c2} :catchall_c4

    goto/16 :goto_26

    :catchall_c4
    move-exception v4

    :try_start_c5
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    goto/16 :goto_26

    :cond_ce
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "macroProcess() called with: final url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V
    :try_end_e4
    .catchall {:try_start_c5 .. :try_end_e4} :catchall_e5

    goto :goto_ed

    :catchall_e5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_ed
    return-object p1
.end method
