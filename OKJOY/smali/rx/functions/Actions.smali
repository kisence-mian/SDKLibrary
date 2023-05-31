.class public final Lrx/functions/Actions;
.super Ljava/lang/Object;
.source "Actions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/functions/Actions$Action1CallsAction0;,
        Lrx/functions/Actions$EmptyAction;
    }
.end annotation


# static fields
.field private static final EMPTY_ACTION:Lrx/functions/Actions$EmptyAction;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    new-instance v0, Lrx/functions/Actions$EmptyAction;

    invoke-direct {v0}, Lrx/functions/Actions$EmptyAction;-><init>()V

    sput-object v0, Lrx/functions/Actions;->EMPTY_ACTION:Lrx/functions/Actions$EmptyAction;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static empty()Lrx/functions/Actions$EmptyAction;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/functions/Actions$EmptyAction",
            "<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
        }
    .end annotation

    .prologue
    .line 31
    sget-object v0, Lrx/functions/Actions;->EMPTY_ACTION:Lrx/functions/Actions$EmptyAction;

    return-object v0
.end method

.method public static toAction1(Lrx/functions/Action0;)Lrx/functions/Action1;
    .registers 2
    .param p0, "action"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/functions/Action1",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 554
    new-instance v0, Lrx/functions/Actions$Action1CallsAction0;

    invoke-direct {v0, p0}, Lrx/functions/Actions$Action1CallsAction0;-><init>(Lrx/functions/Action0;)V

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action0;)Lrx/functions/Func0;
    .registers 2
    .param p0, "action"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/functions/Func0",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/functions/Actions;->toFunc(Lrx/functions/Action0;Ljava/lang/Object;)Lrx/functions/Func0;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action0;Ljava/lang/Object;)Lrx/functions/Func0;
    .registers 3
    .param p0, "action"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action0;",
            "TR;)",
            "Lrx/functions/Func0",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/functions/Actions$1;

    invoke-direct {v0, p0, p1}, Lrx/functions/Actions$1;-><init>(Lrx/functions/Action0;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action1;)Lrx/functions/Func1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1",
            "<TT1;>;)",
            "Lrx/functions/Func1",
            "<TT1;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "action":Lrx/functions/Action1;, "Lrx/functions/Action1<TT1;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/functions/Actions;->toFunc(Lrx/functions/Action1;Ljava/lang/Object;)Lrx/functions/Func1;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action1;Ljava/lang/Object;)Lrx/functions/Func1;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1",
            "<TT1;>;TR;)",
            "Lrx/functions/Func1",
            "<TT1;TR;>;"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "action":Lrx/functions/Action1;, "Lrx/functions/Action1<TT1;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/functions/Actions$2;

    invoke-direct {v0, p0, p1}, Lrx/functions/Actions$2;-><init>(Lrx/functions/Action1;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action2;)Lrx/functions/Func2;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action2",
            "<TT1;TT2;>;)",
            "Lrx/functions/Func2",
            "<TT1;TT2;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "action":Lrx/functions/Action2;, "Lrx/functions/Action2<TT1;TT2;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/functions/Actions;->toFunc(Lrx/functions/Action2;Ljava/lang/Object;)Lrx/functions/Func2;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action2;Ljava/lang/Object;)Lrx/functions/Func2;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action2",
            "<TT1;TT2;>;TR;)",
            "Lrx/functions/Func2",
            "<TT1;TT2;TR;>;"
        }
    .end annotation

    .prologue
    .line 329
    .local p0, "action":Lrx/functions/Action2;, "Lrx/functions/Action2<TT1;TT2;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/functions/Actions$3;

    invoke-direct {v0, p0, p1}, Lrx/functions/Actions$3;-><init>(Lrx/functions/Action2;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action3;)Lrx/functions/Func3;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action3",
            "<TT1;TT2;TT3;>;)",
            "Lrx/functions/Func3",
            "<TT1;TT2;TT3;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "action":Lrx/functions/Action3;, "Lrx/functions/Action3<TT1;TT2;TT3;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/functions/Actions;->toFunc(Lrx/functions/Action3;Ljava/lang/Object;)Lrx/functions/Func3;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action3;Ljava/lang/Object;)Lrx/functions/Func3;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action3",
            "<TT1;TT2;TT3;>;TR;)",
            "Lrx/functions/Func3",
            "<TT1;TT2;TT3;TR;>;"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "action":Lrx/functions/Action3;, "Lrx/functions/Action3<TT1;TT2;TT3;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/functions/Actions$4;

    invoke-direct {v0, p0, p1}, Lrx/functions/Actions$4;-><init>(Lrx/functions/Action3;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action4;)Lrx/functions/Func4;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action4",
            "<TT1;TT2;TT3;TT4;>;)",
            "Lrx/functions/Func4",
            "<TT1;TT2;TT3;TT4;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "action":Lrx/functions/Action4;, "Lrx/functions/Action4<TT1;TT2;TT3;TT4;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/functions/Actions;->toFunc(Lrx/functions/Action4;Ljava/lang/Object;)Lrx/functions/Func4;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action4;Ljava/lang/Object;)Lrx/functions/Func4;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action4",
            "<TT1;TT2;TT3;TT4;>;TR;)",
            "Lrx/functions/Func4",
            "<TT1;TT2;TT3;TT4;TR;>;"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, "action":Lrx/functions/Action4;, "Lrx/functions/Action4<TT1;TT2;TT3;TT4;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/functions/Actions$5;

    invoke-direct {v0, p0, p1}, Lrx/functions/Actions$5;-><init>(Lrx/functions/Action4;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action5;)Lrx/functions/Func5;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action5",
            "<TT1;TT2;TT3;TT4;TT5;>;)",
            "Lrx/functions/Func5",
            "<TT1;TT2;TT3;TT4;TT5;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "action":Lrx/functions/Action5;, "Lrx/functions/Action5<TT1;TT2;TT3;TT4;TT5;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/functions/Actions;->toFunc(Lrx/functions/Action5;Ljava/lang/Object;)Lrx/functions/Func5;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action5;Ljava/lang/Object;)Lrx/functions/Func5;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action5",
            "<TT1;TT2;TT3;TT4;TT5;>;TR;)",
            "Lrx/functions/Func5",
            "<TT1;TT2;TT3;TT4;TT5;TR;>;"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, "action":Lrx/functions/Action5;, "Lrx/functions/Action5<TT1;TT2;TT3;TT4;TT5;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/functions/Actions$6;

    invoke-direct {v0, p0, p1}, Lrx/functions/Actions$6;-><init>(Lrx/functions/Action5;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action6;)Lrx/functions/Func6;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action6",
            "<TT1;TT2;TT3;TT4;TT5;TT6;>;)",
            "Lrx/functions/Func6",
            "<TT1;TT2;TT3;TT4;TT5;TT6;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "action":Lrx/functions/Action6;, "Lrx/functions/Action6<TT1;TT2;TT3;TT4;TT5;TT6;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/functions/Actions;->toFunc(Lrx/functions/Action6;Ljava/lang/Object;)Lrx/functions/Func6;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action6;Ljava/lang/Object;)Lrx/functions/Func6;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action6",
            "<TT1;TT2;TT3;TT4;TT5;TT6;>;TR;)",
            "Lrx/functions/Func6",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TR;>;"
        }
    .end annotation

    .prologue
    .line 429
    .local p0, "action":Lrx/functions/Action6;, "Lrx/functions/Action6<TT1;TT2;TT3;TT4;TT5;TT6;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/functions/Actions$7;

    invoke-direct {v0, p0, p1}, Lrx/functions/Actions$7;-><init>(Lrx/functions/Action6;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action7;)Lrx/functions/Func7;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action7",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;)",
            "Lrx/functions/Func7",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "action":Lrx/functions/Action7;, "Lrx/functions/Action7<TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/functions/Actions;->toFunc(Lrx/functions/Action7;Ljava/lang/Object;)Lrx/functions/Func7;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action7;Ljava/lang/Object;)Lrx/functions/Func7;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action7",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;TR;)",
            "Lrx/functions/Func7",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TR;>;"
        }
    .end annotation

    .prologue
    .line 457
    .local p0, "action":Lrx/functions/Action7;, "Lrx/functions/Action7<TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/functions/Actions$8;

    invoke-direct {v0, p0, p1}, Lrx/functions/Actions$8;-><init>(Lrx/functions/Action7;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action8;)Lrx/functions/Func8;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action8",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;)",
            "Lrx/functions/Func8",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "action":Lrx/functions/Action8;, "Lrx/functions/Action8<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/functions/Actions;->toFunc(Lrx/functions/Action8;Ljava/lang/Object;)Lrx/functions/Func8;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action8;Ljava/lang/Object;)Lrx/functions/Func8;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action8",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;TR;)",
            "Lrx/functions/Func8",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TR;>;"
        }
    .end annotation

    .prologue
    .line 486
    .local p0, "action":Lrx/functions/Action8;, "Lrx/functions/Action8<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/functions/Actions$9;

    invoke-direct {v0, p0, p1}, Lrx/functions/Actions$9;-><init>(Lrx/functions/Action8;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action9;)Lrx/functions/Func9;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action9",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;)",
            "Lrx/functions/Func9",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "action":Lrx/functions/Action9;, "Lrx/functions/Action9<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/functions/Actions;->toFunc(Lrx/functions/Action9;Ljava/lang/Object;)Lrx/functions/Func9;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action9;Ljava/lang/Object;)Lrx/functions/Func9;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action9",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;TR;)",
            "Lrx/functions/Func9",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TR;>;"
        }
    .end annotation

    .prologue
    .line 516
    .local p0, "action":Lrx/functions/Action9;, "Lrx/functions/Action9<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/functions/Actions$10;

    invoke-direct {v0, p0, p1}, Lrx/functions/Actions$10;-><init>(Lrx/functions/Action9;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toFunc(Lrx/functions/ActionN;)Lrx/functions/FuncN;
    .registers 2
    .param p0, "action"    # Lrx/functions/ActionN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/ActionN;",
            ")",
            "Lrx/functions/FuncN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/functions/Actions;->toFunc(Lrx/functions/ActionN;Ljava/lang/Object;)Lrx/functions/FuncN;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lrx/functions/ActionN;Ljava/lang/Object;)Lrx/functions/FuncN;
    .registers 3
    .param p0, "action"    # Lrx/functions/ActionN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/ActionN;",
            "TR;)",
            "Lrx/functions/FuncN",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 537
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/functions/Actions$11;

    invoke-direct {v0, p0, p1}, Lrx/functions/Actions$11;-><init>(Lrx/functions/ActionN;Ljava/lang/Object;)V

    return-object v0
.end method
