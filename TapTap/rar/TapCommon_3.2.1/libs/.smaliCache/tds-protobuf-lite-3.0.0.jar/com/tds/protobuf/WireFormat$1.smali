.class synthetic Lcom/tds/protobuf/WireFormat$1;
.super Ljava/lang/Object;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/WireFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$protobuf$WireFormat$FieldType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 223
    invoke-static {}, Lcom/tds/protobuf/WireFormat$FieldType;->values()[Lcom/tds/protobuf/WireFormat$FieldType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tds/protobuf/WireFormat$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    :try_start_9
    sget-object v1, Lcom/tds/protobuf/WireFormat$FieldType;->DOUBLE:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    :try_start_14
    sget-object v0, Lcom/tds/protobuf/WireFormat$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/tds/protobuf/WireFormat$FieldType;->FLOAT:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v0

    :goto_21
    :try_start_21
    sget-object v0, Lcom/tds/protobuf/WireFormat$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/tds/protobuf/WireFormat$FieldType;->INT64:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v0

    :goto_2e
    :try_start_2e
    sget-object v0, Lcom/tds/protobuf/WireFormat$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/tds/protobuf/WireFormat$FieldType;->UINT64:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception v0

    :goto_3b
    :try_start_3b
    sget-object v0, Lcom/tds/protobuf/WireFormat$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/tds/protobuf/WireFormat$FieldType;->INT32:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_46} :catch_47

    goto :goto_48

    :catch_47
    move-exception v0

    :goto_48
    :try_start_48
    sget-object v0, Lcom/tds/protobuf/WireFormat$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/tds/protobuf/WireFormat$FieldType;->FIXED64:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_53} :catch_54

    goto :goto_55

    :catch_54
    move-exception v0

    :goto_55
    :try_start_55
    sget-object v0, Lcom/tds/protobuf/WireFormat$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/tds/protobuf/WireFormat$FieldType;->FIXED32:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_60} :catch_61

    goto :goto_62

    :catch_61
    move-exception v0

    :goto_62
    :try_start_62
    sget-object v0, Lcom/tds/protobuf/WireFormat$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/tds/protobuf/WireFormat$FieldType;->BOOL:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_6f

    goto :goto_70

    :catch_6f
    move-exception v0

    :goto_70
    :try_start_70
    sget-object v0, Lcom/tds/protobuf/WireFormat$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/tds/protobuf/WireFormat$FieldType;->BYTES:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_7c} :catch_7d

    goto :goto_7e

    :catch_7d
    move-exception v0

    :goto_7e
    :try_start_7e
    sget-object v0, Lcom/tds/protobuf/WireFormat$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/tds/protobuf/WireFormat$FieldType;->UINT32:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_8a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_8a} :catch_8b

    goto :goto_8c

    :catch_8b
    move-exception v0

    :goto_8c
    :try_start_8c
    sget-object v0, Lcom/tds/protobuf/WireFormat$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/tds/protobuf/WireFormat$FieldType;->SFIXED32:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_98} :catch_99

    goto :goto_9a

    :catch_99
    move-exception v0

    :goto_9a
    :try_start_9a
    sget-object v0, Lcom/tds/protobuf/WireFormat$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/tds/protobuf/WireFormat$FieldType;->SFIXED64:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9a .. :try_end_a6} :catch_a7

    goto :goto_a8

    :catch_a7
    move-exception v0

    :goto_a8
    :try_start_a8
    sget-object v0, Lcom/tds/protobuf/WireFormat$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/tds/protobuf/WireFormat$FieldType;->SINT32:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b5

    goto :goto_b6

    :catch_b5
    move-exception v0

    :goto_b6
    :try_start_b6
    sget-object v0, Lcom/tds/protobuf/WireFormat$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/tds/protobuf/WireFormat$FieldType;->SINT64:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_c3

    goto :goto_c4

    :catch_c3
    move-exception v0

    :goto_c4
    :try_start_c4
    sget-object v0, Lcom/tds/protobuf/WireFormat$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/tds/protobuf/WireFormat$FieldType;->STRING:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c4 .. :try_end_d0} :catch_d1

    goto :goto_d2

    :catch_d1
    move-exception v0

    :goto_d2
    :try_start_d2
    sget-object v0, Lcom/tds/protobuf/WireFormat$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/tds/protobuf/WireFormat$FieldType;->GROUP:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_de
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d2 .. :try_end_de} :catch_df

    goto :goto_e0

    :catch_df
    move-exception v0

    :goto_e0
    :try_start_e0
    sget-object v0, Lcom/tds/protobuf/WireFormat$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/tds/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ec
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e0 .. :try_end_ec} :catch_ed

    goto :goto_ee

    :catch_ed
    move-exception v0

    :goto_ee
    :try_start_ee
    sget-object v0, Lcom/tds/protobuf/WireFormat$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/tds/protobuf/WireFormat$FieldType;->ENUM:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ee .. :try_end_fa} :catch_fb

    goto :goto_fc

    :catch_fb
    move-exception v0

    :goto_fc
    return-void
.end method
