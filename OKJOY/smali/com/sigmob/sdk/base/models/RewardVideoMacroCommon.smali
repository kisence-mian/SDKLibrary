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

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mMacroMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
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

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->mMacroMap:Ljava/util/Map;

    return-void
.end method

.method private static getMacroValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_86

    :cond_8
    :goto_8
    packed-switch v0, :pswitch_data_a4

    const-string v0, "unFind"

    :goto_d
    return-object v0

    :sswitch_e
    const-string v1, "_TYPE_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    :sswitch_18
    const-string v1, "_SCENE_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :sswitch_22
    const-string v1, "_STATUS_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x2

    goto :goto_8

    :sswitch_2c
    const-string v1, "_BEHAVIOR_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x3

    goto :goto_8

    :sswitch_36
    const-string v1, "_BEGINTIME_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x4

    goto :goto_8

    :sswitch_40
    const-string v1, "_SLOTWIDTH_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x5

    goto :goto_8

    :sswitch_4a
    const-string v1, "_SLOTHEIGHT_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x6

    goto :goto_8

    :pswitch_54
    const-string v0, "1"

    goto :goto_d

    :pswitch_57
    const-string v0, "0"

    goto :goto_d

    :pswitch_5a
    const-string v0, "0"

    goto :goto_d

    :pswitch_5d
    const-string v0, "2"

    goto :goto_d

    :pswitch_60
    const-string v0, "0"

    goto :goto_d

    :pswitch_63
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ar()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :pswitch_72
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ar()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_7f} :catch_81

    move-result-object v0

    goto :goto_d

    :catch_81
    move-exception v0

    const-string v0, "unFind"

    goto :goto_d

    nop

    :sswitch_data_86
    .sparse-switch
        -0x5eca2e18 -> :sswitch_36
        -0x591a3c9a -> :sswitch_e
        -0x2779fd65 -> :sswitch_4a
        0x32e2ea92 -> :sswitch_18
        0x3520a2ce -> :sswitch_2c
        0x4647616e -> :sswitch_22
        0x7ba1c096 -> :sswitch_40
    .end sparse-switch

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_54
        :pswitch_57
        :pswitch_5a
        :pswitch_5d
        :pswitch_60
        :pswitch_63
        :pswitch_72
    .end packed-switch
.end method


# virtual methods
.method public addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->mMacroMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public macroProcess(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "_([A-Z,0-9])+_"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "macroProcess() called with: origin url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_20} :catch_f2

    move-object v1, p1

    :goto_21
    :try_start_21
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_db

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->getMacroValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "macroProcess() called with:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_65

    const-string v4, "unFind"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_65

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_63
    move-object v1, v0

    goto :goto_21

    :cond_65
    invoke-static {v3}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->getMacroValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "macroProcess() called with:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    const-string v4, "unFind"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9c

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9a
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_9a} :catch_fc

    move-result-object v0

    goto :goto_63

    :cond_9c
    :try_start_9c
    iget-object v0, p0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->mMacroMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "macroProcess() called with: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_d9

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_cf
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_cf} :catch_d1

    move-result-object v0

    goto :goto_63

    :catch_d1
    move-exception v0

    :try_start_d2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    :cond_d9
    move-object v0, v1

    goto :goto_63

    :cond_db
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "macroProcess() called with: final url "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V
    :try_end_f1
    .catch Ljava/lang/Throwable; {:try_start_d2 .. :try_end_f1} :catch_fc

    :goto_f1
    return-object v1

    :catch_f2
    move-exception v0

    move-object v1, p1

    :goto_f4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_f1

    :catch_fc
    move-exception v0

    goto :goto_f4
.end method
