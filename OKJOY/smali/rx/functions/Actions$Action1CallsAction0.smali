.class final Lrx/functions/Actions$Action1CallsAction0;
.super Ljava/lang/Object;
.source "Actions.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/functions/Actions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Action1CallsAction0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final action:Lrx/functions/Action0;


# direct methods
.method public constructor <init>(Lrx/functions/Action0;)V
    .registers 2
    .param p1, "action"    # Lrx/functions/Action0;

    .prologue
    .line 560
    .local p0, "this":Lrx/functions/Actions$Action1CallsAction0;, "Lrx/functions/Actions$Action1CallsAction0<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    iput-object p1, p0, Lrx/functions/Actions$Action1CallsAction0;->action:Lrx/functions/Action0;

    .line 562
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 566
    .local p0, "this":Lrx/functions/Actions$Action1CallsAction0;, "Lrx/functions/Actions$Action1CallsAction0<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/functions/Actions$Action1CallsAction0;->action:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    .line 567
    return-void
.end method
