.class synthetic Lmobi/oneway/export/f/e$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/oneway/export/f/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lmobi/oneway/export/enums/AdType;->values()[Lmobi/oneway/export/enums/AdType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmobi/oneway/export/f/e$1;->b:[I

    :try_start_9
    sget-object v0, Lmobi/oneway/export/f/e$1;->b:[I

    sget-object v1, Lmobi/oneway/export/enums/AdType;->rewarded:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {v1}, Lmobi/oneway/export/enums/AdType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_bc

    :goto_14
    :try_start_14
    sget-object v0, Lmobi/oneway/export/f/e$1;->b:[I

    sget-object v1, Lmobi/oneway/export/enums/AdType;->interstitial:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {v1}, Lmobi/oneway/export/enums/AdType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_b9

    :goto_1f
    :try_start_1f
    sget-object v0, Lmobi/oneway/export/f/e$1;->b:[I

    sget-object v1, Lmobi/oneway/export/enums/AdType;->interstitialimage:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {v1}, Lmobi/oneway/export/enums/AdType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_b6

    :goto_2a
    :try_start_2a
    sget-object v0, Lmobi/oneway/export/f/e$1;->b:[I

    sget-object v1, Lmobi/oneway/export/enums/AdType;->splash:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {v1}, Lmobi/oneway/export/enums/AdType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_b4

    :goto_35
    :try_start_35
    sget-object v0, Lmobi/oneway/export/f/e$1;->b:[I

    sget-object v1, Lmobi/oneway/export/enums/AdType;->interactive:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {v1}, Lmobi/oneway/export/enums/AdType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_b2

    :goto_40
    :try_start_40
    sget-object v0, Lmobi/oneway/export/f/e$1;->b:[I

    sget-object v1, Lmobi/oneway/export/enums/AdType;->feed:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {v1}, Lmobi/oneway/export/enums/AdType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_b0

    :goto_4b
    invoke-static {}, Lmobi/oneway/export/enums/EventType;->values()[Lmobi/oneway/export/enums/EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmobi/oneway/export/f/e$1;->a:[I

    :try_start_54
    sget-object v0, Lmobi/oneway/export/f/e$1;->a:[I

    sget-object v1, Lmobi/oneway/export/enums/EventType;->ready:Lmobi/oneway/export/enums/EventType;

    invoke-virtual {v1}, Lmobi/oneway/export/enums/EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_ae

    :goto_5f
    :try_start_5f
    sget-object v0, Lmobi/oneway/export/f/e$1;->a:[I

    sget-object v1, Lmobi/oneway/export/enums/EventType;->show:Lmobi/oneway/export/enums/EventType;

    invoke-virtual {v1}, Lmobi/oneway/export/enums/EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_ac

    :goto_6a
    :try_start_6a
    sget-object v0, Lmobi/oneway/export/f/e$1;->a:[I

    sget-object v1, Lmobi/oneway/export/enums/EventType;->end:Lmobi/oneway/export/enums/EventType;

    invoke-virtual {v1}, Lmobi/oneway/export/enums/EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_aa

    :goto_75
    :try_start_75
    sget-object v0, Lmobi/oneway/export/f/e$1;->a:[I

    sget-object v1, Lmobi/oneway/export/enums/EventType;->click:Lmobi/oneway/export/enums/EventType;

    invoke-virtual {v1}, Lmobi/oneway/export/enums/EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_a8

    :goto_80
    :try_start_80
    sget-object v0, Lmobi/oneway/export/f/e$1;->a:[I

    sget-object v1, Lmobi/oneway/export/enums/EventType;->close:Lmobi/oneway/export/enums/EventType;

    invoke-virtual {v1}, Lmobi/oneway/export/enums/EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8b} :catch_a6

    :goto_8b
    :try_start_8b
    sget-object v0, Lmobi/oneway/export/f/e$1;->a:[I

    sget-object v1, Lmobi/oneway/export/enums/EventType;->reward:Lmobi/oneway/export/enums/EventType;

    invoke-virtual {v1}, Lmobi/oneway/export/enums/EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_96} :catch_a4

    :goto_96
    :try_start_96
    sget-object v0, Lmobi/oneway/export/f/e$1;->a:[I

    sget-object v1, Lmobi/oneway/export/enums/EventType;->adFail:Lmobi/oneway/export/enums/EventType;

    invoke-virtual {v1}, Lmobi/oneway/export/enums/EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96 .. :try_end_a1} :catch_a2

    :goto_a1
    return-void

    :catch_a2
    move-exception v0

    goto :goto_a1

    :catch_a4
    move-exception v0

    goto :goto_96

    :catch_a6
    move-exception v0

    goto :goto_8b

    :catch_a8
    move-exception v0

    goto :goto_80

    :catch_aa
    move-exception v0

    goto :goto_75

    :catch_ac
    move-exception v0

    goto :goto_6a

    :catch_ae
    move-exception v0

    goto :goto_5f

    :catch_b0
    move-exception v0

    goto :goto_4b

    :catch_b2
    move-exception v0

    goto :goto_40

    :catch_b4
    move-exception v0

    goto :goto_35

    :catch_b6
    move-exception v0

    goto/16 :goto_2a

    :catch_b9
    move-exception v0

    goto/16 :goto_1f

    :catch_bc
    move-exception v0

    goto/16 :goto_14
.end method
