.class synthetic Lcom/bun/miitmdid/core/MdidSdk$a;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bun/miitmdid/core/MdidSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-static {}, Lcom/bun/miitmdid/c/a;->values()[Lcom/bun/miitmdid/c/a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bun/miitmdid/core/MdidSdk$a;->a:[I

    :try_start_9
    sget-object v0, Lcom/bun/miitmdid/core/MdidSdk$a;->a:[I

    sget-object v1, Lcom/bun/miitmdid/c/a;->d:Lcom/bun/miitmdid/c/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_b7

    :goto_14
    :try_start_14
    sget-object v0, Lcom/bun/miitmdid/core/MdidSdk$a;->a:[I

    sget-object v1, Lcom/bun/miitmdid/c/a;->o:Lcom/bun/miitmdid/c/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_ba

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/bun/miitmdid/core/MdidSdk$a;->a:[I

    sget-object v1, Lcom/bun/miitmdid/c/a;->e:Lcom/bun/miitmdid/c/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_bd

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/bun/miitmdid/core/MdidSdk$a;->a:[I

    sget-object v1, Lcom/bun/miitmdid/c/a;->c:Lcom/bun/miitmdid/c/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_c0

    :goto_35
    :try_start_35
    sget-object v0, Lcom/bun/miitmdid/core/MdidSdk$a;->a:[I

    sget-object v1, Lcom/bun/miitmdid/c/a;->f:Lcom/bun/miitmdid/c/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_c3

    :goto_40
    :try_start_40
    sget-object v0, Lcom/bun/miitmdid/core/MdidSdk$a;->a:[I

    sget-object v1, Lcom/bun/miitmdid/c/a;->n:Lcom/bun/miitmdid/c/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_c6

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/bun/miitmdid/core/MdidSdk$a;->a:[I

    sget-object v1, Lcom/bun/miitmdid/c/a;->g:Lcom/bun/miitmdid/c/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_c8

    :goto_56
    :try_start_56
    sget-object v0, Lcom/bun/miitmdid/core/MdidSdk$a;->a:[I

    sget-object v1, Lcom/bun/miitmdid/c/a;->h:Lcom/bun/miitmdid/c/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_ca

    :goto_62
    :try_start_62
    sget-object v0, Lcom/bun/miitmdid/core/MdidSdk$a;->a:[I

    sget-object v1, Lcom/bun/miitmdid/c/a;->i:Lcom/bun/miitmdid/c/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_cc

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/bun/miitmdid/core/MdidSdk$a;->a:[I

    sget-object v1, Lcom/bun/miitmdid/c/a;->j:Lcom/bun/miitmdid/c/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_ce

    :goto_7a
    :try_start_7a
    sget-object v0, Lcom/bun/miitmdid/core/MdidSdk$a;->a:[I

    sget-object v1, Lcom/bun/miitmdid/c/a;->k:Lcom/bun/miitmdid/c/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_d0

    :goto_86
    :try_start_86
    sget-object v0, Lcom/bun/miitmdid/core/MdidSdk$a;->a:[I

    sget-object v1, Lcom/bun/miitmdid/c/a;->l:Lcom/bun/miitmdid/c/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_d2

    :goto_92
    :try_start_92
    sget-object v0, Lcom/bun/miitmdid/core/MdidSdk$a;->a:[I

    sget-object v1, Lcom/bun/miitmdid/c/a;->m:Lcom/bun/miitmdid/c/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_d4

    :goto_9e
    :try_start_9e
    sget-object v0, Lcom/bun/miitmdid/core/MdidSdk$a;->a:[I

    sget-object v1, Lcom/bun/miitmdid/c/a;->p:Lcom/bun/miitmdid/c/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_d6

    :goto_aa
    :try_start_aa
    sget-object v0, Lcom/bun/miitmdid/core/MdidSdk$a;->a:[I

    sget-object v1, Lcom/bun/miitmdid/c/a;->q:Lcom/bun/miitmdid/c/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_d8

    :goto_b6
    return-void

    :catch_b7
    move-exception v0

    goto/16 :goto_14

    :catch_ba
    move-exception v0

    goto/16 :goto_1f

    :catch_bd
    move-exception v0

    goto/16 :goto_2a

    :catch_c0
    move-exception v0

    goto/16 :goto_35

    :catch_c3
    move-exception v0

    goto/16 :goto_40

    :catch_c6
    move-exception v0

    goto :goto_4b

    :catch_c8
    move-exception v0

    goto :goto_56

    :catch_ca
    move-exception v0

    goto :goto_62

    :catch_cc
    move-exception v0

    goto :goto_6e

    :catch_ce
    move-exception v0

    goto :goto_7a

    :catch_d0
    move-exception v0

    goto :goto_86

    :catch_d2
    move-exception v0

    goto :goto_92

    :catch_d4
    move-exception v0

    goto :goto_9e

    :catch_d6
    move-exception v0

    goto :goto_aa

    :catch_d8
    move-exception v0

    goto :goto_b6
.end method
