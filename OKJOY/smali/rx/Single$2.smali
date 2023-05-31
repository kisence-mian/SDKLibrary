.class Lrx/Single$2;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Single;

.field final synthetic val$lift:Lrx/Observable$Operator;


# direct methods
.method constructor <init>(Lrx/Single;Lrx/Observable$Operator;)V
    .registers 3

    .prologue
    .line 163
    .local p0, "this":Lrx/Single$2;, "Lrx/Single.2;"
    iput-object p1, p0, Lrx/Single$2;->this$0:Lrx/Single;

    iput-object p2, p0, Lrx/Single$2;->val$lift:Lrx/Observable$Operator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 163
    .local p0, "this":Lrx/Single$2;, "Lrx/Single.2;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Single$2;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lrx/Single$2;, "Lrx/Single.2;"
    .local p1, "o":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    :try_start_0
    iget-object v2, p0, Lrx/Single$2;->val$lift:Lrx/Observable$Operator;

    invoke-static {v2}, Lrx/plugins/RxJavaHooks;->onSingleLift(Lrx/Observable$Operator;)Lrx/Observable$Operator;

    move-result-object v2

    invoke-interface {v2, p1}, Lrx/Observable$Operator;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Subscriber;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_1c

    .line 170
    .local v1, "st":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :try_start_c
    invoke-virtual {v1}, Lrx/Subscriber;->onStart()V

    .line 171
    iget-object v2, p0, Lrx/Single$2;->this$0:Lrx/Single;

    iget-object v2, v2, Lrx/Single;->onSubscribe:Lrx/Observable$OnSubscribe;

    invoke-interface {v2, v1}, Lrx/Observable$OnSubscribe;->call(Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_16} :catch_17

    .line 183
    .end local v1    # "st":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :goto_16
    return-void

    .line 172
    .restart local v1    # "st":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :catch_17
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_18
    invoke-static {v0, v1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_16

    .line 178
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "st":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :catch_1c
    move-exception v0

    .line 181
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v0, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_16
.end method
