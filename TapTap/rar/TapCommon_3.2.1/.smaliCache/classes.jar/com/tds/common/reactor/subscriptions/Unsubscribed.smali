.class public final enum Lcom/tds/common/reactor/subscriptions/Unsubscribed;
.super Ljava/lang/Enum;
.source "Unsubscribed.java"

# interfaces
.implements Lcom/tds/common/reactor/Subscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/common/reactor/subscriptions/Unsubscribed;",
        ">;",
        "Lcom/tds/common/reactor/Subscription;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/common/reactor/subscriptions/Unsubscribed;

.field public static final enum INSTANCE:Lcom/tds/common/reactor/subscriptions/Unsubscribed;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 24
    new-instance v0, Lcom/tds/common/reactor/subscriptions/Unsubscribed;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tds/common/reactor/subscriptions/Unsubscribed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tds/common/reactor/subscriptions/Unsubscribed;->INSTANCE:Lcom/tds/common/reactor/subscriptions/Unsubscribed;

    .line 23
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/tds/common/reactor/subscriptions/Unsubscribed;

    aput-object v0, v1, v2

    sput-object v1, Lcom/tds/common/reactor/subscriptions/Unsubscribed;->$VALUES:[Lcom/tds/common/reactor/subscriptions/Unsubscribed;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/common/reactor/subscriptions/Unsubscribed;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 23
    const-class v0, Lcom/tds/common/reactor/subscriptions/Unsubscribed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tds/common/reactor/subscriptions/Unsubscribed;

    return-object v0
.end method

.method public static values()[Lcom/tds/common/reactor/subscriptions/Unsubscribed;
    .registers 1

    .line 23
    sget-object v0, Lcom/tds/common/reactor/subscriptions/Unsubscribed;->$VALUES:[Lcom/tds/common/reactor/subscriptions/Unsubscribed;

    invoke-virtual {v0}, [Lcom/tds/common/reactor/subscriptions/Unsubscribed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/common/reactor/subscriptions/Unsubscribed;

    return-object v0
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public unsubscribe()V
    .registers 1

    .line 34
    return-void
.end method
