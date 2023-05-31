.class public final enum Lcom/tds/common/reactor/util/InternalObservableUtils;
.super Ljava/lang/Enum;
.source "InternalObservableUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/util/InternalObservableUtils$ErrorNotImplementedAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/common/reactor/util/InternalObservableUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/common/reactor/util/InternalObservableUtils;

.field public static final ERROR_NOT_IMPLEMENTED:Lcom/tds/common/reactor/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 6
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/tds/common/reactor/util/InternalObservableUtils;

    sput-object v0, Lcom/tds/common/reactor/util/InternalObservableUtils;->$VALUES:[Lcom/tds/common/reactor/util/InternalObservableUtils;

    .line 11
    new-instance v0, Lcom/tds/common/reactor/util/InternalObservableUtils$ErrorNotImplementedAction;

    invoke-direct {v0}, Lcom/tds/common/reactor/util/InternalObservableUtils$ErrorNotImplementedAction;-><init>()V

    sput-object v0, Lcom/tds/common/reactor/util/InternalObservableUtils;->ERROR_NOT_IMPLEMENTED:Lcom/tds/common/reactor/functions/Action1;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/common/reactor/util/InternalObservableUtils;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/tds/common/reactor/util/InternalObservableUtils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tds/common/reactor/util/InternalObservableUtils;

    return-object v0
.end method

.method public static values()[Lcom/tds/common/reactor/util/InternalObservableUtils;
    .registers 1

    .line 6
    sget-object v0, Lcom/tds/common/reactor/util/InternalObservableUtils;->$VALUES:[Lcom/tds/common/reactor/util/InternalObservableUtils;

    invoke-virtual {v0}, [Lcom/tds/common/reactor/util/InternalObservableUtils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/common/reactor/util/InternalObservableUtils;

    return-object v0
.end method
