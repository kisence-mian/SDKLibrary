.class final enum Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;
.super Ljava/lang/Enum;
.source "OnSubscribeDetach.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeDetach;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TerminatedProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;",
        ">;",
        "Lrx/Producer;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;

.field public static final enum INSTANCE:Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 166
    new-instance v0, Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;->INSTANCE:Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;

    .line 165
    const/4 v0, 0x1

    new-array v0, v0, [Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;

    sget-object v1, Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;->INSTANCE:Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;

    aput-object v1, v0, v2

    sput-object v0, Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;->$VALUES:[Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 165
    const-class v0, Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;

    return-object v0
.end method

.method public static values()[Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;
    .registers 1

    .prologue
    .line 165
    sget-object v0, Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;->$VALUES:[Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;

    invoke-virtual {v0}, [Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;

    return-object v0
.end method


# virtual methods
.method public request(J)V
    .registers 3
    .param p1, "n"    # J

    .prologue
    .line 171
    return-void
.end method
