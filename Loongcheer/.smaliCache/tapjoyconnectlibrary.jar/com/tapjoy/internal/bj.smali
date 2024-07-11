.class public final Lcom/tapjoy/internal/bj;
.super Lcom/tapjoy/internal/bi;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tapjoy/internal/bi$a;


# instance fields
.field private final b:Lcom/tapjoy/internal/ce;

.field private final c:Ljava/io/Reader;

.field private d:Z

.field private final e:[C

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tapjoy/internal/bl;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/tapjoy/internal/bn;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 193
    new-instance v0, Lcom/tapjoy/internal/bj$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/bj$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/bj;->a:Lcom/tapjoy/internal/bi$a;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4

    .line 260
    invoke-direct {p0}, Lcom/tapjoy/internal/bi;-><init>()V

    .line 208
    new-instance v0, Lcom/tapjoy/internal/ce;

    invoke-direct {v0}, Lcom/tapjoy/internal/ce;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/bj;->b:Lcom/tapjoy/internal/ce;

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/bj;->d:Z

    .line 222
    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/tapjoy/internal/bj;->e:[C

    .line 223
    iput v0, p0, Lcom/tapjoy/internal/bj;->f:I

    .line 224
    iput v0, p0, Lcom/tapjoy/internal/bj;->g:I

    .line 229
    const/4 v1, 0x1

    iput v1, p0, Lcom/tapjoy/internal/bj;->h:I

    .line 230
    iput v1, p0, Lcom/tapjoy/internal/bj;->i:I

    .line 232
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tapjoy/internal/bj;->j:Ljava/util/List;

    .line 234
    sget-object v1, Lcom/tapjoy/internal/bl;->f:Lcom/tapjoy/internal/bl;

    invoke-direct {p0, v1}, Lcom/tapjoy/internal/bj;->a(Lcom/tapjoy/internal/bl;)V

    .line 255
    iput-boolean v0, p0, Lcom/tapjoy/internal/bj;->p:Z

    .line 261
    if-eqz p1, :cond_2f

    .line 264
    iput-object p1, p0, Lcom/tapjoy/internal/bj;->c:Ljava/io/Reader;

    .line 265
    return-void

    .line 262
    :cond_2f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "in == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private A()V
    .registers 4

    .line 897
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/bj;->f:I

    iget v1, p0, Lcom/tapjoy/internal/bj;->g:I

    if-lt v0, v1, :cond_d

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 898
    :cond_d
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v1, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tapjoy/internal/bj;->f:I

    aget-char v0, v0, v1

    .line 899
    const/16 v1, 0xd

    if-eq v0, v1, :cond_1f

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 903
    :cond_1f
    return-void
.end method

.method private B()C
    .registers 5

    .line 1063
    iget v0, p0, Lcom/tapjoy/internal/bj;->f:I

    iget v1, p0, Lcom/tapjoy/internal/bj;->g:I

    const-string v2, "Unterminated escape sequence"

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->a(I)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_15

    .line 1064
    :cond_10
    invoke-direct {p0, v2}, Lcom/tapjoy/internal/bj;->e(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1067
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v1, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/tapjoy/internal/bj;->f:I

    aget-char v0, v0, v1

    .line 1068
    sparse-switch v0, :sswitch_data_5c

    .line 1096
    return v0

    .line 1070
    :sswitch_23
    const/4 v0, 0x4

    add-int/2addr v3, v0

    iget v1, p0, Lcom/tapjoy/internal/bj;->g:I

    if-le v3, v1, :cond_35

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->a(I)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_35

    .line 1071
    :cond_30
    invoke-direct {p0, v2}, Lcom/tapjoy/internal/bj;->e(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1073
    :cond_35
    :goto_35
    iget-object v1, p0, Lcom/tapjoy/internal/bj;->b:Lcom/tapjoy/internal/ce;

    iget-object v2, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v3, p0, Lcom/tapjoy/internal/bj;->f:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/tapjoy/internal/ce;->a([CII)Ljava/lang/String;

    move-result-object v1

    .line 1074
    iget v2, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/tapjoy/internal/bj;->f:I

    .line 1075
    const/16 v0, 0x10

    invoke-static {v1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    return v0

    .line 1078
    :sswitch_4c
    const/16 v0, 0x9

    return v0

    .line 1087
    :sswitch_4f
    const/16 v0, 0xd

    return v0

    .line 1084
    :sswitch_52
    const/16 v0, 0xa

    return v0

    .line 1090
    :sswitch_55
    const/16 v0, 0xc

    return v0

    .line 1081
    :sswitch_58
    const/16 v0, 0x8

    return v0

    nop

    :sswitch_data_5c
    .sparse-switch
        0x62 -> :sswitch_58
        0x66 -> :sswitch_55
        0x6e -> :sswitch_52
        0x72 -> :sswitch_4f
        0x74 -> :sswitch_4c
        0x75 -> :sswitch_23
    .end sparse-switch
.end method

.method private C()Lcom/tapjoy/internal/bn;
    .registers 3

    .line 1104
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->c(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    .line 1105
    iget v0, p0, Lcom/tapjoy/internal/bj;->o:I

    if-eqz v0, :cond_1b

    .line 1108
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->D()Lcom/tapjoy/internal/bn;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    .line 1109
    sget-object v1, Lcom/tapjoy/internal/bn;->f:Lcom/tapjoy/internal/bn;

    if-ne v0, v1, :cond_18

    .line 1110
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->z()V

    .line 1112
    :cond_18
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    return-object v0

    .line 1106
    :cond_1b
    const-string v0, "Expected literal value"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->e(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private D()Lcom/tapjoy/internal/bn;
    .registers 12

    .line 1119
    iget v0, p0, Lcom/tapjoy/internal/bj;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 1121
    sget-object v0, Lcom/tapjoy/internal/bn;->f:Lcom/tapjoy/internal/bn;

    return-object v0

    .line 1122
    :cond_8
    iget v1, p0, Lcom/tapjoy/internal/bj;->o:I

    const/16 v2, 0x55

    const/16 v3, 0x75

    const/16 v4, 0x4c

    const/16 v5, 0x6c

    const/4 v6, 0x4

    if-ne v1, v6, :cond_4e

    const/16 v7, 0x6e

    iget-object v8, p0, Lcom/tapjoy/internal/bj;->e:[C

    aget-char v9, v8, v0

    if-eq v7, v9, :cond_23

    const/16 v7, 0x4e

    aget-char v9, v8, v0

    if-ne v7, v9, :cond_4e

    :cond_23
    add-int/lit8 v7, v0, 0x1

    aget-char v7, v8, v7

    if-eq v3, v7, :cond_2f

    add-int/lit8 v7, v0, 0x1

    aget-char v7, v8, v7

    if-ne v2, v7, :cond_4e

    :cond_2f
    add-int/lit8 v7, v0, 0x2

    aget-char v7, v8, v7

    if-eq v5, v7, :cond_3b

    add-int/lit8 v7, v0, 0x2

    aget-char v7, v8, v7

    if-ne v4, v7, :cond_4e

    :cond_3b
    add-int/lit8 v7, v0, 0x3

    aget-char v7, v8, v7

    if-eq v5, v7, :cond_47

    add-int/lit8 v7, v0, 0x3

    aget-char v7, v8, v7

    if-ne v4, v7, :cond_4e

    .line 1126
    :cond_47
    const-string v0, "null"

    iput-object v0, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    .line 1127
    sget-object v0, Lcom/tapjoy/internal/bn;->i:Lcom/tapjoy/internal/bn;

    return-object v0

    .line 1128
    :cond_4e
    const/16 v7, 0x45

    const/16 v8, 0x65

    if-ne v1, v6, :cond_91

    const/16 v6, 0x74

    iget-object v9, p0, Lcom/tapjoy/internal/bj;->e:[C

    aget-char v10, v9, v0

    if-eq v6, v10, :cond_62

    const/16 v6, 0x54

    aget-char v10, v9, v0

    if-ne v6, v10, :cond_91

    :cond_62
    const/16 v6, 0x72

    add-int/lit8 v10, v0, 0x1

    aget-char v10, v9, v10

    if-eq v6, v10, :cond_72

    const/16 v6, 0x52

    add-int/lit8 v10, v0, 0x1

    aget-char v10, v9, v10

    if-ne v6, v10, :cond_91

    :cond_72
    add-int/lit8 v6, v0, 0x2

    aget-char v6, v9, v6

    if-eq v3, v6, :cond_7e

    add-int/lit8 v3, v0, 0x2

    aget-char v3, v9, v3

    if-ne v2, v3, :cond_91

    :cond_7e
    add-int/lit8 v2, v0, 0x3

    aget-char v2, v9, v2

    if-eq v8, v2, :cond_8a

    add-int/lit8 v2, v0, 0x3

    aget-char v2, v9, v2

    if-ne v7, v2, :cond_91

    .line 1132
    :cond_8a
    const-string v0, "true"

    iput-object v0, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    .line 1133
    sget-object v0, Lcom/tapjoy/internal/bn;->h:Lcom/tapjoy/internal/bn;

    return-object v0

    .line 1134
    :cond_91
    const/4 v2, 0x5

    if-ne v1, v2, :cond_e1

    const/16 v2, 0x66

    iget-object v3, p0, Lcom/tapjoy/internal/bj;->e:[C

    aget-char v6, v3, v0

    if-eq v2, v6, :cond_a2

    const/16 v2, 0x46

    aget-char v6, v3, v0

    if-ne v2, v6, :cond_e1

    :cond_a2
    const/16 v2, 0x61

    add-int/lit8 v6, v0, 0x1

    aget-char v6, v3, v6

    if-eq v2, v6, :cond_b2

    const/16 v2, 0x41

    add-int/lit8 v6, v0, 0x1

    aget-char v6, v3, v6

    if-ne v2, v6, :cond_e1

    :cond_b2
    add-int/lit8 v2, v0, 0x2

    aget-char v2, v3, v2

    if-eq v5, v2, :cond_be

    add-int/lit8 v2, v0, 0x2

    aget-char v2, v3, v2

    if-ne v4, v2, :cond_e1

    :cond_be
    const/16 v2, 0x73

    add-int/lit8 v4, v0, 0x3

    aget-char v4, v3, v4

    if-eq v2, v4, :cond_ce

    const/16 v2, 0x53

    add-int/lit8 v4, v0, 0x3

    aget-char v4, v3, v4

    if-ne v2, v4, :cond_e1

    :cond_ce
    add-int/lit8 v2, v0, 0x4

    aget-char v2, v3, v2

    if-eq v8, v2, :cond_da

    add-int/lit8 v2, v0, 0x4

    aget-char v2, v3, v2

    if-ne v7, v2, :cond_e1

    .line 1139
    :cond_da
    const-string v0, "false"

    iput-object v0, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    .line 1140
    sget-object v0, Lcom/tapjoy/internal/bn;->h:Lcom/tapjoy/internal/bn;

    return-object v0

    .line 1142
    :cond_e1
    iget-object v2, p0, Lcom/tapjoy/internal/bj;->b:Lcom/tapjoy/internal/ce;

    iget-object v3, p0, Lcom/tapjoy/internal/bj;->e:[C

    invoke-virtual {v2, v3, v0, v1}, Lcom/tapjoy/internal/ce;->a([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    .line 1143
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v1, p0, Lcom/tapjoy/internal/bj;->n:I

    iget v2, p0, Lcom/tapjoy/internal/bj;->o:I

    invoke-static {v0, v1, v2}, Lcom/tapjoy/internal/bj;->a([CII)Lcom/tapjoy/internal/bn;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)Lcom/tapjoy/internal/bn;
    .registers 3

    .line 637
    if-eqz p1, :cond_8

    .line 638
    sget-object v0, Lcom/tapjoy/internal/bl;->b:Lcom/tapjoy/internal/bl;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->b(Lcom/tapjoy/internal/bl;)V

    goto :goto_22

    .line 641
    :cond_8
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->y()I

    move-result v0

    sparse-switch v0, :sswitch_data_50

    .line 650
    const-string p1, "Unterminated array"

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/bj;->e(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 643
    :sswitch_16
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->u()Lcom/tapjoy/internal/bl;

    .line 644
    sget-object p1, Lcom/tapjoy/internal/bn;->b:Lcom/tapjoy/internal/bn;

    iput-object p1, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    return-object p1

    .line 646
    :sswitch_1e
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->z()V

    .line 648
    :sswitch_21
    nop

    .line 654
    :goto_22
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->y()I

    move-result v0

    sparse-switch v0, :sswitch_data_5e

    .line 669
    iget p1, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/tapjoy/internal/bj;->f:I

    .line 670
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->v()Lcom/tapjoy/internal/bn;

    move-result-object p1

    return-object p1

    .line 656
    :sswitch_34
    if-eqz p1, :cond_3e

    .line 657
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->u()Lcom/tapjoy/internal/bl;

    .line 658
    sget-object p1, Lcom/tapjoy/internal/bn;->b:Lcom/tapjoy/internal/bn;

    iput-object p1, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    return-object p1

    .line 664
    :cond_3e
    :sswitch_3e
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->z()V

    .line 665
    iget p1, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/tapjoy/internal/bj;->f:I

    .line 666
    const-string p1, "null"

    iput-object p1, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    .line 667
    sget-object p1, Lcom/tapjoy/internal/bn;->i:Lcom/tapjoy/internal/bn;

    iput-object p1, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    return-object p1

    :sswitch_data_50
    .sparse-switch
        0x2c -> :sswitch_21
        0x3b -> :sswitch_1e
        0x5d -> :sswitch_16
    .end sparse-switch

    :sswitch_data_5e
    .sparse-switch
        0x2c -> :sswitch_3e
        0x3b -> :sswitch_3e
        0x5d -> :sswitch_34
    .end sparse-switch
.end method

.method private static a([CII)Lcom/tapjoy/internal/bn;
    .registers 10

    .line 1154
    nop

    .line 1155
    aget-char v0, p0, p1

    .line 1157
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_f

    .line 1158
    add-int/lit8 v0, p1, 0x1

    aget-char v2, p0, v0

    move v6, v2

    move v2, v0

    move v0, v6

    goto :goto_10

    .line 1157
    :cond_f
    move v2, p1

    .line 1161
    :goto_10
    const/16 v3, 0x39

    const/16 v4, 0x30

    if-ne v0, v4, :cond_1b

    .line 1162
    add-int/lit8 v2, v2, 0x1

    aget-char v0, p0, v2

    goto :goto_2e

    .line 1163
    :cond_1b
    const/16 v5, 0x31

    if-lt v0, v5, :cond_72

    if-gt v0, v3, :cond_72

    .line 1164
    add-int/lit8 v2, v2, 0x1

    aget-char v0, p0, v2

    .line 1165
    :goto_25
    if-lt v0, v4, :cond_2e

    if-gt v0, v3, :cond_2e

    .line 1166
    add-int/lit8 v2, v2, 0x1

    aget-char v0, p0, v2

    goto :goto_25

    .line 1172
    :cond_2e
    :goto_2e
    const/16 v5, 0x2e

    if-ne v0, v5, :cond_3f

    .line 1173
    add-int/lit8 v2, v2, 0x1

    aget-char v0, p0, v2

    .line 1174
    :goto_36
    if-lt v0, v4, :cond_3f

    if-gt v0, v3, :cond_3f

    .line 1175
    add-int/lit8 v2, v2, 0x1

    aget-char v0, p0, v2

    goto :goto_36

    .line 1179
    :cond_3f
    const/16 v5, 0x65

    if-eq v0, v5, :cond_47

    const/16 v5, 0x45

    if-ne v0, v5, :cond_66

    .line 1180
    :cond_47
    add-int/lit8 v2, v2, 0x1

    aget-char v0, p0, v2

    .line 1181
    const/16 v5, 0x2b

    if-eq v0, v5, :cond_51

    if-ne v0, v1, :cond_55

    .line 1182
    :cond_51
    add-int/lit8 v2, v2, 0x1

    aget-char v0, p0, v2

    .line 1184
    :cond_55
    if-lt v0, v4, :cond_6f

    if-gt v0, v3, :cond_6f

    .line 1185
    add-int/lit8 v2, v2, 0x1

    aget-char v0, p0, v2

    .line 1186
    :goto_5d
    if-lt v0, v4, :cond_66

    if-gt v0, v3, :cond_66

    .line 1187
    add-int/lit8 v2, v2, 0x1

    aget-char v0, p0, v2

    goto :goto_5d

    .line 1194
    :cond_66
    add-int/2addr p1, p2

    if-ne v2, p1, :cond_6c

    .line 1195
    sget-object p0, Lcom/tapjoy/internal/bn;->g:Lcom/tapjoy/internal/bn;

    return-object p0

    .line 1197
    :cond_6c
    sget-object p0, Lcom/tapjoy/internal/bn;->f:Lcom/tapjoy/internal/bn;

    return-object p0

    .line 1190
    :cond_6f
    sget-object p0, Lcom/tapjoy/internal/bn;->f:Lcom/tapjoy/internal/bn;

    return-object p0

    .line 1169
    :cond_72
    sget-object p0, Lcom/tapjoy/internal/bn;->f:Lcom/tapjoy/internal/bn;

    return-object p0
.end method

.method private a(C)Ljava/lang/String;
    .registers 8

    .line 929
    const/4 v0, 0x0

    .line 932
    :goto_1
    iget v1, p0, Lcom/tapjoy/internal/bj;->f:I

    .line 933
    :goto_3
    iget v2, p0, Lcom/tapjoy/internal/bj;->f:I

    iget v3, p0, Lcom/tapjoy/internal/bj;->g:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_4e

    .line 934
    iget-object v3, p0, Lcom/tapjoy/internal/bj;->e:[C

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/tapjoy/internal/bj;->f:I

    aget-char v2, v3, v2

    .line 936
    if-ne v2, p1, :cond_30

    .line 937
    iget-boolean p1, p0, Lcom/tapjoy/internal/bj;->p:Z

    if-eqz p1, :cond_1b

    .line 938
    const-string p1, "skipped!"

    return-object p1

    .line 939
    :cond_1b
    if-nez v0, :cond_26

    .line 940
    iget-object p1, p0, Lcom/tapjoy/internal/bj;->b:Lcom/tapjoy/internal/ce;

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {p1, v3, v1, v5}, Lcom/tapjoy/internal/ce;->a([CII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 942
    :cond_26
    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {v0, v3, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 943
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 946
    :cond_30
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_4d

    .line 947
    if-nez v0, :cond_3b

    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 950
    :cond_3b
    iget-object v2, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v3, p0, Lcom/tapjoy/internal/bj;->f:I

    sub-int/2addr v3, v1

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 951
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->B()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 952
    iget v1, p0, Lcom/tapjoy/internal/bj;->f:I

    .line 954
    :cond_4d
    goto :goto_3

    .line 956
    :cond_4e
    if-nez v0, :cond_55

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 959
    :cond_55
    iget-object v2, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v3, p0, Lcom/tapjoy/internal/bj;->f:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 960
    invoke-direct {p0, v4}, Lcom/tapjoy/internal/bj;->a(I)Z

    move-result v1

    if-eqz v1, :cond_64

    goto :goto_1

    .line 962
    :cond_64
    const-string p1, "Unterminated string"

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/bj;->e(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_6c

    :goto_6b
    throw p1

    :goto_6c
    goto :goto_6b
.end method

.method private a(Lcom/tapjoy/internal/bl;)V
    .registers 3

    .line 626
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    return-void
.end method

.method private a(Lcom/tapjoy/internal/bn;)V
    .registers 5

    .line 341
    invoke-virtual {p0}, Lcom/tapjoy/internal/bj;->k()Lcom/tapjoy/internal/bn;

    .line 342
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    if-ne v0, p1, :cond_b

    .line 345
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->t()Lcom/tapjoy/internal/bn;

    .line 346
    return-void

    .line 343
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " but was "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tapjoy/internal/bj;->k()Lcom/tapjoy/internal/bn;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(I)Z
    .registers 8

    .line 774
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lcom/tapjoy/internal/bj;->f:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1f

    .line 775
    iget-object v2, p0, Lcom/tapjoy/internal/bj;->e:[C

    aget-char v2, v2, v1

    const/16 v4, 0xa

    if-ne v2, v4, :cond_17

    .line 776
    iget v2, p0, Lcom/tapjoy/internal/bj;->h:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/tapjoy/internal/bj;->h:I

    .line 777
    iput v3, p0, Lcom/tapjoy/internal/bj;->i:I

    goto :goto_1c

    .line 779
    :cond_17
    iget v2, p0, Lcom/tapjoy/internal/bj;->i:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/tapjoy/internal/bj;->i:I

    .line 774
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 783
    :cond_1f
    iget v1, p0, Lcom/tapjoy/internal/bj;->g:I

    if-eq v1, v2, :cond_2c

    .line 784
    sub-int/2addr v1, v2

    iput v1, p0, Lcom/tapjoy/internal/bj;->g:I

    .line 785
    iget-object v4, p0, Lcom/tapjoy/internal/bj;->e:[C

    invoke-static {v4, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2e

    .line 787
    :cond_2c
    iput v0, p0, Lcom/tapjoy/internal/bj;->g:I

    .line 790
    :goto_2e
    iput v0, p0, Lcom/tapjoy/internal/bj;->f:I

    .line 792
    :cond_30
    iget-object v1, p0, Lcom/tapjoy/internal/bj;->c:Ljava/io/Reader;

    iget-object v2, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v4, p0, Lcom/tapjoy/internal/bj;->g:I

    array-length v5, v2

    sub-int/2addr v5, v4

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_63

    .line 793
    iget v2, p0, Lcom/tapjoy/internal/bj;->g:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/tapjoy/internal/bj;->g:I

    .line 796
    iget v1, p0, Lcom/tapjoy/internal/bj;->h:I

    if-ne v1, v3, :cond_60

    iget v1, p0, Lcom/tapjoy/internal/bj;->i:I

    if-ne v1, v3, :cond_60

    if-lez v2, :cond_60

    iget-object v4, p0, Lcom/tapjoy/internal/bj;->e:[C

    aget-char v4, v4, v0

    const v5, 0xfeff

    if-ne v4, v5, :cond_60

    .line 797
    iget v4, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/tapjoy/internal/bj;->f:I

    .line 798
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/tapjoy/internal/bj;->i:I

    .line 801
    :cond_60
    if-lt v2, p1, :cond_30

    .line 802
    return v3

    .line 805
    :cond_63
    return v0
.end method

.method private b(Z)Lcom/tapjoy/internal/bn;
    .registers 2

    .line 680
    if-eqz p1, :cond_18

    .line 682
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->y()I

    move-result p1

    packed-switch p1, :pswitch_data_6a

    .line 687
    iget p1, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/tapjoy/internal/bj;->f:I

    goto :goto_2f

    .line 684
    :pswitch_10
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->u()Lcom/tapjoy/internal/bl;

    .line 685
    sget-object p1, Lcom/tapjoy/internal/bn;->d:Lcom/tapjoy/internal/bn;

    iput-object p1, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    return-object p1

    .line 690
    :cond_18
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->y()I

    move-result p1

    sparse-switch p1, :sswitch_data_70

    .line 698
    const-string p1, "Unterminated object"

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/bj;->e(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 692
    :sswitch_26
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->u()Lcom/tapjoy/internal/bl;

    .line 693
    sget-object p1, Lcom/tapjoy/internal/bn;->d:Lcom/tapjoy/internal/bn;

    iput-object p1, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    return-object p1

    .line 696
    :sswitch_2e
    nop

    .line 703
    :goto_2f
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->y()I

    move-result p1

    .line 704
    sparse-switch p1, :sswitch_data_7e

    .line 711
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->z()V

    .line 712
    iget p1, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/tapjoy/internal/bj;->f:I

    .line 713
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/bj;->c(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/bj;->l:Ljava/lang/String;

    .line 714
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_62

    goto :goto_58

    .line 706
    :sswitch_4d
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->z()V

    .line 708
    :sswitch_50
    int-to-char p1, p1

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/bj;->a(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/bj;->l:Ljava/lang/String;

    .line 709
    nop

    .line 719
    :goto_58
    sget-object p1, Lcom/tapjoy/internal/bl;->d:Lcom/tapjoy/internal/bl;

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/bj;->b(Lcom/tapjoy/internal/bl;)V

    .line 720
    sget-object p1, Lcom/tapjoy/internal/bn;->e:Lcom/tapjoy/internal/bn;

    iput-object p1, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    return-object p1

    .line 715
    :cond_62
    const-string p1, "Expected name"

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/bj;->e(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    nop

    :pswitch_data_6a
    .packed-switch 0x7d
        :pswitch_10
    .end packed-switch

    :sswitch_data_70
    .sparse-switch
        0x2c -> :sswitch_2e
        0x3b -> :sswitch_2e
        0x7d -> :sswitch_26
    .end sparse-switch

    :sswitch_data_7e
    .sparse-switch
        0x22 -> :sswitch_50
        0x27 -> :sswitch_4d
    .end sparse-switch
.end method

.method private b(Lcom/tapjoy/internal/bl;)V
    .registers 4

    .line 633
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 634
    return-void
.end method

.method private c(Z)Ljava/lang/String;
    .registers 9

    .line 975
    nop

    .line 976
    const/4 v0, -0x1

    iput v0, p0, Lcom/tapjoy/internal/bj;->n:I

    .line 977
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/bj;->o:I

    .line 978
    const/4 v1, 0x0

    move-object v3, v1

    const/4 v2, 0x0

    .line 981
    :cond_a
    :goto_a
    iget v4, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int v5, v4, v2

    iget v6, p0, Lcom/tapjoy/internal/bj;->g:I

    if-ge v5, v6, :cond_21

    .line 982
    iget-object v5, p0, Lcom/tapjoy/internal/bj;->e:[C

    add-int/2addr v4, v2

    aget-char v4, v5, v4

    sparse-switch v4, :sswitch_data_8e

    .line 981
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 988
    :sswitch_1d
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->z()V

    .line 1000
    :sswitch_20
    goto :goto_35

    .line 1009
    :cond_21
    iget-object v4, p0, Lcom/tapjoy/internal/bj;->e:[C

    array-length v4, v4

    if-ge v2, v4, :cond_37

    .line 1010
    add-int/lit8 v4, v2, 0x1

    invoke-direct {p0, v4}, Lcom/tapjoy/internal/bj;->a(I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1013
    iget-object v4, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v5, p0, Lcom/tapjoy/internal/bj;->g:I

    aput-char v0, v4, v5

    .line 1014
    nop

    .line 1032
    :goto_35
    move v0, v2

    goto :goto_57

    .line 1019
    :cond_37
    if-nez v3, :cond_3e

    .line 1020
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1022
    :cond_3e
    iget-object v4, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v5, p0, Lcom/tapjoy/internal/bj;->f:I

    invoke-virtual {v3, v4, v5, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1023
    iget v4, p0, Lcom/tapjoy/internal/bj;->o:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/tapjoy/internal/bj;->o:I

    .line 1024
    iget v4, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/tapjoy/internal/bj;->f:I

    .line 1025
    nop

    .line 1026
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/tapjoy/internal/bj;->a(I)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 1032
    :goto_57
    if-eqz p1, :cond_60

    if-nez v3, :cond_60

    .line 1033
    iget p1, p0, Lcom/tapjoy/internal/bj;->f:I

    iput p1, p0, Lcom/tapjoy/internal/bj;->n:I

    .line 1034
    goto :goto_7f

    .line 1035
    :cond_60
    iget-boolean p1, p0, Lcom/tapjoy/internal/bj;->p:Z

    if-eqz p1, :cond_67

    .line 1036
    const-string v1, "skipped!"

    goto :goto_7f

    .line 1037
    :cond_67
    if-nez v3, :cond_74

    .line 1038
    iget-object p1, p0, Lcom/tapjoy/internal/bj;->b:Lcom/tapjoy/internal/ce;

    iget-object v1, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v2, p0, Lcom/tapjoy/internal/bj;->f:I

    invoke-virtual {p1, v1, v2, v0}, Lcom/tapjoy/internal/ce;->a([CII)Ljava/lang/String;

    move-result-object v1

    goto :goto_7f

    .line 1040
    :cond_74
    iget-object p1, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v1, p0, Lcom/tapjoy/internal/bj;->f:I

    invoke-virtual {v3, p1, v1, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1041
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1043
    :goto_7f
    iget p1, p0, Lcom/tapjoy/internal/bj;->o:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/tapjoy/internal/bj;->o:I

    .line 1044
    iget p1, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/tapjoy/internal/bj;->f:I

    .line 1045
    return-object v1

    .line 1026
    :cond_8a
    const/4 v2, 0x0

    goto/16 :goto_a

    nop

    :sswitch_data_8e
    .sparse-switch
        0x9 -> :sswitch_20
        0xa -> :sswitch_20
        0xc -> :sswitch_20
        0xd -> :sswitch_20
        0x20 -> :sswitch_20
        0x23 -> :sswitch_1d
        0x2c -> :sswitch_20
        0x2f -> :sswitch_1d
        0x3a -> :sswitch_20
        0x3b -> :sswitch_1d
        0x3d -> :sswitch_1d
        0x5b -> :sswitch_20
        0x5c -> :sswitch_1d
        0x5d -> :sswitch_20
        0x7b -> :sswitch_20
        0x7d -> :sswitch_20
    .end sparse-switch
.end method

.method private d(Ljava/lang/String;)Z
    .registers 6

    .line 906
    :goto_0
    iget v0, p0, Lcom/tapjoy/internal/bj;->f:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tapjoy/internal/bj;->g:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->a(I)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_18

    .line 914
    :cond_17
    return v2

    .line 907
    :cond_18
    :goto_18
    nop

    :goto_19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v2, v0, :cond_36

    .line 908
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v3, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int/2addr v3, v2

    aget-char v0, v0, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v0, v3, :cond_30

    .line 907
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 906
    :cond_30
    iget v0, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/bj;->f:I

    goto :goto_0

    .line 912
    :cond_36
    return v1
.end method

.method private e(Ljava/lang/String;)Ljava/io/IOException;
    .registers 4

    .line 1206
    new-instance v0, Lcom/tapjoy/internal/bp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " at line "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->w()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " column "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1207
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->x()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/bp;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private t()Lcom/tapjoy/internal/bn;
    .registers 3

    .line 405
    invoke-virtual {p0}, Lcom/tapjoy/internal/bj;->k()Lcom/tapjoy/internal/bn;

    .line 407
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    .line 408
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    .line 409
    iput-object v1, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    .line 410
    iput-object v1, p0, Lcom/tapjoy/internal/bj;->l:Ljava/lang/String;

    .line 411
    return-object v0
.end method

.method private u()Lcom/tapjoy/internal/bl;
    .registers 3

    .line 622
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/bl;

    return-object v0
.end method

.method private v()Lcom/tapjoy/internal/bn;
    .registers 2

    .line 746
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->y()I

    move-result v0

    .line 747
    sparse-switch v0, :sswitch_data_36

    .line 763
    iget v0, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tapjoy/internal/bj;->f:I

    .line 764
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->C()Lcom/tapjoy/internal/bn;

    move-result-object v0

    return-object v0

    .line 749
    :sswitch_12
    sget-object v0, Lcom/tapjoy/internal/bl;->c:Lcom/tapjoy/internal/bl;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->a(Lcom/tapjoy/internal/bl;)V

    .line 750
    sget-object v0, Lcom/tapjoy/internal/bn;->c:Lcom/tapjoy/internal/bn;

    iput-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    return-object v0

    .line 753
    :sswitch_1c
    sget-object v0, Lcom/tapjoy/internal/bl;->a:Lcom/tapjoy/internal/bl;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->a(Lcom/tapjoy/internal/bl;)V

    .line 754
    sget-object v0, Lcom/tapjoy/internal/bn;->a:Lcom/tapjoy/internal/bn;

    iput-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    return-object v0

    .line 757
    :sswitch_26
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->z()V

    .line 759
    :sswitch_29
    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->a(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    .line 760
    sget-object v0, Lcom/tapjoy/internal/bn;->f:Lcom/tapjoy/internal/bn;

    iput-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    return-object v0

    nop

    :sswitch_data_36
    .sparse-switch
        0x22 -> :sswitch_29
        0x27 -> :sswitch_26
        0x5b -> :sswitch_1c
        0x7b -> :sswitch_12
    .end sparse-switch
.end method

.method private w()I
    .registers 5

    .line 809
    iget v0, p0, Lcom/tapjoy/internal/bj;->h:I

    .line 810
    const/4 v1, 0x0

    :goto_3
    iget v2, p0, Lcom/tapjoy/internal/bj;->f:I

    if-ge v1, v2, :cond_14

    .line 811
    iget-object v2, p0, Lcom/tapjoy/internal/bj;->e:[C

    aget-char v2, v2, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_11

    .line 812
    add-int/lit8 v0, v0, 0x1

    .line 810
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 815
    :cond_14
    return v0
.end method

.method private x()I
    .registers 5

    .line 819
    iget v0, p0, Lcom/tapjoy/internal/bj;->i:I

    .line 820
    const/4 v1, 0x0

    :goto_3
    iget v2, p0, Lcom/tapjoy/internal/bj;->f:I

    if-ge v1, v2, :cond_16

    .line 821
    iget-object v2, p0, Lcom/tapjoy/internal/bj;->e:[C

    aget-char v2, v2, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_11

    .line 822
    const/4 v0, 0x1

    goto :goto_13

    .line 824
    :cond_11
    add-int/lit8 v0, v0, 0x1

    .line 820
    :goto_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 827
    :cond_16
    return v0
.end method

.method private y()I
    .registers 5

    .line 831
    :goto_0
    iget v0, p0, Lcom/tapjoy/internal/bj;->f:I

    iget v1, p0, Lcom/tapjoy/internal/bj;->g:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_16

    invoke-direct {p0, v2}, Lcom/tapjoy/internal/bj;->a(I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_16

    .line 882
    :cond_e
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "End of input"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 832
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v1, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/tapjoy/internal/bj;->f:I

    aget-char v0, v0, v1

    .line 833
    sparse-switch v0, :sswitch_data_66

    .line 878
    return v0

    .line 841
    :sswitch_24
    iget v1, p0, Lcom/tapjoy/internal/bj;->g:I

    if-ne v3, v1, :cond_2f

    invoke-direct {p0, v2}, Lcom/tapjoy/internal/bj;->a(I)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 842
    return v0

    .line 845
    :cond_2f
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->z()V

    .line 846
    iget-object v1, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v2, p0, Lcom/tapjoy/internal/bj;->f:I

    aget-char v1, v1, v2

    .line 847
    sparse-switch v1, :sswitch_data_80

    .line 864
    return v0

    .line 859
    :sswitch_3c
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tapjoy/internal/bj;->f:I

    .line 860
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->A()V

    .line 861
    goto :goto_0

    .line 850
    :sswitch_44
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tapjoy/internal/bj;->f:I

    .line 851
    const-string v0, "*/"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 854
    iget v0, p0, Lcom/tapjoy/internal/bj;->f:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/bj;->f:I

    .line 855
    goto :goto_0

    .line 852
    :cond_57
    const-string v0, "Unterminated comment"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->e(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 873
    :sswitch_5e
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->z()V

    .line 874
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->A()V

    .line 875
    goto :goto_0

    .line 838
    :sswitch_65
    goto :goto_0

    :sswitch_data_66
    .sparse-switch
        0x9 -> :sswitch_65
        0xa -> :sswitch_65
        0xd -> :sswitch_65
        0x20 -> :sswitch_65
        0x23 -> :sswitch_5e
        0x2f -> :sswitch_24
    .end sparse-switch

    :sswitch_data_80
    .sparse-switch
        0x2a -> :sswitch_44
        0x2f -> :sswitch_3c
    .end sparse-switch
.end method

.method private z()V
    .registers 2

    .line 886
    iget-boolean v0, p0, Lcom/tapjoy/internal/bj;->d:Z

    if-eqz v0, :cond_5

    .line 889
    return-void

    .line 887
    :cond_5
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->e(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final close()V
    .registers 3

    .line 581
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    .line 582
    iput-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    .line 583
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 584
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->j:Ljava/util/List;

    sget-object v1, Lcom/tapjoy/internal/bl;->h:Lcom/tapjoy/internal/bl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->c:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 586
    return-void
.end method

.method public final f()V
    .registers 2

    .line 307
    sget-object v0, Lcom/tapjoy/internal/bn;->a:Lcom/tapjoy/internal/bn;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->a(Lcom/tapjoy/internal/bn;)V

    .line 308
    return-void
.end method

.method public final g()V
    .registers 2

    .line 316
    sget-object v0, Lcom/tapjoy/internal/bn;->b:Lcom/tapjoy/internal/bn;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->a(Lcom/tapjoy/internal/bn;)V

    .line 317
    return-void
.end method

.method public final h()V
    .registers 2

    .line 325
    sget-object v0, Lcom/tapjoy/internal/bn;->c:Lcom/tapjoy/internal/bn;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->a(Lcom/tapjoy/internal/bn;)V

    .line 326
    return-void
.end method

.method public final i()V
    .registers 2

    .line 334
    sget-object v0, Lcom/tapjoy/internal/bn;->d:Lcom/tapjoy/internal/bn;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->a(Lcom/tapjoy/internal/bn;)V

    .line 335
    return-void
.end method

.method public final j()Z
    .registers 3

    .line 353
    invoke-virtual {p0}, Lcom/tapjoy/internal/bj;->k()Lcom/tapjoy/internal/bn;

    .line 354
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    sget-object v1, Lcom/tapjoy/internal/bn;->d:Lcom/tapjoy/internal/bn;

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    sget-object v1, Lcom/tapjoy/internal/bn;->b:Lcom/tapjoy/internal/bn;

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public final k()Lcom/tapjoy/internal/bn;
    .registers 5

    .line 362
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    if-eqz v0, :cond_5

    .line 363
    return-object v0

    .line 366
    :cond_5
    sget-object v0, Lcom/tapjoy/internal/bj$2;->a:[I

    .line 1618
    iget-object v1, p0, Lcom/tapjoy/internal/bj;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/bl;

    .line 366
    invoke-virtual {v1}, Lcom/tapjoy/internal/bl;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_c0

    .line 397
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 395
    :pswitch_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :pswitch_2d
    :try_start_2d
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->v()Lcom/tapjoy/internal/bn;

    move-result-object v0

    .line 387
    iget-boolean v1, p0, Lcom/tapjoy/internal/bj;->d:Z

    if-eqz v1, :cond_36

    .line 388
    return-object v0

    .line 390
    :cond_36
    const-string v0, "Expected EOF"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->e(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_3d
    .catch Ljava/io/EOFException; {:try_start_2d .. :try_end_3d} :catch_3d

    .line 391
    :catch_3d
    move-exception v0

    .line 392
    sget-object v0, Lcom/tapjoy/internal/bn;->j:Lcom/tapjoy/internal/bn;

    iput-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    return-object v0

    .line 383
    :pswitch_43
    invoke-direct {p0, v1}, Lcom/tapjoy/internal/bj;->b(Z)Lcom/tapjoy/internal/bn;

    move-result-object v0

    return-object v0

    .line 381
    :pswitch_48
    nop

    .line 1728
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->y()I

    move-result v0

    sparse-switch v0, :sswitch_data_d4

    .line 1738
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->e(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1732
    :sswitch_57
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->z()V

    .line 1733
    iget v0, p0, Lcom/tapjoy/internal/bj;->f:I

    iget v1, p0, Lcom/tapjoy/internal/bj;->g:I

    if-lt v0, v1, :cond_66

    invoke-direct {p0, v3}, Lcom/tapjoy/internal/bj;->a(I)Z

    move-result v0

    if-eqz v0, :cond_75

    :cond_66
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v1, p0, Lcom/tapjoy/internal/bj;->f:I

    aget-char v0, v0, v1

    const/16 v2, 0x3e

    if-ne v0, v2, :cond_75

    .line 1734
    add-int/2addr v1, v3

    iput v1, p0, Lcom/tapjoy/internal/bj;->f:I

    goto :goto_75

    .line 1730
    :sswitch_74
    nop

    .line 1741
    :cond_75
    :goto_75
    sget-object v0, Lcom/tapjoy/internal/bl;->e:Lcom/tapjoy/internal/bl;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->b(Lcom/tapjoy/internal/bl;)V

    .line 1742
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->v()Lcom/tapjoy/internal/bn;

    move-result-object v0

    .line 381
    return-object v0

    .line 379
    :pswitch_7f
    invoke-direct {p0, v3}, Lcom/tapjoy/internal/bj;->b(Z)Lcom/tapjoy/internal/bn;

    move-result-object v0

    return-object v0

    .line 377
    :pswitch_84
    invoke-direct {p0, v1}, Lcom/tapjoy/internal/bj;->a(Z)Lcom/tapjoy/internal/bn;

    move-result-object v0

    return-object v0

    .line 375
    :pswitch_89
    invoke-direct {p0, v3}, Lcom/tapjoy/internal/bj;->a(Z)Lcom/tapjoy/internal/bn;

    move-result-object v0

    return-object v0

    .line 368
    :pswitch_8e
    sget-object v0, Lcom/tapjoy/internal/bl;->g:Lcom/tapjoy/internal/bl;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bj;->b(Lcom/tapjoy/internal/bl;)V

    .line 369
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->v()Lcom/tapjoy/internal/bn;

    move-result-object v0

    .line 370
    iget-boolean v1, p0, Lcom/tapjoy/internal/bj;->d:Z

    if-nez v1, :cond_bf

    iget-object v1, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    sget-object v2, Lcom/tapjoy/internal/bn;->a:Lcom/tapjoy/internal/bn;

    if-eq v1, v2, :cond_bf

    iget-object v1, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    sget-object v2, Lcom/tapjoy/internal/bn;->c:Lcom/tapjoy/internal/bn;

    if-ne v1, v2, :cond_a8

    goto :goto_bf

    .line 371
    :cond_a8
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected JSON document to start with \'[\' or \'{\' but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_bf
    :goto_bf
    return-object v0

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_8e
        :pswitch_89
        :pswitch_84
        :pswitch_7f
        :pswitch_48
        :pswitch_43
        :pswitch_2d
        :pswitch_25
    .end packed-switch

    :sswitch_data_d4
    .sparse-switch
        0x3a -> :sswitch_74
        0x3d -> :sswitch_57
    .end sparse-switch
.end method

.method public final l()Ljava/lang/String;
    .registers 4

    .line 423
    invoke-virtual {p0}, Lcom/tapjoy/internal/bj;->k()Lcom/tapjoy/internal/bn;

    .line 424
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    sget-object v1, Lcom/tapjoy/internal/bn;->e:Lcom/tapjoy/internal/bn;

    if-ne v0, v1, :cond_f

    .line 427
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->l:Ljava/lang/String;

    .line 428
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->t()Lcom/tapjoy/internal/bn;

    .line 429
    return-object v0

    .line 425
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tapjoy/internal/bj;->k()Lcom/tapjoy/internal/bn;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final m()Ljava/lang/String;
    .registers 4

    .line 442
    invoke-virtual {p0}, Lcom/tapjoy/internal/bj;->k()Lcom/tapjoy/internal/bn;

    .line 443
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    sget-object v1, Lcom/tapjoy/internal/bn;->f:Lcom/tapjoy/internal/bn;

    if-eq v0, v1, :cond_29

    iget-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    sget-object v1, Lcom/tapjoy/internal/bn;->g:Lcom/tapjoy/internal/bn;

    if-ne v0, v1, :cond_10

    goto :goto_29

    .line 444
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a string but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tapjoy/internal/bj;->k()Lcom/tapjoy/internal/bn;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    .line 448
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->t()Lcom/tapjoy/internal/bn;

    .line 449
    return-object v0
.end method

.method public final n()Z
    .registers 4

    .line 461
    invoke-virtual {p0}, Lcom/tapjoy/internal/bj;->k()Lcom/tapjoy/internal/bn;

    .line 462
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    sget-object v1, Lcom/tapjoy/internal/bn;->h:Lcom/tapjoy/internal/bn;

    if-ne v0, v1, :cond_16

    .line 466
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    const-string v1, "true"

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 467
    :goto_12
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->t()Lcom/tapjoy/internal/bn;

    .line 468
    return v0

    .line 463
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a boolean but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final o()V
    .registers 4

    .line 480
    invoke-virtual {p0}, Lcom/tapjoy/internal/bj;->k()Lcom/tapjoy/internal/bn;

    .line 481
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    sget-object v1, Lcom/tapjoy/internal/bn;->i:Lcom/tapjoy/internal/bn;

    if-ne v0, v1, :cond_d

    .line 485
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->t()Lcom/tapjoy/internal/bn;

    .line 486
    return-void

    .line 482
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected null but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p()D
    .registers 4

    .line 498
    invoke-virtual {p0}, Lcom/tapjoy/internal/bj;->k()Lcom/tapjoy/internal/bn;

    .line 499
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    sget-object v1, Lcom/tapjoy/internal/bn;->f:Lcom/tapjoy/internal/bn;

    if-eq v0, v1, :cond_27

    iget-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    sget-object v1, Lcom/tapjoy/internal/bn;->g:Lcom/tapjoy/internal/bn;

    if-ne v0, v1, :cond_10

    goto :goto_27

    .line 500
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a double but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 504
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->t()Lcom/tapjoy/internal/bn;

    .line 505
    return-wide v0
.end method

.method public final q()J
    .registers 8

    .line 522
    invoke-virtual {p0}, Lcom/tapjoy/internal/bj;->k()Lcom/tapjoy/internal/bn;

    .line 523
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    sget-object v1, Lcom/tapjoy/internal/bn;->f:Lcom/tapjoy/internal/bn;

    if-eq v0, v1, :cond_27

    iget-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    sget-object v1, Lcom/tapjoy/internal/bn;->g:Lcom/tapjoy/internal/bn;

    if-ne v0, v1, :cond_10

    goto :goto_27

    .line 524
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a long but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_27
    :goto_27
    :try_start_27
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_2d} :catch_2e

    .line 536
    goto :goto_3c

    .line 530
    :catch_2e
    move-exception v0

    .line 531
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 532
    double-to-long v2, v0

    .line 533
    long-to-double v4, v2

    cmpl-double v6, v4, v0

    if-nez v6, :cond_40

    move-wide v0, v2

    .line 538
    :goto_3c
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->t()Lcom/tapjoy/internal/bn;

    .line 539
    return-wide v0

    .line 534
    :cond_40
    new-instance v0, Ljava/lang/NumberFormatException;

    iget-object v1, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final r()I
    .registers 7

    .line 556
    invoke-virtual {p0}, Lcom/tapjoy/internal/bj;->k()Lcom/tapjoy/internal/bn;

    .line 557
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    sget-object v1, Lcom/tapjoy/internal/bn;->f:Lcom/tapjoy/internal/bn;

    if-eq v0, v1, :cond_27

    iget-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    sget-object v1, Lcom/tapjoy/internal/bn;->g:Lcom/tapjoy/internal/bn;

    if-ne v0, v1, :cond_10

    goto :goto_27

    .line 558
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected an int but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_27
    :goto_27
    :try_start_27
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_2d} :catch_2e

    .line 570
    goto :goto_3c

    .line 564
    :catch_2e
    move-exception v0

    .line 565
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 566
    double-to-int v2, v0

    .line 567
    int-to-double v3, v2

    cmpl-double v5, v3, v0

    if-nez v5, :cond_40

    move v0, v2

    .line 572
    :goto_3c
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->t()Lcom/tapjoy/internal/bn;

    .line 573
    return v0

    .line 568
    :cond_40
    new-instance v0, Ljava/lang/NumberFormatException;

    iget-object v1, p0, Lcom/tapjoy/internal/bj;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final s()V
    .registers 5

    .line 596
    invoke-virtual {p0}, Lcom/tapjoy/internal/bj;->k()Lcom/tapjoy/internal/bn;

    .line 597
    iget-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    sget-object v1, Lcom/tapjoy/internal/bn;->b:Lcom/tapjoy/internal/bn;

    if-eq v0, v1, :cond_37

    iget-object v0, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    sget-object v1, Lcom/tapjoy/internal/bn;->d:Lcom/tapjoy/internal/bn;

    if-eq v0, v1, :cond_37

    .line 601
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/bj;->p:Z

    .line 603
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 605
    :cond_14
    :try_start_14
    invoke-direct {p0}, Lcom/tapjoy/internal/bj;->t()Lcom/tapjoy/internal/bn;

    move-result-object v2

    .line 606
    sget-object v3, Lcom/tapjoy/internal/bn;->a:Lcom/tapjoy/internal/bn;

    if-eq v2, v3, :cond_2c

    sget-object v3, Lcom/tapjoy/internal/bn;->c:Lcom/tapjoy/internal/bn;

    if-ne v2, v3, :cond_21

    goto :goto_2c

    .line 608
    :cond_21
    sget-object v3, Lcom/tapjoy/internal/bn;->b:Lcom/tapjoy/internal/bn;

    if-eq v2, v3, :cond_29

    sget-object v3, Lcom/tapjoy/internal/bn;->d:Lcom/tapjoy/internal/bn;
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_33

    if-ne v2, v3, :cond_2e

    .line 609
    :cond_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_2e

    .line 607
    :cond_2c
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    .line 611
    :cond_2e
    :goto_2e
    if-nez v1, :cond_14

    .line 613
    iput-boolean v0, p0, Lcom/tapjoy/internal/bj;->p:Z

    .line 614
    return-void

    .line 613
    :catchall_33
    move-exception v1

    iput-boolean v0, p0, Lcom/tapjoy/internal/bj;->p:Z

    .line 614
    throw v1

    .line 598
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a value but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/bj;->k:Lcom/tapjoy/internal/bn;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4f

    :goto_4e
    throw v0

    :goto_4f
    goto :goto_4e
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " near "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2212
    iget v2, p0, Lcom/tapjoy/internal/bj;->f:I

    const/16 v3, 0x14

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2213
    iget-object v4, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v5, p0, Lcom/tapjoy/internal/bj;->f:I

    sub-int/2addr v5, v2

    invoke-virtual {v1, v4, v5, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 2214
    iget v2, p0, Lcom/tapjoy/internal/bj;->g:I

    iget v4, p0, Lcom/tapjoy/internal/bj;->f:I

    sub-int/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2215
    iget-object v3, p0, Lcom/tapjoy/internal/bj;->e:[C

    iget v4, p0, Lcom/tapjoy/internal/bj;->f:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 2216
    nop

    .line 1050
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
