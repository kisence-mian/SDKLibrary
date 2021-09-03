.class final Lcom/tds/common/reactor/plugins/RxJavaObservableExecutionHookDefault;
.super Lcom/tds/common/reactor/plugins/RxJavaObservableExecutionHook;
.source "RxJavaObservableExecutionHookDefault.java"


# static fields
.field private static final INSTANCE:Lcom/tds/common/reactor/plugins/RxJavaObservableExecutionHookDefault;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Lcom/tds/common/reactor/plugins/RxJavaObservableExecutionHookDefault;

    invoke-direct {v0}, Lcom/tds/common/reactor/plugins/RxJavaObservableExecutionHookDefault;-><init>()V

    sput-object v0, Lcom/tds/common/reactor/plugins/RxJavaObservableExecutionHookDefault;->INSTANCE:Lcom/tds/common/reactor/plugins/RxJavaObservableExecutionHookDefault;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/tds/common/reactor/plugins/RxJavaObservableExecutionHook;-><init>()V

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/tds/common/reactor/plugins/RxJavaObservableExecutionHook;
    .registers 1

    .line 31
    sget-object v0, Lcom/tds/common/reactor/plugins/RxJavaObservableExecutionHookDefault;->INSTANCE:Lcom/tds/common/reactor/plugins/RxJavaObservableExecutionHookDefault;

    return-object v0
.end method
