.class public final enum Lcom/tds/common/reactor/Emitter$BackpressureMode;
.super Ljava/lang/Enum;
.source "Emitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/Emitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BackpressureMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/common/reactor/Emitter$BackpressureMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/common/reactor/Emitter$BackpressureMode;

.field public static final enum BUFFER:Lcom/tds/common/reactor/Emitter$BackpressureMode;

.field public static final enum DROP:Lcom/tds/common/reactor/Emitter$BackpressureMode;

.field public static final enum ERROR:Lcom/tds/common/reactor/Emitter$BackpressureMode;

.field public static final enum LATEST:Lcom/tds/common/reactor/Emitter$BackpressureMode;

.field public static final enum NONE:Lcom/tds/common/reactor/Emitter$BackpressureMode;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 53
    new-instance v0, Lcom/tds/common/reactor/Emitter$BackpressureMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tds/common/reactor/Emitter$BackpressureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tds/common/reactor/Emitter$BackpressureMode;->NONE:Lcom/tds/common/reactor/Emitter$BackpressureMode;

    .line 57
    new-instance v1, Lcom/tds/common/reactor/Emitter$BackpressureMode;

    const-string v3, "ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tds/common/reactor/Emitter$BackpressureMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tds/common/reactor/Emitter$BackpressureMode;->ERROR:Lcom/tds/common/reactor/Emitter$BackpressureMode;

    .line 61
    new-instance v3, Lcom/tds/common/reactor/Emitter$BackpressureMode;

    const-string v5, "BUFFER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tds/common/reactor/Emitter$BackpressureMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tds/common/reactor/Emitter$BackpressureMode;->BUFFER:Lcom/tds/common/reactor/Emitter$BackpressureMode;

    .line 65
    new-instance v5, Lcom/tds/common/reactor/Emitter$BackpressureMode;

    const-string v7, "DROP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/tds/common/reactor/Emitter$BackpressureMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tds/common/reactor/Emitter$BackpressureMode;->DROP:Lcom/tds/common/reactor/Emitter$BackpressureMode;

    .line 70
    new-instance v7, Lcom/tds/common/reactor/Emitter$BackpressureMode;

    const-string v9, "LATEST"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/tds/common/reactor/Emitter$BackpressureMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/tds/common/reactor/Emitter$BackpressureMode;->LATEST:Lcom/tds/common/reactor/Emitter$BackpressureMode;

    .line 51
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/tds/common/reactor/Emitter$BackpressureMode;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/tds/common/reactor/Emitter$BackpressureMode;->$VALUES:[Lcom/tds/common/reactor/Emitter$BackpressureMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/common/reactor/Emitter$BackpressureMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 51
    const-class v0, Lcom/tds/common/reactor/Emitter$BackpressureMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tds/common/reactor/Emitter$BackpressureMode;

    return-object v0
.end method

.method public static values()[Lcom/tds/common/reactor/Emitter$BackpressureMode;
    .registers 1

    .line 51
    sget-object v0, Lcom/tds/common/reactor/Emitter$BackpressureMode;->$VALUES:[Lcom/tds/common/reactor/Emitter$BackpressureMode;

    invoke-virtual {v0}, [Lcom/tds/common/reactor/Emitter$BackpressureMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/common/reactor/Emitter$BackpressureMode;

    return-object v0
.end method
