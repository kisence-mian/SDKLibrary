.class public final enum Lcom/ksad/eventbus/ThreadMode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ksad/eventbus/ThreadMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ksad/eventbus/ThreadMode;

.field public static final enum ASYNC:Lcom/ksad/eventbus/ThreadMode;

.field public static final enum BACKGROUND:Lcom/ksad/eventbus/ThreadMode;

.field public static final enum MAIN:Lcom/ksad/eventbus/ThreadMode;

.field public static final enum MAIN_ORDERED:Lcom/ksad/eventbus/ThreadMode;

.field public static final enum POSTING:Lcom/ksad/eventbus/ThreadMode;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ksad/eventbus/ThreadMode;

    const-string v1, "POSTING"

    invoke-direct {v0, v1, v2}, Lcom/ksad/eventbus/ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksad/eventbus/ThreadMode;->POSTING:Lcom/ksad/eventbus/ThreadMode;

    new-instance v0, Lcom/ksad/eventbus/ThreadMode;

    const-string v1, "MAIN"

    invoke-direct {v0, v1, v3}, Lcom/ksad/eventbus/ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksad/eventbus/ThreadMode;->MAIN:Lcom/ksad/eventbus/ThreadMode;

    new-instance v0, Lcom/ksad/eventbus/ThreadMode;

    const-string v1, "MAIN_ORDERED"

    invoke-direct {v0, v1, v4}, Lcom/ksad/eventbus/ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksad/eventbus/ThreadMode;->MAIN_ORDERED:Lcom/ksad/eventbus/ThreadMode;

    new-instance v0, Lcom/ksad/eventbus/ThreadMode;

    const-string v1, "BACKGROUND"

    invoke-direct {v0, v1, v5}, Lcom/ksad/eventbus/ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksad/eventbus/ThreadMode;->BACKGROUND:Lcom/ksad/eventbus/ThreadMode;

    new-instance v0, Lcom/ksad/eventbus/ThreadMode;

    const-string v1, "ASYNC"

    invoke-direct {v0, v1, v6}, Lcom/ksad/eventbus/ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksad/eventbus/ThreadMode;->ASYNC:Lcom/ksad/eventbus/ThreadMode;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ksad/eventbus/ThreadMode;

    sget-object v1, Lcom/ksad/eventbus/ThreadMode;->POSTING:Lcom/ksad/eventbus/ThreadMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ksad/eventbus/ThreadMode;->MAIN:Lcom/ksad/eventbus/ThreadMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ksad/eventbus/ThreadMode;->MAIN_ORDERED:Lcom/ksad/eventbus/ThreadMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ksad/eventbus/ThreadMode;->BACKGROUND:Lcom/ksad/eventbus/ThreadMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ksad/eventbus/ThreadMode;->ASYNC:Lcom/ksad/eventbus/ThreadMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ksad/eventbus/ThreadMode;->$VALUES:[Lcom/ksad/eventbus/ThreadMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ksad/eventbus/ThreadMode;
    .registers 2

    const-class v0, Lcom/ksad/eventbus/ThreadMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ksad/eventbus/ThreadMode;

    return-object v0
.end method

.method public static values()[Lcom/ksad/eventbus/ThreadMode;
    .registers 1

    sget-object v0, Lcom/ksad/eventbus/ThreadMode;->$VALUES:[Lcom/ksad/eventbus/ThreadMode;

    invoke-virtual {v0}, [Lcom/ksad/eventbus/ThreadMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ksad/eventbus/ThreadMode;

    return-object v0
.end method
