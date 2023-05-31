.class public Lcom/tds/common/reactor/RxBus;
.super Ljava/lang/Object;
.source "RxBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/RxBus$Holder;
    }
.end annotation


# instance fields
.field private final bus:Lcom/tds/common/reactor/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/subjects/Subject<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/tds/common/reactor/subjects/SerializedSubject;

    invoke-static {}, Lcom/tds/common/reactor/subjects/PublishSubject;->create()Lcom/tds/common/reactor/subjects/PublishSubject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tds/common/reactor/subjects/SerializedSubject;-><init>(Lcom/tds/common/reactor/subjects/Subject;)V

    iput-object v0, p0, Lcom/tds/common/reactor/RxBus;->bus:Lcom/tds/common/reactor/subjects/Subject;

    .line 12
    return-void
.end method

.method synthetic constructor <init>(Lcom/tds/common/reactor/RxBus$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/tds/common/reactor/RxBus$1;

    .line 8
    invoke-direct {p0}, Lcom/tds/common/reactor/RxBus;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tds/common/reactor/RxBus;
    .registers 1

    .line 19
    sget-object v0, Lcom/tds/common/reactor/RxBus$Holder;->INSTANCE:Lcom/tds/common/reactor/RxBus;

    return-object v0
.end method


# virtual methods
.method public hasObservers()Z
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/tds/common/reactor/RxBus;->bus:Lcom/tds/common/reactor/subjects/Subject;

    invoke-virtual {v0}, Lcom/tds/common/reactor/subjects/Subject;->hasObservers()Z

    move-result v0

    return v0
.end method

.method public send(Ljava/lang/Object;)V
    .registers 3
    .param p1, "event"    # Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/tds/common/reactor/RxBus;->bus:Lcom/tds/common/reactor/subjects/Subject;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/subjects/Subject;->onNext(Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public toObservable()Lcom/tds/common/reactor/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/common/reactor/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/tds/common/reactor/RxBus;->bus:Lcom/tds/common/reactor/subjects/Subject;

    return-object v0
.end method
