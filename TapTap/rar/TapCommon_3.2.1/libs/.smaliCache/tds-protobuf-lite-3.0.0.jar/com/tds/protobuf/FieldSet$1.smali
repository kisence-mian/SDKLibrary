.class synthetic Lcom/tds/protobuf/FieldSet$1;
.super Ljava/lang/Object;
.source "FieldSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/FieldSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

.field static final synthetic $SwitchMap$com$google$protobuf$WireFormat$JavaType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 670
    invoke-static {}, Lcom/tds/protobuf/WireFormat$FieldType;->values()[Lcom/tds/protobuf/WireFormat$FieldType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tds/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/tds/protobuf/WireFormat$FieldType;->DOUBLE:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v2}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    const/4 v0, 0x2

    :try_start_15
    sget-object v2, Lcom/tds/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v3, Lcom/tds/protobuf/WireFormat$FieldType;->FLOAT:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v3}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v2

    :goto_21
    const/4 v2, 0x3

    :try_start_22
    sget-object v3, Lcom/tds/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v4, Lcom/tds/protobuf/WireFormat$FieldType;->INT64:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v4}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v3

    :goto_2e
    const/4 v3, 0x4

    :try_start_2f
    sget-object v4, Lcom/tds/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v5, Lcom/tds/protobuf/WireFormat$FieldType;->UINT64:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v5}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception v4

    :goto_3b
    const/4 v4, 0x5

    :try_start_3c
    sget-object v5, Lcom/tds/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v6, Lcom/tds/protobuf/WireFormat$FieldType;->INT32:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v6}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_46} :catch_47

    goto :goto_48

    :catch_47
    move-exception v5

    :goto_48
    const/4 v5, 0x6

    :try_start_49
    sget-object v6, Lcom/tds/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v7, Lcom/tds/protobuf/WireFormat$FieldType;->FIXED64:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v7}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_53} :catch_54

    goto :goto_55

    :catch_54
    move-exception v6

    :goto_55
    const/4 v6, 0x7

    :try_start_56
    sget-object v7, Lcom/tds/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v8, Lcom/tds/protobuf/WireFormat$FieldType;->FIXED32:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v8}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_60} :catch_61

    goto :goto_62

    :catch_61
    move-exception v7

    :goto_62
    const/16 v7, 0x8

    :try_start_64
    sget-object v8, Lcom/tds/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v9, Lcom/tds/protobuf/WireFormat$FieldType;->BOOL:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v9}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_6e} :catch_6f

    goto :goto_70

    :catch_6f
    move-exception v8

    :goto_70
    const/16 v8, 0x9

    :try_start_72
    sget-object v9, Lcom/tds/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lcom/tds/protobuf/WireFormat$FieldType;->GROUP:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_7c} :catch_7d

    goto :goto_7e

    :catch_7d
    move-exception v9

    :goto_7e
    :try_start_7e
    sget-object v9, Lcom/tds/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lcom/tds/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v10

    const/16 v11, 0xa

    aput v11, v9, v10
    :try_end_8a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_8a} :catch_8b

    goto :goto_8c

    :catch_8b
    move-exception v9

    :goto_8c
    :try_start_8c
    sget-object v9, Lcom/tds/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lcom/tds/protobuf/WireFormat$FieldType;->STRING:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v10

    const/16 v11, 0xb

    aput v11, v9, v10
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_98} :catch_99

    goto :goto_9a

    :catch_99
    move-exception v9

    :goto_9a
    :try_start_9a
    sget-object v9, Lcom/tds/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lcom/tds/protobuf/WireFormat$FieldType;->BYTES:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v10

    const/16 v11, 0xc

    aput v11, v9, v10
    :try_end_a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9a .. :try_end_a6} :catch_a7

    goto :goto_a8

    :catch_a7
    move-exception v9

    :goto_a8
    :try_start_a8
    sget-object v9, Lcom/tds/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lcom/tds/protobuf/WireFormat$FieldType;->UINT32:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v10

    const/16 v11, 0xd

    aput v11, v9, v10
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b5

    goto :goto_b6

    :catch_b5
    move-exception v9

    :goto_b6
    :try_start_b6
    sget-object v9, Lcom/tds/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lcom/tds/protobuf/WireFormat$FieldType;->SFIXED32:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v10

    const/16 v11, 0xe

    aput v11, v9, v10
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_c3

    goto :goto_c4

    :catch_c3
    move-exception v9

    :goto_c4
    :try_start_c4
    sget-object v9, Lcom/tds/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lcom/tds/protobuf/WireFormat$FieldType;->SFIXED64:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v10

    const/16 v11, 0xf

    aput v11, v9, v10
    :try_end_d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c4 .. :try_end_d0} :catch_d1

    goto :goto_d2

    :catch_d1
    move-exception v9

    :goto_d2
    :try_start_d2
    sget-object v9, Lcom/tds/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lcom/tds/protobuf/WireFormat$FieldType;->SINT32:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v10

    const/16 v11, 0x10

    aput v11, v9, v10
    :try_end_de
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d2 .. :try_end_de} :catch_df

    goto :goto_e0

    :catch_df
    move-exception v9

    :goto_e0
    :try_start_e0
    sget-object v9, Lcom/tds/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lcom/tds/protobuf/WireFormat$FieldType;->SINT64:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v10

    const/16 v11, 0x11

    aput v11, v9, v10
    :try_end_ec
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e0 .. :try_end_ec} :catch_ed

    goto :goto_ee

    :catch_ed
    move-exception v9

    :goto_ee
    :try_start_ee
    sget-object v9, Lcom/tds/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lcom/tds/protobuf/WireFormat$FieldType;->ENUM:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v10

    const/16 v11, 0x12

    aput v11, v9, v10
    :try_end_fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ee .. :try_end_fa} :catch_fb

    goto :goto_fc

    :catch_fb
    move-exception v9

    .line 392
    :goto_fc
    invoke-static {}, Lcom/tds/protobuf/WireFormat$JavaType;->values()[Lcom/tds/protobuf/WireFormat$JavaType;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/tds/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    :try_start_105
    sget-object v10, Lcom/tds/protobuf/WireFormat$JavaType;->INT:Lcom/tds/protobuf/WireFormat$JavaType;

    invoke-virtual {v10}, Lcom/tds/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_10d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_105 .. :try_end_10d} :catch_10e

    goto :goto_10f

    :catch_10e
    move-exception v1

    :goto_10f
    :try_start_10f
    sget-object v1, Lcom/tds/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v9, Lcom/tds/protobuf/WireFormat$JavaType;->LONG:Lcom/tds/protobuf/WireFormat$JavaType;

    invoke-virtual {v9}, Lcom/tds/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v9

    aput v0, v1, v9
    :try_end_119
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10f .. :try_end_119} :catch_11a

    goto :goto_11b

    :catch_11a
    move-exception v0

    :goto_11b
    :try_start_11b
    sget-object v0, Lcom/tds/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v1, Lcom/tds/protobuf/WireFormat$JavaType;->FLOAT:Lcom/tds/protobuf/WireFormat$JavaType;

    invoke-virtual {v1}, Lcom/tds/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_125
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11b .. :try_end_125} :catch_126

    goto :goto_127

    :catch_126
    move-exception v0

    :goto_127
    :try_start_127
    sget-object v0, Lcom/tds/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v1, Lcom/tds/protobuf/WireFormat$JavaType;->DOUBLE:Lcom/tds/protobuf/WireFormat$JavaType;

    invoke-virtual {v1}, Lcom/tds/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_131
    .catch Ljava/lang/NoSuchFieldError; {:try_start_127 .. :try_end_131} :catch_132

    goto :goto_133

    :catch_132
    move-exception v0

    :goto_133
    :try_start_133
    sget-object v0, Lcom/tds/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v1, Lcom/tds/protobuf/WireFormat$JavaType;->BOOLEAN:Lcom/tds/protobuf/WireFormat$JavaType;

    invoke-virtual {v1}, Lcom/tds/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_13d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_133 .. :try_end_13d} :catch_13e

    goto :goto_13f

    :catch_13e
    move-exception v0

    :goto_13f
    :try_start_13f
    sget-object v0, Lcom/tds/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v1, Lcom/tds/protobuf/WireFormat$JavaType;->STRING:Lcom/tds/protobuf/WireFormat$JavaType;

    invoke-virtual {v1}, Lcom/tds/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_149
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13f .. :try_end_149} :catch_14a

    goto :goto_14b

    :catch_14a
    move-exception v0

    :goto_14b
    :try_start_14b
    sget-object v0, Lcom/tds/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v1, Lcom/tds/protobuf/WireFormat$JavaType;->BYTE_STRING:Lcom/tds/protobuf/WireFormat$JavaType;

    invoke-virtual {v1}, Lcom/tds/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_155
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14b .. :try_end_155} :catch_156

    goto :goto_157

    :catch_156
    move-exception v0

    :goto_157
    :try_start_157
    sget-object v0, Lcom/tds/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v1, Lcom/tds/protobuf/WireFormat$JavaType;->ENUM:Lcom/tds/protobuf/WireFormat$JavaType;

    invoke-virtual {v1}, Lcom/tds/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_161
    .catch Ljava/lang/NoSuchFieldError; {:try_start_157 .. :try_end_161} :catch_162

    goto :goto_163

    :catch_162
    move-exception v0

    :goto_163
    :try_start_163
    sget-object v0, Lcom/tds/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v1, Lcom/tds/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/tds/protobuf/WireFormat$JavaType;

    invoke-virtual {v1}, Lcom/tds/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_16d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_163 .. :try_end_16d} :catch_16e

    goto :goto_16f

    :catch_16e
    move-exception v0

    :goto_16f
    return-void
.end method
