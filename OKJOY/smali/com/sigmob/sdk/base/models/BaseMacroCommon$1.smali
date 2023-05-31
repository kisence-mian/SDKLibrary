.class synthetic Lcom/sigmob/sdk/base/models/BaseMacroCommon$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/models/BaseMacroCommon;
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sigmob$sdk$base$models$BaseMacroCommon$SigmobMacro:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->values()[Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sigmob/sdk/base/models/BaseMacroCommon$1;->$SwitchMap$com$sigmob$sdk$base$models$BaseMacroCommon$SigmobMacro:[I

    :try_start_9
    sget-object v0, Lcom/sigmob/sdk/base/models/BaseMacroCommon$1;->$SwitchMap$com$sigmob$sdk$base$models$BaseMacroCommon$SigmobMacro:[I

    sget-object v1, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_MC_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_140

    :goto_14
    :try_start_14
    sget-object v0, Lcom/sigmob/sdk/base/models/BaseMacroCommon$1;->$SwitchMap$com$sigmob$sdk$base$models$BaseMacroCommon$SigmobMacro:[I

    sget-object v1, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_MAC_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_13d

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/sigmob/sdk/base/models/BaseMacroCommon$1;->$SwitchMap$com$sigmob$sdk$base$models$BaseMacroCommon$SigmobMacro:[I

    sget-object v1, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_ANDROIDID_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_13a

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/sigmob/sdk/base/models/BaseMacroCommon$1;->$SwitchMap$com$sigmob$sdk$base$models$BaseMacroCommon$SigmobMacro:[I

    sget-object v1, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_ANDROIDIDMD5_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_137

    :goto_35
    :try_start_35
    sget-object v0, Lcom/sigmob/sdk/base/models/BaseMacroCommon$1;->$SwitchMap$com$sigmob$sdk$base$models$BaseMacroCommon$SigmobMacro:[I

    sget-object v1, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_GAID_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_134

    :goto_40
    :try_start_40
    sget-object v0, Lcom/sigmob/sdk/base/models/BaseMacroCommon$1;->$SwitchMap$com$sigmob$sdk$base$models$BaseMacroCommon$SigmobMacro:[I

    sget-object v1, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_GAIDMD5_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_131

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/sigmob/sdk/base/models/BaseMacroCommon$1;->$SwitchMap$com$sigmob$sdk$base$models$BaseMacroCommon$SigmobMacro:[I

    sget-object v1, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_IMEI_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_12e

    :goto_56
    :try_start_56
    sget-object v0, Lcom/sigmob/sdk/base/models/BaseMacroCommon$1;->$SwitchMap$com$sigmob$sdk$base$models$BaseMacroCommon$SigmobMacro:[I

    sget-object v1, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_IMEIMD5_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_12b

    :goto_62
    :try_start_62
    sget-object v0, Lcom/sigmob/sdk/base/models/BaseMacroCommon$1;->$SwitchMap$com$sigmob$sdk$base$models$BaseMacroCommon$SigmobMacro:[I

    sget-object v1, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_IMEI1_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_128

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/sigmob/sdk/base/models/BaseMacroCommon$1;->$SwitchMap$com$sigmob$sdk$base$models$BaseMacroCommon$SigmobMacro:[I

    sget-object v1, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_IMEI1MD5_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_125

    :goto_7a
    :try_start_7a
    sget-object v0, Lcom/sigmob/sdk/base/models/BaseMacroCommon$1;->$SwitchMap$com$sigmob$sdk$base$models$BaseMacroCommon$SigmobMacro:[I

    sget-object v1, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_IMEI2_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_122

    :goto_86
    :try_start_86
    sget-object v0, Lcom/sigmob/sdk/base/models/BaseMacroCommon$1;->$SwitchMap$com$sigmob$sdk$base$models$BaseMacroCommon$SigmobMacro:[I

    sget-object v1, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_IMEI2MD5_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_11f

    :goto_92
    :try_start_92
    sget-object v0, Lcom/sigmob/sdk/base/models/BaseMacroCommon$1;->$SwitchMap$com$sigmob$sdk$base$models$BaseMacroCommon$SigmobMacro:[I

    sget-object v1, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_MACMD5_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_11d

    :goto_9e
    :try_start_9e
    sget-object v0, Lcom/sigmob/sdk/base/models/BaseMacroCommon$1;->$SwitchMap$com$sigmob$sdk$base$models$BaseMacroCommon$SigmobMacro:[I

    sget-object v1, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_COUNTRY_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_11b

    :goto_aa
    :try_start_aa
    sget-object v0, Lcom/sigmob/sdk/base/models/BaseMacroCommon$1;->$SwitchMap$com$sigmob$sdk$base$models$BaseMacroCommon$SigmobMacro:[I

    sget-object v1, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_BUNDLEID_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_119

    :goto_b6
    :try_start_b6
    sget-object v0, Lcom/sigmob/sdk/base/models/BaseMacroCommon$1;->$SwitchMap$com$sigmob$sdk$base$models$BaseMacroCommon$SigmobMacro:[I

    sget-object v1, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_LANGUAGE_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_117

    :goto_c2
    :try_start_c2
    sget-object v0, Lcom/sigmob/sdk/base/models/BaseMacroCommon$1;->$SwitchMap$com$sigmob$sdk$base$models$BaseMacroCommon$SigmobMacro:[I

    sget-object v1, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_OSVERSION_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_ce} :catch_115

    :goto_ce
    :try_start_ce
    sget-object v0, Lcom/sigmob/sdk/base/models/BaseMacroCommon$1;->$SwitchMap$com$sigmob$sdk$base$models$BaseMacroCommon$SigmobMacro:[I

    sget-object v1, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_TIMESTAMP_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ce .. :try_end_da} :catch_113

    :goto_da
    :try_start_da
    sget-object v0, Lcom/sigmob/sdk/base/models/BaseMacroCommon$1;->$SwitchMap$com$sigmob$sdk$base$models$BaseMacroCommon$SigmobMacro:[I

    sget-object v1, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_TIMEMILLIS_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_da .. :try_end_e6} :catch_111

    :goto_e6
    :try_start_e6
    sget-object v0, Lcom/sigmob/sdk/base/models/BaseMacroCommon$1;->$SwitchMap$com$sigmob$sdk$base$models$BaseMacroCommon$SigmobMacro:[I

    sget-object v1, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_AAID_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e6 .. :try_end_f2} :catch_10f

    :goto_f2
    :try_start_f2
    sget-object v0, Lcom/sigmob/sdk/base/models/BaseMacroCommon$1;->$SwitchMap$com$sigmob$sdk$base$models$BaseMacroCommon$SigmobMacro:[I

    sget-object v1, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_OAID_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_fe
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f2 .. :try_end_fe} :catch_10d

    :goto_fe
    :try_start_fe
    sget-object v0, Lcom/sigmob/sdk/base/models/BaseMacroCommon$1;->$SwitchMap$com$sigmob$sdk$base$models$BaseMacroCommon$SigmobMacro:[I

    sget-object v1, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_VAID_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_10a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fe .. :try_end_10a} :catch_10b

    :goto_10a
    return-void

    :catch_10b
    move-exception v0

    goto :goto_10a

    :catch_10d
    move-exception v0

    goto :goto_fe

    :catch_10f
    move-exception v0

    goto :goto_f2

    :catch_111
    move-exception v0

    goto :goto_e6

    :catch_113
    move-exception v0

    goto :goto_da

    :catch_115
    move-exception v0

    goto :goto_ce

    :catch_117
    move-exception v0

    goto :goto_c2

    :catch_119
    move-exception v0

    goto :goto_b6

    :catch_11b
    move-exception v0

    goto :goto_aa

    :catch_11d
    move-exception v0

    goto :goto_9e

    :catch_11f
    move-exception v0

    goto/16 :goto_92

    :catch_122
    move-exception v0

    goto/16 :goto_86

    :catch_125
    move-exception v0

    goto/16 :goto_7a

    :catch_128
    move-exception v0

    goto/16 :goto_6e

    :catch_12b
    move-exception v0

    goto/16 :goto_62

    :catch_12e
    move-exception v0

    goto/16 :goto_56

    :catch_131
    move-exception v0

    goto/16 :goto_4b

    :catch_134
    move-exception v0

    goto/16 :goto_40

    :catch_137
    move-exception v0

    goto/16 :goto_35

    :catch_13a
    move-exception v0

    goto/16 :goto_2a

    :catch_13d
    move-exception v0

    goto/16 :goto_1f

    :catch_140
    move-exception v0

    goto/16 :goto_14
.end method
