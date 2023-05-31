.class synthetic Lcom/sigmob/sdk/base/common/ab$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/common/ab;
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/sigmob/sdk/base/common/a;->values()[Lcom/sigmob/sdk/base/common/a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sigmob/sdk/base/common/ab$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/sigmob/sdk/base/common/ab$1;->a:[I

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->a:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_113

    :goto_14
    :try_start_14
    sget-object v0, Lcom/sigmob/sdk/base/common/ab$1;->a:[I

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->m:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_110

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/sigmob/sdk/base/common/ab$1;->a:[I

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->d:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_10d

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/sigmob/sdk/base/common/ab$1;->a:[I

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->c:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_10a

    :goto_35
    :try_start_35
    sget-object v0, Lcom/sigmob/sdk/base/common/ab$1;->a:[I

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->o:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/a;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_107

    :goto_40
    :try_start_40
    sget-object v0, Lcom/sigmob/sdk/base/common/ab$1;->a:[I

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->F:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/a;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_104

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/sigmob/sdk/base/common/ab$1;->a:[I

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->l:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/a;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_101

    :goto_56
    :try_start_56
    sget-object v0, Lcom/sigmob/sdk/base/common/ab$1;->a:[I

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->G:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/a;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_fe

    :goto_62
    :try_start_62
    sget-object v0, Lcom/sigmob/sdk/base/common/ab$1;->a:[I

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->b:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/a;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_fb

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/sigmob/sdk/base/common/ab$1;->a:[I

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->r:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/a;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_f9

    :goto_7a
    :try_start_7a
    sget-object v0, Lcom/sigmob/sdk/base/common/ab$1;->a:[I

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->v:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/a;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_f7

    :goto_86
    :try_start_86
    sget-object v0, Lcom/sigmob/sdk/base/common/ab$1;->a:[I

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->w:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/a;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_f5

    :goto_92
    :try_start_92
    sget-object v0, Lcom/sigmob/sdk/base/common/ab$1;->a:[I

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->x:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/a;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_f3

    :goto_9e
    :try_start_9e
    sget-object v0, Lcom/sigmob/sdk/base/common/ab$1;->a:[I

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->H:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/a;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_f1

    :goto_aa
    :try_start_aa
    sget-object v0, Lcom/sigmob/sdk/base/common/ab$1;->a:[I

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->e:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/a;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_ef

    :goto_b6
    :try_start_b6
    sget-object v0, Lcom/sigmob/sdk/base/common/ab$1;->a:[I

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->i:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/a;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_ed

    :goto_c2
    :try_start_c2
    sget-object v0, Lcom/sigmob/sdk/base/common/ab$1;->a:[I

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->j:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/a;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_ce} :catch_eb

    :goto_ce
    :try_start_ce
    sget-object v0, Lcom/sigmob/sdk/base/common/ab$1;->a:[I

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->k:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/a;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ce .. :try_end_da} :catch_e9

    :goto_da
    :try_start_da
    sget-object v0, Lcom/sigmob/sdk/base/common/ab$1;->a:[I

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->n:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/a;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_da .. :try_end_e6} :catch_e7

    :goto_e6
    return-void

    :catch_e7
    move-exception v0

    goto :goto_e6

    :catch_e9
    move-exception v0

    goto :goto_da

    :catch_eb
    move-exception v0

    goto :goto_ce

    :catch_ed
    move-exception v0

    goto :goto_c2

    :catch_ef
    move-exception v0

    goto :goto_b6

    :catch_f1
    move-exception v0

    goto :goto_aa

    :catch_f3
    move-exception v0

    goto :goto_9e

    :catch_f5
    move-exception v0

    goto :goto_92

    :catch_f7
    move-exception v0

    goto :goto_86

    :catch_f9
    move-exception v0

    goto :goto_7a

    :catch_fb
    move-exception v0

    goto/16 :goto_6e

    :catch_fe
    move-exception v0

    goto/16 :goto_62

    :catch_101
    move-exception v0

    goto/16 :goto_56

    :catch_104
    move-exception v0

    goto/16 :goto_4b

    :catch_107
    move-exception v0

    goto/16 :goto_40

    :catch_10a
    move-exception v0

    goto/16 :goto_35

    :catch_10d
    move-exception v0

    goto/16 :goto_2a

    :catch_110
    move-exception v0

    goto/16 :goto_1f

    :catch_113
    move-exception v0

    goto/16 :goto_14
.end method
