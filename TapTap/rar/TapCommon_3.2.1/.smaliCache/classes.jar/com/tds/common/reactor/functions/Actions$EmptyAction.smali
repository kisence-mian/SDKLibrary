.class final Lcom/tds/common/reactor/functions/Actions$EmptyAction;
.super Ljava/lang/Object;
.source "Actions.java"

# interfaces
.implements Lcom/tds/common/reactor/functions/Action0;
.implements Lcom/tds/common/reactor/functions/Action1;
.implements Lcom/tds/common/reactor/functions/Action2;
.implements Lcom/tds/common/reactor/functions/Action3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/functions/Actions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EmptyAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T0:",
        "Ljava/lang/Object;",
        "T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/functions/Action0;",
        "Lcom/tds/common/reactor/functions/Action1<",
        "TT0;>;",
        "Lcom/tds/common/reactor/functions/Action2<",
        "TT0;TT1;>;",
        "Lcom/tds/common/reactor/functions/Action3<",
        "TT0;TT1;TT2;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 11
    .local p0, "this":Lcom/tds/common/reactor/functions/Actions$EmptyAction;, "Lcom/tds/common/reactor/functions/Actions$EmptyAction<TT0;TT1;TT2;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 1

    .line 19
    .local p0, "this":Lcom/tds/common/reactor/functions/Actions$EmptyAction;, "Lcom/tds/common/reactor/functions/Actions$EmptyAction<TT0;TT1;TT2;>;"
    return-void
.end method

.method public call(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT0;)V"
        }
    .end annotation

    .line 24
    .local p0, "this":Lcom/tds/common/reactor/functions/Actions$EmptyAction;, "Lcom/tds/common/reactor/functions/Actions$EmptyAction<TT0;TT1;TT2;>;"
    .local p1, "t0":Ljava/lang/Object;, "TT0;"
    return-void
.end method

.method public call(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT0;TT1;)V"
        }
    .end annotation

    .line 29
    .local p0, "this":Lcom/tds/common/reactor/functions/Actions$EmptyAction;, "Lcom/tds/common/reactor/functions/Actions$EmptyAction<TT0;TT1;TT2;>;"
    .local p1, "t0":Ljava/lang/Object;, "TT0;"
    .local p2, "t1":Ljava/lang/Object;, "TT1;"
    return-void
.end method

.method public call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT0;TT1;TT2;)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lcom/tds/common/reactor/functions/Actions$EmptyAction;, "Lcom/tds/common/reactor/functions/Actions$EmptyAction<TT0;TT1;TT2;>;"
    .local p1, "t0":Ljava/lang/Object;, "TT0;"
    .local p2, "t1":Ljava/lang/Object;, "TT1;"
    .local p3, "t2":Ljava/lang/Object;, "TT2;"
    return-void
.end method
