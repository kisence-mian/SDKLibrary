.class final Lrx/plugins/RxJavaSingleExecutionHookDefault;
.super Lrx/plugins/RxJavaSingleExecutionHook;
.source "RxJavaSingleExecutionHookDefault.java"


# static fields
.field private static final INSTANCE:Lrx/plugins/RxJavaSingleExecutionHookDefault;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    new-instance v0, Lrx/plugins/RxJavaSingleExecutionHookDefault;

    invoke-direct {v0}, Lrx/plugins/RxJavaSingleExecutionHookDefault;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaSingleExecutionHookDefault;->INSTANCE:Lrx/plugins/RxJavaSingleExecutionHookDefault;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lrx/plugins/RxJavaSingleExecutionHook;-><init>()V

    .line 29
    return-void
.end method

.method public static getInstance()Lrx/plugins/RxJavaSingleExecutionHook;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lrx/plugins/RxJavaSingleExecutionHookDefault;->INSTANCE:Lrx/plugins/RxJavaSingleExecutionHookDefault;

    return-object v0
.end method
