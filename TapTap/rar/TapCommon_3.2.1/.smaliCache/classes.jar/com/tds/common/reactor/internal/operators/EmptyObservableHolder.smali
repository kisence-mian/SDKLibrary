.class public final enum Lcom/tds/common/reactor/internal/operators/EmptyObservableHolder;
.super Ljava/lang/Enum;
.source "EmptyObservableHolder.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/common/reactor/internal/operators/EmptyObservableHolder;",
        ">;",
        "Lcom/tds/common/reactor/Observable$OnSubscribe<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/common/reactor/internal/operators/EmptyObservableHolder;

.field static final EMPTY:Lcom/tds/common/reactor/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum INSTANCE:Lcom/tds/common/reactor/internal/operators/EmptyObservableHolder;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 27
    new-instance v0, Lcom/tds/common/reactor/internal/operators/EmptyObservableHolder;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tds/common/reactor/internal/operators/EmptyObservableHolder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tds/common/reactor/internal/operators/EmptyObservableHolder;->INSTANCE:Lcom/tds/common/reactor/internal/operators/EmptyObservableHolder;

    .line 26
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/tds/common/reactor/internal/operators/EmptyObservableHolder;

    aput-object v0, v1, v2

    sput-object v1, Lcom/tds/common/reactor/internal/operators/EmptyObservableHolder;->$VALUES:[Lcom/tds/common/reactor/internal/operators/EmptyObservableHolder;

    .line 31
    invoke-static {v0}, Lcom/tds/common/reactor/Observable;->unsafeCreate(Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    sput-object v0, Lcom/tds/common/reactor/internal/operators/EmptyObservableHolder;->EMPTY:Lcom/tds/common/reactor/Observable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static instance()Lcom/tds/common/reactor/Observable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/tds/common/reactor/internal/operators/EmptyObservableHolder;->EMPTY:Lcom/tds/common/reactor/Observable;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/common/reactor/internal/operators/EmptyObservableHolder;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lcom/tds/common/reactor/internal/operators/EmptyObservableHolder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tds/common/reactor/internal/operators/EmptyObservableHolder;

    return-object v0
.end method

.method public static values()[Lcom/tds/common/reactor/internal/operators/EmptyObservableHolder;
    .registers 1

    .line 26
    sget-object v0, Lcom/tds/common/reactor/internal/operators/EmptyObservableHolder;->$VALUES:[Lcom/tds/common/reactor/internal/operators/EmptyObservableHolder;

    invoke-virtual {v0}, [Lcom/tds/common/reactor/internal/operators/EmptyObservableHolder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/common/reactor/internal/operators/EmptyObservableHolder;

    return-object v0
.end method


# virtual methods
.method public call(Lcom/tds/common/reactor/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p1, "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 47
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 26
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/internal/operators/EmptyObservableHolder;->call(Lcom/tds/common/reactor/Subscriber;)V

    return-void
.end method
