.class Lcom/tds/common/reactor/subjects/SerializedSubject$1;
.super Ljava/lang/Object;
.source "SerializedSubject.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/reactor/subjects/SerializedSubject;-><init>(Lcom/tds/common/reactor/subjects/Subject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/Observable$OnSubscribe<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$actual:Lcom/tds/common/reactor/subjects/Subject;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/subjects/Subject;)V
    .registers 2

    .line 11
    .local p0, "this":Lcom/tds/common/reactor/subjects/SerializedSubject$1;, "Lcom/tds/common/reactor/subjects/SerializedSubject$1;"
    iput-object p1, p0, Lcom/tds/common/reactor/subjects/SerializedSubject$1;->val$actual:Lcom/tds/common/reactor/subjects/Subject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/tds/common/reactor/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TR;>;)V"
        }
    .end annotation

    .line 14
    .local p0, "this":Lcom/tds/common/reactor/subjects/SerializedSubject$1;, "Lcom/tds/common/reactor/subjects/SerializedSubject$1;"
    .local p1, "subscriber":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TR;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/subjects/SerializedSubject$1;->val$actual:Lcom/tds/common/reactor/subjects/Subject;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/subjects/Subject;->unsafeSubscribe(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscription;

    .line 15
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 11
    .local p0, "this":Lcom/tds/common/reactor/subjects/SerializedSubject$1;, "Lcom/tds/common/reactor/subjects/SerializedSubject$1;"
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/subjects/SerializedSubject$1;->call(Lcom/tds/common/reactor/Subscriber;)V

    return-void
.end method
