.class synthetic Lcom/tds/common/reactor/operators/OnSubscribeCreate$1;
.super Ljava/lang/Object;
.source "OnSubscribeCreate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/operators/OnSubscribeCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$tds$common$reactor$Emitter$BackpressureMode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 50
    invoke-static {}, Lcom/tds/common/reactor/Emitter$BackpressureMode;->values()[Lcom/tds/common/reactor/Emitter$BackpressureMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$1;->$SwitchMap$com$tds$common$reactor$Emitter$BackpressureMode:[I

    :try_start_9
    sget-object v1, Lcom/tds/common/reactor/Emitter$BackpressureMode;->NONE:Lcom/tds/common/reactor/Emitter$BackpressureMode;

    invoke-virtual {v1}, Lcom/tds/common/reactor/Emitter$BackpressureMode;->ordinal()I

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
    sget-object v0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$1;->$SwitchMap$com$tds$common$reactor$Emitter$BackpressureMode:[I

    sget-object v1, Lcom/tds/common/reactor/Emitter$BackpressureMode;->ERROR:Lcom/tds/common/reactor/Emitter$BackpressureMode;

    invoke-virtual {v1}, Lcom/tds/common/reactor/Emitter$BackpressureMode;->ordinal()I

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
    sget-object v0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$1;->$SwitchMap$com$tds$common$reactor$Emitter$BackpressureMode:[I

    sget-object v1, Lcom/tds/common/reactor/Emitter$BackpressureMode;->DROP:Lcom/tds/common/reactor/Emitter$BackpressureMode;

    invoke-virtual {v1}, Lcom/tds/common/reactor/Emitter$BackpressureMode;->ordinal()I

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
    sget-object v0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$1;->$SwitchMap$com$tds$common$reactor$Emitter$BackpressureMode:[I

    sget-object v1, Lcom/tds/common/reactor/Emitter$BackpressureMode;->LATEST:Lcom/tds/common/reactor/Emitter$BackpressureMode;

    invoke-virtual {v1}, Lcom/tds/common/reactor/Emitter$BackpressureMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception v0

    :goto_3b
    return-void
.end method
